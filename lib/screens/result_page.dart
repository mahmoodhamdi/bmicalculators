// ignore_for_file: must_be_immutable

import 'package:bmicalculator/cubit/counter_cubit.dart';
import 'package:bmicalculator/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Result",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Gender: ${BlocProvider.of<CounterCubit>(context).isMale ? "Male" : "Femele"}",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Weight: ${BlocProvider.of<CounterCubit>(context).weight}",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "height: ${BlocProvider.of<CounterCubit>(context).height}",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Result: ${BlocProvider.of<CounterCubit>(context).result.toStringAsFixed(1)}",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Healthness: ${BlocProvider.of<CounterCubit>(context).healthNess(
                      BlocProvider.of<CounterCubit>(context).result,
                    )}",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
