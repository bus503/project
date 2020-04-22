<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
	select{
	margin-left: 18px;
    padding: 5px 5px;
	}
	[type="date"]{
		width:262px;
	}
</style>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Modify</h3>
				</div>
				<form action="update" method="post">
					<div class="box-body">		
						<div class="form-group">
							<input type="hidden" class="form-control" name="pno" value="${main.pno }">
						</div>	
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" name="pname" value="${main.pname}">
						</div>
						<div class="form-group">
							<label>Content</label>
							<textarea rows="5" cols="30" class="form-control" name="pcontent">${main.pcontent}</textarea>
						</div>
						<div class="form-group">
							<label>StartDate</label>
							<input type="date" value="<fmt:formatDate value="${main.startdate}" pattern="yyyy-MM-dd" />" name="startdate" class="form-control">
						
							<label>EndDate</label>
							<input type="date" value="<fmt:formatDate value="${main.enddate}" pattern="yyyy-MM-dd" />" name="enddate" class="form-control">
						</div>
						<div class="form-group">
							<label>Progress</label>
							<select name="progress">
							<c:if test="${main.progress=='준비'}">
								<option selected>준비</option>
								<option>진행중</option>
								<option>종료</option>
								<option>보류</option>
							</c:if>				
							<c:if test="${main.progress=='진행중'}">
								<option>준비</option>
								<option selected>진행중</option>
								<option>종료</option>
								<option>보류</option>
							</c:if>	
							<c:if test="${main.progress=='종료'}">
								<option>준비</option>
								<option>진행중</option>
								<option selected>종료</option>
								<option>보류</option>
							</c:if>	
							<c:if test="${main.progress=='보류'}">
								<option>준비</option>
								<option>진행중</option>
								<option>종료</option>
								<option selected>보류</option>
							</c:if>	
						</select>
					</div>
					</div>
					
				<div class="box-footer">
					<button type="submit" class="btn btn-warning" id="modify">수정</button>
					<a href="${pageContext.request.contextPath}/main/list" class="btn btn-warning">취소</a>
				</div>
				</form>
				
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>