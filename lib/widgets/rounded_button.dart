import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final VoidCallback onTap;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(39)),
        child: loading
            ? CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.black,
              )
            : Text(
                title,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
//mablebrown.62117@gmail.com