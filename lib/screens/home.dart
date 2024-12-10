import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: 
  }

  AppBar _buildAppBar() {
    return AppBar(backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, color: tdBlack, size: 24,),
          Container(height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), child: Image.asset('assets/user.webp'),))
        ],),);
  }
}
