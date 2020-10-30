import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  const BasePage();

  bool get isFullBody => false;

  Widget buildAppBar();
  Widget buildBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: isFullBody,
      appBar: buildAppBar(),
      body: _buildBodyWrapper(),
    );
  }

  Widget _buildBodyWrapper() {
    if (isFullBody) {
      return buildBody();
    }

    return SafeArea(child: buildBody());
  }
}
