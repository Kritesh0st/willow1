package Controller;
import Hashing.HashPassword;
import Model.Product;
import Model.Productx;
import Model.SizeCount;
import Model.User;
import Service.DataService;
import Service.ProductService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "Controller", urlPatterns = {"/user"})
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class Controller extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String page = request.getParameter("page");
        String page1 = request.getParameter("product");
        out.print("page"+" "+page1+"<br/>");
        
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
                if(user.getEmail().equals("kritesh@gmail.com")){
                    RequestDispatcher rd = request.getRequestDispatcher("user?page=dashboard&product=productadd");
                    rd.forward(request,response);
                }
                else{
                    RequestDispatcher rd = request.getRequestDispatcher("user?page=index");
                    rd.forward(request,response);
                }                
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
//        dashboard ============================================================================
        else if(page.equalsIgnoreCase("dashboard")){
            String product = request.getParameter("product");
            if(product!=null){
                if(product.equals("productlist")){
                    Product pr = new Product();
                    List<Product> prList = new ProductService().getProductList();
                    
                    out.println(prList.size()+"<br/>");
                    request.setAttribute("productlist", prList);
                    out.print("prList="+prList.get(0).getTotalcount());
                    RequestDispatcher rd = request.getRequestDispatcher("pages/productListPage.jsp");
                    rd.forward(request,response);
                }
                else if(product.equals("productadd")){
                    RequestDispatcher rd = request.getRequestDispatcher("pages/productAddPage.jsp");
                    rd.forward(request,response);
                }
                else if(product.equals("productdetails")){
                    out.print("Details page");
                    int pid = Integer.parseInt(request.getParameter("id"));
                    Product pr = new Product();
                    pr = new ProductService().getProductDetail(pid);
                    List<SizeCount> scList = new ProductService().getSizeCountForPorduct(pid);
//                    request.setAttribute("pr", pr);
                    request.setAttribute("productdetail", pr);
                    request.setAttribute("productsizecount", scList);
                    RequestDispatcher rd = request.getRequestDispatcher("pages/productDetailPage.jsp");
                    rd.forward(request,response);
                }
                else if(product.equals("productedit")){
                    out.print("Edit page");
                    int pid = Integer.parseInt(request.getParameter("id"));
                    Product pr = new ProductService().getProductDetail(pid);
                    List<SizeCount> scList = new ProductService().getSizeCountForPorduct(pid);
                    request.setAttribute("productdetail", pr);
                    request.setAttribute("productsizecount", scList);
                    RequestDispatcher rd = request.getRequestDispatcher("pages/productEditPage.jsp");
                    rd.forward(request,response);
                }
            }
            else{
                RequestDispatcher rd = request.getRequestDispatcher("pages/dashboard.jsp");
                rd.forward(request,response);
            }
        }
        else if(page.equalsIgnoreCase("productadd")){
            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = "D:\\AllFile5\\JavaCode\\Willow1\\src\\main\\webapp\\image\\upload\\pics";
            String imgPath = "image\\upload\\pics";
            String filePathName = uploadPath + fileName;
            imgPath = imgPath + fileName;
            for (Part part : request.getParts()) {
              part.write(filePathName);
            }
            try{
                Product pr = new Product();
                pr.setName(request.getParameter("name"));
                pr.setDescription(request.getParameter("description"));
                pr.setImage(imgPath);
                pr.setCategory(request.getParameter("category"));
                pr.setPrice(Integer.parseInt(request.getParameter("price")));
                pr.setTags(request.getParameter("tags"));
                pr.setBrand(request.getParameter("brand"));
                out.print(pr.getName()+"<br/>");
                out.print(pr.getDescription()+"<br/>");
                out.print(pr.getImage()+"<br/>");
                out.print(pr.getCategory()+"<br/>");
                out.print(pr.getPrice()+"<br/>");
                out.print(pr.getTags()+"<br/>");
                out.print(pr.getBrand()+"<br/>");
                new ProductService().insertProduct(pr);
                out.print("Data inserted 1<br/><br/>");
                
                List<SizeCount> sclist = new ArrayList<>();
                for(int a=1;a<=10;a++){
                    SizeCount sc = new SizeCount();
                    String sizeStr = request.getParameter("size"+a);
                    String countStr = request.getParameter("count"+a);
                    if(!sizeStr.equals("") && !countStr.equals("")){
                        sc.setSize(sizeStr);
                        sc.setCount(Integer.parseInt(countStr));
                        sclist.add(sc);
                    }
//                    out.print(a+" "+sizeStr+" "+countStr+" "+"sclist size= "+sclist.size()+"<br/>");
                }
                for(SizeCount sc: sclist){
                    out.print(sc.getSize()+" "+sc.getCount());
                    new ProductService().insertSizeCountForPorduct(sc);
                }
                out.print("Data inserted 2<br/><br/>");
            }
            catch(Exception e){
                out.print("ERROR: "+e);
            }
        }
        else if(page.equalsIgnoreCase("productlist")){
            Product pr = new Product();
            List<Product> prList = new ProductService().getProductList();
            out.println(prList.size());
            request.setAttribute("productlist", prList);
            RequestDispatcher rd = request.getRequestDispatcher("pages/userlist.jsp");
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