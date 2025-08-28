part of 'field.dart';

class AppSearchFormField extends StatelessWidget {
  const AppSearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.primary,
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
