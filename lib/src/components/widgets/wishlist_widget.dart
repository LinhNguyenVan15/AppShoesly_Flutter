import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const _size = 24.0;

class WishlistWidget extends StatefulWidget {
  const WishlistWidget({Key? key}) : super(key: key);

  @override
  State<WishlistWidget> createState() => _WishlistWidgetState();
}

class _WishlistWidgetState extends State<WishlistWidget> {
  var _isSlected = true;
  void _onTap() {
    setState(
      () {
        _isSlected = !_isSlected;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.white),
        padding: const EdgeInsets.all(6),
        child: SvgPicture.asset(
          _isSlected
              ? 'assets/icons/ic_wishlist.svg'
              : 'assets/icons/ic_wishListed.svg',
          width: 12,
          height: 12,
          color: const Color(0xFF101010),
        ),
      ),
    );
  }
}
