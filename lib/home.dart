import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // custom scroll view
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    elevation: 0,
                    floating: true,
                    snap: true,
                    pinned: true,
                    expandedHeight: MediaQuery.of(context).size.height -80,
                    collapsedHeight: MediaQuery.of(context).size.height * 0.4,
                    flexibleSpace: Container(
                      color: Colors.black54,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        'https://www.seekpng.com/png/small/9-95521_businessman-png-business-man-standing-png.png',
                        fit: BoxFit.fitWidth,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(
                        title: Text('Item #$index'),
                      ),
                      childCount: 1000,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              height: 80,
              child: const Center(
                child: Text('Bottom'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
