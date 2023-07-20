import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextExample extends StatefulWidget {
  const RichTextExample({super.key});

  @override
  State<RichTextExample> createState() => _RichTextExampleState();
}

class _RichTextExampleState extends State<RichTextExample> {
  bool isTitleExpanded = false;
  final String title =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title.substring(
                      0,
                      !isTitleExpanded
                          ? (title.length > 90 ? 90 : title.length)
                          : title.length,
                    ),
                    style: const TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  TextSpan(
                    text: !isTitleExpanded
                        ? (title.length > 90 ? "... more" : "")
                        : "\nshow less",
                    style: const TextStyle(color: Colors.grey, fontSize: 22),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          isTitleExpanded = !isTitleExpanded;
                        });
                      },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
