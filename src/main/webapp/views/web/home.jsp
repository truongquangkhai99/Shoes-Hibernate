<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<section class="home-banner">
    <div class="container">
        <div class="home-slider owl-carousel">
            <div class="banner-bg align-flax">
                <div class="w-100">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                            <div class="banner-img"><img
                                    src="<c:url value='/template/web/images/banner.jpg'/>"
                                    alt="banner"></div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                            <div class="banner-heading w-100">
                                <label class="banner-top">Get UP To <span>40%</span> Off</label>
                                <h2 class="banner-title">men <span>shoes</span></h2>
                                <p class="banner-sub">Lorem ipsum dolor sit amet, consectetuer
                                    adipiscing elit. Donec odio. Quisque volutpat mattis eros.</p>
                                <a href="<c:url value="/shop?page=1&&maxPageItem=16"/>" class="btn">Shop
                                    now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg align-flax">
                <div class="w-100">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                            <div class="banner-img"><img
                                    src="<c:url value='/template/web/images/banner-2.png'/>"
                                    alt="banner">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                            <div class="banner-heading w-100">
                                <label class="banner-top">Get UP To <span>65%</span> Off</label>
                                <h2 class="banner-title">season <span>sale</span></h2>
                                <p class="banner-sub">Lorem ipsum dolor sit amet, consectetuer
                                    adipiscing elit. Donec odio. Quisque volutpat mattis eros.</p>
                                <a href="<c:url value="/shop?page=1&&maxPageItem=16"/>" class="btn">Shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--Featuer--%>
<section class="featured pt-100">
    <div class="container">
        <div class="row mb-25">
            <div class="col-xl-6 col-lg-6 col-md-6">
                <div class="hading">
                    <h2 class="hading-title">FEATURED <span>PRODUCTS</span></h2>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6">
                <ul id="tabs"
                    class="product-isotop filters-product text-right text-uppercase nav nav-tabs"
                    role="tablist">
                    <li role="presentation" class="transition" data-filter="*">
                        <a href="#all" class="active" role="tab" data-toggle="tab">all</a>
                    </li>
                    <li role="presentation" class="transition" data-filter=".shoes">
                        <a href="#shoes" role="tab" data-toggle="tab">Shoes</a>
                    </li>
                    <li role="presentation" class="transition" data-filter=".women">
                        <a href="#women" role="tab" data-toggle="tab">Women</a>
                    </li>
                    <li role="presentation" class="transition" data-filter=".accessories">
                        <a href="#accessories" role="tab" data-toggle="tab">Accessories</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-content">
            <div role="tabpanel" class="row tab-pane fade active show" id="all">
                <c:forEach var="item" items="${productModel.listResult}">
                    <div class="featured-product mb-25">
                        <div class="product-img transition mb-15">
                            <a href="<c:url value="/product?productid=${item.id}"/>">
                                <img src="${item.avatar}"
                                     alt="product" class="transition">
                            </a>
                            <div class="new-label">
                                <span class="text-uppercase">New</span>
                            </div>
                            <div class="product-details-btn text-uppercase text-center transition">
                                <a href="<c:url value="/product?productid=${item.id}"/>"
                                   class="quick-popup mfp-iframe">Quick
                                    View</a>
                            </div>
                        </div>
                        <div class="product-desc">
                            <a href="<c:url value="/product?productid=${item.id}"/>"
                               class="product-name text-uppercase">${item.name}</a>
                            <span class="product-pricce">$${item.price}"</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<%--Feture--%>

<%--Offer banner--%>
<section class="offer-banner pt-70">
    <div class="container">
        <div class="offer-bg bg text-center ptb-120">
            <label class="banner-top text-uppercase">PROMOTION SALE <span>OFF 50%</span></label>
            <h1 class="banner-title text-uppercase"><span>the</span> summer</h1>
            <p class="banner-sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
                odio. </p>
            <a href="<c:url value="/shop?page=1&&maxPageItem=16"/>" class="btn">Shop now</a>
        </div>
    </div>
</section>
<%--Offer Banner--%>

