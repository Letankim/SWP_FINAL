<%-- 
    Document   : category
    Created on : Oct 1, 2023, 12:02:09 AM
    Author     : Le Tan Kim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../components/header.jsp" %>
<section id="main-content">
    <section class="wrapper">
        <div class="wrapper-box-add">
            <div class="row">
                <div class="col-lg-12">
                    <div id="toast"></div>
                    <section class="panel">
                        <div class="panel-body">
                            <div class="position-center">
                                <div class="text-center">
                                    <a href="#myModal" data-toggle="modal" class="btn btn-success">
                                        Add new
                                    </a>
                                </div>
                                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Add category</h4>
                                            </div>
                                            <div class="modal-body">
                                                <form role="form" method="post" action="/MomAndBaby/admin/category">
                                                    <div class="form-group">
                                                        <label>Category name</label>
                                                        <input required="" type="text" name="name" id="name" class="form-control" placeholder="Category name">
                                                        <span class="message_error"></span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">Status</label>
                                                        <select name="status" class="form-control">
                                                            <option value="1">Active</option>
                                                            <option value="0">Hidden</option>
                                                        </select>
                                                    </div>
                                                    <button name="btn-add-category" id="add-category" type="submit" class="btn btn-group-justified btn-primary">Add</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="table-agile-info">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Categories
                </div>
                <div class="table-responsive" style="padding: 5px;">
                    <script>
                        $(document).ready(function () {
                            $("#category").DataTable();
                        });
                    </script>
                    <form method="post" action="/MomAndBaby/admin/category">
                        <div class="wrapper-box-btn">
                            <button name="btn-delete-categories" onclick="return confirm('Are you sure to delete?')" class="btn btn-sm btn-danger">
                                Delete all checked
                            </button>
                        </div>
                        <table id="category" class="table table-striped b-t b-light">
                            <thead>
                                <tr>
                                    <th style="width:20px;">
                                        <label class="i-checks all-check m-b-none">
                                            <input type="checkbox"><i></i>
                                        </label>
                                    </th>
                                    <th>Category name</th>
                                    <th>Date at</th>
                                    <th>Date update</th>
                                    <th>Number product</th>
                                    <th>Status</th>
                                    <th style="width:30px;">Action</th>
                                </tr>
                            </thead>
                            <tbody class="render-data">
                                <c:forEach items="${categories}" var="category">
                                    <tr>
                                        <td><input type="checkbox" name="delete-category-item" value="${category.ID}"></td>
                                        <td>${category.name}</td>
                                        <td><span class="text-ellipsis">${category.datePost}</span></td>
                                        <td><span class="text-ellipsis">${category.dateUpdate == null ? "No data" : category.dateUpdate}</span></td>
                                        <td>${getDao.getNumberOfProductByCategory(category.ID)}</td>
                                        <td>
                                            <c:if test="${category.status == 1}">
                                                <span class="label label-success">Active</span>
                                            </c:if>
                                            <c:if test="${category.status == 0}">
                                                <span class="label label-default">Hidden</span>
                                            </c:if>
                                        </td>
                                        <td class="box-action">
                                            <a href="/MomAndBaby/admin/category/update/${category.ID}" class="btn-action green">
                                                <i class="bx bx-edit"></i>
                                            </a>
                                            <a onclick="return confirm('Are you sure to delete?')" 
                                               href="/MomAndBaby/admin/category/delete/${category.ID}" 
                                               class="btn-action orange">
                                                <i class='bx bx-trash'></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="./static-admin/assets/js/validation.js"></script>
    <script >
                                                const name = document.getElementById('name');
                                                const messageEmpty = "This field can not empty";
                                                // array to save all input to check, message show error of each and a string regex to check 
                                                const inputsToValidate = [
                                                    {element: name, message: messageEmpty, regex: /^.{1,}$/, type: "text", isEmpty: false}
                                                ];
                                                validation(inputsToValidate, document.querySelector("#add-category"));
    </script>
    <%@include file="../components/footer.jsp" %>