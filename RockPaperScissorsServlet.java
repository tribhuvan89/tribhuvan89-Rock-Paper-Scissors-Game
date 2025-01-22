package com.example;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/play")
public class RockPaperScissorsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String playerChoice = request.getParameter("choice"); // Get player's choice
        String[] choices = {"Rock", "Paper", "Scissors"};
        String serverChoice = choices[(int) (Math.random() * 3)]; // Random server choice

        String result;
        if (playerChoice.equals(serverChoice)) {
            result = "It's a tie!";
        } else if ((playerChoice.equals("Rock") && serverChoice.equals("Scissors")) ||
                   (playerChoice.equals("Paper") && serverChoice.equals("Rock")) ||
                   (playerChoice.equals("Scissors") && serverChoice.equals("Paper"))) {
            result = "You win!";
        } else {
            result = "You lose!";
        }

        // Pass the results to the JSP
        request.setAttribute("playerChoice", playerChoice);
        request.setAttribute("serverChoice", serverChoice);
        request.setAttribute("result", result);

        // Forward to result.jsp
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
