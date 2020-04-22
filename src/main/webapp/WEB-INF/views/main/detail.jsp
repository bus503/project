<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<script>
$(function(){
	$("#goList").click(function() {
			location.href = "${pageContext.request.contextPath}/main/list";
	})
	
	$("#remove").click(function(){
		var res = confirm("보고 있는 게시글을 삭제하시겠습니까?");
		if(res){
			location.href = "${pageContext.request.contextPath}/main/delete?pno=${main.pno}";
		}
	})
	$("#modify").click(function(){
			location.href = "${pageContext.request.contextPath}/main/update?pno=${main.pno}";
	})
	
})
</script>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">DETAIL</h3>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>pno</label>
						<input type="text" class="form-control" value="${main.pno }" readonly>
					</div>				
					<div class="form-group">
						<label>Name</label>
						<input type="text" class="form-control" value="${main.pname }" readonly>
					</div>
					<div class="form-group">
						<label>Content</label>
						<textarea rows="5" cols="30" class="form-control" readonly>${main.pcontent}</textarea>
					</div>
					<div class="form-group">
						<label>StartDate</label>
						<input type="text" value="<fmt:formatDate value="${main.startdate}" pattern="yyyy-MM-dd" />" class="form-control" readonly>
					</div>
					<div class="form-group">
						<label>EndDate</label>
						<input type="text" value="<fmt:formatDate value="${main.enddate}" pattern="yyyy-MM-dd" />" class="form-control" readonly>
					</div>
						<div class="form-group">
						<label>Progress</label>
						<input type="text" value="${main.progress}" class="form-control" readonly>
					</div>
				</div>
				<div class="box-footer">
					<button class="btn btn-warning" id="modify">수정</button>
					<button class="btn btn-danger" id="remove">삭제</button>
					<button class="btn btn-primary" id="goList">돌아가기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>