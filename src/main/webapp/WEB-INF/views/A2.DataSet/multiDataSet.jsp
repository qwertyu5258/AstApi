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
                  <h2>HOME &gt; 데이터 셋 > 융복합 데이터 셋 리스트 > 융복합 설정</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content">
                  <form class="form-horizontal form-label-left">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                              <div class="cont_title_box">
                                <h3>융복합 설정</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary">저장</button>
                                  <button class="btn btn-danger">삭제</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">데이터 셋 명</label>
                                  <div class="form-control_box">
                                    <div class="col-md-6">
                                      <input class="form-control" type="text" value="종합">
                                    </div>
                                    <a href="#" class="btn btn-primary">선택</a>
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">메타 테이블 명</label>
                                  <div class="col-md-6">
                                    <input class="form-control" type="text" value="융복합 1">
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-12 col-md-6">
                                  <div class="control-label">수집 스케쥴 유형</div>
                                  <div class="form-control_box repeat_box">
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple checked" style="position: relative;"><input class="flat" type="radio" checked="" name="repeat" data-repeat="repeat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>반복
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;"><input class="flat" type="radio" name="repeat" data-repeat="no_repeat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>미반복
                                      </label>
                                    </div>
                                  </div>
                                </div>
                                <div class="form-group row col-12 col-md-6">
                                  <label class="control-label">보관주기</label>
                                  <div class="col-md-4">
                                    <input class="form-control" type="text" value="">
                                  </div>
                                  <div style="line-height:calc(1.5em + 0.75rem + 2px);">일</div>
                                </div>
                              </div>
                              <div class="row result_repeat">
                                <div class="form-group row col-md-12">
                                  <div class="control-label">수집 스케줄 설정</div>
                                  <div class="form-control_box repeat_year_box">
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple checked" style="position: relative;"><input class="flat" id="repeatYear" type="radio" checked="" name="year" data-repeat="year" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>매년
                                      </label>
                                    </div>
                                    <div class="radio radio_inline">
                                      <label>
                                        <div class="iradio_flat-purple" style="position: relative;"><input class="flat" id="repeatMonth" type="radio" name="year" data-repeat="month" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>매월
                                      </label>
                                    </div>
                                    <select class="ml-4" name="month">
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
                                    <button class="btn btn-xs btn-primary ml-4">즉시실행</button>
                                    <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                  </div>
                                </div>
                              </div>
                              <div class="row result_norepeat" style="display: none;">
                                <div class="form-group row col-md-12">
                                  <div class="control-label">수집 스케줄 설정</div>
                                  <div class="form-control_box repeat_year_box">
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
                                    <div class="icheckbox_flat-purple" style="position: relative;"><input class="flat" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
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
                              <div class="x_content">
                                <div class="multi_set_wrap">
                                  <ul class="columns">
                                    <li class="column to-do-column">
                                      <div class="column-header">
                                        <h4>융복합 대상 데이터셋</h4>
                                      </div>
                                      <div class="result_wrap">
                                        <div class="result">문화재1,문화재2,문화재3</div>
                                        <button class="btn btn-primary">선택</button>
                                      </div>
                                      <div class="data_set_box v02">
                                        <div class="data_set">
                                          <h5 class="title">DataSet02 A (문화재1)</h5>
                                          <ul class="data-list">
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                          </ul>
                                        </div>
                                        <div class="data_set">
                                          <h5 class="title">DataSet03 B (문화재2)</h5>
                                          <ul class="data-list">
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                          </ul>
                                        </div>
                                        <div class="data_set">
                                          <h5 class="title">DataSet04 C (문화재3)</h5>
                                          <ul class="data-list">
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                            <li class="data"><p>- c_name01(한글컬럼명1)</p></li>
                                          </ul>
                                        </div>
                                      </div>
                                    </li>
                                    <li class="column doing-column">
                                      <div class="column-header">
                                        <h4>컬럼매칭</h4>
                                      </div>
                                      <div class="data_set_box">
                                        <ul class="data-list" id="">
                                          <li class="data">
                                            <div class="matching_data_wrap">
                                              <div class="matching_data">A.c_name02_c_name_03</div>
                                              <button class="btn btn-primary">ID 초기화</button>
                                            </div>
                                          </li>
                                          <li class="data">
                                            <div class="matching_data_wrap">
                                              <div class="matching_data">A.c_name02_c_name_03</div>
                                            </div>
                                          </li>
                                          <li class="data">
                                            <div class="matching_data_wrap">
                                              <div class="matching_data">A.c_name02_c_name_03</div>
                                            </div>
                                          </li>
                                          <li class="data">
                                            <div class="matching_data_wrap">
                                              <div class="matching_data">A.c_name02_c_name_03</div>
                                            </div>
                                          </li>
                                          <li class="data">
                                            <div class="matching_data_wrap">
                                              <div class="matching_data">A.c_name02_c_name_03</div>
                                            </div>
                                          </li>
                                        </ul>
                                      </div>
                                    </li>
                                    <li class="column doing-column">
                                      <div class="column-header">
                                        <h4>융복합 데이터 셋</h4>
                                      </div>
                                      <div class="data_set_box">
                                        <div class="data_set">
                                          <button>DataSet05 (융복합)</button>
                                          <ul class="data-list">
                                            <li class="data">- id(한글컬럼명)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                            <li class="data">- cname01(한글컬럼명1)</li>
                                          </ul>
                                        </div>
                                      </div>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                    <div class="row">
                      <div class="col-md-12">
                          <div class="x_panel">
                            <div class="x_content">
                              <div class="cont_title_box">
                                <h3>조건설정</h3>
                                <div class="right_btns">
                                  <button class="btn btn-primary">초기화</button>
                                  <button class="btn btn-primary">쿼리입력</button>
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-md-12">
                                  <input class="form-control col-md-3 mr-2" type="text" value="A.cname_01" >
                                  <select class="form-control col-md-3 mr-2">
                                    <option>=</option>
                                    <option><</option>
                                    <option>></option>
                                    <option><=</option>
                                    <option>>=</option>
                                  </select>
                                  <input class="form-control col-md-3" type="text" value="B.cname_01">
                                </div>
                              </div>
                              <div class="row">
                                <div class="form-group row col-md-12">
                                  <input class="form-control col-md-3 mr-2" type="text" value="A.cname_01" >
                                  <select class="form-control col-md-3 mr-2">
                                    <option>=</option>
                                    <option><</option>
                                    <option>></option>
                                    <option><=</option>
                                    <option>>=</option>
                                  </select>
                                  <input class="form-control col-md-3" type="text" value="B.cname_01">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- //조건설정 -->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                            <div class="cont_title_box">
                              <h3>SQL문</h3>
                              <div class="right_btns">
                                <button class="btn btn-primary">실행</button>
                              </div>
                            </div>
                            <div class="row">
                              <div class="form-group row col-md-12">
                                <textarea style="width:100%;height:10rem" class="col-md-12">select cast(A.c_name_01 as text)||'.'||cast(B.c_name02 as text) as id, A.c_name_02 as c_name01 ,A.c_name_03 as c_name02 ,A.c_name_04  as c_name03 ,B.c_name_02 as c_name04 ,B.c_name_03 as c_name05 ,B.c_name_04 as c_name06 ,C.c_name_02 as c_name07 from data_service_broker.”lx. DataSet02:1.0” A , data_service_broker.” DataSet03:1.0” B , data_service_broker.” DataSet04:1.0” C where A.c_name_01 = B.c_name_01 and A.c_name_01 = C.c_name_01</textarea>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- // SQL문 -->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="x_panel">
                          <div class="x_content">
                            <div class="cont_title_box">
                              <h3>실행결과</h3>
                            </div>
                            <div class="row">
                              <div class="col-12 col-md-12">
                                <div class="table_responsive table-modal-height">
                                  <div class="talbel_total mb-2">조회 2 건</div>
                                  <table class="table table-striped">
                                    <colgroup>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                      <th>id</th>
                                      <th>c_name01</th>
                                      <th>c_name02</th>
                                      <th>c_name03</th>
                                      <th>c_name04</th>
                                      <th>c_name05</th>
                                      <th>c_name06</th>
                                      <th>c_name07</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
                                      </tr>
                                      <tr>
                                        <td>B01.B04</td>
                                        <td>B01</td>
                                        <td>B02</td>
                                        <td>B03</td>
                                        <td>B04</td>
                                        <td>B05</td>
                                        <td>B06</td>
                                        <td>B07</td>
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
                    <!-- // 실행결과 -->
                  </form>
              </div>
            </div>
          </div>

    </div>

    <%@include file="/WEB-INF/views/A1.Common/commonJs.jsp" %>

  </body>
</html>