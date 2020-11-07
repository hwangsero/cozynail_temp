<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
    <meta charset="utf-8" />
    <link rel='stylesheet' href="<c:url value='/css/faq.css' />">
</head>
<body>
    <div class="container-fluid" style="min-height: 66vh;">
        <h1>FAQ</h1>
        <div class="row col-sm-12 justify-content-end">
            <button type="button" class="btn btn-dark btn-sm" data-toggle="modal" data-target="#myModal">작성</button>
        </div>
        
        <hr class="one">
        
        <div class="col-sm-12">
            <c:forEach var="item" items="${faqList}" varStatus="status">
                <div class="tab">
                    <input id="tab-one" type="checkbox" name="tabs">
                    <label for="tab-one">${item.faqTitle}</label>
                    <div class="tab-content">
                        <p>${item.faqContents}</p>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- faq write modal -->
        <div id="myModal" class="modal fade" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">자주 묻는 질문</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                    <form class="form" name="faqForm">
                        <table class="table">
                            <tr>
                                <td>질문</td>
                                <td>
                                    <input name="faqTitle" class="form-control" type="text"
                                           style="position: static; opacity: 1;"> <!-- todo : faq.css input 확인 필요 -->
                                </td>
                            </tr>
                            <tr>
                                <td>답변</td>
                                <td>
                                    <textarea id="faqContents" class="form-control" rows="5"></textarea>
                                </td>
                            </tr>
                        </table>
                    </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm" onclick="onSave()">저장</button>
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
    /*
    $(document).ready(function () {
        //
    });
    */
    
    function onSave() {
        
        // todo : ajax 적용 (?)
        
        if(confirm("저장 하시겠습니까?") == true) {
            // todo validation
            var form = $(document.faqForm);
            form.attr("method", "post");
            form.attr("action", "<c:url value='/saveFaq.do'/>");
            form.submit();
        } else {
           return false;
        }
    }
    </script>
</body>
</html>