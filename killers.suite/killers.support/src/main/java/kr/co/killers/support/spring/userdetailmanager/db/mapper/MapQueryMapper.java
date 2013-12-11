package kr.co.killers.support.spring.userdetailmanager.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;
import kr.co.killers.support.spring.userdetailmanager.db.MappingSqlQuery;
import kr.co.killers.support.spring.userdetailmanager.db.UserMapDetailsModel;
import kr.co.killers.support.utils.CommonUtil;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

public class MapQueryMapper extends MappingSqlQuery {
	
	public MapQueryMapper(DataSource ds, String usersByUsernameQuery) {
		super(ds, usersByUsernameQuery);
	}

	@Override
	protected Object mapRow(ResultSet rs, int rownum) throws SQLException {
		String userid = rs.getString("id");
		String password = rs.getString("password");
		boolean enabled = rs.getBoolean("enabled");
		
		Map<String, Object> mapData = new HashMap<String, Object>();
		try {
			mapData = CommonUtil.transMapToResultSet(rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("HOLDER"));
  
		return new UserMapDetailsModel(userid, password, enabled, authorities, mapData);
	}
}
