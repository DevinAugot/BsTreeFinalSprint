package org.keyin.User;

import org.keyin.BinarySearchTree;
import org.keyin.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserInputController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/enter-numbers")
    public String showUserInputPage() {
        return "enter-numbers";
    }
    @GetMapping("/")
    public ModelAndView showHomePage() {
        ModelAndView modelAndView = new ModelAndView("index"); // Return the name of your homepage Thymeleaf template
        // Add any necessary model attributes if required
        return modelAndView;
    }
    @PostMapping("/process-numbers")
    public String processUserInput(@RequestParam("numbers") String numbers, Model model) {
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
        User user = new User();
        user.setUserInput(numbers);
        user.setTree(treeJson);
        userRepository.save(user);

        // Add the JSON data to the model
        model.addAttribute("jsonData", treeJson);

        return "process-numbers"; // Show the "process-numbers" page with JSON data
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

        return "previous-trees";
    }
}

