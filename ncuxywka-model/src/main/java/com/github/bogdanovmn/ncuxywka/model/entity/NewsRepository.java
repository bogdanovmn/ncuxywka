package com.github.bogdanovmn.ncuxywka.model.entity;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NewsRepository extends JpaRepository<News, Integer> {
	List<News> findAllByVisibleTrueOrderByIdDesc(Pageable pageable);
}
