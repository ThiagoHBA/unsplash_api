import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Ops!\n',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text:
                '\nHouve um problema na conexão com o servidor. Aguarde e tente novamente mais tarde',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
      overflow: TextOverflow.clip,
      textAlign: TextAlign.left,
    );
  }
}
