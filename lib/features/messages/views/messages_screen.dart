import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessagesScreen extends ConsumerStatefulWidget {
  static const routeName = "/messages";
  const MessagesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends ConsumerState<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
    );
  }
}
