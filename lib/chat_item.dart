import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.count});

  final String title, subtitle, date;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Icon(
            title == 'Announcements' ? Icons.campaign : Icons.chat,
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(date,
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
              Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '$count',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
