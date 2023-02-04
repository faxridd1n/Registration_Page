import 'package:exam_ui/models/contactModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPage extends StatefulWidget {
  AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                ContactModel(
                    image: 'assets/c.jpg', name: name.text, num: number.text);
                Navigator.pushNamed(context, '/contact');
              },
              icon: Icon(
                Icons.check_outlined,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter name',
                  filled: true,
                  fillColor: Color.fromARGB(255, 228, 226, 226),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.black, width: 1))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Surname',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter surname',
                  filled: true,
                  fillColor: Color.fromARGB(255, 228, 226, 226),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.black, width: 1))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Phone number',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: '+998 __ ___ __ __',
                  filled: true,
                  fillColor: Color.fromARGB(255, 228, 226, 226),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.black, width: 1))),
            )
          ],
        ),
      ),
    );
  }
}
