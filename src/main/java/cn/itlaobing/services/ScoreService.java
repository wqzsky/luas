package cn.itlaobing.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.itlaobing.dao.ScoreDao;
import cn.itlaobing.models.ScoreModel;

@Service
public class ScoreService {
	
	@Autowired
	private ScoreDao scoreDao;
	
	public void insert(ScoreModel scoreModel) {
		scoreDao.insert(scoreModel);
	}
	public List<ScoreModel> selectAll() {
		return scoreDao.selectAll();
	}
}
