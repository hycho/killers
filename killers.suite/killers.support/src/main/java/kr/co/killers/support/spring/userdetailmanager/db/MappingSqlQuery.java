package kr.co.killers.support.spring.userdetailmanager.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import javax.sql.DataSource;
import org.springframework.jdbc.core.SqlParameter;

public abstract class MappingSqlQuery  extends org.springframework.jdbc.object.MappingSqlQuery {

	public MappingSqlQuery() {
		super();
	}

	/**
	 * 사용자정보를 테이블에서 조회하여 사용자객체에 매핑한다.
	 * @param ds DataSource
	 * @param usersByUsernameQuery String
	 */
	public MappingSqlQuery(DataSource ds, String usersByUsernameQuery) {
		super(ds, usersByUsernameQuery);
    declareParameter(new SqlParameter(Types.VARCHAR));
    compile();
    }

	@Override
  protected abstract Object mapRow(ResultSet rs, int rownum) throws SQLException;
}
