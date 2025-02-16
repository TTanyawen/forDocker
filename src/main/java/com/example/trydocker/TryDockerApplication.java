package com.example.trydocker;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.trydocker.dao")
public class TryDockerApplication {

    public static void main(String[] args) {
        SpringApplication.run(TryDockerApplication.class, args);
    }

}
