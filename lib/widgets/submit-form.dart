import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function() submitFunc;

  SubmitForm({
    required this.gasCtrl,
    required this.alcCtrl,
    required this.busy,
    required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Input(
              label: "Gasolina",
              ctrl: gasCtrl,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Input(
              label: "Álcool",
              ctrl: alcCtrl,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          LoadingButton(
            busy: busy,
            func: submitFunc,
            invert: false,
            text: "CALCULAR",
          ),
        ],
      ),
    );
  }
}
