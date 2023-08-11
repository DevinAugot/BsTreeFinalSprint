package org.keyin;

import org.junit.jupiter.api.Test;
import org.keyin.Entity.User;
import org.keyin.User.UserInputController;
import org.keyin.User.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.util.Collections;

import static org.mockito.Mockito.*;

@WebMvcTest(UserInputController.class)
public class UserInputControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserRepository userRepository;

    @Test
    public void testShowUserInputPage() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/enter-numbers"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.view().name("enter-numbers"));
    }

    @Test
    public void testProcessUserInput() throws Exception {
        String numbers = "10 20 30";
        when(userRepository.save(any(User.class))).thenReturn(new User());

        mockMvc.perform(MockMvcRequestBuilders.post("/process-numbers")
                        .param("numbers", numbers))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.view().name("process-numbers"));

        verify(userRepository, times(1)).save(any(User.class));
    }

    @Test
    public void testShowPreviousTrees() throws Exception {
        User user = new User();
        user.setUserInput("10 20 30"); // Set a non-null value for userInput
        when(userRepository.findAll()).thenReturn(Collections.singletonList(user));

        mockMvc.perform(MockMvcRequestBuilders.get("/previous-trees"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.view().name("previous-trees"));

        verify(userRepository, times(1)).findAll();
    }

}
