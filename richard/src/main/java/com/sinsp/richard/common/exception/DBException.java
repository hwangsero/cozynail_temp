package com.sinsp.richard.common.exception;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lombok.Data;

@Data
public class DBException extends Exception {

	private static final Logger logger = LoggerFactory.getLogger(DBException.class);

	/** class version id number : default */
	/* 참고 자료 : https://hyeonstorage.tistory.com/253 */
	private static final long serialVersionUID = -6856360375245480763L;


	/** 에러 메세지*/
	private String errMsg = null;

	/** 발생한 에러코드*/
	private String errCode = null;

	public DBException() {}

	public DBException(String message) {
		super(message);
		this.errMsg = message;
	}

	public DBException(Throwable cause) {
		super(cause);
	}

	public DBException(String message, Throwable cause) {
		super(message, cause);
		this.errMsg = message;

		if(cause instanceof SQLException) {
			logger.error("[ " + message + " ] cause : " + cause);
		} else {
			logger.error("[ " + message + " ] cause : " + cause);
		}
	}

	public DBException(String message, Throwable cause , boolean enableSuppression , boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		this.errMsg = message;
	}
}