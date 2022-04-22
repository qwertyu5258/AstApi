
function pageNation(dataLength, listPerPage) {
    let HTML = '';

    HTML += `<li  class="page-item"> <a class="page-link"> < </a></li>`;
    for (let i = 0; i < dataLength / listPerPage ; i++) {
        HTML += `<li  class="page-item"> <a class="page-link" onclick="searchTbl(` + (i + 1) + `)">` +  (i + 1)  +  `</a></li>`;
    }
    HTML += `<li  class="page-item"> <a class="page-link"> > </a></li>`;
    $('.pagination').append(HTML);
}

function checkBoxAll(TblName) {

    var ISCheckedAll = $(`.${TblName}All`)[0].checked;
    // var IsChecked = this.IsChecked(TblName);

    $('.tableInfo').each(function(index,el) {

        if(ISCheckedAll == false){
            el.checked = false;
        } else {
            el.checked = true;
        }
    });
}

function IsChecked(TblName) {
    var resultChk = false;
    $(`.${TblName}`).each(function(index,el) {
      if (el.checked == true){
        resultChk = true;
      }
    });
    return resultChk;
}

