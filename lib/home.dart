import 'package:flutter/material.dart';
import './linear_flow_widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Main Home Page',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 5),
              Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/home_page.png'),
              ),
              const SizedBox(width: 5),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/linear_flow_widget.png',
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/login_page.png',
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/main.png'),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
      ),
      floatingActionButton: LinearFlowWidget(),
    );
  }
}
