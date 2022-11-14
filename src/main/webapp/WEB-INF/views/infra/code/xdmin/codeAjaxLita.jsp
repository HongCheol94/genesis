<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

	<!-- 회원리스트 -->
	<c:out value="totoal : ${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/>
	<button type="button" class="btn btn-success btn-sm" name="" id="btnExcel"><i class="far fa-file-excel fa-lg"></i></button>
	<table class="table table-hover">
		<tr class="table-warning sear">
			<th>
				<input type="checkbox" name="check" value="selectAll" onclick="selectAll(this)">
			</th>
			<th>코드</th>
			<th>코드그룹 코드</th>
			<th>코드 이름(한글)</th>
			<th>대체 코드</th>
			<th>코드 이름(영문)</th>
			<th>사용</th>
			<th>순서</th>
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
				<td>${list.seq}</td>
				<td>${list.ccg_seq}</td>
				<td><a href="/code/codeRegForm?seq=<c:out value="${list.seq }"/>">${list.codeNameKo}</a></td>
				<td>${list.substituteCode}</td>
				<td>${list.codeNameEn}</td>
				<td>${list.useNy}</td>
				<td>${list.turn}</td>
				<td>${list.registrationDate}</td>
				<td>${list.revisedDate}</td>
			</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
	</table>
	<!-- 페이지 목록 -->
	<!-- pagination s -->
	<%@include file="../../pagination/xdmin/pagination.jsp"%>
	<!-- pagination e -->
	
	<!-- script 시작 -->
	
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
		}
	
		/* const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
	
		myModal.addEventListener('shown.bs.modal', () => {
		  myInput.focus()
		})
		
		
		 function filter(){

        var value, name, item, i;

        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByClassName("search");

        for(i=0;i<item.length;i++){
          name = item[i].getElementsByClassName("sn");
          if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
            item[i].style.display = "flex";
          }else{
            item[i].style.display = "none";
          }
        }
      } */
	</script>
	
	<!-- paging start -->
	<script type="text/javascript">
	
		var codeList = "/code/codeList";
		var form = $("form[name=form]");
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			setLita();
		}
	</script>
	<!-- paging end-->
	
	<!-- 엑셀다운 -->
	<script>
	
		var excelUri = "/code/excelDownload";
	
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
	</script>
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
