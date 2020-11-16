package com.example.demo;

import com.example.demo.classes.database.Url;
import com.example.demo.classes.database.UrlRepository;
import com.example.demo.classes.parsing.InputParser;
import com.example.demo.classes.parsing.ParseWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.*;

@RestController
public class MainController {
    @Autowired
    private UrlRepository repo;

    @GetMapping("/parsetest")
    public List<String> parseTest(@RequestParam(value = "input") String input) {
        InputParser parser = new InputParser(input);
        ParseWrapper wrapper = parser.parseString();
        ArrayList<ArrayList<String>> andList = wrapper.getAndList();
        ArrayList<String> orList = wrapper.getOrList();
        ArrayList<String> notList = wrapper.getNotList();
        ArrayList<String> urlList = new ArrayList<>();

        // Collecting all the urls that are from AND descriptors
        for (ArrayList<String> andGroup : andList) {
            String firstWord = andGroup.get(0);
            List<Url> list = repo.findByDescriptors(firstWord);
            for (Url url : list) {
                urlList.add(url.getUrl());
            }

            // Compare the next words
            for (int i = 1; i < andGroup.size(); i++) {
                list = repo.findByDescriptors(andGroup.get(i));
                Set<String> set = new HashSet<>();
                for (Url url : list) {
                    set.add(url.getUrl());
                }

                // Check to see if urls in urlList exist for the next word
                for (int j = 0; j < urlList.size(); j++) {
                    if (!set.contains(urlList.get(j))) {
                        urlList.remove(j);
                        j--;
                    }
                }
            }
        }

        // Collecting all urls that are from OR descriptors
        for (String word : orList) {
            List<Url> list = repo.findByDescriptors(word);
            for (Url url : list) {
                urlList.add(url.getUrl());
            }
        }

        // Remove duplicate Urls
        Set<String> dupeSet = new HashSet<>();
        for (int i = 0; i < urlList.size(); i++) {
            if (dupeSet.contains(urlList.get(i))) {
                urlList.remove(i);
                i--;
            }
            else {
                dupeSet.add(urlList.get(i));
            }
        }

        // Remove urls that are in the NOT descriptors
        Set<String> notSet = new HashSet<>();
        for (String word : notList) {
            List<Url> list = repo.findByDescriptors(word);
            for (Url url : list) {
                if (!notSet.contains(url.getUrl())) {
                    notSet.add(url.getUrl());
                }
            }
        }
        for (int i = 0; i < urlList.size(); i++) {
            if (notSet.contains(urlList.get(i))) {
                urlList.remove(i);
                i--;
            }
        }

        // Alphabetically sort url list
        Collections.sort(urlList);

        return urlList;
    }

    @GetMapping("/findByDescriptors")
    public List<Url> findByDescriptors(@RequestParam(value = "desc") String desc) {
        return repo.findByDescriptors(desc);
    }

    @PostMapping(path="/addindex")
    public @ResponseBody String addNewUrl(@RequestParam String url, @RequestParam String descriptors,
                                          @RequestParam String date) {
        System.out.println("TEST");
        Url u = new Url();
        u.setUrl(url);
        u.setDescriptors(descriptors);
        LocalDate convertedDate = LocalDate.parse(date);
        u.setDate(convertedDate);
        repo.save(u);
        return "Saved";
    }
}
