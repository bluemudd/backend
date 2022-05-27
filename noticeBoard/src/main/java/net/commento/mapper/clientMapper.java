package net.commento.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import net.commento.dto.inform;

@Mapper
public interface clientMapper {
    @Select("select s.*"+
    		"from new_table s;")
    List<inform> findAll();

}

