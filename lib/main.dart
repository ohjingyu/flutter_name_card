import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var isVisible = false;
  var portfolios = [
    "포폴페이지",
    "디스코드봇",
    "타이머",
    "나만의 홈페이지",
    "swift를 사용한 테트리스게임",
    "영화순위 조회",
    "영화 상영횟수 조회",
    "응애 노쇼해",
    "집가고 싶다"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(color: Colors.grey),
            ),
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    width: 130,
                    height: 130,
                    child: Image(
                      image: AssetImage('images/myimg.png'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    "오진규",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "kyeong0644@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    "HighSchool Student",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            isVisible = !isVisible;
                            setState(() {});
                          },
                          color: Colors.cyan,
                          textColor: Colors.white,
                          child: const Text('포트폴리오'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Visibility(
                      visible: isVisible,
                      child: Container(
                        color: Colors.grey,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              for (var i = 0; i < portfolios.length; i++)
                                portfolioView(i)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  portfolioView(int i) {
    return Container(
      width: double.infinity - 20,
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset("images/1.png")),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${portfolios[i]}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('프로젝트 ${i + 1}')
            ],
          )
        ],
      ),
    );
  }
}
