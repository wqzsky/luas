package cn.itlaobing.dao;

import cn.itlaobing.models.ScoreModel;

// 动态代理
public interface ScoreDao {
	public abstract void insert(ScoreModel scoreModel);
}
