<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul>
   <c:forEach var="menuList" items="${leftMainMenuList}" varStatus="idx">
      <c:if test="${menuList.menuLevel == 1 }">
         <li id="${menuList.menuId }" class="oneDeth <c:if test="${menuVo.mainMenu == menuList.menuId}">on</c:if>">
            <span>
               <span class="${menuList.menuId }">${menuList.menuNm }</span>
            </span>
            <ul>
               <c:forEach var="oneDepthMenuList" items="${leftMainMenuList}">
                  <c:if test="${oneDepthMenuList.upMenuId eq menuList.menuId }">
                     <c:choose>
                        <c:when test="${oneDepthMenuList.menuId eq 'SM0005' || oneDepthMenuList.menuId eq 'SM0008' || oneDepthMenuList.menuId eq 'SM0020' }">
                           <li id="${oneDepthMenuList.menuId }" class="twoDeth <c:if test="${menuVo.twoDepthMenu != ''}">ulOn</c:if> <c:if test="${menuVo.oneDepthMenu == oneDepthMenuList.menuId}">on</c:if>">
                              <span class="${oneDepthMenuList.menuId }">${oneDepthMenuList.menuNm }</span>
                              <ul>
                                 <c:forEach var="twoDepthMenuList" items="${leftMainMenuList}">
                                    <c:if test="${twoDepthMenuList.upMenuId eq oneDepthMenuList.menuId }">
                                       <li id="${twoDepthMenuList.menuId }" class="threeDetp <c:if test="${menuVo.twoDepthMenu == twoDepthMenuList.menuId}">on</c:if>">
                                          <a href="javascript:pageMv('${menuList.menuId }','${oneDepthMenuList.menuId }','${twoDepthMenuList.menuId }','${twoDepthMenuList.menuUrl }');">${twoDepthMenuList.menuNm }</a>
                                       </li>
                                    </c:if>
                                 </c:forEach>
                              </ul>
                           </li>
                        </c:when>
                        <c:otherwise>
                           <li id="${oneDepthMenuList.menuId }" class="twoDeth_one <c:if test="${menuVo.oneDepthMenu == oneDepthMenuList.menuId}">on</c:if>">
                              <a href="javascript:pageMv('${menuList.menuId }','${oneDepthMenuList.menuId }','','${oneDepthMenuList.menuUrl }');">${oneDepthMenuList.menuNm }</a>
                           </li>
                        </c:otherwise>
                     </c:choose>
                  </c:if>
               </c:forEach>
            </ul>
         </li>
      </c:if>
   </c:forEach>
</ul>
<div class="navToggle">
   <div class="box"></div>
   <span class="arrow"></span>
</div>
<style>.hide {display: block;}</style>
<script src="<c:url value='/js/nav.js'/>?vers=<%=cashingVersion%>"></script>