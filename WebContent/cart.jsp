<%@include file="header.jsp" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="center_content">
    <div class="left_content">
        <div class="title">
            <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart
        </div>

        <div class="feat_prod_box_details">
            &gt;&gt; ${sessionScope.username}
            <br />
            <table class="cart_table">
                <tr class="cart_title">
                    <td>Item pic</td>
                    <td>Product name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Total</td>
                </tr>

                <c:forEach items="${pet_order}" var="p">
                    <tr>
                        <td>
                            <a href="details.do?id=${p.getPet_id()}"><img src="images/${p.getPet_images()}" alt="" title="" border="0" class="cart_thumb" width="50%" /></a>
                        </td>
                        <td>${p.getPet_name()}</td>
                        <td>${p.getPrice()}$</td>
                        <td>1</td>
                        <td>${p.getPrice()}$</td>
                    </tr>
                </c:forEach>

                <tr>
                    <td colspan="4" class="cart_total"><span class="red">TOTAL SHIPPING:</span></td>
                    <td>${total}$</td>
                </tr>

                <tr>
                    <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                    <td>${total}$</td>
                </tr>
            </table>
            <a href="#" class="continue">&lt; continue</a>
            <a href="#" class="checkout">checkout &gt;</a>
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