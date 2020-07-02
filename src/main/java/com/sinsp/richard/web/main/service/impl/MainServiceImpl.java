package com.sinsp.richard.web.main.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.sinsp.richard.common.exception.DBException;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.main.dao.MainDao;
import com.sinsp.richard.web.main.service.MainService;
import com.sinsp.richard.web.main.vo.MainVo;
import com.sinsp.richard.web.user.dao.UserDao;
import com.sinsp.richard.web.user.service.UserService;
import com.sinsp.richard.web.user.vo.UserVo;


@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class MainServiceImpl implements MainService{

	@Autowired
	private MainDao mainDao;

	@Override
	public ArrayList<MainVo> getMainList() {
		ArrayList<MainVo> list = new ArrayList<MainVo>();

		MainVo mainVo = new MainVo();
		MainVo mainVo2 = new MainVo();
		MainVo mainVo3 = new MainVo();
		MainVo mainVo4 = new MainVo();
		MainVo mainVo5 = new MainVo();
		MainVo mainVo6 = new MainVo();

		mainVo.setNo(1);
		mainVo.setTitle("코지 네일 샵 오픈");
		mainVo.setContent("Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.");
		mainVo.setUserNm("윤지선");
		mainVo.setUserTel("010-0000-0000");
		mainVo.setPhotoUrl("http://localhost/img/cozy/95799837_137445281229552_3014634905752523466_n.jpg");
		mainVo.setUpdateDate("2020.07.01");
		mainVo.setColor("GN");

		list.add(mainVo);

		mainVo2.setNo(2);
		mainVo2.setTitle("코지 네일 샵");
		mainVo2.setContent("Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.");
		mainVo2.setUserNm("윤지선");
		mainVo2.setUserTel("010-0000-0000");
		mainVo2.setPhotoUrl("http://localhost/img/cozy/93600498_244156393616139_6459269023249327437_n.jpg");
		mainVo2.setUpdateDate("2020.07.02");
		mainVo2.setColor("RE");

		list.add(mainVo2);

		mainVo3.setNo(3);
		mainVo3.setTitle("코지 네일 샵 놀러오세요");
		mainVo3.setContent("");
		mainVo3.setUserNm("윤지선");
		mainVo3.setUserTel("010-0000-0000");
		mainVo3.setPhotoUrl("http://localhost/img/cozy/93189889_169012144566792_7288159270551491299_n.jpg");
		mainVo3.setUpdateDate("2020.07.02");
		mainVo3.setColor("SK");

		list.add(mainVo3);

		mainVo4.setNo(4);
		mainVo4.setTitle("이쁜 네일을 위한 살롱");
		mainVo4.setContent("");
		mainVo4.setUserNm("윤지선");
		mainVo4.setUserTel("010-0000-0000");
		mainVo4.setPhotoUrl("http://localhost/img/cozy/91618656_2811207475663361_255030066860166892_n.jpg");
		mainVo4.setUpdateDate("2020.07.02");
		mainVo4.setColor("GR");

		list.add(mainVo4);

		mainVo5.setNo(5);
		mainVo5.setTitle("나를 위한 선물");
		mainVo5.setContent("");
		mainVo5.setUserNm("윤지선");
		mainVo5.setUserTel("010-0000-0000");
		mainVo5.setPhotoUrl("http://localhost/img/cozy/100947322_290022428680257_4490345737638263887_n.jpg");
		mainVo5.setUpdateDate("2020.07.02");
		mainVo5.setColor("OR");

		list.add(mainVo5);

		mainVo6.setNo(6);
		mainVo6.setTitle("Mussum ipsum cacilds");
		mainVo6.setContent("Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.");
		mainVo6.setUserNm("윤지선");
		mainVo6.setUserTel("010-0000-0000");
		mainVo6.setPhotoUrl("http://localhost/img/KXMaza2fV4L9IuhRVZ4QhUK8.jpg");
		mainVo6.setUpdateDate("2020.07.01");
		mainVo6.setColor("GN");

		list.add(mainVo6);

		return list;
		//return mainDao.getMainList();
	}
}