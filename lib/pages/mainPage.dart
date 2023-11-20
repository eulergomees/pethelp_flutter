import 'package:flutter/material.dart';

import '../shared/widgets/myDrawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            "lib/images/dog_and_cat_blue.png",
            width: 42,
          )),
      drawer: const MyDrawer(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ));
      }),
    ));
  }
}
