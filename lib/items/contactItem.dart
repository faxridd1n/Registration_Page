import 'package:exam_ui/models/contactModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget contactItem(BuildContext context, ContactModel contact) {
  return Container(
    height: 70,
    margin: EdgeInsets.only(top: 15),
    width: MediaQuery.of(context).size.width * 0.96,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            contact.image,
            height: 65,
            width: 65,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contact.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              contact.num,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.phone,
                color: Colors.green,
                size: 35,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
