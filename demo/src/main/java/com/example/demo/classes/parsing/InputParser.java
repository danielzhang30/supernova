package com.example.demo.classes.parsing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class InputParser {
    private String input;

    public InputParser(String input) {
        this.input = input;
    }

    public ParseWrapper parseString() {
        // Use hashmap to remove duplicate words. Hashmap can lookup super fast so it is efficient, also easy to use
        HashMap<String, Integer> map = new HashMap<>();
        ArrayList<String> inputList = new ArrayList<>();

        int baseIndex = 0;
        String word;
        // Loop through string, separating words by spaces
        for (int i = 0; i < input.length(); i++) {
            // If we encounter a space, add the word to the hashmap
            if (input.substring(i,i+1).equals(" ")) {
                word = input.substring(baseIndex, i);
                baseIndex = i+1;
                if (!map.containsKey(word)) {
                    map.put(word, 1);
                    inputList.add(word);
                } else if (word.equals("AND") || word.equals("NOT") || word.equals("OR")) {
                    inputList.add(word);
                }
            }
        }
        // Inserting the last word into the hashmap
        word = input.substring(baseIndex, input.length());
        if (!map.containsKey(word)) {
            inputList.add(word);
        }

        // Remove Noise
        NoiseRemover noiseRemover = new NoiseRemover();
        ParseWrapper wrapper;
        try {
            wrapper = noiseRemover.removeNoise(inputList);
        } catch(IOException e) {
            System.out.println(e);
            return new ParseWrapper();
        }

        return wrapper;
    }
}
