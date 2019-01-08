<%@ page language="java" pageEncoding="UTF-8" %>
<script>
    var queryOrderInfoUrl = basepath + "/pay/payOrder_queryOrderInfo";
    var paymentCashUrl = basepath + "/pay/payOrder_paymentCash";
    var paymentAccountUrl = basepath + "/pay/payOrder_paymentAccount";
    var paymentMicropayUrl = basepath + "/pay/payOrder_paymentMicropay";
    var paymentNativeUrl = basepath + "/pay/payOrder_paymentNative";
    var orderType = "<%=request.getParameter("orderType") %>";
    var nonsupportType = "<%=request.getParameter("nonsupportType") %>";
    var billNo = "<%=request.getParameter("billNo") %>";
    $(function () {
        payFlag = false;
        if (!orderType || !billNo) {
            $.ligerDialog.warn("数据异常，重新进入或联系管理员!");
            return;
        }
        var paramObj = {};
        paramObj.orderType = orderType;
        paramObj.billNo = billNo;
        syncAjaxSubmit(JSON.stringify(paramObj), queryOrderInfoUrl, function (data) {
            if (data["resultMap"]) {
                var _orderPay = data["resultMap"]["orderInfo"];
                $("#trd_det_orderTypeName").html(_orderPay.orderTypeName);
                $("#trd_det_billCode").html(_orderPay.billCode);
                $("#trd_det_orderDesc").html(_orderPay.orderDesc);
                if (_orderPay.detailList && _orderPay.detailList[0]) {
                    $("#trd_det_goodsName").html(_orderPay.detailList[0].goodsName);
                }
                var orderAmount = _orderPay.orderAmount;
                $("#tradePayDiv").data("orderAmount", orderAmount + "");
                $("#trd_det_orderAmount").html(getThousandNum(orderAmount));
                //查询客户账户信息
                var accountList = data["resultMap"]["accountList"];
                if (accountList && accountList.length > 0) {
                    for (var i = 0, flag = true; i < accountList.length; flag ? i++ : i) {
                        if (!(accountList[i].accountType == '2' || accountList[i].accountType == '3')) {
                            accountList.splice(i, 1);
                            flag = false;
                        } else {
                            flag = true;
                        }
                    }
                    for (var i = 0, length = accountList.length; i < length; i++) {
                        var $button = $("<button type='button' class='btn btn-default' " + "onclick='paymentBillOrderAccount(this)' name='account" + i + "'></button>");
                        if (length == 1) {
                            $button.css("margin-top", "40px");
                        }
                        var accountBalance = accountList[i].accountBalance.toFixed(2);
                        $button.data("accountId", accountList[i].accountId);
                        $button.data("accountType", accountList[i].accountType);
                        $button.data("accountTypeName", accountList[i].accountTypeName);
                        $button.data("accountBalance", accountBalance);
                        $button.html("<p class='money'>" + accountBalance + "</p><p>" + accountList[i].accountTypeName + "</p>");
                        $(".accountPay").append($button);
                        if (parseFloat(orderAmount) > parseFloat(accountBalance)) {
                            $("#tradePayDiv button[name='account" + i + "']").attr("disabled", "disabled");
                        }
                    }
                }
            } else {
                $.ligerDialog.warn("数据异常，请重新进入或联系管理员!");
                return;
            }
            isSupportType();
        });
    });

    //是否支持账户支付方式
    function isSupportType() {
        var reg = RegExp(/account/);
        if (nonsupportType && reg.test(nonsupportType)) {
            $("#tradePayDiv button[name^='account']").attr("disabled", "disabled");
        }
        var tmp = ["card", "wx.scan", "alipay.scan"];
        var orderAmount = $("#tradePayDiv").data("orderAmount");
        if (parseFloat(orderAmount) <= 0) {
            for (var i = 0; i < tmp.length; i++) {
                $("button[name='" + tmp[i] + "']").attr("disabled", "disabled");
            }
        }
    }

    //金额格式化
    function getThousandNum(num) {
        num = num + "";
        var money = num.replace(/\d+/, function (n) { // 先提取整数部分
            return n.replace(/(\d)(?=(\d{3})+$)/g, function ($1) { // 对整数部分添加分隔符
                return $1 + ",";
            });
        });
        return "￥" + money;
    }

    //现金支付
    function paymentBillOrderCash() {
        var payBill = {};
        payBill.orderType = orderType;
        payBill.billNo = billNo;
        syncAjaxSubmit(JSON.stringify(payBill), paymentCashUrl, function (data) {
            $.ligerDialog.success("支付成功！", "费用支付", function () {
                closeDialog("tradePayDialog");
                payCloseDetailDialog();
            }, {
                top: 180
            });
        });
    }

    //账户支付
    function paymentBillOrderAccount(obj) {
        var orderAmount = $("#tradePayDiv").data("orderAmount");
        var accountId = $(obj).data("accountId");
        var accountBalance = $(obj).data("accountBalance");
        if (parseFloat(accountBalance) < parseFloat(orderAmount)) {
            $.ligerDialog.warn("账户余额不足，请选择其他支付方式!");
            return;
        }
        var payBill = {};
        payBill.orderType = orderType;
        payBill.billNo = billNo;
        payBill.accountId = accountId;
        syncAjaxSubmit(JSON.stringify(payBill), paymentAccountUrl, function (data) {
            $.ligerDialog.success("支付成功！", "费用支付", function () {
                closeDialog("tradePayDialog");
                payCloseDetailDialog();
            }, {
                top: 180
            });
        });
    }

    //付款码支付
    function showPayAuthCodeInput(payMode) {
        var codeType = "";
        if (payMode == "weixin") {
            codeType = "微信付款码支付";
        } else if (payMode == "alipay") {
            codeType = "支付宝付款码支付";
            $.ligerDialog.warn("支付宝付款码支付未开通", "提示");
            return;
        }
        $("#tradePayDiv").data("payMode", payMode);
        $("#tradePayDiv").data("codeType", codeType);
        checkSubmitFlag = false;
        var param = {
            url: "pay/payAuthCodeInput.jsp",
            fullPage: false,
            title: codeType,
            height: 300,
            width: 400,
            id: "AuthCodeInputDialog"
        };
        WoohPopWin.open(param);
    }

    //支付宝微信付款码支付
    function paymentMicropay() {
        var auth_code = $("#auth_code").val();
        if (!auth_code) {
            $.ligerDialog.warn("请输入授权码!");
            return;
        }
        var payBill = {};
        payBill.orderType = orderType;
        payBill.billNo = billNo;
        payBill.payMode = $("#tradePayDiv").data("payMode");
        payBill.auth_code = auth_code;
        jQuery.ajax({
            type: 'POST',
            url: paymentMicropayUrl,
            data: {
                data: JSON.stringify(payBill)
            },
            async: false,
            dataType: 'json',
            success: function (data) {
                if (data.result == "success") {
                    closeDialog("AuthCodeInputDialog");
                    $.ligerDialog.success("支付成功！", "费用支付", function () {
                        closeDialog("tradePayDialog");
                        payCloseDetailDialog();
                    }, {
                        top: 180
                    });
                } else {
                    closeDialog("AuthCodeInputDialog");
                    $.ligerDialog.warn(data.result, "提示");
                }
            }
        });
    }

    //扫码支付
    function paymentNative(payMode) {
        $("#tradePayDiv").removeData("outTradeNo");//商户订单号
        $("#tradePayDiv").removeData("codeImgUrl");//二维码图片链接
        $("#tradePayDiv").removeData("codeType");
        var codeType = "";
        if (payMode == "weixin") {
            codeType = "微信扫码支付";
        } else if (payMode == "alipay") {
            codeType = "支付宝扫码支付";
            $.ligerDialog.warn("支付宝扫码支付未开通", "提示");
            return;
        }
        $("#tradePayDiv").data("payMode", payMode);
        $("#tradePayDiv").data("codeType", codeType);
        var payBill = {};
        payBill.orderType = orderType;
        payBill.billNo = billNo;
        payBill.payMode = payMode;
        syncAjaxSubmit(JSON.stringify(payBill), paymentNativeUrl, function (data) {
            if (!data.resultMap["outTradeNo"]) {
                $.ligerDialog.warn("获取支付码失败", "提示");
                return;
            }
            $("#tradePayDiv").data("outTradeNo", data.resultMap["outTradeNo"]);
            $("#tradePayDiv").data("codeImgUrl", data.resultMap["codeImgUrl"]);

            var param = {
                url: "pay/payImg.jsp",
                fullPage: false,
                title: $("#tradePayDiv").data("codeType"),
                height: 400,
                width: 400,
                id: "AuthCodeInputDialog"
            };
            var dialogObj = WoohPopWin.open(param);
            dialogObj.on("dialogbeforeclose", function (event, ui) {
                window.clearInterval(timer);
            });
        });
    }

