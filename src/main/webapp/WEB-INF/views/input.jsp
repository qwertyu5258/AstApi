<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LX DT | 등록폼</title>
    <%@include file="A1.Common/commonCss.jsp" %>
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

            <%@include file="A1.Menu/menu.jsp" %>

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
                  <h2>데이터 셋 메타정보 등록</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left">
                    <h3>데이터 셋</h3>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 셋 ID</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text">
                          <button class="btn btn-danger btn-sm">중복체크</button>
                          <div class="duple_text danger_text">* 이미 사용중인 ID 입니다.</div>
                          <div class="duple_text success_text">* 사용 가능합니다.</div>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 셋 명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 모델 ID</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text">
                          <button class="btn btn-primary"> <i class="glyphicon glyphicon-search"></i></button>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 셋 설명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">분류체계</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">갱신주기</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">제공기관</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">제공시스템</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">제공부서</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">담당자</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">연락처</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">이메일</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-md-12">
                        <label class="control-label">제공API주소</label>
                        <div class="form-control_box">
                          <input class="form-control w_100" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">소유권</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">제공항목</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">라이선스</label>
                        <div class="form-control_box">
                          <select class="form-control">
                            <option>Choose option</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">지역범위</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="x_panel"> 
                <div class="x_title"> 
                  <h2>등록폼</h2>
                  <div class="clearfix"> </div>
                </div>
                <div class="x_content"> <br>
                  <form class="form-horizontal form-label-left">
                    <div class="cont_title_box"> 
                      <h3>인스턴스 등록</h3>
                      <div class="right_btns"> <a class="btn btn-success" href="">목록</a>
                        <button class="btn btn-primary">저장</button>
                        <button class="btn btn-danger">삭제</button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">인스턴스 ID</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text">
                          <button class="btn btn-danger btn-sm">중복체크</button>
                          <div class="duple_text danger_text">* 이미 사용중인 ID 입니다.</div>
                          <div class="duple_text success_text">* 사용 가능합니다.</div>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">인스턴스 명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row"> 
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 셋 명</label>
                        <div class="form-control_box duplicate_box">
                          <input class="form-control" type="text">
                          <button class="btn btn-primary"> <i class="glyphicon glyphicon-search"></i></button>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">사용여부</div>
                        <div class="form-control_box">
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" type="radio" checked name="use">사용
                            </label>
                          </div>
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" type="radio" name="use">사용안함
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row"> 
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">수집방식</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">수집유형</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row"> 
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">데이터 모델 명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">메타 데이블 명</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row"> 
                      <div class="form-group row col-12 col-md-6">
                        <div class="control-label">수집 스케쥴 유형</div>
                        <div class="form-control_box repeat_box">
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" type="radio" checked name="repeat" data-repeat="repeat">반복
                            </label>
                          </div>
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" type="radio" name="repeat" data-repeat="no_repeat">미반복
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group row col-12 col-md-6">
                        <label class="control-label">비고</label>
                        <div class="form-control_box">
                          <input class="form-control" type="text">
                        </div>
                      </div>
                    </div>
                    <div class="row result_repeat">
                      <div class="form-group row col-md-12">
                        <div class="control-label">수집 스케줄 설정</div>
                        <div class="form-control_box repeat_year_box">
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" id="repeatYear" type="radio" checked name="year" data-repeat="year">매년
                            </label>
                          </div>
                          <div class="radio radio_inline">
                            <label>
                              <input class="flat" id="repeatMonth" type="radio" name="year" data-repeat="month">매월
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
                          <button class="btn btn-xs btn-danger ml-4">즉시실행</button>
                          <input class="flat" type="checkbox">
                        </div>
                      </div>
                    </div>
                    <div class="row result_norepeat">
                      <div class="form-group row col-md-12">
                        <div class="control-label">수집 스케줄 설정</div>
                        <div class="form-control_box repeat_year_box">
                          <select class="year_limit" name="year"> 
                            <option value="">선택</option>
                          </select>년
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
                          <input class="flat" type="checkbox">
                        </div>
                      </div>
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

    <%@include file="A1.Common/commonJs.jsp" %>

  </body>
</html>