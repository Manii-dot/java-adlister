import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GameServlet", urlPatterns = "/guess")
public class GameServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("Guessing-Game/guess.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        int aiNumber = 1 + (int)(3 * Math.random());
        String userGuess = request.getParameter("quantity");
        if(Integer.parseInt(userGuess) == aiNumber){
            response.sendRedirect("/CorrectServlet");
        }else{
            response.sendRedirect("/incorrectServlet");
        }
    }
}
