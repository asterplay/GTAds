import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtads/gtads.dart';

/// @Author: gstory
/// @CreateDate: 2022/8/17 15:37
/// @Email gstory0404@gmail.com
/// @Description: dart类作用描述 

abstract class BaseProvider{
  final String alias;

  final int probability;

  final GTAdsCode adsCode;


  BaseProvider(this.alias,this.probability, this.adsCode);

  ///初始化广告
  ///
  /// [code] 广告相关id
  Future<bool> initAd(bool isDebug);

  ///横幅广告
  Widget? bannerAd(String adCode,double width,double height,GTAdsCallBack? callBack);

  ///信息流广告
  Widget? nativeAd(String adCode,double width,double height,GTAdsCallBack? callBack);

  ///开屏广告
  Widget? splashAd(String adCode,double width,double height,GTAdsCallBack? callBack);

  ///插屏广告
  ///注意：如果使用了StreamSubscription来监听广告回调则 需要在广告结束/失败时进行释放操作
  Future<bool> insertAd(String adCode,bool isFull,double? width,double? height,GTAdsCallBack? callBack);

  ///激励广告
  ///注意：如果使用了StreamSubscription来监听广告回调则 需要在广告结束/失败时进行释放操作
  Future<bool> rewardAd(String adCode,String rewardName,int rewardAmount,String userId,String customData,GTAdsCallBack? callBack);
}


