package Controller;
import Hashing.HashPassword;
import Model.Product;
import Model.Productx;
import Model.User;
import Service.DataService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controller", urlPatterns = {"/user"})
public class Controller extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String page = request.getParameter("page");
        out.print(page+"<br/>");
        if(page.equalsIgnoreCase("index")){
            List<Productx> featurepl = null;
            List<Productx> popularpl = null;
            featurepl = new DataService().getThreeTypeProduct("feature");
            popularpl = new DataService().getThreeTypeProduct("popular");
            
            HttpSession featurePlSess = request.getSession();
            featurePlSess.setAttribute("featurepl",featurepl);
            HttpSession popularPlSess = request.getSession();
            popularPlSess.setAttribute("popularpl",popularpl);
            HttpSession sess = request.getSession();
            sess.setAttribute("plcheck","plcheck");
            
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
        else if(page.equalsIgnoreCase("signup")){
            RequestDispatcher rd = request.getRequestDispatcher("pages/signup.jsp");
            rd.forward(request,response);
        }
        else if(page.equalsIgnoreCase("newUser")){
            User user = new User();
            user.setName(request.getParameter("fullname"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(HashPassword.hashThisPass(request.getParameter("password")));
            user.setPhnumber(request.getParameter("number"));
            new DataService().insertUser(user);
            out.print("Data inserted");
            RequestDispatcher rd = request.getRequestDispatcher("user?page=signedin");
            rd.forward(request,response);
        } 
        else if(page.equalsIgnoreCase("signin")){
            RequestDispatcher rd = request.getRequestDispatcher("pages/signin.jsp");
            rd.forward(request,response);
        }
        else if(page.equalsIgnoreCase("signedin")){
            String email = request.getParameter("email");
            String password = HashPassword.hashThisPass(request.getParameter("password"));
            out.print("name "+email+"<br/>");
            out.print("password "+password+"<br/>");
            User user = new DataService().getSingleUserBy(email, password);
            if(user != null){
                HttpSession sess = request.getSession();
                sess.setAttribute("username",user.getName());
                out.print("user.getName() "+user.getName());
                RequestDispatcher rd = request.getRequestDispatcher("user?page=index");
                rd.forward(request,response);
            }
            else{
                out.println("incorrect");
                RequestDispatcher rd = request.getRequestDispatcher("user?page=index");
                rd.forward(request,response);
            }
        }
        else if(page.equalsIgnoreCase("signout")){
            HttpSession sess = request.getSession(false);
            sess.invalidate();
            
            RequestDispatcher rd = request.getRequestDispatcher("user?page=index");
            rd.forward(request,response);
        }
        
        else if(page.equalsIgnoreCase("dashboard")){
            
            RequestDispatcher rd = request.getRequestDispatcher("pages/dashboard.jsp");
            rd.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);

    }
}
            
/*

alter table userinfo
drop column number;

alter table userinfo
add number varchar(255);

sHOW FIELDS FROM tablename
show fields from userinfo
*/ 