package org.keyin;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.keyin.Entity.User;

import static org.junit.jupiter.api.Assertions.*;

public class UserTest {

    @Test
    public void testUserConstructorAndGetters() {
        String userInput = "Test input";
        User user = new User(userInput);

        // Check if the constructor sets the userInput correctly
        Assertions.assertEquals(userInput, user.getUserInput());

        // Verify that the ID is null before saving to the database
        Assertions.assertNull(user.getId());
    }

    @Test
    public void testUserSetters() {
        User user = new User();

        // Set the userInput using the setter
        String userInput = "Test input";
        user.setUserInput(userInput);

        // Check if the userInput was set correctly
        Assertions.assertEquals(userInput, user.getUserInput());
    }
}
