import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  void _onScroll() {
    print('sass');
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage('assets/images/one.jpg'),
          makePage('assets/images/two.jpg'),
          makePage('assets/images/three.jpg'),
          makePage('assets/images/four.jpg'),
        ],
      ),
    );
  }

  Widget makePage(image){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2)
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            Row(

            )
          ]),
        ),
      ),
    );
  }
}
