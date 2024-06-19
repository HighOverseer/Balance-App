


import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';

class DashboardItem extends StatelessWidget{

  const DashboardItem(this.name, {super.key, this.onPressed});

  final String name;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 3, color: colorsNavy))),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: colorsNavy,
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset("assets/image/ic_next.png"),
              )
            ],
          ),
        )
    );
  }
}