package cn.itlaobing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
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
	public String insert(@Validated ScoreModel scoreModel, BindingResult br,Model model) {
		if(br.hasErrors()) {
			List<FieldError> errors = br.getFieldErrors();
			for (int i = 0; i < errors.size(); i++) {
				String field =  errors.get(i).getField();
				String message = errors.get(i).getDefaultMessage();
				model.addAttribute(field, message);
			}
			model.addAttribute("scoreModel", scoreModel);
			return "score/insert";
		}
		
		System.out.println(scoreModel.getStuName());
		scoreService.insert(scoreModel);
		
		return "redirect:/score/preparedInsert";//�ɼ������ɺ���ת����ӳɼ�����
	}
	
	@RequestMapping("/selectAll")
	public String selectAll(Model model) {
		List<ScoreModel> list = scoreService.selectAll();
		model.addAttribute("scores", list);
		return "score/list";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "score/search";
	}
	
	@RequestMapping("/selectById")
	public String selectById(String id,Model model) {
		ScoreModel scoreModel = scoreService.selectById(id);
		if(scoreModel==null) {
			model.addAttribute("message", "���޴���");
		}
		model.addAttribute("id", id);
		model.addAttribute("scoreModel", scoreModel);
		return "score/search";
	}
}
