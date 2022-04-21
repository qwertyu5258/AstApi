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
              <div class="profile_pic"><img class="img-circle profile_img" src="/img/img.jpg" alt="..."></div>
              <div class="profile_info"><span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
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
                  <h2>HOME &gt; Adaptor 설정 &gt; Adaptor 상세 &gt; Instance 상세</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>Instance 상세</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary" onclick="adaptorDetailList();">목록</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">인스턴스 명</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" disabled="disabled">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">데이터 셋 명</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text" disabled="disabled">
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집방식</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" value="DB_TO_DB" disabled="disabled">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집유형</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" value="Postgresql" disabled="disabled">
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">보관주기</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text">
                                    </div>
                                    <div class="col-md-6">
                                      <select class="form-control">
                                        <option>선택</option>
                                        <option>Option one</option>
                                        <option>Option two</option>
                                        <option>Option three</option>
                                        <option>Option four</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">시계열 데이터</label>
                                  <div class="form-control_box">
                                    <div class="radio radio_inline">
                                      <label class="">
                                        <div class="iradio_flat-purple checked" style="position: relative;">
                                          <input class="flat" type="radio" name="yn" value="Y">
                                        </div>예
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;">
                                          <input class="flat" type="radio" name="yn" value="N">
                                        </div>아니오
                                      </label>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">수집 스케줄 유형</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text" value="cvs" disabled="disabled">
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <div class="control-label">사용여부</div>
                                  <div class="form-control_box">
                                    <div class="radio radio_inline">
                                      <label class="">
                                        <div class="iradio_flat-purple checked" style="position: relative;">
                                          <input class="flat" type="radio" name="useYn" value="Y">
                                        </div>사용
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;">
                                          <input class="flat" type="radio" name="useYn" value="N">
                                        </div>사용안함
                                      </label>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              <div class="row result_norepeat" style="display: none;">
                                <div class="form-group row col-md-12">
                                  <div class="control-label">수집 스케줄 설정</div>
                                  <div class="form-control_box repeat_year_box">
                                    <div class="form-control_box">
                                      <div class="radio radio_inline">
                                        <label class="">
                                          <div class="iradio_flat-purple checked" style="position: relative;">
                                            <input class="flat" type="radio" name="scheduleSet" value="Year">
                                          </div>매년
                                        </label>
                                      </div>
                                      <div class="radio radio_inline">
                                        <label>
                                          <div class="iradio_flat-purple" style="position: relative;">
                                            <input class="flat" type="radio" name="scheduleSet" value="Month">
                                          </div>매월
                                        </label>
                                      </div>
                                    <select class="year_limit" name="year">
                                      <option value="">선택</option>
                                      <option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option></select>년
                                    <select class="ml-2" name="month">
                                      <option value="">선택</option>
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                      <option>6</option>
                                      <option>7</option>
                                      <option>8</option>
                                      <option>9</option>
                                      <option>10</option>
                                      <option>11</option>
                                      <option>12</option>
                                    </select>월
                                    <select class="ml-2" name="day">
                                      <option value="">선택 </option>
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                      <option>6</option>
                                      <option>7</option>
                                      <option>8</option>
                                      <option>9</option>
                                      <option>10</option>
                                      <option>11</option>
                                      <option>12</option>
                                      <option>13</option>
                                      <option>14</option>
                                      <option>15</option>
                                      <option>16</option>
                                      <option>17</option>
                                      <option>18</option>
                                      <option>19</option>
                                      <option>20</option>
                                      <option>21</option>
                                      <option>22</option>
                                      <option>23</option>
                                      <option>24</option>
                                      <option>25</option>
                                      <option>26</option>
                                      <option>27</option>
                                      <option>28</option>
                                      <option>29</option>
                                      <option>30</option>
                                    </select>일
                                    <select class="ml-2" name="hour">
                                      <option value="">선택 </option>
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                      <option>6</option>
                                      <option>7</option>
                                      <option>8</option>
                                      <option>9</option>
                                      <option>10</option>
                                      <option>11</option>
                                      <option>12</option>
                                      <option>13</option>
                                      <option>14</option>
                                      <option>15</option>
                                      <option>16</option>
                                      <option>17</option>
                                      <option>18</option>
                                      <option>19</option>
                                      <option>20</option>
                                      <option>21</option>
                                      <option>22</option>
                                      <option>23</option>
                                      <option>24</option>
                                    </select>시
                                    <select class="ml-2" name="minute">
                                      <option value="">선택 </option>
                                      <option>0</option>
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                      <option>6</option>
                                      <option>7</option>
                                      <option>8</option>
                                      <option>9</option>
                                      <option>10</option>
                                      <option>11</option>
                                      <option>12</option>
                                      <option>13</option>
                                      <option>14</option>
                                      <option>15</option>
                                      <option>16</option>
                                      <option>17</option>
                                      <option>18</option>
                                      <option>19</option>
                                      <option>20</option>
                                      <option>21</option>
                                      <option>22</option>
                                      <option>23</option>
                                      <option>24</option>
                                      <option>25</option>
                                      <option>26</option>
                                      <option>27</option>
                                      <option>28</option>
                                      <option>29</option>
                                      <option>30</option>
                                      <option>31</option>
                                      <option>32</option>
                                      <option>33</option>
                                      <option>34</option>
                                      <option>35</option>
                                      <option>36</option>
                                      <option>37</option>
                                      <option>38</option>
                                      <option>39</option>
                                      <option>40</option>
                                      <option>41</option>
                                      <option>42</option>
                                      <option>43</option>
                                      <option>44</option>
                                      <option>45</option>
                                      <option>46</option>
                                      <option>47</option>
                                      <option>48</option>
                                      <option>49</option>
                                      <option>50</option>
                                      <option>51</option>
                                      <option>52</option>
                                      <option>53</option>
                                      <option>54</option>
                                      <option>55</option>
                                      <option>56</option>
                                      <option>57</option>
                                      <option>58</option>
                                      <option>59</option>
                                    </select>분
                                    <button class="btn btn-xs btn-danger ml-4">즉시실행</button>
                                    <div class="icheckbox_flat-purple" style="position: relative;">
                                      <input class="flat" type="checkbox" style="position: absolute; opacity: 0;">
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-12">
                                  <label class="control-label">비고</label>
                                  <div class="form-control_box duplicate_box">
                                    <input class="form-control" type="text">
                                  </div>
                               </div>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                          <div class="col-md-12">
                            <div class="x_panel">
                              <div class="cont_title_box">
                                <h3>Instance 설정정보</h3>
                                <div class="right_btns">
                                  <a class="btn btn-success" href="">매칭정보 설정</a>
                                  <button class="btn btn-primary">저장</button>
                                </div>
                              </div>
                              <div class="x_content">
                                <div class="table_btns mb-2">
                                  <button class="btn btn-primary btn_add">+ 추가</button>
                                  <button class="btn btn-danger btn_remove">- 삭제</button>
                                </div>
                                <div class="table_responsive">
                                  <table class="table table-striped table-bordered bulk_action" style="width:100%">
                                    <colgroup>
                                      <col width="44px">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" id="check-all" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <th>항목ID(key)</th>
                                      <th>항목명</th>
                                      <th>항목값(value)</th>
                                      <th>항목설명</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB1">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                    </tr>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB2">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB">
                                      </td>
                                    </tr>
                                    <tr>
                                      <th>
                                        <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                      </th>
                                      <td>
                                        <input type="text" value="DB_TO_DB3" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
                                      </td>
                                      <td>
                                        <input type="text" value="DB_TO_DB" disabled="">
                                      </td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
              </div>
            </div>
          </div>

    </div>

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>
          <script type="text/javascript" src="../js/adaptor/instanceDetail.js"></script>
          <script src="http://jonmiles.github.io/bootstrap-treeview/js/bootstrap-treeview.js"></script>

  </body>
</html>