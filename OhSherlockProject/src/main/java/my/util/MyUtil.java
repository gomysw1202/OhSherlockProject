package my.util;

import javax.servlet.http.HttpServletRequest;

public class MyUtil {

	// 쿼리스트링 포함한 현재 url 주소를 알려주는 메소드
	public static String getCurrentURL(HttpServletRequest request) {
		
		String currentURL = request.getRequestURL().toString();
		String queryString = request.getQueryString(); // 없으면 null
		
		if (queryString != null) { 
			currentURL += "?" + queryString;
		}
		
		String ctxPath = request.getContextPath();
		
		int beginIndex = currentURL.indexOf(ctxPath) + ctxPath.length();
		// 컨텍스트 패스가 시작되는 위치 인덱스 + 컨텍스트 패스의 글자수
		
		currentURL = currentURL.substring(beginIndex);
		// 컨텍스트 패스 이후부터의 url
		
		return currentURL;
	}
	
}
