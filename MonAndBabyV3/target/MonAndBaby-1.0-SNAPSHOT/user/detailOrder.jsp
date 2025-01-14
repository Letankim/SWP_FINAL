<%-- 
    Document   : detailOrder
    Created on : May 23, 2024, 12:04:41 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./components/header.jsp" %>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css"/>
<jsp:useBean id="statusOrder" class="Utils.ConvertStatusOrder"></jsp:useBean>
    <!-- BREADCRUMB -->
    <div id="breadcrumb" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-10">
                    <ul class="breadcrumb-tree">
                        <li><a href="/MomAndBaby">Home</a></li>
                        <li><a>History order</a></li>
                    </ul>
                </div>
                <div class="col-md-2">
                    <ul>
                        <li>Welcome! <a>${accountLogin.username}</a></li>
                </ul>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- Section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-3">
                <div style="margin: 10px">
                    <div>
                        <label>Manage My Account</label>
                    </div>
                    <div style="margin-left: 30px; margin-top: 10px">
                        <a href="/MomAndBaby/account">My profile</a>
                    </div>
                    <div style="margin-left: 30px; margin-top: 5px">
                        <a href="/MomAndBaby/account/password">Change password</a>
                    </div>
                </div>

                <div style="margin: 10px">
                    <div>
                        <label>My Order</label>
                    </div>
                    <div style="margin-left: 30px; margin-top: 10px">
                        <a href="/MomAndBaby/account/history-order">History order</a>
                    </div>
                    <div style="margin-left: 30px; margin-top: 10px">
                        <a href="/MomAndBaby/account/pre-order">Pre order</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="order-products">
                    <div class="order-col" style="margin-top: 20px">
                        <strong style="color: #db4444; font-size: 20px" >Detail order #ORDER${currentBill.ID}</strong>
                    </div>
                    <div class="order-col">
                        <div>
                            <p><b>Fullname: </b>${currentBill.customerName}</p>
                        </div>
                        <div>
                            <p><b>Email: </b>${currentBill.email}</p>
                        </div>
                        <div>
                            <p><b>Phone: </b>${currentBill.phone}</p>
                        </div>
                        <div>
                            <p><b>Address: </b>${currentBill.address}</p>
                        </div>
                        <div>
                            <p><b>Address detail: </b>${currentBill.detailAddress}</p>
                        </div>
                        <c:if test="${currentBill.isUsedPoint > 0}">
                            <div>
                                        <p><b>Used point: </b>
                                            <span class="label label-warning">
                                                ${currency.currencyFormatInput(currentBill.isUsedPoint)}
                                    </span>
                                        </p>
                            </div>
                        </c:if>

                        <div>
                            <p>
                                <b>Status: </b>
                                <span class="${statusOrder.statusTag(currentBill.status)}">
                                    ${statusOrder.statusText(currentBill.status)}
                                </span>
                            </p>
                        </div>
                        <div>
                            <p>
                                <b>Payment method: </b>
                                <span class="label label-${currentBill.payment == 1 ? "success" : "default"}">
                                    ${currentBill.payment == 1 ? "Banking" : "Cash"}
                                </span>
                            </p>
                        </div>
                        <c:if test="${currentBill.status == 5}">
                            <a class="btn btn-primary" href="/MomAndBaby/account/history-order/feedback/${currentBill.ID}" title="Feedback">
                                Feedback now <i class="fa fa-eyedropper"></i>
                            </a>
                            <c:if test="${currentBill.isGetPoint == 0}">
                                <form action="/MomAndBaby/get-point"  method="post" onsubmit="confirmPoints(event)">
                                    <input type="hidden" value="${currentBill.ID}" name="idBill"/>
                                    <input type="submit" class="btn btn-warning" name="get-point-btn" value="Get points"/>
                                </form>
                            </c:if>
                            <c:if test="${currentBill.isGetPoint == 1}">
                                <span class="label label-default" disable>Received points</span>
                            </c:if>
                        </c:if>
                    </div>
                </div>
                <table class="table-responsive table table-hover">
                    <thead>
                    <th>No</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    </thead>
                    <tbody>
                        <c:set var="countBill" value="0" />
                        <c:forEach items="${billDetail}" var="bill" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>${bill.nameProduct}</td>
                                <td>
                                    <img src="${bill.imgProduct}" width="50px" height="50px" alt="img"/>
                                </td>
                                <td>${bill.numberOfProduct}</td>
                                <td><span class="label label-primary">
                                        ${currency.currencyFormatInput(bill.priceProduct)}
                                    </span></td>
                                    <c:set var="countBill" value="${countBill + (bill.numberOfProduct*bill.priceProduct)}" />
                                <td>${currency.currencyFormatInput(bill.numberOfProduct*bill.priceProduct)}</td>
                            </tr>
                        </c:forEach>
                        <tr style="background: #F0F0F0">
                            <td colspan="5"><b>Discount: </b></td>
                            <td colspan="3">
                                <span class="label label-default">-${currency.currencyFormatInput(countBill - currentBill.total)} VNĐ</span>
                            </td>
                        </tr>
                        <tr style="background: #F0F0F0">
                            <td colspan="5"><b>Total: </b></td>
                            <td colspan="3">
                                <span class="label label-info">${currency.currencyFormatInput(currentBill.total)} VNĐ</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
<script>
    function confirmPoints(event) {
        event.preventDefault();

        Swal.fire({
            title: "Are you sure to get points?",
            text: "If you receive points, you cannot return the order?",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, do it!"
        }).then((result) => {
            if (result.isConfirmed) {
                event.target.submit();
            } else {
                Swal.fire('Request canceled.');
            }
        });

        return false;
    }
</script>
<%@include file="./components/footer.jsp" %>