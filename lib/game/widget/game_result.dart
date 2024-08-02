import 'package:flutter/material.dart';

import '../enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({required this.isDone, this.result,required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              result!.displayString,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 8),
            TextButton(
              child: Text('다시 하기', style: TextStyle(fontSize: 24),),
              onPressed: () => callback.call(),
          ),
        ],
      );
    }

    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해 주세요',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
