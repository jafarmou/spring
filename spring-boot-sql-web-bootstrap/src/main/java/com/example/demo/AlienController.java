package com.example.demo;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.AlienRepo;
import com.example.demo.Alien;

@Controller
public class AlienController {
	@Autowired
	AlienRepo repo;
	
	@RequestMapping("/")
	public String home() {
//		return "home.jsp";
		return "/jsp/new-home.jsp";
		
	}
	
	@RequestMapping("/goHome")
	public String goHome() {
		return "/jsp/new-home.jsp";
		
	}
	
	@RequestMapping("/showAliens")
	public ModelAndView showAliens() {
		
		ModelAndView mv = new ModelAndView("/jsp/new-show2.jsp");
		List<Alien> alienList = repo.findAll();
		mv.addObject("alienList", alienList);
		mv.addObject("message", "Aliens");

		
		return mv;
		
	}
	
	@RequestMapping("/addAlien")
//	public ModelAndView addAlien(Alien alien) {
	public ModelAndView addAlien(
			@RequestParam("aname") String name,
			@RequestParam("tech") String tech) {
		
		Alien alien = new Alien();
//		alien.setAid(id);
		alien.setAname(name);
		alien.setTech(tech);
		ModelAndView mv = new ModelAndView();
		repo.save(alien);
		mv.setViewName("/jsp/new-show.jsp");
		mv.addObject("alien", repo.findByAname(name));
		mv.addObject("message", "New Alien Added Successfuly");
		return mv;
	}
	
	@RequestMapping("/getAlien")
	public ModelAndView getAlien(@RequestParam("aid") int id) {
		
		ModelAndView mv = new ModelAndView("/jsp/new-show2.jsp");
		Alien alien = repo.findById(id).orElse(new Alien());
		
		List<Alien> alienList = new ArrayList<Alien>();
		alienList.add(alien);

		mv.addObject("alienList", alienList);
		mv.addObject("message", "Alien");

		
		return mv;
	}
	
	@RequestMapping("/aliens")
	@ResponseBody
	public List<Alien> Aliens() {
		
		
		
		return repo.findAll();
	}
	
	@RequestMapping("/alien/{aid}")
	@ResponseBody
	public Optional<Alien> Alien(@PathVariable("aid") int id) {
		
		
		
		return repo.findById(id);
	}

}
