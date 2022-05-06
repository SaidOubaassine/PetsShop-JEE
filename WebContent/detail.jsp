<%@include file="header.jsp" %> <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="metier.entities.Prix" %>
<%@ page import="metier.entities.Pet" %>
<div class="center_content">
    <div class="left_content">
        <div class="crumb_nav"><a href="index.do">home</a> &gt;&gt; ${pet_selected.pet_name}</div>
        <div class="title">
            <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Product name
        </div>

        <div class="feat_prod_box_details">
            <div class="prod_img">
                <a><img src="images/${pet_selected.getPet_images()}" alt="" title="" border="0" /></a> <br />
                <br />
                <a href="images/${pet_selected.getPet_images()}" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a>
            </div>

            <div class="prod_det_box">
                <div class="box_top"></div>
                <div class="box_center">
                    <div class="prod_title">Details</div>
                    <p class="details">${pet_selected.pet_description}</p>
                  
                    <%
                    Prix p=(Prix)request.getAttribute("prix_selected");
                    Pet pet=(Pet)request.getAttribute("pet_selected");
                    %>
             
                
               <% if(p.getNom_prix().equals("USD")){%>
                  <div class="price"><strong>PRICE:</strong> <span class="red"><%=pet.getPrice() %><%= p.getSymbol_prix()%></span></div>
                <%  }
                 %>
                <%
                if(p.getNom_prix().equals("EUR")){%>
                  <%double change_device=pet.getPrice()*(0.88); %>
                   <div class="price"><strong>PRICE:</strong> <span class="red"><%=change_device%><%= p.getSymbol_prix()%></span></div>
           
             <%}%>
               <%if(p.getNom_prix().equals("GBP")){%>
               <%double change_device=pet.getPrice()*(0.85); %>
                  <div class="price"><strong>PRICE:</strong> <span class="red"><%=change_device%><%= p.getSymbol_prix()%></span></div>
             <% }%>

       
                   
                   
                  
                    <div class="price">
                        <strong>COLORS:</strong>
                        <span class="colors"><img src="images/color1.gif" alt="" title="" border="0" /></span>
                        <span class="colors"><img src="images/color2.gif" alt="" title="" border="0" /></span>
                        <span class="colors"><img src="images/color3.gif" alt="" title="" border="0" /></span>
                    </div>

                    <c:if test="${ !empty sessionScope.userid }">
                        <a href="order.do?userid=${sessionScope.userid}&pet_id=${pet_selected.pet_id}" class="more"><img src="images/order_now.gif" alt="" title="" border="0" /></a>
                    </c:if>

                    <c:if test="${ empty sessionScope.userid }">
                        <a href="myaccount.do" class="more"><img src="images/order_now.gif" alt="" title="" border="0" /></a>
                    </c:if>

                    <div class="clear"></div>
                </div>

                <div class="box_bottom"></div>
            </div>
            <div class="clear"></div>
        </div>

        <div id="demo" class="demolayout">
            <ul id="demo-nav" class="demolayout">
                <li><a class="active" href="#tab1">More details</a></li>
            </ul>

            <div class="tabs-container">
                <div style="display: block;" class="tab" id="tab1">
                    <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                    <ul class="list">
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                    </ul>
                    <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                </div>
            </div>
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
<script type="text/javascript">
    var tabber1 = new Yetii({
        id: "demo",
    });
</script>
</html>