import 'package:flutter/material.dart';

class CustomScaffold  extends StatelessWidget {
  const CustomScaffold ({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
              color: Colors.blueGrey[100],
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
