package cn.itlaobing.dao;

import java.util.List;
import cn.itlaobing.models.ScoreModel;

public interface ScoreDao {
	public abstract void insert(ScoreModel scoreModel);
	public abstract List<ScoreModel> selectAll() ;
	public abstract ScoreModel selectById(String id) ;
	
}
