package org.keyin;

import org.hamcrest.Matchers;
import org.junit.jupiter.api.Test;
import org.keyin.Entity.User;
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
        mockMvc.perform(MockMvcRequestBuilders.get("/enter-numbers"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().string(Matchers.containsString("<h1>User Input Page</h1>")))
                .andExpect(MockMvcResultMatchers.content().string(Matchers.containsString("Enter a series of numbers separated by a space:")))
                .andExpect(MockMvcResultMatchers.content().string(Matchers.containsString("<button type=\"submit\">Submit</button>")));
    }

}

