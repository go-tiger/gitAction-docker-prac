package com.testdayo.home

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloWordController {
    @GetMapping("/")
    fun helloWorld(): String {
        return "hello world! 그린"
    }

}