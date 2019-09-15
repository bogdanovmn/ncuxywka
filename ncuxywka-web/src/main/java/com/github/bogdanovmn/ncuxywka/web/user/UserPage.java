package com.github.bogdanovmn.ncuxywka.web.user;

import com.github.bogdanovmn.ncuxywka.model.entity.CreoRepository.CreoMinView;
import com.github.bogdanovmn.ncuxywka.model.entity.UserActivityPlotData;
import com.github.bogdanovmn.ncuxywka.model.entity.UserRepository.UserFullView;
import lombok.Builder;
import lombok.Value;

import java.util.List;

@Value
@Builder
class UserPage {
	private final UserFullView data;
	private final List<CreoMinView> creos;
	private final List<CreoMinView> favoriteCreos;
	private final UserWordsCloud wordsCloud;
	private final List<UserActivityPlotData> activityData;

	boolean hasCreos() {
		return creos != null;
	}

	boolean hasFavoriteCreos() {
		return favoriteCreos != null;
	}

	boolean hasCommentsOut() {
		return data.getStatistic().getCommentsOut() > 0;
	}

	boolean hasCommentsIn() {
		return data.getStatistic().getCommentsIn() > 0;
	}
}
