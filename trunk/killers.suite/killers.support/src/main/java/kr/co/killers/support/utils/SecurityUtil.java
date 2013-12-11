package kr.co.killers.support.utils;

import java.util.Map;
import kr.co.killers.support.spring.userdetailmanager.db.UserMapDetailsModel;
import org.springframework.security.core.context.SecurityContextHolder;

public class SecurityUtil {
	public static Map<String, Object> getLoginDetailMap(){
		Object principal =  SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  if(principal instanceof UserMapDetailsModel){
		  UserMapDetailsModel data = (UserMapDetailsModel) principal;
			return (Map<String, Object>) data.getMapData();
		}else{
			return null;
		}
	}
	
}
