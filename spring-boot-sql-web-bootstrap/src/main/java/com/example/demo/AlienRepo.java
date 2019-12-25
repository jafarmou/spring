package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Alien;

public interface AlienRepo extends JpaRepository<Alien, Integer> {

	Alien findByAname(String name);
}
