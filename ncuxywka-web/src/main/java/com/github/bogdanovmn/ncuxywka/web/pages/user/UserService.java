package com.github.bogdanovmn.ncuxywka.web.pages.user;

import com.github.bogdanovmn.common.log.Timer;
import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.UserActivityPlotDataRepository;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j

@Service
class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private CreoRepository creoRepository;
	@Autowired
	private UserActivityPlotDataRepository userActivityPlotDataRepository;

	UserPage userView(Integer userId) {
		return UserPage.builder()
			.data(userRepository.userFullView(userId))
			.creos(creoRepository.allByUser(userId))
			.favoriteCreos(creoRepository.allFavoriteByUser(userId))
			.activityData(userActivityPlotDataRepository.getAllByUser_Id(userId))
			.wordsCloud(null)
			.build();
	}

	@Scheduled(fixedDelay = 24 * 3600 * 1000, initialDelay = 5 * 1000)
	@Transactional(rollbackFor = Exception.class)
	public void updateActivityStatistic() {
		Timer.measure(
			"User activity data clean up",
			() -> {
				userActivityPlotDataRepository.deleteAllInBatch();
				return null;
			}
		);
		Timer.measure(
			"User activity data recalculation",
			() -> userActivityPlotDataRepository.recalculate()
		);
	}
}
