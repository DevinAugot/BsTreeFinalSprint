package org.keyin;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
public class UserInputControllerTest {

    @Autowired
    private MockMvc mockMvc;

    // You may need to mock the UserRepository using @MockBean

    @Test
    public void testShowUserInputPage() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/userInputPage"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.view().name("userInput"));
    }

    @Test
    public void testProcessUserInput() throws Exception {
        String userInput = "10 5 15 20";

        mockMvc.perform(MockMvcRequestBuilders.post("/process-numbers")
                        .param("numbers", userInput))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/userInputPage"));

        // Now, you can verify that the user input is saved to the database using your UserRepository mock.
    }
}

