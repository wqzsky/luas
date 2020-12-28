package cn.itlaobing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.itlaobing.models.ScoreModel;
import cn.itlaobing.services.ScoreService;

@Controller
@RequestMapping("/score")
public class ScoreController {
	
	@Autowired
	private ScoreService scoreService;
	
	//������ʾ��ӽ���ķ���
	@RequestMapping("/preparedInsert")
	public String preparedInsert() {
		return "score/insert";
	}
	
	//������ӳɼ��ķ���
	@RequestMapping("/insert")
	public String insert(ScoreModel scoreModel) {
		System.out.println(scoreModel.getStuName());
		scoreService.insert(scoreModel);
		return "redirect:/score/preparedInsert";//�ɼ������ɺ���ת����ӳɼ�����
	}
}
