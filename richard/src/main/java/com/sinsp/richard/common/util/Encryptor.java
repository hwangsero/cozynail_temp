package com.sinsp.richard.common.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class Encryptor{

	private static Log log = LogFactory.getLog(Encryptor.class);

	public static void main(String[] args) {
	   StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
	   encryptor.setPassword("jdbcPassWord");   // xml에 configurationEncryptor 빈에 들어갈 passWord

	   // Mysql버전 5.1.x 이후 버전부터는 타임존을 인식하지 못하는 이슈가 있음
	   // 기존 String mysqlUrl = encryptor.encrypt("jdbc:mysql://www.skysky.xyz:1562/spring");에서 아래와 같이 추가해줘야된다..
	   // String mysqlUrl = encryptor.encrypt("jdbc:mysql://www.skysky.xyz:1562/spring?serverTimezone=UTC&amp;verifyServerCertificate=false&amp;useSSL=false");

	   // driverClassName를 암호화 하면 Context initialization failed 에러가 발생하면서 Tomcat이 구동되지 않을수있음
	   // 주의!! String mysqlDriver = encryptor.encrypt("com.mysql.jdbc.Driver");
	   String mysqlUrl = encryptor.encrypt("jdbc:mysql://www.skysky.xyz:1562/sinsp?serverTimezone=UTC");
	   String mysqlUserName = encryptor.encrypt("snoopy147");
	   String mysqlPassWord = encryptor.encrypt("wltjs147");

	   log.info("");
	   log.info("mysql.mysqlUrl=ENC(" + mysqlUrl + ")");
	   log.info("mysql.mysqlUserName=ENC(" + mysqlUserName + ")");
	   log.info("mysql.mysqlPassWord=ENC(" + mysqlPassWord + ")");
	}
}