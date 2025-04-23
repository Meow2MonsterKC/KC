package servlet;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ice.IceOrder;

@WebServlet("/ice/delete")
public class IceDessertDeleteServlet extends HttpServlet {

	private static final List<IceOrder> iceOrders = IceDessertServlet.getIceOrders(); // 共用原本的訂單列表

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int index = Integer.parseInt(req.getParameter("index"));
		if (index >= 0 && index < iceOrders.size()) {
			iceOrders.remove(index);
		}
		// 回傳結果頁
		req.setAttribute("iceOrders", iceOrders);
		req.getRequestDispatcher("/WEB-INF/ice_dessert_result.jsp").forward(req, resp);
	}
}
