package com.example.demo.classes.database;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UrlRepository extends CrudRepository<Url, Integer> {
    List<Url> findByDescriptors(String descriptors);
}
