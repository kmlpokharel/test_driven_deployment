package com.example;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
//test

//@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Initialize variables to hold input values and messages
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String errorMessage = null;

        // Validate inputs
        if (num1Str == null || num2Str == null || !isNumeric(num1Str) || !isNumeric(num2Str)) {
            // If input is invalid, set an error message
            errorMessage = "Please enter valid numbers.";
            request.setAttribute("errorMessage", errorMessage);

            // Forward back to index.jsp with the error message
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }

        // Convert the input strings to integers after validation
        int num1 = Integer.parseInt(num1Str);
        int num2 = Integer.parseInt(num2Str);

        // Perform the calculation using App.java
        DemoApplication calculator = new DemoApplication();
        int result = calculator.add(num1, num2);  // Add or other operations

        // Set the result as a request attribute
        request.setAttribute("result", result);

        // Forward the request to result.jsp if everything is valid
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }

    // Helper method to check if a string is a valid number
    private boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}