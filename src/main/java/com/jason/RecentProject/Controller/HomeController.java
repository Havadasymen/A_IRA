package com.jason.RecentProject.Controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.jason.RecentProject.Service.Greeting;
import org.springframework.web.servlet.ModelAndView;
import javax.jws.WebParam;

@RestController
public class HomeController {
    @RequestMapping(value="/init", method=RequestMethod.GET)
    public String index() {
        return "init";
    }
}
