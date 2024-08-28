import 'package:flutter/material.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({
    required this.title,
    required this.members,
    required this.imagePath,
    required this.chats,
    super.key,
  });

  final String title, members, imagePath;

  final List<Widget> chats;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(0, 255, 193, 7),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          size: 20,
                          Icons.verified,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Text(
                      members,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: (){},
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 4),
            ...chats,
          ],
        ),
      ),
    );
  }
}
