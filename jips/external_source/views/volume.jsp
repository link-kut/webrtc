<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType = "text/html; charset=utf-8" %>
<%@include file="header.jsp"%>

<c:set var="currentNum" value="${paper[0].number}"/>
<c:set var="paperArray" value="${digital}"/>
<c:set var="paperLength" value="${fn:length(paperArray)}"/>

</br></br>
<table class="CommonTable">
  <tr>
    <td>
      <p id="newGreen" align="right">
        <span id="smalltitle"><b>Journal of Information Processing Systems, Vol. ${paper[0].volume}. No. </b></span>
        <b>
          <c:forEach var="c" items="${currentVolume}">
            <c:if test="${c.volume == paper[0].volume}">
              <c:set var="volumeNum" value="${c.number}"/>
            </c:if>
          </c:forEach>
          <c:forEach var="i" begin="1" end="${volumeNum}">

            <c:choose>
              <c:when test="${i == currentNum}">
                &nbsp;&nbsp;<u>${i}</u>
              </c:when>
              <c:otherwise>
                <a class="Papervolume" href="volume?v=${paper[0].volume}&n=${i}">&nbsp;&nbsp;${i}</a>
              </c:otherwise>
            </c:choose>

          </c:forEach>
        </b>
      </p>

      <img src="resources/images/hr.jpg" width="840" alt=""/>

      <c:forEach var="p" items="${digital}">
        <a class="Recent" href="paper?pn=${p.num}"><b>${p.title}</b></a> <!-- 제목 -->
        <br/>

        <c:set var="tempArray" value="${fn:replace(p.authors, ', and', ',')}"/> <!-- authors and 제거 -->
        <c:set var="tempArray" value="${fn:replace(tempArray, ' and ', ',')}"/> <!-- authors and 제거 -->
        <c:set var="authorsArray" value="${fn:split(tempArray, ',')}"/> <!-- authors 이름을 분리 -->
        <c:set var="authorsLength" value="${fn:length(authorsArray)}"/>

        <c:if test="${authorsLength < 2}">
          <c:forEach var="a" items="${authorsArray}">
            <a class="Paperauthor" href="summary?author=${a}">${a}</a>
          </c:forEach>
        </c:if>

        <c:if test="${authorsLength == 2}">
          <c:forEach var="a" begin="0" end="${authorsLength-1}">
            <c:if test="${a == 0}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a> and
            </c:if>
            <c:if test="${a == 1}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>
            </c:if>
          </c:forEach>
        </c:if>

        <c:if test="${authorsLength > 2}">
          <c:forEach var="a" begin="0" end="${authorsLength-1}">
            <c:if test="${a < authorsLength - 2}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>,
            </c:if>
            <c:if test="${a == authorsLength - 2}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a> and
            </c:if>
            <c:if test="${a == authorsLength - 1}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>
            </c:if>
          </c:forEach>
        </c:if>
        <br/>

        Page: ${p.page} ~ ${p.endpage} <br/>

        <img src="resources/images/doi_icon.png" style="vertical-align:middle;">
        <span class="doifont">
          <c:choose>
            <c:if test="${not empty p.doi}">
              None
            </c:if>
            <c:otherwise>
              ${p.doi}
            </c:otherwise>
          </c:choose>
        </span>
        <br/>

        <c:if test="${p.volume >= 11}">
          <a class="Recent" href="q.jips?cp=pp&pn=${p.num}"><button type="button" class="btn btn-primary btn-xs">Details</button></a>
          <!-- <button type="button" class="btn btn-danger btn-xs">PDF</button> -->
          <a href="http://jips.jatsxml.org/Article/${p.volume}/${p.number}/${p.page}"><button type="button" class="btn btn-info btn-xs">Full Text</button></a>
          <a href="http://jips.jatsxml.org/PubReader/${p.volume}/${p.number}/${p.page}"><button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
          <a href="http://jips.jatsxml.org/func/download.php?path=${p.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
          <br/>
        </c:if>

        <c:set var="keywordArray" value="${fn:split(p.keyword, ',')}"/>
        <c:set var="keywordLength" value="${fn:length(keywordArray)}"/>
        Keywords:
        <c:forEach var="k" begin="0" end="${keywordLength - 1}">
          <c:if test="${k < keywordLength - 1}">
            <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a>,
          </c:if>
          <c:if test="${k == keywordLength - 1}">
            <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a><br/>
          </c:if>
        </c:forEach>

        <a class="Paperauthor" href="#" onclick="viewStyle(this, 'latest.jsp?pn=number');return false">
          Show / Hide Abstract
        </a>
        <DIV style='display:none'>
          <table class="MiniAbstract" align="center">
            <tr>
              <td align="left" style="text-align:justify">
                <span>${p.paperabstract}</span>
              </td>
            </tr>
          </table>
        </DIV>
        <br/>

        <img src="resources/images/hr.jpg" width="840" alt=""/>
        <br/><br/>
      </c:forEach>
    </td>
  </tr>
</table>




<%@include file="footer.jsp"%>