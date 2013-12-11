package kr.co.killers.support.spring.logging.basic;

import java.util.Map;
import kr.co.killers.support.utils.SecurityUtil;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class BasicServiceLogging {
	static final Logger log = LoggerFactory.getLogger(BasicServiceLogging.class);
	
	private Long processingTime;
	
	@Before("execution(* com.cframe.framework.components.*.web.*.*(..))")
	public void doBeforeLog(JoinPoint joinPoint) {
		processingTime = System.nanoTime();
	}
	
	@After("execution(* com.cframe.framework.components.*.web.*.*(..))")
	public void doAfterLog(JoinPoint joinPoint) {
		Long ime = System.nanoTime() - this.processingTime;
		Map<String, Object> data = SecurityUtil.getLoginDetailMap();
		if(data != null){
			log.info(joinPoint.getTarget().getClass().getName()+" "+joinPoint.getSignature().getName() + " E " + ime + " " + data.get("id") + " " + data.get("birthyear") + 
					" " + data.get("birthmonth") + " " + data.get("birthday") + " " + data.get("sex") + " " + data.get("contrycode") + " " + data.get("emaillast"));
		}else{
			log.info(joinPoint.getTarget().getClass().getName()+" "+joinPoint.getSignature().getName() +" E " + "Nothing");	
		}
	}
}