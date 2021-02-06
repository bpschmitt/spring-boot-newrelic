package com.braddemoapp.Brad.Demo.App;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.Random;

@RestController
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @GetMapping("/")
    public String homePage() {
        logger.info("You've accessed the home page!");
        return "HomePage";
    }

    @GetMapping("/random")
    public Integer random() {
        Random rand = new Random();
        Integer number = rand.nextInt(100);
        logger.info("You generated a random number: " + number.toString());
        return number;
    }
}
