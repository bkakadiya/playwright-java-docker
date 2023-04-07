// src/main/java/org/example/App.java
package org.example;

import com.microsoft.playwright.*;

public class App {
    public static void main(String[] args) {
        System.out.println("Starting playwright...");
        try (Playwright playwright = Playwright.create()) {
            Browser browser = playwright.chromium().launch();
            Page page = browser.newPage();
            System.out.println("Title of http://playwright.dev is: ");    
            page.navigate("http://playwright.dev");
            System.out.println(page.title());
        }
    }
}