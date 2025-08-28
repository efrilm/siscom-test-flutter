part of 'button.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    this.backgroundColor,
    this.textColor,
  });

  final String text;
  final Function()? onPressed;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColor.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: AppStyle.md.copyWith(
          fontWeight: FontWeight.w500,
          color: textColor ?? AppColor.white,
        ),
      ),
    );
  }
}
