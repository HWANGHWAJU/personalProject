package air.page.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.page.action.Action;
import air.page.action.ActionForward;

public class AirPageController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		System.out.println("RequestURI : "+RequestURI);
		System.out.println("ContextPath :"+contextPath);
		System.out.println("Command : "+command);
		System.out.println("*****************************************************");
		
		if(command.equals("/mainIndex.bo")){
			//硫붿씤 �럹�씠吏� 蹂댁뿬以�
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./mainIndex.jsp");
			System.out.println(" AirPageController ");
		}else if(command.equals("/LoginJoin.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./LoginMain.jsp");
		}
		else if(command.equals("/viewReservationList.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./viewReservationList.jsp"); // �삁�빟 議고쉶
		}else if(command.equals("/viewCheckInList.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./viewCheckInList.jsp"); //�삩�씪�씤 泥댄겕�씤
		}
		
		else if(command.equals("/Info_FlightMain.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Info_FlightMain.jsp"); //�꽌鍮꾩뒪 �븞�궡
		}else if(command.equals("/Info_reservation.bo")){	//�빆怨듦텒 �삁留�
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Info_FlightMain.jsp?Info=Info_reservation.jsp");
		}else if(command.equals("/Info_vat.bo")){ // �닔�닔猷� 
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Info_FlightMain.jsp?Info=Info_vat.jsp");
		}else if(command.equals("/Info_arrival.bo")){ //異쒕룄李� 議고쉶
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Info_FlightMain.jsp?Info=Info_arrival.jsp");
		}else if(command.equals("/Info_schedule.bo")){ //�뒪耳�以� 議고쉶
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Info_FlightMain.jsp?Info=Info_schedule.jsp"); // �꽌鍮꾩뒪 �븞�궡 �걹 
		}
		
		else if(command.equals("/Event_Main.bo")){ //�씠踰ㅽ듃/ �꽌鍮꾩뒪
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Event_Main.jsp");
		}else if(command.equals("/Event_ing.bo")){ //吏꾪뻾以� �씠踰ㅽ듃
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Event_Main.jsp?event=Event_ingEvent.jsp");
		}else if(command.equals("/Event_end.bo")){ //吏��궃 �씠踰ㅽ듃
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Event_Main.jsp?event=Event_endEvent.jsp");
		}else if(command.equals("/Event_specialprice.bo")){ //�듅媛�議�
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Event_Main.jsp?event=Event_specialPrice.jsp");
		}
		
		else if(command.equals("/Opt_Main.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp");
		}
		else if(command.equals("/Opt_advance.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_seats.jsp");
		}else if(command.equals("/Opt_overbaggage.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_baggage.jsp");
		}else if(command.equals("/Opt_meals.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_meals.jsp");
		}else if(command.equals("/Opt_duty.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_dutyfree.jsp");
		}else if(command.equals("/Opt_cafe.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_cafe.jsp");
		}else if(command.equals("/Opt_packaging.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Opt_Main.jsp?opt=Opt_packaging.jsp");
		}else if(command.equals("/viewBooking.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./book_01.jsp");
		}
		
		else if(command.equals("/Company.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Company_Main.jsp");
		}else if(command.equals("/Company_ceo.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Company_Main.jsp?com=Company_ceo.jsp");
		}else if(command.equals("/Company_philo.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Company_Main.jsp?com=Company_philosophy.jsp");
		}else if(command.equals("/Company_CI.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Company_Main.jsp?com=Company_CI.jsp");
		}else if(command.equals("/Company_hang.bo")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Company_Main.jsp?com=Company_hang.jsp");
		}
		
		
	if(forward != null){
		if(forward.isRedirect()){
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			System.out.println("dispatcher �깮�꽦");
			dispatcher.forward(request, response);
		}
	}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doProcess(request, response);
	}
}
