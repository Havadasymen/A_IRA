package com.jason.RecentProject.Controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.*;
import com.jason.RecentProject.Service.Greeting;

@RestController
@CrossOrigin
public class GreetingController {
	private final AtomicLong counter = new AtomicLong();


	@RequestMapping(value="/greeting", method=RequestMethod.GET)
	public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return new Greeting(counter.incrementAndGet(), "What a " + name);
	}
}
