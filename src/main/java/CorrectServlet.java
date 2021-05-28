import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CorrectServlet", urlPatterns = "/CorrectServlet")

public class CorrectServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String result = "Yay! you got it right!!";
        request.setAttribute("result", result);
        request.getRequestDispatcher("Guessing-Game/guess.jsp").forward(request, response);
    }
}
