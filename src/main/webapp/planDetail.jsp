<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>プラン詳細画面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/route-detail.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
<jsp:include page="userHeader.jsp"></jsp:include>
<% Plan p = (Plan) request.getAttribute("Plan"); %>
	<div class="prosum_box">
		<dl class="prosum_left">
			<dt>
				<img alt="" class="big_img"
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m49788843d72171643297ccc033d9288ee.jpg">
			</dt>
			<dd>
				<a class="up_img up_img_disable"></a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m40920d0669855e745d97f9ad1df966ebb.jpg">
					<img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m20920d0669855e745d97f9ad1df966ebb.jpg">
				</a> <a title="" class="little_img cur_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m49788843d72171643297ccc033d9288ee.jpg">
					<img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m29788843d72171643297ccc033d9288ee.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4531a8dbceefa2c44e6d0e35627cd2689.jpg">
					<img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2531a8dbceefa2c44e6d0e35627cd2689.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m46d8cb900e9f6c0a762aca19eae40c00c.jpg">
					<img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m26d8cb900e9f6c0a762aca19eae40c00c.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m45ea00f6eba562a767b5095bbf8cffe07.jpg"
					style="display: none;"> <img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m25ea00f6eba562a767b5095bbf8cffe07.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4265ec488cd1bc7ce749bc8c9b34b87bc.jpg"
					style="display: none;"> <img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2265ec488cd1bc7ce749bc8c9b34b87bc.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4e7e964909d7dd1a9f6e5494d4dc0c847.jpg"
					style="display: none;"> <img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2e7e964909d7dd1a9f6e5494d4dc0c847.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m467db00e1b76718fab0fe8b96e10f4d35.jpg"
					style="display: none;"> <img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m267db00e1b76718fab0fe8b96e10f4d35.jpg">
				</a> <a title="" class="little_img"
					data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m487bbbc6e43eba6aa6a36cc1a182f7a20.jpg"
					style="display: none;"> <img
					src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m287bbbc6e43eba6aa6a36cc1a182f7a20.jpg">
				</a> <a class="down_img down_img_disable" style="margin-bottom: 0;"></a>
			</dd>
		</dl>
		
		<div class="prosum_right">
			<p class="pros_title"><%=p.getPname() %></p>
			<p class="hot">期間：<%=p.getPdate() %></p>
			<div class="pros_other">
				<p>区域 ：<%=p.getArea() %></p>
				<p>詳細 : <%=p.getDetail() %></p>
			</div>
			<div class="pros_price">
				<p class="price">
					<strong>¥<%=p.getPrice() %></strong><span>税込み</span>
				</p>
				<p class="collect">
					<a href="UserReserveServlet?pid=<%= p.getPid() %>">予約</a>
				</p>
			</div>
		</div>
	</div>
	<div class="you_need_konw">
		<span>ご案内・注意</span>
		<div class="notice">
			<p>※当ツアーは散策が多いコースですので、歩きやすい靴でご参加ください。</p>
			<p>※当ツアーは夕食は付いておりません。夕食はホテル周辺にて各自お取りいただきます。</p>
			<p>※道路の混雑状況により、滞在時間が短くなる場合がございます。</p>
			<p>■出発予定時刻後は、当社係員の判断でご出発となりますので、集合時間は厳守してください。</p>
			<p>■記載された予定時間・内容は、道路状況により変更となる場合がございます。</p>
			<p>■万一、到着が遅れタクシーの利用もしくは、宿泊しなければならない事態が生じても当社は一切その請求には応じられません。</p>
			<p>■参加人数により、中型バスまたは小型バスになる場合があります。 ■バスにトイレはついておりません。</p>
			<p>■お忘れ物の保管期間は、ご旅行終了後2週間とさせていただきます。ただし生物などの食料品や保存が難しい物品につきましては即処分いたします。予めご了承下さい。</p>
			<p>■ペットを連れての参加はご遠慮ください。</p>
			<p>■ツアー代金に含まれる施設入場料等は公示価格とは異なります。ツアー出発後の公示価格との差額返金・追加請求はございません。</p>
			<p>■お座席のご要望、ホテル喫煙・禁煙のご要望、アレルギーのご要望にそえない場合がございます。ご説明の上、事前にお断りさせて頂く可能性もございます。</p>
			<p>■インターネットよりご予約頂いた場合、ご案内は全てメールにてお送りさせて頂きます。郵送物はございません。</p>
		</div>
	</div>
	<!-- 详情 end -->

	 <!--引入头部-->
    <div id="footer"></div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.3.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
	<script>
		$(document).ready(function() {
			//焦点图效果
			//点击图片切换图片
			$('.little_img').on('mousemove', function() {
				$('.little_img').removeClass('cur_img');
				var big_pic = $(this).data('bigpic');
				$('.big_img').attr('src', big_pic);
				$(this).addClass('cur_img');
			});
			//上下切换
			var picindex = 0;
			var nextindex = 4;
			$('.down_img').on('click', function() {
				var num = $('.little_img').length;
				if ((nextindex + 1) <= num) {
					$('.little_img:eq(' + picindex + ')').hide();
					$('.little_img:eq(' + nextindex + ')').show();
					picindex = picindex + 1;
					nextindex = nextindex + 1;
				}
			});
			$('.up_img').on('click', function() {
				var num = $('.little_img').length;
				if (picindex > 0) {
					$('.little_img:eq(' + (nextindex - 1) + ')').hide();
					$('.little_img:eq(' + (picindex - 1) + ')').show();
					picindex = picindex - 1;
					nextindex = nextindex - 1;
				}
			});
			//自动再生
			// var timer = setInterval("auto_play()", 5000);
		});

		//自动再生方法
		function auto_play() {
			var cur_index = $('.prosum_left dd').find('a.cur_img').index();
			cur_index = cur_index - 1;
			var num = $('.little_img').length;
			var max_index = 3;
			if ((num - 1) < 3) {
				max_index = num - 1;
			}
			if (cur_index < max_index) {
				var next_index = cur_index + 1;
				var big_pic = $('.little_img:eq(' + next_index + ')').data(
						'bigpic');
				$('.little_img').removeClass('cur_img');
				$('.little_img:eq(' + next_index + ')').addClass('cur_img');
				$('.big_img').attr('src', big_pic);
			} else {
				var big_pic = $('.little_img:eq(0)').data('bigpic');
				$('.little_img').removeClass('cur_img');
				$('.little_img:eq(0)').addClass('cur_img');
				$('.big_img').attr('src', big_pic);
			}
		}
	</script>


</body>
</html>