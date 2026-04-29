# 🧮 CalcPublish (Hesap Makinesi Paketi)

Bu proje, temel matematiksel işlemleri gerçekleştiren bir Dart paketi ve bu paketi kullanan örnek bir Flutter arayüzü (UI) içerir. 

## ✨ Özellikler
* Temel 4 işlem fonksiyonları: Toplama (`add`), Çıkarma (`subtract`), Çarpma (`multiply`) ve Bölme (`divide`).
* Dart paket mimarisi standartlarına uygun temiz kod yapısı.
* `example` klasörü içerisinde entegre edilmiş, test edilebilir, masaüstü ve web uyumlu arayüz.

📱 Örnek Arayüz (UI)
Bu paketin bir arayüze nasıl bağlandığını görmek için projede bulunan example dizinini kullanabilirsiniz. Masaüstü (Windows) ve Web (Edge/Chrome) ortamlarında doğrudan çalıştırılabilir.

## 🚀 Kullanım
Paketi kendi projenize dahil ettikten sonra fonksiyonları doğrudan çağırabilirsiniz:
```dart
import 'package:calcpublish/calcpublish.dart';

void main() {
  print('Toplama: ${add(10, 5)}'); // Çıktı: 15
  print('Bölme: ${divide(20, 4)}'); // Çıktı: 5.0
}
