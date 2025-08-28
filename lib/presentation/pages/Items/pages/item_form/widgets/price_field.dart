import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../common/formatter/rupiah_formatter.dart';
import '../../../../../components/field/field.dart';

class ItemFormPriceField extends StatelessWidget {
  const ItemFormPriceField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: 'Harga',
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        RupiahInputFormatter(),
      ],
    );
  }
}
