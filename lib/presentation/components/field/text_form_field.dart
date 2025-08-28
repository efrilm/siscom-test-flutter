part of 'field.dart';

class AppTextFormField extends StatelessWidget {
  final String title;
  final bool isRequired;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  const AppTextFormField({
    super.key,
    required this.title,
    this.isRequired = true,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.controller,
    this.onTap,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title${isRequired ? '*' : ''}",
          style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 4),
        TextFormField(
          cursorColor: AppColor.primary,
          style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          controller: controller,
          onTap: onTap,
          onChanged: onChanged,
          decoration: InputDecoration(hintText: 'Masukkan $title'),
        ),
      ],
    );
  }
}
