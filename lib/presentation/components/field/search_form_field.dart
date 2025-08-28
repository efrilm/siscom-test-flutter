part of 'field.dart';

class AppSearchFormField extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const AppSearchFormField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.primary,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: AppColor.bgSecondary,
        filled: true,
        hintText: 'Search Data ...',
        prefixIcon: Icon(Icons.search, color: AppColor.textSecondary),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: AppColor.bgSecondary),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: AppColor.bgSecondary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: AppColor.danger),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: AppColor.primary),
        ),
      ),
    );
  }
}
