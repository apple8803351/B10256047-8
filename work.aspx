<%@ Page Language="C#" AutoEventWireup="true" CodeFile="work.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

    <script>
        var previous;

        $(document).ready(function () {
            previous = $("#title ul li")[0];

            $("#title ul li").hover(function () {
                if(previous !== $(this).attr("data"))
                {
                    $(previous).removeClass("selected");

                    $(this).addClass("selected")

                    $("#" + $(previous).attr("data")).css("display", "none");

                    $("#" + $(this).attr("data")).css("display", "block");

                    previous = $(this);
                }
            });
        });
    </script>

    <style>
        body{
            background-color: #d3caca;
        }

        ul{
            padding: 0px;
            margin: 0px;            
        }

        ul li{
            list-style-type:none;
        }

        #news{
            position: relative;
            width: 497px;
            border: 1px solid #E2E2E6;
            font-family: '微軟正黑體';
            margin: 0px auto;
        }

        #title{
            background-color: #F4F4F4;
            border-bottom: 1px solid #E2E2E6;
            height: 36px;
        }

        #title ul{
            font-size: 0px;
        }

         #title ul li{
            text-align: center;
            display: inline-block;
            padding-top: 7px;
            padding-bottom: 8px;
        }

        #title ul li{
            cursor: pointer;
        }

        #title ul li span{
            font-size: 18px;
            float: left;
            width: 82px;
            border-left: 1px #D6D6D6 solid;
        }

        .selected{
            color: #7300FF;
            border-top: 3px #7300FF solid;
            background-color: #FFFFFF;
            font-weight: bold;
        }

        .image{
            position: absolute;
            left: 0px;
            top: 0px;
        }

        .image img{
            position: relative;
            height: 240px;
        }

        
        .image .image_content_link{
            position: absolute;
            margin-left: 16px;
            margin-right: 16px;
            width: 268px;
            bottom: 0px;
        }

        .image p{
            font-size: 24px;
            font-weight: bold;
            color: #FFFFFF;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }

        .word{

        }

        .word div{
            background-color: #FFFFFF;
            margin-left: 300px;
            height: 80px;
            position: relative;
            border: 1px solid transparent;
        }

        .word div p{
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            margin: 12px 0px 0px 20px;
        }

        .word div .pTitle{
            font-size: 18px;
            font-weight: bold;
        }

        .word div .pContent{
            color: #5F5F5F;
            font-size: 10px;
        }

        #content{
            position: relative;
            width: 100%;
            height: 240px;
            overflow: hidden;
        }

        #t1,#t2,#t3,#t4,#t5,#t6{
            position: absolute;
            width: 100%;
            height: 100%;
            display: none;
        }

        a{
            text-decoration: none;
        }

        .image a{
            color: #FFFFFF;
        }

        .word div a:link, .word div a:visited{
            color: #324fe1;
        }

        a:hover{
            text-decoration: underline;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;">
        <h1 style="color: #333333;">奇摩新聞(仿)</h1>
    </div>

    <div id="news">
        <div id="title">
            <ul>
                <li class="selected" data="t1"><span style="border: none;">焦點</span></li>
                <li data="t2"><span>運動</span></li>
                <li data="t3"><span>娛樂</span></li>
                <li data="t4"><span>FUN</span></li>
                <li data="t5"><span>生活</span></li>
                <li data="t6"><span>看片</span></li>
            </ul>
        </div>

        <div id="content">
            <div id="t1" style="display: block;">
                <ul>
                    <li class="image">
                        <div>
                            <a href="#"><img src="images/1.png" /></a>
                            <a href="#" class="image_content_link"><p>54年來沒有過 東京民眾震驚</p></a>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">興航空姐哭2天 鼎泰豐董座也關心</p></a>
                            <p class="pContent">看新聞才知道要停飛，經濟陷困境，不知道自己未來在哪</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">興航留爛攤 林全怒飆交通部</p></a>
                            <p class="pContent">說重話表示，航空業影響國家運輸，若政府無法掌握</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">年薪319萬嫌工作無聊 他竟提告</p></a>
                            <p class="pContent">1年只有30天有事做，認為「大材小用」，紐約市立大學員工</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="t2">
                <ul>
                    <li class="image">
                        <a href="#"><img src="images/2.jpg" /></a>
                        <a href="#" class="image_content_link"><p>沒他被狂電 豪表情透露一切</p></a>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">中職棒協內鬥 他：日本也有</p></a>
                            <p class="pContent">中職、中華棒協因為經典賽組隊出現摩擦，林華韋表示，職業、業餘衝突場面，日本也發生過，希望棒界能像一家人一樣，發展才會更好 ...</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">哇！這球連棒子都甩得又高又遠</p></a>
                            <p class="pContent">甩棒被視為極其挑釁的動作，但有時候情緒一來，哪管得了這麼多...</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">出戰經典賽？殷仔：給新秀機會</p></a>
                            <p class="pContent">打不打經典賽以身體狀況為主，也需要和球團討論...</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="t3">
                <ul>
                    <li class="image">
                        <a href="#"><img src="images/3.jpg" /></a>
                        <a href="#" class="image_content_link"><p>還了4千萬賭債 盼能追回前妻</p></a>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">女友遇害 自爆在軍中被軟禁</p></a>
                            <p class="pContent">看見女友遭愛慕者殺害的新聞，當時長官怕他想不開，還將他軟禁起來 ...</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">「史上最強姊弟戀」並肩甜睡</p></a>
                            <p class="pContent">前年才復合的兩位大明星，被拍到恩愛搭飛機出國玩，照片曝光後再度引起網友熱烈討論，紛紛猜測2人到底要去哪 …</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">情牽14年？她不小心爆真相</p></a>
                            <p class="pContent">10多年戀情傳分分合合，交往過程卻因侯佩岑「說謊」意外曝光，竟主動在綜藝節目中爆料 …</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="t4">
                <ul>
                    <li class="image">
                        <a href="#"><img src="images/4.jpg" /></a>
                        <a href="#" class="image_content_link"><p>他曬閨蜜照 網友呼像蠟像</p></a>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">54年來初次！東京11月降初雪</p></a>
                            <p class="pContent">54年來初次！東京11月降初雪</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">今天開幕 英名廚餐廳推台披薩</p></a>
                            <p class="pContent">最近討論度爆表的店家，就是傑米奧利佛開的這間義式餐廳</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">另類版數獨？動腦玩超殺時間</p></a>
                            <p class="pContent">根據提示推測出哪個格子可以點擊，完成後竟出現某個字母</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="t5">
                <ul>
                    <li class="image">
                        <a href="#"><img src="images/5.jpg" /></a>
                        <a href="#" class="image_content_link"><p>跳過日系直逼雙B！明年登台</p></a>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">愛瘋8採玻璃殼？為了這原因</p></a>
                            <p class="pContent">分析師指出，蘋果捨棄金屬機殼的原因之一就是要支源無線</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">你抓了嗎～稀有百變怪攻略</p></a>
                            <p class="pContent">官方公布：限定期間內玩家的經驗值、星塵數量都加倍贈送</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">免餓肚…日1顆水煮蛋瘦2kg</p></a>
                            <p class="pContent">日本爆紅！只要一餐吃，午晚餐可以正常吃每天早餐換吃水煮蛋</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="t6">
                <ul>
                    <li class="image">
                        <a href="#"><img src="images/6.jpg" /></a>
                        <a href="#" class="image_content_link"><p>愛不到就毀掉 她硬要人夫…</p></a>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">什麼是草莓番茄？真相神奇</p></a>
                            <p class="pContent">究竟是草莓或是番茄…皮薄、肉細汁又多的品種是經過國</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">眼袋泡浮腫～大師教1招改善</p></a>
                            <p class="pContent">不用5分鐘！眼袋腫大或臥蠶已經變成眼袋的人用這方法</p>
                        </div>
                    </li>
                    <li class="word">
                        <div>
                            <a href="#"><p class="pTitle">百年歷史！吳尊推薦住這裡</p></a>
                            <p class="pContent">非常異國fu～被問到只能去一個地方時，他直接推薦住水</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
