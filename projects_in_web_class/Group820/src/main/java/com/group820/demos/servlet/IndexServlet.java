package com.group820.demos.servlet;

import com.group820.demos.entity.Goods;
import com.group820.demos.service.GoodsService;
import com.group820.demos.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private GoodsService goodsService = ServiceFactory.getGoodsService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Goods> goods = goodsService.listGoods();
        request.setAttribute("goods",goods);
        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);
    }
}
