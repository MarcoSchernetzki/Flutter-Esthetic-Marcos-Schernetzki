import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

import '../../bloc/treatment/model/treatment.dart';

class TreatmentList extends StatelessWidget {
  const TreatmentList({
    Key? key,
    required List<Treatment> treatments,
  })  : _treatments = treatments,
        super(key: key);

  final List<Treatment> _treatments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _treatments.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            DropShadow(
                blurRadius: 10,
                borderRadius: 60,
                spread: 1,
                child: Card(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(_treatments[index].image),
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Center(
                            child: Text(
                                style: const TextStyle(fontSize: 30),
                                _treatments[index].name)),
                      ),
                    ],
                  ),
                )),
          ],
        );
      },
    );
  }
}
