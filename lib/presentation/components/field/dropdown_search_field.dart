part of 'field.dart';

class AppDropdownSearchField<T> extends StatelessWidget {
  final String title;
  final bool isRequired;
  final List<T> items;
  final T? selectedItem;
  final String Function(T) itemAsString;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final String? hintText;
  final bool enabled;
  final bool showSearchBox;
  final String? searchBoxHintText;

  const AppDropdownSearchField({
    super.key,
    required this.title,
    required this.items,
    required this.itemAsString,
    this.isRequired = true,
    this.selectedItem,
    this.onChanged,
    this.validator,
    this.hintText,
    this.enabled = true,
    this.showSearchBox = true,
    this.searchBoxHintText = "Cari...",
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
        DropdownSearch<T>(
          items: (String filter, LoadProps? loadProps) {
            if (filter.isEmpty) {
              return items;
            }
            return items.where((item) {
              return itemAsString(
                item,
              ).toLowerCase().contains(filter.toLowerCase());
            }).toList();
          },
          itemAsString: itemAsString,
          selectedItem: selectedItem,
          onChanged: enabled ? onChanged : null,
          validator: validator,
          enabled: enabled,
          popupProps: PopupProps.menu(
            showSearchBox: showSearchBox,
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                hintText: searchBoxHintText,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColor.borderSecondary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColor.borderSecondary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColor.primary),
                ),
                hintStyle: AppStyle.md.copyWith(color: AppColor.textSecondary),
              ),
            ),
            menuProps: MenuProps(
              backgroundColor: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          decoratorProps: DropDownDecoratorProps(
            decoration: InputDecoration(
              hintText: hintText ?? "Pilih $title",
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.borderSecondary),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.borderSecondary),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.danger),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.primary),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColor.borderSecondary.withOpacity(0.5),
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColor.danger),
              ),
              hintStyle: AppStyle.md.copyWith(color: AppColor.textSecondary),
              suffixIconColor: AppColor.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
