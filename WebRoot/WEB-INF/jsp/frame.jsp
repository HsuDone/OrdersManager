<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>



    <div class="right">
        <img class="wColck" src="${pageContext.request.contextPath }/statics/images/clock.jpg" alt=""/>
        <div class="wFont">
            <h2>${userOnLogin.userName }</h2>
            <p>欢迎来到超市订单管理系统!</p>
            <table id="cartTable">
        <thead>
            <tr class="order_content">
                <th><input class="check_all check" type="checkbox"></input>&nbsp;全选</th>
                <th>商品</th>
                <th>单价</th>
                <th>数量</th>
                <th>小计</th>
                <th>操作</th>
            </tr>

        </thead>
        <tbody>
            <tr class="order_content">
                <td class="check"><input class = "check_one check" type="checkbox"></input></td>
                <td class="goods"><img src="${pageContext.request.contextPath }/statics/images/1.png"><span>Iphone 6S</span></td>
                <td class="price">5099.88</td>
                <td class="count">
                    <span class="reduce">-</span>
                    <input class="count_input" type="text" value="1"></input>
                    <span class="add">+</span>
                </td>
                <td class="subtotle">5099.88</td>
                <td class="operation"><span class="delete">删除<span></td>
            </tr>
            <tr class="order_content">
                <td class="check"><input class = "check_one check" type="checkbox"></input></td>
                <td class="goods"><img src="${pageContext.request.contextPath }/statics/images/2.jpg"><span>MacBook Air</span></td>
                <td class="price">1099.99</td>
                <td class="count">
                    <span class="reduce">-</span>
                    <input class="count_input" type="text" value="1"></input>
                    <span class="add">+</span>
                </td>
                <td class="subtotle">1099.99</td>
                <td class="operation"><span class="delete">删除<span></td>
            </tr>
            <tr class="order_content">
                <td class="check"><input class = "check_one check" type="checkbox"></input></td>
                <td class="goods"><img src="${pageContext.request.contextPath }/statics/images/3.jpg"><span>Ipad mini2 银16g WLAN7.9英寸</span></td>
                <td class="price">6599.00</td>
                <td class="count">
                    <span class="reduce">-</span>
                    <input class="count_input" type="text" value="1"></input>
                    <span class="add">+</span>
                </td>
                <td class="subtotle">6599.00</td>
                <td class="operation"><span class="delete">删除<span></td>
            </tr>
            <tr>
                <td class="check"><input class = "check_one check" type="checkbox"></input></td>
                <td class="goods"><img src="${pageContext.request.contextPath }/statics/images/4.jpg"><span>IWatch EXTS Min</span></td>
                <td class="price">9998.68</td>
                <td class="count">
                    <span class="reduce">-</span>
                    <input class="count_input" type="text" value="1"></input>
                    <span class="add">+</span>
                </td>
                <td class="subtotle">9998.68</td>
                <td class="operation"><span class="delete">删除<span></td>
            </tr>
        </tbody>

    </table>
    <div class="slected view">
            <div id="selectedViewList" class="clearfix">
                <!-- <div><img src="./imgs/applewatch.png"><span>取消选择</span></div> -->
            </div>

            <span class="arrow">.<span>.</span></span>

    </div>
    <div id = "footer" class="footer">      
        <label class="fl select_all" ><input class="check_all check" type="checkbox">&nbsp;全选</input></label>
        <a class="fl delete_all" id="deleteAll" href="javascript:;">删除</a>
        <div class="fr closing">结算</div>
        <div class="fr selected_totle">合计：￥ <span id="priceTotle">0.00</span> </div>
        <div class="fr selectAll" id="selected">已购商品
            <span id = "selectTotle">0</span>件
            <span class="arow up">+++</span>
            <span class="arow  down">---</span>
        </div>


    </div>

        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/shoppingCart.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/shoppingCart.js"></script>