import 'package:flutter/material.dart';

import '../navigation/myroutes.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key, required this.child, required this.page});

  final Widget child;
  final Widget page;

  @override
  _MyButtonState createState() => _MyButtonState(child: child, page: page);
}

class _MyButtonState extends State<MyButton> {
  _MyButtonState({required this.child, required this.page});

  final Widget child;
  final Widget page;

  Offset pushOffset = const Offset(0, 0);
  Offset shadowOffset = const Offset(4, 4);
  bool _isSelected = false;

  void _updateOffset() {
    setState(() {
      _isSelected = !_isSelected;
      if (_isSelected) {
        pushOffset = const Offset(4, 4);
        shadowOffset = const Offset(0, 0);
      } else {
        pushOffset = const Offset(0, 0);
        shadowOffset = const Offset(4, 4);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: pushOffset,
        child: GestureDetector(
            onTapUp: (TapUpDetails tapUpDetails) {
              _updateOffset();
              pushPage(context, page);
            },
            onTapCancel: () {
              _updateOffset();
            },
            onTapDown: (TapDownDetails tapDownDetails) {
              _updateOffset();
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 4,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).secondaryHeaderColor,
                      offset: shadowOffset,
                    ),
                  ],
                ),
                child: child)));
  }
}
