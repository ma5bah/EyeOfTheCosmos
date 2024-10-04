import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ChatController _chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI Chatbot"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                controller: _chatController.scrollController,
                itemCount: _chatController.messages.length,
                itemBuilder: (context, index) {
                  final message = _chatController.messages[index];
                  return ChatMessageWidget(
                    message: message,
                    isLoading: message.isLoading,
                  );
                },
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type your message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _controller.text;
                    if (message.isNotEmpty) {
                      _chatController.addMessage(ChatMessage(
                        text: message,
                        isUserMessage: true,
                      ));
                      _controller.clear();
                      _chatController.sendMessageToAI(message);
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  final ChatMessage message;
  final bool isLoading;

  const ChatMessageWidget({Key? key, required this.message, required this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Align(
        alignment: message.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: message.isUserMessage ? Colors.blueAccent : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: isLoading
              ? CircularProgressIndicator(
            color: message.isUserMessage ? Colors.white : Colors.black,
          )
              : Text(
            message.text,
            style: TextStyle(
              color: message.isUserMessage ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUserMessage;
  final bool isLoading;

  ChatMessage({required this.text, required this.isUserMessage, this.isLoading = false});
}

class ChatController extends GetxController {
  var messages = <ChatMessage>[].obs;
  ScrollController scrollController = ScrollController();

  void addMessage(ChatMessage message) {
    messages.add(message);
    Future.delayed(Duration(milliseconds: 100), () {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }

  void updateMessage(int index, ChatMessage updatedMessage) {
    messages[index] = updatedMessage;
    Future.delayed(Duration(milliseconds: 100), () {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }

  Future<void> sendMessageToAI(String message) async {
    // Add loading message as response
    int loadingIndex = messages.length;
    addMessage(ChatMessage(text: '...', isUserMessage: false, isLoading: true));

    try {
      var response = await http.post(
        Uri.parse('https://api-inference.huggingface.co/models/mistralai/Mistral-7B-Instruct-v0.3/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer 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', // Replace with your Hugging Face API key
        },
        body: jsonEncode({
          "model": "mistralai/Mistral-7B-Instruct-v0.3",
          "messages": [
            {"role": "user", "content": message}
          ],
          "temperature": 0.5,
          "max_tokens": 1024,
          "top_p": 0.7,
          "stream": false // Disable stream for simplicity
        }),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String botMessage = data['choices'][0]['message']['content'];

        // Update the loading message with the actual response
        updateMessage(loadingIndex, ChatMessage(text: botMessage, isUserMessage: false, isLoading: false));
      } else {
        updateMessage(loadingIndex, ChatMessage(text: 'Failed to get a response', isUserMessage: false));
      }
    } catch (e) {
      // Update the loading message with a failure message
      updateMessage(loadingIndex, ChatMessage(text: 'Failed to send request', isUserMessage: false));
    }
  }
}
