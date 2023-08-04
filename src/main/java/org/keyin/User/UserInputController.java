package org.keyin.User;

import org.keyin.BinarySearchTree;
import org.keyin.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserInputController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/userInputPage")
    public String showUserInputPage() {
        return "userInput"; // This will return the "userInput.html" page from "templates" folder
    }

    @PostMapping("/process-numbers")
    public String processUserInput(@RequestParam("numbers") String numbers) {
        // Process the user input (you can add your logic here)
        System.out.println("User input numbers: " + numbers);

        // Construct the binary search tree
        BinarySearchTree bst = new BinarySearchTree();
        String[] numberArray = numbers.split("\\s+");
        for (String number : numberArray) {
            try {
                int value = Integer.parseInt(number);
                bst.insert(value);
            } catch (NumberFormatException e) {
                // Handle invalid input (e.g., non-integer values)
            }
        }

        // Convert the tree structure to JSON format
        String treeJson = bst.toJson();

        // Save the user input and tree structure to the database
        userRepository.save(new User(numbers));

        // Redirect back to the user input page after processing the input
        return "redirect:/userInputPage";
    }
    @GetMapping("/previous-trees")
    public String showPreviousTrees(Model model) {
        // Retrieve all user inputs from the database
        List<User> userInputList = userRepository.findAll();

        // Create a list to hold the JSON representation of trees for each user input
        List<String> treeJsonList = new ArrayList<>();

        // Construct trees and add their JSON representation to the list
        for (User userInput : userInputList) {
            BinarySearchTree bst = new BinarySearchTree();
            String[] numberArray = userInput.getUserInput().split("\\s+");
            for (String number : numberArray) {
                try {
                    int value = Integer.parseInt(number);
                    bst.insert(value);
                } catch (NumberFormatException e) {
                    // Handle invalid input (e.g., non-integer values)
                }
            }
            String treeJson = bst.toJson();
            treeJsonList.add(treeJson);
        }

        // Add the list of JSON representations of trees to the model
        model.addAttribute("treeJsonList", treeJsonList);

        return "previousTrees"; // This will return the "previousTrees.html" page from "templates" folder
    }


    @GetMapping("/jsonPage")
    public String jsonPage(Model model) {
        // Retrieve all user inputs from the database
        List<User> userInputList = userRepository.findAll();

        // Retrieve the most recent user input
        String latestUserInput = userInputList.get(userInputList.size() - 1).getUserInput();

        // Construct the binary search tree from the most recent user input
        BinarySearchTree bst = new BinarySearchTree();
        String[] numberArray = latestUserInput.split("\\s+");
        for (String number : numberArray) {
            try {
                int value = Integer.parseInt(number);
                bst.insert(value);
            } catch (NumberFormatException e) {
                // Handle invalid input (e.g., non-integer values)
            }
        }

        // Convert the tree structure to JSON format
        String treeJson = bst.toJson();

        // Add the JSON data to the model
        model.addAttribute("jsonData", treeJson);

        return "jsonPage"; // This will return the "jsonPage.html" page from "templates" folder
    }
}
