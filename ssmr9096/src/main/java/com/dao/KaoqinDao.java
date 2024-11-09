package com.dao;

import com.entity.KaoqinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaoqinVO;
import com.entity.view.KaoqinView;


/**
 * 考勤
 * 
 * @author 
 * @email 
 * @date 2021-04-27 17:44:59
 */
public interface KaoqinDao extends BaseMapper<KaoqinEntity> {
	
	List<KaoqinVO> selectListVO(@Param("ew") Wrapper<KaoqinEntity> wrapper);
	
	KaoqinVO selectVO(@Param("ew") Wrapper<KaoqinEntity> wrapper);
	
	List<KaoqinView> selectListView(@Param("ew") Wrapper<KaoqinEntity> wrapper);

	List<KaoqinView> selectListView(Pagination page,@Param("ew") Wrapper<KaoqinEntity> wrapper);
	
	KaoqinView selectView(@Param("ew") Wrapper<KaoqinEntity> wrapper);
	
}
