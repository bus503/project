<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>
  <!--   인클루드는 서버에서 땡기는 친구다 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	select{
	margin-left: 18px;
    padding: 5px 5px;
	}
	[type="date"]{
		width:262px;
	}
</style>
<script>
$(function(){
	$("form").submit(function() {
		var pname = $("input[name='pname']").val();
		if(pname == ""){
			alert("프로젝트의 이름을 입력해주세요.");
			return false;
		}
	})
})
</script>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">INSERT</h3>
				</div>
				<form role="form" action="insert" method="post">
				<div class="box-body">
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="pname" class="form-control" placeholder="프로젝트 이름">
					</div>
					<div class="form-group">
						<label>Content</label>
					<textarea rows="5" cols="30" name="pcontent" class="form-control" placeholder="프로젝트 내용"></textarea>
					</div>
					<div class="form-group">
						<label>StartDate</label>
						<input type="date" name="startdate" class="form-control">
					</div>
					<div class="form-group">
						<label>EndDate</label>
						<input type="date" name="enddate" class="form-control">
					</div>
					<div class="form-group">
						<label>Progress</label>
						<select name="progress">
							<option>준비</option>
							<option>진행중</option>
							<option>종료</option>
							<option>보류</option>
						</select>
					</div>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">저장</button>
					<a href="${pageContext.request.contextPath}/main/list" class="btn btn-primary">취소</a>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>    
<%@ include file="../include/footer.jsp"%>