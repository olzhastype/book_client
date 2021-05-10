import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [drawerHeader(), drawerBody()],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'images/main_header.png',
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                children: [
                  Column(
                    children: [SvgPicture.asset('images/header_icon.svg')],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded drawerBody() {
    return Expanded(
        child: Container(
      color: Colors.grey,
      child: Column(
        children: [
          TextButton(
            child: Text('УЧЕБНИКИ',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            onPressed: () => {},
          ),
          TextButton(
            child: Text('ПОСОБИЕ',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            onPressed: () => {},
          ),
          TextButton(
            child: Text('О НАС',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            onPressed: () => {},
          ),
          TextButton(
            child: Text('НАСТРОЙКИ',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            onPressed: () => {},
          ),
          TextButton(
            child: Text('СОГЛАШЕНИЕ ПОЛЬЗЫВАТЕЛЯ',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            onPressed: () => {},
          )
        ],
      ),
    ));
  }

  Container drawerHeader() {
    return Container(
      height: 120,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('images/vector.svg'),
              Text('КІТАП'),
              OutlinedButton(
                child: SvgPicture.asset('images/exit.svg'),
                onPressed: () => {},
              )
            ],
          ),
        ],
      ),
      color: Colors.blue,
    );
  }
}
