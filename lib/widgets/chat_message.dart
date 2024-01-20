import 'package:chat_app/widgets/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('createdAt', descending: true)
          .snapshots(),
      builder: (ctx, chatSnapshots) {
        if (chatSnapshots.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (!chatSnapshots.hasData || chatSnapshots.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'No messages Found...',
            ),
          );
        }

        if (chatSnapshots.hasError) {
          return const Center(
            child: Text(
              'Something went wrong...',
            ),
          );
        }

        final loadedMessage = chatSnapshots.data!.docs;

        return ListView.builder(
          reverse: true,
          padding: const EdgeInsets.only(
            bottom: 40,
            left: 13,
          ),
          itemCount: loadedMessage.length,
          itemBuilder: (ctx, index) {
            final chatMessage = loadedMessage[index].data();

            final nextChatMessage = index + 1 < loadedMessage.length
                ? loadedMessage[index + 1].data()
                : null;

            final currentMessageUserId = chatMessage['userId'];
            final nextMessageUserId =
                nextChatMessage != null ? nextChatMessage['userId'] : null;

            final nextUserIsSame = nextMessageUserId == currentMessageUserId;

            if (nextUserIsSame) {
              return MessageBubble.next(
                  message: chatMessage['text'],
                  isMe: FirebaseAuth.instance.currentUser!.uid ==
                      currentMessageUserId);
            } else {
              return MessageBubble.first(
                  userImage: chatMessage['userImage'],
                  username: chatMessage['username'],
                  message: chatMessage['text'],
                  isMe: FirebaseAuth.instance.currentUser!.uid ==
                      currentMessageUserId);
            }
          },
        );
      },
    );
  }
}
