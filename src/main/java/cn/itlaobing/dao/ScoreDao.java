package cn.itlaobing.dao;


import java.util.List;

import cn.itlaobing.models.ScoreModel;

// 动态代理
public interface ScoreDao {
	public abstract void insert(ScoreModel scoreModel);
	public abstract List<ScoreModel> selectAll();
}
