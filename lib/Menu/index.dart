import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:open_pay/Map/index.dart';
import 'package:open_pay/ResponsibeQuerys/index.dart';

import '../CRUD/index.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          page == 1 ? Map() : Crud(),
          Container(
            width: mediaWidth(context, 1),
            height: mediaHeight(context, 0.12),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      page = 1;
                    });
                  },
                  child: Icon(
                    Icons.map_outlined,
                    size: mediaWidth(context, 0.2),
                    color: page == 1 ? Colors.blue : Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      page = 2;
                    });
                  },
                  child: Icon(
                    Icons.supervised_user_circle,
                    size: mediaWidth(context, 0.2),
                    color: page == 2 ? Colors.blue : Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}