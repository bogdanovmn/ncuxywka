package com.github.bogdanovmn.ncuxywka.model.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserActivityPlotDataRepository extends JpaRepository<UserActivityPlotData, Integer> {

	List<UserActivityPlotData> getAllByUser_Id(Integer userId);

	@Modifying
	@Query(
		nativeQuery = true,
		value =
			"insert into user_activity_plot_data (user_id, day, value) " +
			"select user_id, str_to_date(day, '%Y-%m-%d') day, sum(cnt) value " +
			"from ( " +
			"   select user_id, date_format(created, '%Y-%m-%d') day, count(*)*8 cnt " +
			"   from creo " +
			"   group by user_id, date_format(created, '%Y-%m-%d') " +
			"  	union all " +
			"   select user_id, date_format(created, '%Y-%m-%d') day, count(*)*3 cnt " +
			"   from comment " +
			"   where user_id is not null " +
			"   group by user_id, date_format(created, '%Y-%m-%d') " +
			"   union all " +
			"   select user_id, date_format(created, '%Y-%m-%d') day, count(*) cnt " +
			"   from vote " +
			"   group by user_id, date_format(created, '%Y-%m-%d') " +
			") t " +
			"group by user_id, day"
	)
	Integer recalculate();
}
