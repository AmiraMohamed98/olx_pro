import 'dart:async';

import 'package:flutter/material.dart';
import 'package:olx/view/Widget/rounded_container.dart';

class AutoPageView extends StatefulWidget {
  final List<Widget> pages;
  final Duration duration;

  AutoPageView({required this.pages, required this.duration});

  @override
  _AutoPageViewState createState() => _AutoPageViewState();
}

class _AutoPageViewState extends State<AutoPageView> {
  final _pageController = PageController();
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(widget.duration, (Timer timer) {
      if (_currentPage < widget.pages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      height: 50.0,
      radiusSize: 15.0,
      background: Colors.black12,
      borderColor: Colors.grey,
      child: PageView(
        controller: _pageController,
        children: widget.pages,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
    );
  }
}
