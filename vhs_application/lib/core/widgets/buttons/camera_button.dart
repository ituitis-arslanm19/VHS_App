import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  final double? textSize;
  final double width;
  final double height;
  final Function()? onPressed;
  final String text;

  const CameraButton(
      {super.key,
      required this.textSize,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 1),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 1.83, 3, 1.83),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(192, 192, 192, 1),
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(
                    spreadRadius: -4.0,
                    blurRadius: 4.0,
                    offset: Offset(-2, -2),
                    color: Color.fromRGBO(255, 255, 255, 0.35)),
                BoxShadow(
                    spreadRadius: -4.0,
                    blurRadius: 4.0,
                    offset: Offset(2, 2),
                    color: Color.fromRGBO(0, 0, 0, 0.35))
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 1.83, 2, 1.83),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 62, 62, 1),
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                        offset: Offset(-2, -2),
                        color: Color.fromRGBO(255, 255, 255, 0.35)),
                    BoxShadow(
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                        color: Color.fromRGBO(0, 0, 0, 0.35))
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 1.83, 2, 1.83),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(120, 120, 120, 1),
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: -4.0,
                            blurRadius: 4.0,
                            offset: Offset(-2, -2),
                            color: Color.fromRGBO(255, 255, 255, 0.35)),
                        BoxShadow(
                            spreadRadius: -4.0,
                            blurRadius: 4.0,
                            offset: Offset(2, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.35))
                      ]),
                  child: Material(
                    borderRadius: BorderRadius.circular(2),
                    color: Color.fromRGBO(120, 120, 120, 1),
                    child: InkWell(
                      child: Center(
                        child: Text(
                          text,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                              fontSize: textSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      onTap: onPressed,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
