import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_magangment/state_provider_class.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
        body: Center(
          child: Text(
            'Value : $counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // access the provider via ref.read(), then increment its state.
          onPressed: () => ref.read(counterStateProvider.state).state++,
          child: Icon(Icons.add),
        ));
  }
}
