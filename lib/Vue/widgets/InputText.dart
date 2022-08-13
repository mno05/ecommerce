import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText(
      {Key key,
      this.icon,
      this.hint,
      this.motDePasse = false,
      this.controller,
      this.icoExit = true})
      : super(key: key);
  final IconData icon;
  final String hint;
  final bool motDePasse, icoExit;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 370,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black45),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icoExit
              ? Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    icon,
                    size: 25,
                    color: Colors.black,
                  ),
                )
              : SizedBox(width: 5),
          hintText: hint,
        ),
        obscureText: motDePasse ? true : false,
      ),
    );
  }
}
