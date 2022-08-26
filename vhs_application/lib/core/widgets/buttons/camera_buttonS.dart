import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CameraButtonS extends StatelessWidget {
  final double? textSize;
  final Color? color;
  final Function()? onPressed;
  final String text;
  final double width;

  const CameraButtonS({
    super.key,
    required this.textSize,
    required this.onPressed,
    required this.text,
    this.color = const Color.fromRGBO(92, 92, 92, 1),
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
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
                    inset: true,
                    blurRadius: 4.0,
                    offset: Offset(2, 2),
                    color: Color.fromRGBO(255, 255, 255, 0.35)),
                BoxShadow(
                    inset: true,
                    blurRadius: 4.0,
                    offset: Offset(-2, -2),
                    color: Color.fromRGBO(0, 0, 0, .35))
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 1.83, 2, 1.83),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 62, 62, 1),
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    BoxShadow(
                        inset: true,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                        color: Color.fromRGBO(255, 255, 255, 1)),
                    BoxShadow(
                        inset: true,
                        blurRadius: 4.0,
                        offset: Offset(-2, -2),
                        color: Color.fromRGBO(0, 0, 0, 1))
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 1.83, 2, 1.83),
                child: Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                            inset: true,
                            blurRadius: 4.0,
                            offset: Offset(2, 2),
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        BoxShadow(
                            inset: true,
                            blurRadius: 4.0,
                            offset: Offset(-2, -2),
                            color: Color.fromRGBO(0, 0, 0, 1))
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
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
