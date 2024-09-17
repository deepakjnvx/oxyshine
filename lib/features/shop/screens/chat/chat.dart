import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';
import 'package:oxyshine/utils/constants/image_strings.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController inputText = TextEditingController();
  final TextEditingController suggestion = TextEditingController();

  String summary = "";
  bool scanning = false;

  final apiUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyDXC919AtfsNyqNwRL2wtmnV7mmr5lUpEs';

  final headers = {
    'Content_Type': 'application/json',
  };

  getdata(myText, howtoSummarize) async {
    setState(() {
      scanning = true;
    });

    var data = {
      "contents": [
        {
          "parts": [
            {'text': "$howtoSummarize - $myText"}
          ],
        }
      ],
    };
    await http
        .post(Uri.parse(apiUrl), headers: headers, body: jsonEncode(data))
        .then((response) {
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        setState(() {
          summary = result['candidates'][0]['content']['parts'][0]['text'];
        });
      }
    }).catchError((error) {
      // print('Error: $error');
    });

    setState(() {
      scanning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('AI Doctor',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 630,
              width: double.infinity,
              child: scanning
                  ? const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: SpinKitThreeBounce(
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    )
                  : summary == ""
                      ? Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Center(
                            child: Lottie.asset(TImages.chatIllustration),
                          ),
                        )
                      : SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              summary,
                              style: const TextStyle(
                                decorationThickness: 0,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.only(
                        top: 5, left: 15, right: 10, bottom: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: TextField(
                      style: TextStyle(
                        decorationThickness: 0,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: suggestion,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Ask to AI Doctor 👨‍⚕️',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            color: Theme.of(context).primaryColor,
                            Iconsax.microphone,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () async {
                          getdata(inputText.text, suggestion.text);
                        },
                        icon: Icon(
                          Ionicons.send,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
