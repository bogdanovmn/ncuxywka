package com.github.bogdanovmn.ncuxywka.web.pages.news;

import com.github.bogdanovmn.ncuxywka.model.entity.News;
import com.github.bogdanovmn.ncuxywka.model.entity.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {
	@Autowired
	private NewsRepository newsRepository;

	public List<News> last(int lastNewsCount) {
		return newsRepository.findAllByVisibleTrueOrderByIdDesc(
			PageRequest.of(0, lastNewsCount)
		);
	}
}
