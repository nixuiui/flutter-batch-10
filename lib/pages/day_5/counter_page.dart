import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_5/providers/counter_provider.dart';
import 'package:flutter_batch_10/widgets/counter_text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  // final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    print('CounterPage build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: CounterTextWidget(
          counter: context.watch<CounterProvider>().count,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterProvider>().increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
