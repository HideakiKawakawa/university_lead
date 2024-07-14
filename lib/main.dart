import 'package:flutter/material.dart';
import 'package:university_lead/post.dart'; // PostPage のインポート

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '志望校探し~先輩の"声"を見よう~'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _displayedPost = ''; // 投稿内容を保持する変数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('~先輩の"声"を見よう~'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              // 投稿画面を開いて投稿を待つ
              final result = await Navigator.of(context).push<String>(
                MaterialPageRoute(builder: (context) => const PostPage()),
              );

              // 投稿内容が返ってきたら表示する
              if (result != null) {
                setState(() {
                  _displayedPost = result;
                });
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(_displayedPost), // 投稿内容を表示する
          ],
        ),
      ),
    );
  }
}
