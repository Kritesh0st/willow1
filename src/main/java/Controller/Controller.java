package Controller;
import Model.Product;
import Model.Productx;
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

        if(page.equalsIgnoreCase("index")){
            List<Product> pl = null;
            pl = new DataService().featureProduct();
            out.print("too <br/>");
            HttpSession sess = request.getSession();
            sess.setAttribute("productlist",pl);
            HttpSession ses = request.getSession();
            ses.setAttribute("plcheck","plcheck");
            for(int a=0;a<pl.size();a++){
                out.print(pl.get(a).getId()+" "+pl.get(a).getName()+" "+"<br/>");
            }
//            RequestDispatcher rd = request.getRequestDispatcher("include/featureproduct.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
        else if (page.equalsIgnoreCase("indexx")) {
            DataService d = new DataService();
            List<Productx> pl = d.getFeatureProduct();
            HttpSession sess = request.getSession();
            sess.setAttribute("productlist", pl);
            HttpSession ses = request.getSession();
            ses.setAttribute("plcheck", "plcheck");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);

    }
}
