package zyf.servlet;


import java.awt.print.Pageable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zyf.dao.ProductDao;
import zyf.entity.Product;

public class FindServlet1 extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int currPage=1;
        if(request.getParameter("page")!=null){
            currPage=Integer.parseInt(request.getParameter("page"));
        }
        ProductDao dao = new ProductDao();
        List<Product> list = dao.find(currPage);
        request.setAttribute("list", list);
        int pages;  //总页数
        int count=dao.findCount(); //查询总记录数
        if(count%Product.PAGE_SIZE==0){
            pages=count/Product.PAGE_SIZE;
        }else{
            pages=count/Product.PAGE_SIZE+1;
        }
        StringBuffer sb = new StringBuffer();
        //通过循环构建分页条
        for(int i=1;i<=pages;i++){
            if(i==currPage){   //判断是否为当前页
                sb.append("『"+i+"』");  //构建分页条
            }else{
                sb.append("<a href='FindServlet1?page="+i+"'>"+i+"</a>"); //构建分页条
            }
            sb.append(" ");
        }
        request.setAttribute("bar", sb.toString());;
        request.getRequestDispatcher("product_list.jsp").forward(request, response);
    }

}
