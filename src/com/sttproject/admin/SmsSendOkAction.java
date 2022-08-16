package com.sttproject.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.AdminDAO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
public class SmsSendOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		AdminDAO adao = new AdminDAO();
		
		String username = req.getParameter("username");
		/* int userphone = Integer.parseInt(req.getParameter("userphone")); */
		String userphone = req.getParameter("userphone");
		System.out.println(username);
		System.out.println(userphone);

		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		if(adao.findid(username, userphone) != null){
			
			System.out.println(userphone);
			String api_key = "NCSPRGVNWV52O7IF";
			String api_secret = "TTGOMAWQH0IS9BHGVUFDRFJ53PHCWKAD";
			Message coolsms = new Message(api_key, api_secret);

			Random r = new Random();
			String source = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()_";
			int len = source.length();// 위 문자열의 전체 길이 74
			String result = "";
			for (int i = 0; i < 5; i++) {
				int idx = r.nextInt(len);// 0~길이-1 0~73
				result += source.charAt(idx);
			}
//			result = result+"[Set The Table]\nSTT 고객센터입니다. 회원님의 ID를 찾기위해 아래 코드를 화면에 입력해주세요.\n" ;

			// 4 params(to, from, type, text) are mandatory. must be filled
			HashMap<String, String> params = new HashMap<String, String>();
			params.put("to", "01034302944");
			params.put("from", "01034302944");
			params.put("type", "SMS");
			params.put("text", result);
			params.put("app_version", "test app 1.2"); // application name and version
//		    params.put("image", "C:\\Users\\pagoo\\OneDrive\\바탕 화면\\밍밍이.png"); // image for MMS. type must be set as "MMS"
			
			
			String userid = adao.findid(username, userphone);
			
		
					/*
					 * HashMap<String,String> userdata = new HashMap<String, String>();
					 * userdata.put("userid", userid); userdata.put("result", result);
					 */
			
			req.getSession().setAttribute("userid", userid);
			req.getSession().setAttribute("result", result);
			
			transfer.setPath("/app/user/findview.jsp");
			try {
				JSONObject obj = (JSONObject) coolsms.send(params);
				System.out.println(obj.toString());
				System.out.println("문자보내기성공");
			} catch (CoolsmsException e) {
			      System.out.println(e.getMessage());
			      System.out.println(e.getCode());
			      System.out.println("문자보내기실패!");
			}
		} else {
			System.out.println("fuck");
			transfer.setPath("/app/user/findinfo.jsp");
		}
		return transfer;
	}
}
