<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@include file="header.jsp" %>

<div class="center_content">
    <div class="left_content">
        <div class="crumb_nav">
            <a href="index.html">home</a>
        </div>
        <div class="title">
            <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Category books
        </div>

        <div class="new_products">
            <c:forEach items="${modelPets}" var="p">
                <div class="new_prod_box">
                    <a href="details.do?id=${p.getPet_id()}">${p.getPet_name()}</a>
                    <div class="new_prod_bg">
                        <a href="details.do?id=${p.getPet_id()}"><img src="images/${p.getPet_images()}" alt="" title="" class="thumb" border="0" /></a>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="clear"></div>
    </div>
    <!--end of left content-->

    <%@include file="right_content.jsp" %>
    <!--end of right content-->

    <div class="clear"></div>
</div>
<!--end of center content-->

<%@include file="footer.jsp" %>

</div>

</body>
</html>