</script>
<style>
    .wthAuto {
        line-height: 40px !important;
    }

    .payBox {
        position: relative;
        float: left;
        width: 210px;
        height: 260px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        margin-left: 60px;
        padding: 20px 0 10px;
        cursor: pointer;
    }

    .payBox:first-child {
        margin-left: 60px;
    }

    .action {
        box-shadow: 5px 5px 5px #cccccc;
    }

    .payBox img {
        display: block;
        width: 90px;
        margin: 50px auto 0;
    }

    .payBox .ptitle {
        text-align: center;
        margin-top: 10px;
        font-size: 16px;
    }

    .payBox .btn {
        min-width: 100px;
        margin: 10px auto;
        display: block;
    }

    .payBox .baMsg {
        margin-top: 0px;
        font-size: 12px;
        color: #cccccc;
    }

    .payBox .btn .money {
        font-size: 12px;
        font-weight: normal;
    }

    .payBox .btn .money:before {
        content: "￥";
    }

    .boxMark {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 130px;
        background: rgba(0, 0, 0, 0.5);
        display: none;
    }

    .payBox:hover {
        box-shadow: 5px 5px 5px #cccccc;
        cursor: default;
    }

    .payBox .btn:hover {
        opacity: 1;
        box-shadow: 3px 3px 3px #63552d;
    }

    .payBox .btn[disabled]:hover {
        opacity: 0.7;
        box-shadow: 0px 0px 0px #63552d;
    }

    .payBox:hover img {
        margin-top: 0px;
        width: 80px;
    }

    .payBox:hover .ptitle {
        margin-top: 8px;
        font-size: 14px;
    }

    .payBox:hover .boxMark {
        display: block;
        animation: showUp .5s;
        -webkit-animation: showUp .5s; /* Safari and Chrome */
    }

    @keyframes showUp {
        from {
            height: 0px;
            opacity: 0;
        }
        to {
            height: 130px;
        }
    }

    @-webkit-keyframes showUp /* Safari and Chrome */
    {
        from {
            height: 0px;
            opacity: 0;
        }
        to {
            height: 130px;
        }
    }
