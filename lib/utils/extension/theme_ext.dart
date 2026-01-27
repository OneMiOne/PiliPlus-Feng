import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

extension ColorSchemeExt on ColorScheme {
  Color get vipColor =>
      brightness.isLight ? const Color(0xFFFF6699) : const Color(0xFFD44E7D);

  Color get freeColor =>
      brightness.isLight ? const Color(0xFFFF7F24) : const Color(0xFFD66011);

  bool get isLight => brightness.isLight;

  bool get isDark => brightness.isDark;
}

extension ColorExtension on Color {
  Color darken([double amount = .5]) {
    assert(amount >= 0 && amount <= 1, 'Amount Must Be Between 0 And 1');
    return Color.lerp(this, Colors.black, amount)!;
  }

  ColorScheme asColorSchemeSeed([
    FlexSchemeVariant variant = .material,
    Brightness brightness = .light,
  ]) => SeedColorScheme.fromSeeds(
    primaryKey: this,
    variant: variant,
    brightness: brightness,
    useExpressiveOnContainerColors: false,
  );
}

extension BrightnessExt on Brightness {
  Brightness get reverse => isLight ? Brightness.dark : Brightness.light;

  bool get isLight => this == Brightness.light;

  bool get isDark => this == Brightness.dark;
}

extension FlexSchemeVariantExt on FlexSchemeVariant {
  String get label {
    switch (this) {
      case FlexSchemeVariant.tonalSpot:
        return '基准色（Tonal Spot）';
      case FlexSchemeVariant.fidelity:
        return '高保真（Fidelity）';
      case FlexSchemeVariant.monochrome:
        return '单色（Monochrome）';
      case FlexSchemeVariant.neutral:
        return '中性（Neutral）';
      case FlexSchemeVariant.vibrant:
        return '鲜艳（Vibrant）';
      case FlexSchemeVariant.expressive:
        return '强调色（Expressive）';
      case FlexSchemeVariant.content:
        return '内容适配（Content）';
      case FlexSchemeVariant.rainbow:
        return '彩虹（Rainbow）';
      case FlexSchemeVariant.fruitSalad:
        return '缤纷水果（Fruit Salad）';
      case FlexSchemeVariant.material:
        return 'Material-3';
      case FlexSchemeVariant.material2:
        return 'Material-3 Legacy';
      case FlexSchemeVariant.soft:
        return '柔和（Soft）';
      case FlexSchemeVariant.vivid:
        return '生动（Vivid）';
      case FlexSchemeVariant.vividSurfaces:
        return '生动界面（Vivid Surfaces）';
      case FlexSchemeVariant.highContrast:
        return '高对比度（High Contrast）';
      case FlexSchemeVariant.ultraContrast:
        return '超高对比度（Ultra Contrast）';
      case FlexSchemeVariant.jolly:
        return '欢乐（Jolly）';
      case FlexSchemeVariant.vividBackground:
        return '生动背景（Vivid Background）';
      case FlexSchemeVariant.oneHue:
        return '单色相（One Hue）';
      case FlexSchemeVariant.candyPop:
        return '糖果（Candy Pop）';
      case FlexSchemeVariant.chroma:
        return '色度（Chroma）';
      default:
        return variantName;
    }
  }

  String get labelDesc {
    switch (this) {
      case FlexSchemeVariant.tonalSpot:
        return '默认风格，提供平衡的基调色谱。与 Flutter 默认的 Tonal Spot 结果相同。';
      case FlexSchemeVariant.fidelity:
        return '高保真，最大限度保持原始种子色的色调和色彩特征。';
      case FlexSchemeVariant.monochrome:
        return '单色/灰度，移除所有饱和度，仅保留亮度变化。';
      case FlexSchemeVariant.neutral:
        return '中性，低饱和度，营造沉稳、专业的界面氛围。';
      case FlexSchemeVariant.vibrant:
        return '鲜艳，增强色彩饱和度，界面更具活力和辨识度。';
      case FlexSchemeVariant.expressive:
        return '强调色，采用更鲜明的色彩对比和独特的色调组合。';
      case FlexSchemeVariant.content:
        return '内容适配，色彩适配输入内容，适合以图片或媒体内容为主的App。';
      case FlexSchemeVariant.rainbow:
        return '彩虹，提供更加丰富多彩、跨越多个色相的色调方案。';
      case FlexSchemeVariant.fruitSalad:
        return '缤纷水果，明快、清新的多种色彩组合。';
      case FlexSchemeVariant.material:
        return '标准的 Material-3 设计风格。';
      case FlexSchemeVariant.material2:
        return '旧版 Material-3 风格，兼容 Flutter 3.22 前的风格。';
      case FlexSchemeVariant.soft:
        return '柔和，降低对比度与饱和度，提供更舒适的视觉体验。';
      case FlexSchemeVariant.vivid:
        return '生动，相比于鲜艳更灵动。';
      case FlexSchemeVariant.vividSurfaces:
        return '生动界面，强化背景和表面容器的色彩感。';
      case FlexSchemeVariant.highContrast:
        return '高对比度，增强文本与背景的可读性，适用无障碍辅助。';
      case FlexSchemeVariant.ultraContrast:
        return '超高对比度，强烈的视觉区分和清晰度。';
      case FlexSchemeVariant.jolly:
        return '欢乐，充满活力且明亮的色彩方案，营造轻松愉快的氛围。';
      case FlexSchemeVariant.vividBackground:
        return '生动，相比于欢乐更灵动。';
      case FlexSchemeVariant.oneHue:
        return '单色相，整体基于同一个色相，仅通过明度和彩度区分。';
      case FlexSchemeVariant.candyPop:
        return '糖果，高亮度、高饱和度的活泼配色方案。';
      case FlexSchemeVariant.chroma:
        return '色度，基于色度（Chroma）的设置，提供更精确的色彩纯度控制。';
      default:
        return description;
    }
  }
}
