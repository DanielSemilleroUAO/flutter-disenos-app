import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0Xff5EE8C5), Color(0Xff30BAD6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5]));
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [PageOne(), PageTwo()],
      ),
    ));
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0Xff30BAD6),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Color(0Xff0098FA), shape: StadiumBorder()),
        ),
      ),
    );
  }
}
