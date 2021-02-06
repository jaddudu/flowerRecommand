package com.command;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import com.model.FlowerDAO;
import com.model.FlowerDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;
 
@WebServlet("/Search_Order")
public class Search_Order extends HttpServlet {
        private static final long serialVersionUID = 1L;
 
        protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                request.setCharacterEncoding("UTF-8");
                response.setCharacterEncoding("UTF-8");
                System.out.println("서치 들어옴");
               
                HttpSession session = request.getSession();
                String addr_road = request.getParameter("addr_road");
                String addr_detail1 = request.getParameter("addr_detail1");
                String addr_detail2 = request.getParameter("addr_detail2");
               
                StringBuilder address_set = new StringBuilder(addr_road);
                address_set.append(addr_detail1);
                address_set.append(addr_detail2);
                String address = new String(address_set);
                System.out.println(address);
               
                String id = request.getParameter("orderId");
                String flowerId = request.getParameter("flowerId");
                String flowerName = request.getParameter("flowerName");
                System.out.println("서치오더에서 가져와야 할 id : "+id);
                FlowerDAO flowerdao = new FlowerDAO();             
                
               
                int cnt = flowerdao.order_list(id, flowerId, flowerName, address); // 주문시에 입력한 주소창에 입력해서 넣기
                if (cnt > 0) {
                        System.out.println("입력성공!");
                }else {
                        System.out.println("입력실패!");
                }
                response.sendRedirect("home.jsp");               
        }
}