package es.josecamps.quickstart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import es.josecamps.quickstart.bean.MiniBean;
import es.josecamps.quickstart.service.TestService;

/**
 * 
 * @author jose
 *
 */
@RestController
@RequestMapping("/test")
public class TestController {

	@Autowired
	private TestService testService;
	
	@RequestMapping("/ping")
	public @ResponseBody String ping() {
		return "pong";

	}
	
	@RequestMapping("/echo")
	public @ResponseBody String echo(@RequestParam(value="text", defaultValue="unknow") String text) {
		return text;
	}
	
	@RequestMapping("/echojson")
	public @ResponseBody MiniBean echoJson(@RequestBody MiniBean miniBean) {
		
		return miniBean;
	}

	@RequestMapping("/addjson")
	public @ResponseBody MiniBean addJson(@RequestParam(value = "num", defaultValue = "0") Integer num, @RequestBody MiniBean miniBean) {
		miniBean.setNum(miniBean.getNum() + num);
		return miniBean;
	}
	
}