</style>
<div class="editForm editForm1" id="tradePayDiv">
    <form>
        <div class="box">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="col-md-9 title">
                        <label class="wthAuto">订单类型:</label>
                        <span id="trd_det_orderTypeName"></span>
                    </div>
                    <div class="col-md-3 title">
                        <label class="wthAuto">总金额:</label>
                        <span id="trd_det_orderAmount" style="font-size: 20px;color: red;"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <label>订单编号</label>
                    <span id="trd_det_billCode"></span>
                </div>
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <label>订单描述</label>
                    <span id="trd_det_orderDesc"></span>
                </div>
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <label>商品信息</label>
                    <span id="trd_det_goodsName"></span>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <h1 class="title">支付方式</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="payBox">
                        <img src="./pay/images/xj.png">
                        <p class="ptitle">现金支付</p>
                        <%--<p class="baMsg">线下现金支付</p>--%>
                        <div class="boxMark">
                            <button type="button" class="btn btn-default" onclick="paymentBillOrderCash();" name="cash"
                                    style="margin-top: 45px;">
                                去支付
                            </button>
                        </div>
                    </div>
                    <div class="payBox">
                        <img src="./pay/images/ykt.png">
                        <p class="ptitle">账户余额支付</p>
                        <%--<p class="baMsg baMoney" id="accountBalance">￥0.00</p>--%>
                        <div class="boxMark accountPay">
                            <%--<button type="button" class="btn btn-default" onclick="paymentBillOrderAccount(0);"
                                    name="account">￥233.00<br>现金账户
                            </button>
                            <button type="button" class="btn btn-default" id="deposit" onclick="paymentBillOrderAccount(1);"
                                    name="account">￥233.00<br>预定金账户
                            </button>--%>
                        </div>
                    </div>
                    <div class="payBox">
                        <img src="./pay/images/sk.png">
                        <p class="ptitle">付款码支付</p>
                        <%--<p class="baMsg">支付金额需大于零</p>--%>
                        <div class="boxMark">
                            <button type="button" class="btn btn-default" onclick="showPayAuthCodeInput('weixin');"
                                    name="card" style="margin-top: 30px;">
                                微信支付
                            </button>
                            <button type="button" class="btn btn-default" onclick="showPayAuthCodeInput('alipay');"
                                    name="card">
                                支付宝支付
                            </button>
                        </div>

                    </div>
                    <div class="payBox">
                        <img src="./pay/images/weixin.png">
                        <p class="ptitle">扫码支付</p>
                        <%--<p class="baMsg">支付金额需大于零</p>--%>
                        <div class="boxMark">
                            <button type="button" class="btn btn-default" onclick="paymentNative('weixin');"
                                    name="wx.scan" style="margin-top: 30px;">微信支付
                            </button>
                            <button type="button" class="btn btn-default" onclick="paymentNative('alipay');"
                                    name="alipay.scan">支付宝支付
                            </button>
                        </div>
                    </div>
                    <%--<div class="payBox">
                        <img src="./pay/images/zfb.png">
                        <p class="ptitle">支付宝扫码支付</p>
                        <p class="baMsg" style="margin-top: 0px">支付金额需大于零</p>
                        <button type="button" class="btn btn-default" onclick="paymentNative('alipay');"
                                name="alipay.scan">去支付
                        </button>
                    </div>--%>
                </div>
            </div>
        </div>
    </form>
</div>