<%--BestSeller--%>
<section class="best-seller pt-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-12 col-md-12">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="hading pb-20">
                            <h2 class="hading-title">best <span>seller</span></h2>
                        </div>
                        <c:forEach var="item" items="${saledetailModel.listResult}">
                            <div class="seller">
                                <div class="seller-box align-flax w-100 pb-20">
                                    <div class="seller-img">
                                        <a href="<c:url value="/product?productid=${item.id}"/>"
                                           class="display-b">
                                            <img src="${item.avatar}"
                                                 alt="shoes"
                                                 class="transition">
                                        </a>
                                    </div>
                                    <div class="seller-contain pl-15">
                                        <a href="<c:url value="/error-page"/>"
                                           class="product-name text-uppercase">${item.name}</a>
                                        <span class="product-pricce">${item.price}</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="hading pb-20">
                            <h2 class="hading-title">top <span>seller</span></h2>
                        </div>
                        <div class="seller">
                            <div class="seller-box align-flax w-100 pb-20">
                                <div class="seller-img">
                                    <a href="<c:url value="/error-page"/>" class="display-b">
                                        <img src="<c:url value='/template/web/images/product-10.jpg'/>"
                                             alt="shoes"
                                             class="transition">
                                    </a>
                                </div>
                                <div class="seller-contain pl-15">
                                    <a href="<c:url value="/error-page"/>"
                                       class="product-name text-uppercase">ELEIFEND ARCU</a>
                                    <span class="product-pricce">$478.00</span>
                                </div>
                            </div>
                            <div class="seller-box align-flax w-100 pb-20">
                                <div class="seller-img">
                                    <a href="<c:url value="/error-page"/>" class="display-b">
                                        <img src="<c:url value='/template/web/images/product-2.jpg'/>"
                                             alt="shoes"
                                             class="transition">
                                    </a>
                                </div>
                                <div class="seller-contain pl-15">
                                    <a href="<c:url value="/error-page"/>"
                                       class="product-name text-uppercase">AENEAN EU TRISTIQUE</a>
                                    <span class="product-pricce">$478.00</span>
                                </div>
                            </div>
                            <div class="seller-box align-flax w-100 pb-20">
                                <div class="seller-img">
                                    <a href="<c:url value="/error-page"/>" class="display-b">
                                        <img src="<c:url value='/template/web/images/product-6.jpg'/>"
                                             alt="shoes"
                                             class="transition">
                                    </a>
                                </div>
                                <div class="seller-contain pl-15">
                                    <a href="<c:url value="/error-page"/>"
                                       class="product-name text-uppercase">BLIQUAM LOBORTIS</a>
                                    <span class="product-pricce">$478.00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-12 col-md-12">
                <div class="offer-week">
                    <div class="row align-flax">
                        <div class="col-xl-5 col-lg-5 col-md-5">
                            <div class="week-img transition">
                                <a href="<c:url value="/error-page"/>" class="display-b">
                                    <img src="<c:url value='/template/web/images/week-sale.jpg'/>"
                                         class="w-100" alt="shoes">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-7">
                            <div class="week-contain">
                                <h2 class="week-head text-uppercase pb-15">offer of the week</h2>
                                <p class="week-sub">Welcome to Xpoge shoes Store 20% off</p>
                                <div class="star-rating pb-10">
                                    <input id="star-5" type="radio" name="rating" value="star-5"/>
                                    <label for="star-5" title="5 stars" class="transition">
                                        <i class="active fa fa-star" aria-hidden="true"></i>
                                    </label>
                                    <input id="star-4" type="radio" name="rating" value="star-4"
                                           checked/>
                                    <label for="star-4" title="4 stars" class="transition">
                                        <i class="active fa fa-star" aria-hidden="true"></i>
                                    </label>
                                    <input id="star-3" type="radio" name="rating" value="star-3"/>
                                    <label for="star-3" title="3 stars" class="transition">
                                        <i class="active fa fa-star" aria-hidden="true"></i>
                                    </label>
                                    <input id="star-2" type="radio" name="rating" value="star-2"/>
                                    <label for="star-2" title="2 stars" class="transition">
                                        <i class="active fa fa-star" aria-hidden="true"></i>
                                    </label>
                                    <input id="star-1" type="radio" name="rating" value="star-1"/>
                                    <label for="star-1" title="1 star" class="transition">
                                        <i class="active fa fa-star" aria-hidden="true"></i>
                                    </label>
                                </div>
                                <div class="price-d pb-25">
                                    <label class="price-r pr-30">$478.00</label>
                                    <label class="price-o">$378.00</label>
                                </div>
                                <ul class="countdown text-uppercase">
                                    <li class="text-center">
                                        <span id="days" class="counter-timer display-b text-center">08</span>
                                        <label class="day-name">days</label>
                                    </li>
                                    <li class="text-center">
                                        <span id="hours"
                                              class="counter-timer display-b text-center">16</span>
                                        <label class="day-name">hour</label>
                                    </li>
                                    <li class="text-center">
                                        <span id="minutes"
                                              class="counter-timer display-b text-center">36</span>
                                        <label class="day-name">min</label>
                                    </li>
                                    <li class="text-center">
                                        <span id="seconds"
                                              class="counter-timer display-b text-center">45</span>
                                        <label class="day-name">sec</label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--Best Seller--%>
