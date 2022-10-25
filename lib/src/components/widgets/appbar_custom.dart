import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarCustom extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<StatefulWidget> createState() => _AppbarCustomState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(600, 100);
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.green,
      child: Row(
        children: [
          const Text("app bar custom"),
           CupertinoButton (
              child: Text("Click"),
            onPressed: () {},
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
