function dp_ingest_adapter(param1, param2, param3, param4, param5) {
    var data = {
        "search": "12",
        "search_type": "!2",
        "dset_lclas": "!2",
        "dset_mclas": "12",
        "dset_sclas": "12",
    };
    ajaxGet('/dp/ingest/adapter', data, function (data) {
        alert('완료~113');
    });
}
