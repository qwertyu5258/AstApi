<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="main_menu_side hidden-print main_menu" id="sidebar-menu">
    <div class="menu_section">
        <ul class="nav side-menu">
            <li> <a><i class="fa fa-list-alt"></i>메타테이블 관리<span class="fa fa-chevron-down"> </span></a>
                <ul class="nav child_menu">
                    <li><a href="metaTable">메타테이블</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>데이터 모델 관리<span class="fa fa-chevron-down"> </span></a>
                <ul class="nav child_menu">
                    <li><a href="dataModelList">데이터모델 리스트</a></li>
                    <li><a href="#">데이터모델 등록</a></li>
                    <li><a href="#">데이터모델 상세</a></li>
                    <li><a href="#">메타 팝업</a></li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>Adaptor 관리<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a>Adaptor 설정<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="#">Adaptor 상세1</a></li>
                            <li><a href="#">Adaptor 상세2</a></li>
                            <li><a href="#">Instance 상세</a></li>
                            <li><a href="#">...</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>데이터 셋<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a>메타정보리스트<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="#">메타정보 상세</a></li>
                        </ul>
                    </li>
                    <li><a>데이터셋 리스트<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="#">데이터셋 리스트상세</a></li>
                        </ul>
                    </li>
                    <li><a>융복합 데이터 셋 리스트<span class="fa fa-chevron-down"> </span></a>
                        <ul class="nav child_menu">
                            <li><a href="dataSetList">융복합데이터상세</a></li>
                            <li><a href="#">융복합설정</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li> <a><i class="fa fa-list-alt"></i>시스템관리<span class="fa fa-chevron-down" /></a>
                <ul class="nav child_menu">
                    <li><a href="#">코드관리</a></li>
                    </li>
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