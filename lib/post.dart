import 'package:flutter/material.dart';
import 'package:university_lead/main.dart'; // MyApp のインポート

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  final TextEditingController _textEditingController3 = TextEditingController();
  final TextEditingController _textEditingController4 = TextEditingController();
  final TextEditingController _textEditingController5 = TextEditingController();
  final TextEditingController _textEditingController6 = TextEditingController();
  String _postText1 = '';
  String _postText2 = '';
  String _postText3 = '';
  String _postText4 = '';
  String _postText5 = '';
  String _postText6 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("自分の”声”を投稿しよう"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textEditingController1,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: '大学名/学部名* ',
            ),
          ),
          TextField(
            controller: _textEditingController2,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'その大学に行きたいと思ったきっかけ* ',
            ),
          ),
          TextField(
            controller: _textEditingController3,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'その大学を選んだ理由* ',
            ),
          ),
          TextField(
            controller: _textEditingController4,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'その大学のどのような面に魅力を持ったのか* ',
            ),
          ),
          TextField(
            controller: _textEditingController5,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'その理由* ',
            ),
          ),
          TextField(
            controller: _textEditingController6,
            enabled: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            decoration: const InputDecoration(
              labelText: '受験生に一言* ',
            ),
          ),
          const SizedBox(height: 20), // ボタンとテキストフィールドの間にスペースを追加
          ElevatedButton(
            onPressed: () {
              // ボタンが押されたときの処理
              setState(() {
                // 投稿内容を取得して _postText にセット
                _postText1 = _textEditingController1.text;
                _postText2 = _textEditingController2.text;
                _postText3 = _textEditingController3.text;
                _postText4 = _textEditingController4.text;
                _postText5 = _textEditingController5.text;
                _postText6 = _textEditingController6.text;
              });
              String postTexts =
                  '$_postText1\n$_postText2\n$_postText3\n$_postText4\n$_postText5\n$_postText6';

              // MyApp の状態を更新する（ここでは Navigator を使用して画面を戻す）
              Navigator.of(context).pop(postTexts); // ここでは _postText を引数として渡す
            },
            child: const Text('投稿する'),
          ),
        ],
      ),
    );
  }
}
