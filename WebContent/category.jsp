<%@include file="header.jsp" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="center_content">
    <div class="left_content">
        <div class="title">
            <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Featured pets
        </div>

        <c:forEach items="${cat_selected}" var="p">
            <div class="feat_prod_box">
                <div class="prod_img">
                    <a href="details.do?id=${p.getPet_id()}"><img src="images/${p.getPet_images()}" alt="" title="" border="0" /></a>
                </div>

                <div class="prod_det_box">
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title">${p.getPet_name()}</div>
                        <p class="details">${p.pet_description}</p>
                        <a href="details.do?id=${p.getPet_id()}&id_prix=1" class="more">- more details -</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>
        </c:forEach>

        <div class="title">
            <span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span>New pets
        </div>

        <div class="new_products">
            <c:forEach items="${modelPets}" var="p">
                <c:if test="${ p.getPet_status().equals('new')}">
                    <div class="new_prod_box">
                        <a href="details.do?id=${p.getPet_id()}">${p.getPet_name()}</a>
                        <div class="new_prod_bg">
                            <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                            <a href="details.do?id=${p.getPet_id()}&id_prix=1"><img src="images/${p.getPet_images()}" alt="" title="" class="thumb" border="0" /></a>
                        </div>
                    </div>
                </c:if>
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