import 'dart:io';

void main() {
  print("=== program grade calculator ===");

  stdout.write("masukkan nilai kehadiran dari 0-100: ");
  double? kehadiran = double.parse(stdin.readLineSync()!);
  stdout.write("masukkan nilai tugas dari 0-100: ");
  double? tugas = double.parse(stdin.readLineSync()!);
  stdout.write("\nmasukkan nilai uts dari 0-100: ");
  double? uts = double.parse(stdin.readLineSync()!);
  stdout.write("\nmasukkan nilai uas dari 0-100: ");
  double? uas = double.parse(stdin.readLineSync()!);

  if ([kehadiran, tugas, uts, uas].any((n) => n < 0 || n > 100)) {
    print("masukkan angka yg valid!!");
    return;

  } 

  double total =
      (kehadiran * 0.10) + (tugas * 0.20) + (uts * 0.30) + (uas * 0.40);

  String grade;
  if (total >= 85) {
    grade = "a";
  } else if (total >= 70) {
    grade = "b";
  } else if (total >= 60) {
    grade = "c";
  } else {
    grade = "d";
  }
  print("\n===hasil total nilai mu adalah : ===");
  print("nilai total adalah : ${total.toStringAsFixed(2)} dan grade mu $grade");
}
