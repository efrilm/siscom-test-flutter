import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../common/theme/theme.dart';
import '../button/button.dart';
import '../modal/delete_dialog.dart';

class ItemDetailBottomSheet extends StatelessWidget {
  final Map<String, dynamic> item;

  const ItemDetailBottomSheet({super.key, required this.item});

  static void show(BuildContext context, Map<String, dynamic> item) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ItemDetailBottomSheet(item: item),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          // Handle indicator
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 4),
            height: 6,
            width: 120,
            decoration: BoxDecoration(
              color: AppColor.borderPrimary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(
                            Icons.image_outlined,
                            size: 60,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.borderPrimary),
                    ),
                    child: Column(
                      children: [
                        _buildDetailRow('Nama barang', '5200'),
                        _buildDetailRow('Kategori', '5200'),
                        _buildDetailRow('Kelompok', '5200'),
                        _buildDetailRow('Stok', '5200', isLast: true),
                      ],
                    ),
                  ),
                  // Price section
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    margin: EdgeInsets.all(16).copyWith(top: 8),
                    decoration: BoxDecoration(
                      color: AppColor.bgSecondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Harga',
                          style: AppStyle.md.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: Text(
                            'Rp. ${item['price'] ?? 1000000}',
                            style: AppStyle.md.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom action buttons
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: AppOutlineButton(
                      text: 'Hapus Barang',
                      onPressed: () => _showDeleteConfirmation(context),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: AppElevatedButton(
                      text: 'Edit Barang',
                      onPressed: () => context.router.maybePop(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isLast = false}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isLast ? Colors.transparent : AppColor.borderSecondary,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppStyle.md.copyWith(fontWeight: FontWeight.w500)),
          SizedBox(width: 8),
          Text(
            value,
            style: AppStyle.md.copyWith(
              color: AppColor.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context) {
    DeleteConfirmationDialog.show(context: context);
  }
}
