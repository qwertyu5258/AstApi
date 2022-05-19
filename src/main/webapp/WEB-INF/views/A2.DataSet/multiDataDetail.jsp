<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>LX DT | 테이블 형태~~1</title>
  <%@include file="/WEB-INF/views/A1.Common/commonCss.jsp" %>
</head>
<body class="nav-md">
<div class="container body">
  <div class="main_container">
    <div class="col-md-3 left_col menu_fixed">
      <div class="left_col scroll-view">
        <div class="navbar nav_title"><a class="site_title" href="index"><i class="fa fa-paw"> </i><span>LX DT </span></a></div>
        <div class="clearfix"> </div>
        <div class="profile clearfix">

        </div><br>

        <%@include file="/WEB-INF/views/A1.Menu/menu.jsp" %>

        <div class="sidebar-footer hidden-small"><a data-toggle="tooltip" data-placement="top" title="로그아웃"><span class="glyphicon glyphicon-off" aria-hidden="Logout"></span></a></div>
      </div>
    </div>
    <div class="top_nav">
      <div class="nav_menu">
        <div class="nav toggle"><a id="menu_toggle"><i class="fa fa-bars"> </i></a></div>
        <div class="nav navbar-nav">
          <ul class="navbar-right">
            <li class="nav-item dropdown open"><a class="user-profile dropdown-toggle" id="navbarDropdown" href="" aria-haspopup="true" data-toggle="dropdown" aria-expanded="false"> <img src="/img/img.jpg" alt="">John Doe</a>
              <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown"><a class="dropdown-item">Profile</a><a class="dropdown-item"> <span class="badge bg-red pull-right">50%</span><span>Settings</span></a><a class="dropdown-item">Help</a><a class="dropdown-item" href="login"><i class="fa fa-sign-out pull-right"></i>log Out</a></div>
            </li>
            <li class="nav-item dropdown open" role="presentation"><a class="dropdown-toggle info-number" id="navbarDropdown1" href="" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span></a>
              <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
                <li class="nav-item"><a class="dropdown-item"><span class="image"> <img src="/img/img.jpg" alt="Profile Image"></span><span>John Smith</span><span class="time">3 mins ago</span><span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where...</span></a></li>
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
              <h2>HOME &gt; 데이터 셋 &gt; 융복합 데이터 셋 리스트 >융복합 데이터 상세</h2>
              <div class="clearfix"> </div>
            </div>
            <div class="x_content">
              <form class="form-horizontal form-label-left">
                <div class="cont_title_box mb-4">
                  <h3>융복합 데이터 셋 리스트 상세</h3>
                  <div class="right_btns">
                    <a href="#" class="btn btn-primary">융복합 설정</a>
                    <a href="#" class="btn btn-success">목록</a>
                    <a href="#" class="btn btn-primary">이력보기</a>
                  </div>
                </div>
                <div class="table_responsive mb-4">
                  <table class="table type02 table-bordered">
                    <colgroup>
                      <col width="15%">
                      <col width="*">
                      <col width="15%">
                      <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                      <th>데이터 셋 명</th>
                      <td>종합</td>
                      <th>데이터 모델 명</th>
                      <td>융복합</td>
                    </tr>
                    <tr>
                      <th>메타 테이블명</th>
                      <td colspan="3">융복합1</td>
                    </tr>
                    <tr>
                      <th>융복합대상 데이터 셋</th>
                      <td colspan="3">문화재1,문화재2</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                  <div class="table_responsive">
                    <div class="talbel_total mb-2">총 100 건</div>
                    <table class="table table-striped">
                      <colgroup>
                      </colgroup>
                      <thead>
                      <tr>
                        <th>문화재명</th>
                        <th>문화재 순번</th>
                        <th>고유번호</th>
                        <th>유형</th>
                        <th>상태</th>
                        <th>작성일</th>
                        <th>적재일시</th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>문화재명1</td>
                          <td>11</td>
                          <td>1111</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명2</td>
                          <td>12</td>
                          <td>1112</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명3</td>
                          <td>13</td>
                          <td>1113</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명4</td>
                          <td>14</td>
                          <td>1114</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명5</td>
                          <td>15</td>
                          <td>1115</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명6</td>
                          <td>16</td>
                          <td>1116</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명7</td>
                          <td>17</td>
                          <td>1117</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명8</td>
                          <td>18</td>
                          <td>1118</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명9</td>
                          <td>19</td>
                          <td>1119</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                        <tr>
                          <td>문화재명10</td>
                          <td>20</td>
                          <td>1120</td>
                          <td>1</td>
                          <td>성공</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                          <td>2019. 6.18 오후 1:07:39</td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="nav justify-content-center">
                      <ul class="pagination">
                        <li class="page-item"> <a class="page-link" href="#">&lt; </a></li>
                        <li class="page-item"> <a class="page-link" href="#">1   </a></li>
                        <li class="page-item"> <a class="page-link" href="#">2 </a></li>
                        <li class="page-item"> <a class="page-link" href="#">&gt; </a></li>
                      </ul>
                    </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>

</body>
</html>