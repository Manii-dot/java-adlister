import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.*;


@WebServlet(name = "ViewPageCount", urlPatterns = "/count")
public class count extends HttpServlet {
    int count = 0;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        count++;
        response.setContentType("text/html");
        response.getWriter().println("<h1This page had been visited "+ count +" times!</h1");

        String reset = request.getParameter("reset");
        if(reset != null){
            count = 0;
        }
    }
}
