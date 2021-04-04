package com.github.bogdanovmn.ncuxywka.web.pages.room;

import com.github.bogdanovmn.ncuxywka.model.entity.RoomType;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
class RoomTypeDeserializer implements Converter<String, RoomType> {
	@Override
	public RoomType convert(String roomId) {
		return RoomType.fromId(roomId);
	}
}
