import 'package:challenge_2/modules/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget> [
              Container(
                alignment: Alignment.bottomCenter,
                color: Theme.of(context).colorScheme.primary,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: size.height * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
              const HeaderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
