import 'package:flutter/material.dart';
import 'package:learningx/chat_item.dart';
import 'package:learningx/club_card.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Clubs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          ClubCard(
            title: 'TECHFEST X IIT BOMBAY',
            members: '12932 Members',
            imagePath: 'assets/1.jpg',
            chats: [
              ChatItem(
                title: 'Announcements',
                subtitle: 'New Event Announced',
                date: '12/03/24',
                count: 4,
              ),
              ChatItem(
                title: 'General',
                subtitle: 'Vansh : Can we postpone the event',
                date: '12/03/24',
                count: 12,
              ),
            ],
          ),
          ClubCard(
            title: 'RENDEZVOUS X IIT DELHI',
            members: '23463 Members',
            imagePath: 'assets/1.jpg',
            chats: [
              ChatItem(
                title: 'Announcements',
                subtitle: 'Event Postponed',
                date: '12/03/24',
                count: 4,
              ),
              ChatItem(
                title: 'General',
                subtitle: 'Ayushi : What are the rules',
                date: '12/03/24',
                count: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

