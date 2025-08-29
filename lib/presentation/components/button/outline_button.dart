part of 'button.dart';

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
  });

  final String text;
  final Function()? onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.transparent,
        side: BorderSide(width: 1, color: borderColor ?? AppColor.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        style: AppStyle.md.copyWith(
          color: textColor ?? AppColor.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
