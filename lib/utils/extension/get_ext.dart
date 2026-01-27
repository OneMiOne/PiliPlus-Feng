import 'package:get/get.dart';

extension GetExt on GetInterface {
  S putOrFind<S>(InstanceBuilderCallback<S> dep, {String? tag}) =>
      GetInstance().putOrFind(dep, tag: tag);
}

extension TransitionExt on Transition {
  String get label {
    switch (this) {
      case Transition.fade:
        return '淡入淡出（Fade）';
      case Transition.rightToLeft:
        return '左滑（Right To Left）';
      case Transition.leftToRight:
        return '右滑（Left To Right）';
      case Transition.noTransition:
        return '无动画（No Transition）';
      case Transition.rightToLeftWithFade:
        return '渐变左滑（Right To Left With Fade）';
      case Transition.leftToRightWithFade:
        return '渐变右滑（Left To Right With Fade）';
      case Transition.cupertino:
        return 'Apple（Cupertino）';
      case Transition.size:
        return '扩展（Size）';
      case Transition.zoom:
        return '缩放（Zoom）';
      case Transition.topLevel:
        return '顶层展开（Top Level）';
      case Transition.native:
        return '系统（Native）';
      case Transition.cupertinoDialog:
        return 'Apple 动画（Cupertino Dialog）';
      case Transition.circularReveal:
        return '圆展（Circular Reveal）';
      case Transition.fadeIn:
        return '淡入（Fade In）';
      case Transition.downToUp:
        return '上滑（Down To Up）';
      case Transition.upToDown:
        return '下滑（Up To Down）';
      default:
        return name;
    }
  }
}
