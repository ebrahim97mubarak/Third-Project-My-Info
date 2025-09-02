import 'package:flutter/material.dart';

void main() {
  runApp(
    const TheThirdProject(),
  );
}

class TheThirdProject extends StatelessWidget {
  const TheThirdProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xEE26435F),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 101.5,
                child: CircleAvatar(
                  radius: 98.5,
                  backgroundImage: AssetImage(
                    'images/image.png',
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Ibrahim Mobarak',
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    color: Colors.amber,
                    fontFamily: 'Pacifico'),
              ),
            ),
            Center(
              child: Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontFamily: 'Ubuntu'),
              ),
            ),
            Center(
              child: Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
            ),
            CustumContainer(text: '(+967)737458862'),
            CustumContainer(text: 'first.physicist01@gmail.com'),
          ],
        ),
      ),
    );
  }
}

class CustumContainer extends StatelessWidget {
  const CustumContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          height: 70,
          width: 400,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 30),
                child: Icon(
                  Icons.phone,
                  size: 30,
                  color: Color(0xEE26435F),
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
