import 'package:bmicalculator/cubit/counter_cubit.dart';
import 'package:bmicalculator/cubit/counter_state.dart';
import 'package:bmicalculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Body Math Index"),
          ),
          body: SafeArea(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<CounterCubit>(context)
                            .gender(isMale: true);
                      },
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: BlocProvider.of<CounterCubit>(context)
                                  .maleColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16))),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_outlined,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<CounterCubit>(context)
                            .gender(isMale: false);
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: BlocProvider.of<CounterCubit>(context)
                                .femeleColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_outlined,
                              size: 100,
                              color: Colors.white,
                            ),
                            Text(
                              "Femele",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).weight}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .addWeight();
                                  }),
                              FloatingActionButton(
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .removeWeight();
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "height",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).height}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .addheight();
                                  }),
                              FloatingActionButton(
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .removeheight();
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context).calculator();
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const ResultPage();
                            },
                          ));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.teal,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          width: double.infinity,
                          height: 65,
                          child: const Center(
                            child: Text(
                              "Calculate",
                              style: TextStyle(),
                            ),
                          ),
                        )),
                  )
                ],
              )
            ],
          )),
        );
      },
    );
  }
}
