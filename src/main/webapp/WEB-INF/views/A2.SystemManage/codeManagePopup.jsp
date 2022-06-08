<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--modal--%>
<%--코드그룹 등록--%>
<div class="modal fade bs-example-modal-lg" id="modal1" tabindex="-1" role="dialog" aria-hidden="true" style="height: 850px;">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">코드그룹 등록</h4>
        <button class="close" type="button" data-dismiss="modal" onclick="closeModal1()"></button><span aria-hidden="true">&times;</span>
      </div>
      <div class="modal-body" style="">

        <div class="form-group row col-12 col-md-12">
          <table class="table">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <tr>
              <td>
                분류명
              </td>
              <td>
                <input class="form-control" type="text" id="cl_nm" >
              </td>
              <td>
                분류코드
              </td>
              <td>
                <input class="form-control" type="text" id="cl_code" maxlength="1">
              </td>
            </tr>
            <tr>
              <td>
                코드그룹 ID
              </td>
              <td>
                <input class="form-control" type="text" id="group_code" maxlength="3">
              </td>
              <td>
                코드그룹 명
              </td>
              <td>
                <input class="form-control" type="text" id="group_code_nm">
              </td>
            </tr>
            <tr>
              <td>
                사용여부
              </td>
              <td>
                <select class="form-control" id="use_at">
                  <option value="Y">사용</option>
                  <option value="N">미사용</option>
                </select>
              </td>
              <td>
                코드그룹 설명
              </td>
              <td>
                <input class="form-control" type="text" id="crud_dc">
              </td>
            </tr>
            <tr>
              <td>
                순번
              </td>
              <td>
                <input class="form-control" type="text" id="ordr1" maxlength="2">
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_save();">저장</button>
      </div>
    </div>
  </div>
</div>

<%--modal2--%>
<%--코드그룹 상세--%>
<div class="modal fade bs-example-modal-lg" id="modal2" tabindex="-1" role="dialog" aria-hidden="true" style="">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="">코드그룹 상세</h4>
        <button class="close" type="button" data-dismiss="modal" onclick="closeModal2()"></button><span aria-hidden="true">&times;</span>
      </div>
      <div class="modal-body" style="">

        <div class="form-group row col-12 col-md-12">
          <table class="table">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <tr>
              <td>
                분류명
              </td>
              <td>
                <input class="form-control" type="text" id="cl_nm2" maxlength="3">
              </td>
              <td>
                분류코드
              </td>
              <td>
                <input class="form-control" type="text" id="cl_code2">
              </td>
            </tr>
            <tr>
              <td>
                코드그룹 ID
              </td>
              <td>
                <input class="form-control" type="text" id="group_code2" maxlength="3">
              </td>
              <td>
                코드그룹 명
              </td>
              <td>
                <input class="form-control" type="hidden" id="old_group_code2">
                <input class="form-control" type="text" id="group_code_nm2">
              </td>
            </tr>
            <tr>
              <td>
                사용여부
              </td>
              <td>
                <select class="form-control" id="use_at2">
                  <option value="Y">사용</option>
                  <option value="N">미사용</option>
                </select>
              </td>
              <td>
                코드그룹 설명
              </td>
              <td>
                <input class="form-control" type="text" id="crud_dc2">
              </td>
            </tr>
            <tr>
              <td>
                순번
              </td>
              <td>
                <input class="form-control" type="text" id="ordr2" maxlength="2">
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_update()">수정</button>
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_del()">삭제</button>
      </div>
    </div>
  </div>
</div>

<%--modal3--%>
<%--코드 등록--%>
<div class="modal fade bs-example-modal-lg" id="modal3" tabindex="-1" role="dialog" aria-hidden="true" style="">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="">코드 등록</h4>
        <button class="close" type="button" data-dismiss="modal" onclick="closeModal3()"></button><span aria-hidden="true">&times;</span>
      </div>
      <div class="modal-body" style="">

        <div class="form-group row col-12 col-md-12">
          <table class="table">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <tr>
              <td>
                코드그룹 ID
              </td>
              <td>
                <input class="form-control" type="text" id="group_code3" maxlength="3">
              </td>
              <td>
                코드 ID
              </td>
              <td>
                <input class="form-control" type="text" id="dtl_code3" maxlength="6">
              </td>
            </tr>
            <tr>
              <td>
                코드명
              </td>
              <td>
                <input class="form-control" type="text" id="dtl_code_nm3">
              </td>
              <td>
                정렬순서
              </td>
              <td>
                <input class="form-control" type="text" id="ordr3" maxlength="2">
              </td>
            </tr>
            <tr>
              <td>
                사용여부
              </td>
              <td>
                <select class="form-control" id="use_at3">
                  <option value="Y">사용</option>
                  <option value="N">미사용</option>
                </select>
              </td>
              <td>
                코드설명
              </td>
              <td>
                <input class="form-control" type="text" id="crud_dc3">
              </td>
            </tr>
            <tr>
              <td>
                기타코드
              </td>
              <td>
                <input class="form-control" type="text" id="etc_code3" maxlength="3">
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_dt_save();">저장</button>
      </div>
    </div>
  </div>
</div>
<%--modal4--%>
<%--코드 상세--%>
<div class="modal fade bs-example-modal-lg" id="modal4" tabindex="-1" role="dialog" aria-hidden="true" style="">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="">코드 상세</h4>
        <button class="close" type="button" data-dismiss="modal" onclick="closeModal4()"></button><span aria-hidden="true">&times;</span>
      </div>
      <div class="modal-body" style="">

        <div class="form-group row col-12 col-md-12">
          <table class="table">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <tr>
              <td>
                코드그룹 ID
              </td>
              <td>
                <input class="form-control" type="hidden" id="old_group_code4" maxlength="3">
                <input class="form-control" type="text" id="group_code4" maxlength="3">
              </td>
              <td>
                코드 ID
              </td>
              <td>
                <input class="form-control" type="hidden" id="old_dtl_code4">
                <input class="form-control" type="text" id="dtl_code4" maxlength="6">
              </td>
            </tr>
            <tr>
              <td>
                코드명
              </td>
              <td>
                <input class="form-control" type="text" id="dtl_code_nm4">
              </td>
              <td>
                정렬순서
              </td>
              <td>
                <input class="form-control" type="text" id="ordr4" maxlength="2">
              </td>
            </tr>
            <tr>
              <td>
                사용여부
              </td>
              <td>
                <select class="form-control" id="use_at4">
                  <option value="Y">사용</option>
                  <option value="N">미사용</option>
                </select>
              </td>
              <td>
                코드그룹 설명
              </td>
              <td>
                <input class="form-control" type="text" id="crud_dc4">
              </td>
            </tr>
            <tr>
              <td>
                기타코드
              </td>
              <td>
                <input class="form-control" type="text" id="etc_code4" maxlength="3">
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_dt_update()">수정</button>
        <button class="btn btn-primary " type="button" onclick="dp_cm_codes_dt_del()">삭제</button>
      </div>
    </div>
  </div>
</div>