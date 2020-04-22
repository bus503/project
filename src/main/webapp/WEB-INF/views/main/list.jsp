<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
.box-body{
	padding-bottom:20px;
}
.badge{
	display: inline-block;
    min-width: 10px;
    padding: 3px 7px;
    font-size: 12px;
    font-weight: 700;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    background-color: red;
    border-radius: 10px;
}
</style>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">LIST</h3>
				</div>
				<div class="box-body text-right">
					<a href="${pageContext.request.contextPath}/main/insert">[  new project  ]</a>
				</div>
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th>NAME</th>
							<th>STARTDATE</th>
							<th>ENDDATE</th>
							<th>PROGRESS</th>
						</tr>	
							<c:forEach var="main" items="${list}">
								<tr>
									<%-- <td>${main.pno }</td> --%>
									<td><a href="${pageContext.request.contextPath}/main/detail?pno=${main.pno}">${main.pname }</a></td>
									<%-- <td>${main.pcontent}</td> --%>
									<td><fmt:formatDate value="${main.startdate}" pattern="yyyy-MM-dd" /></td>
									<td><fmt:formatDate value="${main.enddate}" pattern="yyyy-MM-dd" /></td>
									<td><span class="badge">${main.progress }</span></td>
								</tr>
							</c:forEach>
					</table>
				
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>