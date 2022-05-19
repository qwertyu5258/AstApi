<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LX DT | 데이터 셋 리스트 상세</title>
  <%@include file="../A1.Common/commonCss.jsp" %>
</head>
<body class="nav-md">
<div class="container body">
  <div class="main_container">
    <div class="col-md-3 left_col menu_fixed">
      <div class="left_col scroll-view">
        <div class="navbar nav_title"><a class="site_title" href="index"><i class="fa fa-paw"> </i><span>LX DT </span></a></div>
        <div class="clearfix"> </div>
        <div class="profile clearfix">
          <div class="profile_pic"><img class="img-circle profile_img" src="img/img.jpg" alt="..."></div>
          <div class="profile_info"><span>Welcome,</span>
            <h2>John Doe</h2>
          </div>
        </div><br>
        <%@include file="../A1.Menu/menu.jsp" %>
        <div class="sidebar-footer hidden-small"><a data-toggle="tooltip" data-placement="top" title="로그아웃"><span class="glyphicon glyphicon-off" aria-hidden="Logout"></span></a></div>
      </div>
    </div>
    <div class="top_nav">
      <div class="nav_menu">
        <div class="nav toggle"><a id="menu_toggle"><i class="fa fa-bars"> </i></a></div>
        <div class="nav navbar-nav">
          <ul class="navbar-right">
            <li class="nav-item dropdown open"><a class="user-profile dropdown-toggle" id="navbarDropdown" href="" aria-haspopup="true" data-toggle="dropdown" aria-expanded="false"> <img src="img/img.jpg" alt="">John Doe</a>
              <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown"><a class="dropdown-item">Profile</a><a class="dropdown-item"> <span class="badge bg-red pull-right">50%</span><span>Settings</span></a><a class="dropdown-item">Help</a><a class="dropdown-item" href="login"><i class="fa fa-sign-out pull-right"></i>log Out</a></div>
            </li>
            <li class="nav-item dropdown open" role="presentation"><a class="dropdown-toggle info-number" id="navbarDropdown1" href="" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span></a>
              <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                <li class="nav-item">
                  <div class="text-center"> <a class="dropdown-item" href=""> <strong>See All Alerts</strong><i class="fa fa-angle-right"></i></a></div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right_col" role="main">
      <div class="row">
        <div class="col-md-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>HOME > 데이터셋 > 메타정보 상세</h2>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <form class="form-horizontal form-label-left">
                <div class="cont_title_box">
                  <h3>메타정보 상세</h3>
                </div>
                <div class="table_responsive">
                  <h4 class="mb-2">메타기본</h4>
                  <table class="table type02">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>데이터 셋 명</th>
                      <td><input class="form-control col-md-8" type="text" value="LX_연계1" disabled="disabled"></td>
                      <th>메타데이터파일 식별자</th>
                      <td><input class="form-control col-md-8" type="text" value="문화재" disabled="disabled"></td>
                    </tr>
                    <tr>
                      <th>메타데이터언어</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>메타데이터적용대상명</th>
                      <td><input class="form-control col-md-8" type="text" value="문화시설정보"></td>
                    </tr>
                    <tr>
                      <th>메타데이터작성일</th>
                      <td><input class="form-control col-md-8" type="text" value="한국국토정보공사"></td>
                      <th>메타데이터버전</th>
                      <td>
                        <select class="form-control col-md-8 mr-4">
                          <option>CC BY</option>
                          <option>CC BY-SA</option>
                          <option>CC BY-ND</option>
                          <option>CC BY-NC</option>
                          <option>CC BY-NC-SA</option>
                          <option>CC BY-NC-ND</option>
                        </select>
                        <a href="#" class="btn btn-success">라인선스 정책</a>
                      </td>
                    </tr>
                    <tr>
                      <th>책임기관명</th>
                      <td><input class="form-control col-md-8" type="text" value="한국국토정보공사"></td>
                      <th>책임부서명</th>
                      <td><input class="form-control col-md-8" type="text" value="한국국토정보공사"></td>
                    </tr>
                    <tr>
                      <th>책임담당자</th>
                      <td><input class="form-control col-md-8" type="text" value="주소관리부"></td>
                      <th>전화</th>
                      <td><input class="form-control col-md-8" type="text" value="홍길동"></td>
                    </tr>
                    <tr>
                      <th>키워드</th>
                      <td><input class="form-control col-md-8" type="text" value="010-1234-1234"></td>
                      <th>업데이트주기</th>
                      <td><input class="form-control col-md-8" type="text" value="test@naver.com"></td>
                    </tr>
                    <tr>
                      <th>팩스</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>제공형태</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>주소</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>설명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>메타데이터파일식별자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>메타데이터언어</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>메타데이터적용대상명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>메타데이터작성일</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>제공API주소</th>
                      <td colspan="3"><input class="form-control" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>데이터셋설명</th>
                      <td colspan="3">
                        <textarea class="col-md-12" placeholder="전주시 완산구 문화시설정보"></textarea>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                  <h4 class="mb-2">공간정보(데이터 품질)</h4>
                  <table class="table type02">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>데이터 요약</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>품질적용대상</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>항공사진 촬영일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>항공라이다 촬영일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>3차원공간정보 제작일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>독취기명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>항공사진 제작일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>DEM 제작일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>정사영상 제작일자</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>매질종류</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>위치(X)</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>위치(Y)</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>대상명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>원천자료</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>평가기준문서</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>대상위치-도로명/지번주소</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    </tbody>
                  </table>
                  <h4 class="mb-2">공간정보(좌표계)</h4>
                  <table class="table type02">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>투영원점</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>Proj4</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>기준타원체</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>투영법</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    </tbody>
                  </table>
                  <h4 class="mb-2">공간정보(좌표계)</h4>
                  <table class="table type02">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>배포포멧-포맷명칭</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>배포포맷-포맷버전</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>배포자정보-배보기관명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>배포자정보-배포부서명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>배포자정보-배포연락처</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <td></td>
                      <td></td>
                    </tr>
                    </tbody>
                  </table>
                  <h4 class="mb-2">문화제(속성)</h4>
                  <table class="table type02">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>종목코드</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>종목명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>시도코드</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>시도명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    <tr>
                      <th>시군구코드</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                      <th>시군구명</th>
                      <td><input class="form-control col-md-8" type="text" value=""></td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <div class="right_btns">
                  <button class="btn btn-primary">수정</button>
                  <button class="btn btn-danger">삭제</button>
                  <button class="btn btn-success">목록</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer>
      <div class="full-right"></div>Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
      <div class="clearfix"></div>
    </footer>
  </div>
</div>

<%@include file="../A1.Common/commonJs.jsp" %>

</body>
</html>