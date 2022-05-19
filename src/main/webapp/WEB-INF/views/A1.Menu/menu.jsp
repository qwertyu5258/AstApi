<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="main_menu_side hidden-print main_menu" id="sidebar-menu">
    <div class="menu_section">
        <ul class="nav side-menu">
            <li> <a><i class="fa fa-list-alt"></i>메타테이블 관리<span class="fa fa-chevron-down"> </span></a>
                <ul class="nav child_menu">
                    <li><a href="metaTable">메타테이블</a></li>
                    <li><a href="metaTableItemManage">메타정보 항목관리</a></li>
<%--                    <li><a href="metaTblReferPopup">참조테이블검색팝업</a></li>--%>
                    <%--<li><a href="metaTableInfo">(내부)테이블정보</a></li>--%>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>Adaptor 관리<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="adaptorConfig">Adaptor 설정</a></li>
                    <%--<li><a href="adaptorDetail">Adaptor 상세</a></li>--%>
                    <%--<li><a href="instanceDetail">Instance 상세</a></li>--%>
                    <%--<li><a href="instanceAdd">(팝업)Instance 등록</a></li>--%>
                    <%--<li><a href="instanceUpdate">(팝업)Instance 수정</a></li>--%>
                    <%--<li><a href="idConfigPopup">(팝업)ID 설정 팝업</a></li>--%>
                    <%--<li><a href="instanceConfig">Instance 매칭정보 설정</a></li>--%>
                    <%--<li><a href="adaptorOperation">Adaptor 운영</a></li>--%>
                    <li><a href="instanceInquiry">Instance 조회</a></li>
                    <li><a href="instanceSet">접속유형 항목관리</a></li>
                    <li><a href="adaptorSet">Adaptor 유형관리</a></li>
                    <li><a href="preProcessList">전처리 목록</a></li>
                    <li><a href="preProcessRegist">전처리 등록</a></li>
                    <li><a href="preProcessDetail">전처리 상세</a></li>
                    <li><a href="ApiDataConfigPopup">API Data 설정(팝업 추가)</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>수집오류<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="collectErrList">수집오류 목록</a></li>
                    <li><a href="collectErrDetail"> -> 수집오류 상세</a></li>
                    <li><a href="tableColChangePopup">(팝업)테이블 컬럼 변경 팝업</a></li>
                    <li><a href="InstanceMatchInfoPopup">(팝업)Instance 매칭정보 변경</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>데이터 모델 관리<span class="fa fa-chevron-down"> </span></a>
                <ul class="nav child_menu">
                    <li><a href="dataModelList">데이터모델 리스트</a></li>
                    <li><a href="dataModelRegist">데이터모델 등록</a></li>
                    <li><a href="dataModelDetail">데이터모델 상세</a></li>
                    <li><a href="#">메타 팝업</a></li>
                </ul>
            </li>

            <li> <a><i class="fa fa-list-alt"></i>수집오류<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="dataCollectList">수집오류 리스트</a></li>
                    <li><a href="dataCollectDetail">수집오류 상세</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>데이터 셋<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="dataSetList">65p 데이터 셋 리스트</a></li>
                    <li><a href="dataSetDetail">67p데이터 셋 상세</a></li>
                    <li><a href="dataSetLogPopup">69p 이력보기 팝업</a></li>
                    <li><a href="dataSetFailLogPopup">70p 실패건수 팝업</a></li>
                    <li><a href="metaInfoDetail">71p 메타정보 상세</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>모니터링<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="">모니터링</a></li></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>시스템관리<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="codeManage">78p 코드관리</a></li></li>
                    <li><a href="codeGroupAddPopup">80p 코드그룹 등록 팝업</a></li></li>
                    <li><a href="codeGroupDetailPopup">81p 코드그룹 상세 팝업</a></li></li>
                    <li><a href="codeAddPopup">82p 코드 등록 팝업</a></li></li>
                    <li><a href="codeDetailPopup">83p 코드 상세 팝업</a></li></li>
                    <li><a href="classManage">84p 분류관리</a></li></li>
                    <li><a href="">==</a></li>

                    <li><a href="metaInfoList">메타정보리스트</a></li>
                    <li><a href="multiDataList">융복합 데이터 셋 리스트</a></li>
                    <li><a href="multiDataDetail">융복합 데이터 상세</a></li>
                    <li><a href="multiDataSet">융복합 설정</a></li>

                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>완료페이지<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <%--                    <li><a href="adaptorConfig">Adaptor 설정</a></li>--%>
                    <li><a href="adaptorDetail">Adaptor 상세</a></li>
                    <li><a href="instanceDetail">Instance 상세</a></li>
                    <li><a href="instanceAdd">(팝업)Instance 등록</a></li>
                    <li><a href="instanceUpdate">(팝업)Instance 수정</a></li>
                    <li><a href="idConfigPopup">(팝업)ID 설정 팝업</a></li>
                    <li><a href="instanceConfig">Instance 매칭정보 설정</a></li>
                    <li><a href="adaptorOperation">Adaptor 운영</a></li>
                    <%--                    <li><a href="instanceInquiry">Instance 조회</a></li>--%>
                    <%--                    <li><a href="instanceSet">접속유형 항목관리</a></li>--%>
                    <%--                    <li><a href="adaptorSet">Adaptor 유형관리</a></li>--%>
                    <%--                    <li><a href="processList">전처리 리스트</a></li>--%>
                    <%--                    <li><a href="processRegist">전처리 등록</a></li>--%>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>데이터분석<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a>분석조건관리<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="#">분석이미지관리</a></li>
                        </ul>
                    </li>
                    <li><a href="port">포트관리</a></li>
                    <li><a href="#">분석시나리오관리</a></li>

                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>sample<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="table"> <i class="fa fa-user"> </i>테이블 형태</a></li>
                    <li> <a href="modal"> <i class="fa fa-user"> </i>모달 형태</a></li>
                    <li> <a href="search"> <i class="fa fa-user"> </i>검색 형태</a></li>
                    <li> <a href="input"> <i class="fa fa-user"> </i>등록폼</a></li>
                    <li> <a href="clcntErrorDetail"> <i class="fa fa-user"> </i>수집오류 상세</a></li>
                    <li> <a href="scenario"> <i class="fa fa-user"> </i>시나리오</a></li>
                    <li> <a><i class="fa fa-user"> </i>샌드박스<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="sandbox">샌드박스 관리</a></li>
                            <li><a href="sandboxRgstr">샌드박스 등록</a></li>
                        </ul>
                    </li>
                    <li> <a href="data"> <i class="fa fa-user"> </i>데이터 분석 결과 조회</a></li>
                </ul>
            </li>

        </ul>
    </div>
</div>