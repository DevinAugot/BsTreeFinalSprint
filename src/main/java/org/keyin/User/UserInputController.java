package org.keyin.User;

import org.keyin.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class UserInputController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/userInputPage")
    public String showUserInputPage() {
        return "userInput"; // This will return the "userInput.html" page from "templates" folder
    }

    @PostMapping("/processInput")
    public String processUserInput(String userInput) {
        // Process the user input (you can add your logic here)
        System.out.println("User input: " + userInput);

        // Save the user input to the database
        userRepository.save(new User(userInput));

        // Redirect back to the user input page after processing the input
        return "redirect:/userInputPage";
    }

    @GetMapping("/jsonPage")
    public String jsonPage(Model model) {
        // Retrieve all user inputs from the database
        List<User> userInputList = userRepository.findAll();

        // Convert the list of user inputs to JSON format (you can use libraries like Jackson)
        String jsonData = convertToJSON(userInputList);

        // Add JSON data to the model
        model.addAttribute("jsonData", jsonData);

        return "jsonPage";
    }
 // convert user input to JSON to be displayed
    private String convertToJSON(List<User> userInputList) {
        StringBuilder jsonData = new StringBuilder();
        jsonData.append("{\"userInputs\":[");
        for (int i = 0; i < userInputList.size(); i++) {
            User user = userInputList.get(i);
            jsonData.append("{\"input\":\"").append(user.getUserInput()).append("\"}");
            if (i < userInputList.size() - 1) {
                jsonData.append(",");
            }
        }
        jsonData.append("]}");
        return jsonData.toString();
    }

}
