package org.keyin;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class BinarySearchTreeTest {

    @Test
    public void testInsert() {
        BinarySearchTree bst = new BinarySearchTree();
        bst.insert(5);
        bst.insert(3);
        bst.insert(7);

        // Use assertions to check if the tree is constructed correctly
        assertEquals(5, bst.getRoot().getValue());
        assertEquals(3, bst.getRoot().getLeft().getValue());
        assertEquals(7, bst.getRoot().getRight().getValue());
    }

    @Test
    public void testToJson() throws JsonProcessingException {
        BinarySearchTree bst = new BinarySearchTree();
        bst.insert(5);
        bst.insert(3);
        bst.insert(7);

        // Convert the tree to JSON format
        String treeJson = bst.toJson();

        // Parse the expected JSON string and generated JSON string to JsonNode objects
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode expectedJsonNode = objectMapper.readTree("{\"value\":5,\"left\":{\"value\":3,\"left\":null,\"right\":null},\"right\":{\"value\":7,\"left\":null,\"right\":null}}");
        JsonNode generatedJsonNode = objectMapper.readTree(treeJson);

        // Use assertEquals to check the JSON structure
        Assertions.assertEquals(expectedJsonNode, generatedJsonNode);
    }

}
