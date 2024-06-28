import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Service/idea_service.dart';
import 'package:get_inspired/utils/route_constants.dart';

class ResultsPage extends ConsumerWidget {
  ResultsPage({super.key, required this.title});

  final String title;
  final IdeaService _db = IdeaService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final idea = ref.watch(ideaViewModelProvider);
    TextEditingController userInput = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Results", style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color: Colors.yellow)),
            const SizedBox(height: 20.0),
            Text(ideaViewModel.showResults()),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(idea.colorPalette.length, (i) {
                  return Icon(
                    Icons.stop,
                    color: idea.colorPalette[i],
                    size: 40.0,
                  );
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                controller: userInput,
                expands: false,
                style: const TextStyle(color: Colors.yellow),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your idea name',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.yellow,
                shadowColor: Colors.orange,
                fixedSize: const Size.fromWidth(180),
              ),
              onPressed: () async {
                if (userInput.text.isNotEmpty) {
                  ideaViewModel.setName(userInput.text);
                  await ideaViewModel.saveIdea();
                  Navigator.pushNamed(context, RoutePaths.ideaList);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter an idea name')),
                  );
                }
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.yellow,
                shadowColor: Colors.orange,
                fixedSize: const Size.fromWidth(180),
              ),
              onPressed: () {
                ideaViewModel.clearIdea();
                ideaViewModel.loadAllIdeas();
                Navigator.pushNamed(context, RoutePaths.createIdea);
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}


