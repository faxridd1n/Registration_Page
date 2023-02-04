import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Contact',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 25,
            ),
            onSelected: (val) => setState(
              () {
                val = val;
              },
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop;
                  },
                  child: Text('cancel'),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop;
                  },
                  child: Text('cancel'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/box.jpg',
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'You have no contacts yet',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
