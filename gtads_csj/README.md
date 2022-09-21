# GTAds穿山甲广告支持插件
<p>
<a href="https://pub.flutter-io.cn/packages/gtads_csj"><img src=https://img.shields.io/badge/gtads_csj-v0.0.9-success></a>
</p>

# 📢 相关插件

- [flutter_unionad](https://github.com/gstory0404/flutter_unionad) 穿山甲广告本体，内部已集成无需额外引入，配置相关查看插件说明
- [GTAds](https://github.com/gstory0404/GTAds) 聚合广告插件，必须引入

# 使用

### pubspec.yaml
```dart
 //广告基础库 必须引入
 gtads: ^0.0.6
 //穿山甲广告
 gtads_csj: ^0.0.9
```

### 引入
```dart
import 'package:gtads_csj/gtads_csj.dart';
```

### 使用
仅需通过以下方法插入广告至聚合插件，无需关注具体广告的调用
```dart
//参数依次为 别名、andorid app Id、ios app Id
GTAds.addProvider([GTAdsCsjProvider("csj","5098580","5098580")]);
```

> 广告位使用参考[GTAds](https://github.com/gstory0404/GTAds/tree/master/gtads)