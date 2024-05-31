<%-- 
    Document   : 404error
    Created on : May 22, 2024, 12:09:01 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./components/header.jsp" %>

    <!-- BREADCRUMB -->
    <div id="breadcrumb" class="section">
      <!-- container -->
      <div class="container">
        <!-- row -->
        <div class="row">
          <div class="col-md-12">
            <ul class="breadcrumb-tree">
              <li><a href="/MomAndBaby">Home</a></li>
              <li><a href="/MomAndBaby/about">About</a></li>
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
      <div class="container text-center">
        <h1 style="font-size: 100px; margin-top: 100px; margin-bottom: 50px">
          404 Not Found
        </h1>
        <p style="margin-top: 40px; margin-bottom: 60px">
          You visited page not round. You may go home page.
        </p>
        <a href="/MomAndBaby">
          <button
            class="btn btn-default"
            style="
              padding: 10px;
              color: #fff;
              background-color: #db4444;
              margin-bottom: 20px;
            "
          >
            Back to home page
          </button>
        </a>
      </div>
    </div>
    <!-- /Section -->

    <%@include file="./components/footer.jsp" %>