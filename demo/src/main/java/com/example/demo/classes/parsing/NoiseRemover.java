package com.example.demo.classes.parsing;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class NoiseRemover {
    public NoiseRemover() {}

    public ParseWrapper removeNoise(ArrayList<String> list) throws IOException {
        // Loop through the entire noisewords file for each word and check if it is in there
        for (int i = 0; i < list.size(); i++) {
            Scanner sc = new Scanner(new File("noisewords.txt"));
            while (sc.hasNext()) {
                String noiseWord = sc.nextLine();
                if (list.get(i).equals(noiseWord)) {
                    list.remove(i);
                    i--;
                }
            }
        }

        OrderHandler orderHandler = new OrderHandler();

        return orderHandler.handleOrder(list);
    }
}
