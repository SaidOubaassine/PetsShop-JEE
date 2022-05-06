 <div class="right_content">
        <div class="languages_box">
            <div id="google_translate_element"></div>

            <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({ pageLanguage: "en" }, "google_translate_element");
                }
            </script>

            <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        </div>
        
   
                <c:if test="${hh==1}">
                <div class="currency">
                <span class="red">Currency: </span>
             <c:forEach items="${modelPrix}" var="pr">
            <a class="selected" href="details.do?id=${pet_selected.getPet_id()}&id_prix=${pr.getId_prix()}">${pr.getNom_prix()}</a>
        </c:forEach>
        </div>
        </c:if>
            
  
           <c:if test="${hh==2}">
          <div class="currency">
                <span class="red">Currency: </span>
             <c:forEach items="${modelPrix}" var="pr">
            <a class="selected" href="cart.do?userid=${sessionScope.userid}&id_prix=${pr.getId_prix()}">${pr.getNom_prix()}</a>
        </c:forEach>
        </div>
          </c:if>
         
          

        <div class="cart">
            <c:if test="${ !empty sessionScope.userid }">
                <div class="title">
                    <span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart
                </div>
                <div class="home_cart_content">
                    <span class="red">${sessionScope.username}</span>
                </div>
                <a href="cart.do?userid=${sessionScope.userid }&id_prix=1" class="view_cart">view cart</a>
            </c:if>
        </div>

        <div class="title">
            <span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop
        </div>
        <div class="about">
            <p>
                <img src="images/about.gif" alt="" title="" class="right" />
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>
        </div>

        <div class="right_box">
            <div class="title">
                <span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions
            </div>

            <c:forEach items="${modelPets}" var="p">
                <c:if test="${ p.getPet_status().equals('promo')}">
                    <div class="new_prod_box">
                        <a href="details.do?id=${p.getPet_id()}">${p.getPet_name()}</a>
                        <div class="new_prod_bg">
                            <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                            <a href="details.do?id=${p.getPet_id()}&id_prix=1"><img src="images/${p.getPet_images()}" alt="" title="" class="thumb" border="0" /></a>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>

        <div class="right_box">
            <div class="title">
                <span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories
            </div>

            <ul class="list">
                <c:forEach items="${modelCategorys}" var="p">
                    <li><a href="category.do?id=${p.getPet_category_id()}">${p.getPet_category_name()}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>