
import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:football_screens/models/navbar_item_data.dart';
import 'package:football_screens/helpers/helpers.dart';

class NavbarButton extends StatefulWidget {
  final NavbarItemData data;
  final bool isSelected;
  final VoidCallback onTap;
  NavbarButton({this.data, this.isSelected, this.onTap});

  @override
  _NavbarButtonState createState() => _NavbarButtonState();
}

class _NavbarButtonState extends State<NavbarButton>
    with SingleTickerProviderStateMixin {
  GifController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var content = Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: Helpers.responsiveHeight(40, context),
            width: MediaQuery.of(context).size.width / 5 - 2,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: Helpers.responsiveHeight(3, context),
                ),
                child: GifImage(
                  width: Helpers.responsiveHeight(25, context),
                  height: Helpers.responsiveHeight(25, context),
                  image: AssetImage(widget.data.gif),
                  controller: widget.isSelected
                      ? (_controller
                        ..repeat(
                          min: 0,
                          max: 28,
                          period: Duration(milliseconds: 1300),
                        ))
                      : (_controller..value = 0.0),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: widget.isSelected ? 1 : 0,
            child: Text(
              widget.data.text,
            ),
          ),
        ],
      ),
    );
    return GestureDetector(
      onTap: widget.onTap,
      child: content,
    );
  }
}
