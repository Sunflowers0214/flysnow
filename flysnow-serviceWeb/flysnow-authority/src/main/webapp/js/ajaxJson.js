//全局ajax事件，处理session过期跳转登录
/*$.ajaxSetup({
    complete: function (XMLHttpRequest, sessionStatus) {
        var sessionstatus = XMLHttpRequest.getResponseHeader("session-constant");
        if (sessionstatus == "timeout") {
            $.messager.alert('提示信息', "登录超时！请重新登录！", 'info', function () {
                window.location.href = 'login';
            });
        }
    }
});*/

/**
 * 同步get请求
 *
 * @param url:ajax请求路径
 * @param json:json字符串
 * @param callback:回调函数
 */
function syncAjaxJson(url, json, callback) {
    $.ajax({
        type: 'POST',
        url: url,
        data: {
            data: JSON.stringify(json)
        },
        async: false,
        dataType: 'json',
        success: function (data) {
            if (callback) {
                eval("(" + callback + ")")(data);
            }
        },
        error: function () {
            alert("异常！");
        }
    });
}

/**
 * 异步POST请求
 * @param url:ajax请求路径
 * @param json:json字符串
 * @param callback:回调函数
 * @param paramObj:回调用到参数
 */
function asyncAjaxPost(url, json, callback, paramObj) {
    $.ajax({
        type: 'POST',
        url: url,
        data: {
            data: JSON.stringify(json)
        },
        async: true,
        dataType: 'json',
        success: function (data) {
            if (callback) {
                eval("(" + callback + ")")(data, paramObj);
            }
        },
        error: function () {
            alert("异常！");
        }
    });
}