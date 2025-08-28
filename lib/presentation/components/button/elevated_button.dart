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
    this.isLoading = false,
  });

  final String text;
  final Function()? onPressed;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColor.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: isLoading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(color: AppColor.white),
                ),
                SizedBox(width: 8),
                Text(
                  'Loading...',
                  style: AppStyle.md.copyWith(
                    fontWeight: FontWeight.w500,
                    color: textColor ?? AppColor.white,
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: AppStyle.md.copyWith(
                fontWeight: FontWeight.w500,
                color: textColor ?? AppColor.white,
              ),
            ),
    );
  }
}
