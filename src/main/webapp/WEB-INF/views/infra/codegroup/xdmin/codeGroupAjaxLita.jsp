<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


			<!-- 회원리스트 -->
			<button type="button" class="btn btn-success btn-sm" name="" id="btnExcel"><i class="far fa-file-excel fa-lg"></i></button>
			<table class="table table-hover">
				<tr class="table-warning sear">
					<th>
						<input type="checkbox" name="check" value="selectAll" onclick="selectAll(this)">
					</th>
					<th>#</th>
					<th>코드그룹 코드</th>
					<th>코드그룹 이름(한글)</th>
					<th>코드그룹 이름(영문)</th>
					<th>코드갯수</th>
					<th>등록일</th>
					<th>수정일</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(list) eq 0 }">
						<tr>
							<td class="text-center" colspan="8">There is no date!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr class="search">
								<td>
									<input type="checkbox" name="check">
								</td>
								<td>${list.seq }</td>
								<td>${list.codeGroup }</td>
								<td><a href="/codeGroup/codeGroupRegForm?seq=<c:out value="${list.seq }"/>">${list.codeNameK }</a></td>
								<td>${list.codeNameEn }</td>
								<td>${list.cnt }</td>
								<td>${list.registrationDate }</td>
								<td>${list.revisedDate }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<!-- 페이지 목록 -->
			<!-- pagination s -->
			<%@include file="../../pagination/xdmin/pagination.jsp"%>
			<!-- pagination e -->
			
	<!-- DatePicker start -->
	 <script>
		   $.datepicker.setDefaults({
		        dateFormat: 'yy-mm-dd',
		        prevText: '이전 달',
		        nextText: '다음 달',
		        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년'
		    });
		 
		  $( function() {
		    $( "#datepicker").datepicker();
		    $( "#datepicker2").datepicker();
		  } );
	  </script>
  	<!-- DatePicker end -->
	<script type="text/javascript">
		 function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('check');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		};
	
   	</script>
      	<!-- paging start -->
      	<script type="text/javascript">
			var codeGroupList = "/codeGroup/codeGroupList";
			var form = $("form[name=form]");
			
			goList = function(thisPage) {
				$("input:hidden[name=thisPage]").val(thisPage);
				setLita();
			};
			<!-- paging end -->
		</script>
		<script>
			var seq = $("input:hidden[name=Seq]");
		
			$('#btnForm').on("click", function() {
				goForm(0);                
			});
		
			goForm = function(keyValue) {
		    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		    	seq.val(keyValue);
				form.attr("action", goUrlForm).submit();
			}
		</script>
		
		<!-- 엑셀다운 -->
	<script>
	
		var excelUri = "/code/excelDownload";
	
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
	</script>
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
   
</body>
</html>