<%--Group member--%>
<section class="team pt-100">
    <div class="container">
        <div class="team-inner owl-carousel">
            <div class="team-slide text-center">
                <div class="team-img position-r">
                    <img src="<c:url value='/template/web/images/thanhtuyen.jpg'/>" alt="team">
                    <span class="quote-c"><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                </div>
                <div class="team-desc">
                    <p class="member-detail">U là trời, nói cho mà nghe XPOGE luôn là lựa chọn hàng
                        đầu mỗi khi tôi có nhu cầu về mua sắm</p>
                    <h3 class="member-name text-uppercase">Thanh Tuyền</h3>
                </div>
            </div>
            <div class="team-slide text-center">
                <div class="team-img position-r">
                    <img src="<c:url value='/template/web/images/husky.jpg'/>" alt="team">
                    <span class="quote-c"><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                </div>
                <div class="team-desc">
                    <p class="member-detail">Nhờ có bạn Thanh tuyền mà tôi mới biết tới XPOGE. thật
                        vui vì góp phần là thành viên ở XPOGE</p>
                    <h3 class="member-name text-uppercase">Hoài Phong</h3>
                </div>
            </div>
            <div class="team-slide text-center">
                <div class="team-img position-r">
                    <img src="<c:url value='/template/web/images/giang.jpg'/>" alt="team">
                    <span class="quote-c"><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                </div>
                <div class="team-desc">
                    <p class="member-detail">Giày ở đây thì cực kì ưng ý với nhiều mẫu mã để các bạn
                        có thể chọn. Mình rất vui và xem XPOGE là lựa chọn tốt nhất mỗi khi muốn mua
                        giày</p>
                    <h3 class="member-name text-uppercase">Trường Giang</h3>
                </div>
            </div>
        </div>
    </div>
</section>
<%--Group member--%>
<%--Late blog--%>
<section class="latest-blog pt-100">
    <div class="container">
        <div class="latest-blog-inner">
            <div class="hading pb-20">
                <h2 class="hading-title">latest<span>blog</span></h2>
            </div>
            <div class="latest-blog-salid owl-carousel">
                <div class="row align-flax pr-30">
                    <div class="col-xl-5 col-lg-5 col-md-5">
                        <div class="latest-blog-img">
                            <a href="<c:url value="/error-page"/>" class="display-b">
                                <img src="<c:url value='/template/web/images/blog-1.jpg'/>"
                                     alt="blog">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7">
                        <div class="lat-blog-desc">
                            <a href="<c:url value="/error-page"/>"
                               class="lat-blog-title text-uppercase">Lorem
                                Ipsum is simply dummy text of the printing and typesetting
                                industry.</a>
                            <p class="lat-blog-date text-uppercase"><span>john doe</span> - APRIL
                                18, 2015 AT 5.00 PM</p>
                            <p class="lat-blog-detail">There are many variations of passages of
                                Lorem Ipsum available, but the majority have suffered alteration in
                                some form, by injected humour, or randomised words which don't look
                                even</p>
                            <a href="<c:url value="/error-page"/>" class="btn-2">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="row align-flax pr-30">
                    <div class="col-xl-5 col-lg-5 col-md-5">
                        <div class="latest-blog-img">
                            <a href="<c:url value="/error-page"/>" class="display-b">
                                <img src="<c:url value='/template/web/images/blog-2.jpg'/>"
                                     alt="blog">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7">
                        <div class="lat-blog-desc">
                            <a href="<c:url value="/error-page"/>"
                               class="lat-blog-title text-uppercase">Lorem
                                Ipsum is simply dummy text of the printing and typesetting
                                industry.</a>
                            <p class="lat-blog-date text-uppercase"><span>john doe</span> - APRIL
                                18, 2015 AT 5.00 PM</p>
                            <p class="lat-blog-detail">There are many variations of passages of
                                Lorem Ipsum available, but the majority have suffered alteration in
                                some form, by injected humour, or randomised words which don't look
                                even</p>
                            <a href="<c:url value="/error-page"/>" class="btn-2">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="row align-flax pr-30">
                    <div class="col-xl-5 col-lg-5 col-md-5">
                        <div class="latest-blog-img">
                            <a href="<c:url value="/error-page"/>" class="display-b">
                                <img src="<c:url value='/template/web/images/blog-1.jpg'/>"
                                     alt="blog">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7">
                        <div class="lat-blog-desc">
                            <a href="<c:url value="/error-page"/>"
                               class="lat-blog-title text-uppercase">Lorem
                                Ipsum is simply dummy text of the printing and typesetting
                                industry.</a>
                            <p class="lat-blog-date text-uppercase"><span>john doe</span> - APRIL
                                18, 2015 AT 5.00 PM</p>
                            <p class="lat-blog-detail">There are many variations of passages of
                                Lorem Ipsum available, but the majority have suffered alteration in
                                some form, by injected humour, or randomised words which don't look
                                even</p>
                            <a href="<c:url value="/error-page"/>" class="btn-2">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--Late Blog--%>
<div class="brand pt-100">
    <div class="container">
        <div class="brand-salider owl-carousel">
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-1.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-2.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-3.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-4.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-5.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-6.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-1.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-2.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
            <div class="brand-box text-center">
                <a href="#"><img src="<c:url value='/template/web/images/brand-4.jpg'/>" alt="brand"
                                 class="transition"></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>