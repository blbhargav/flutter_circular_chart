import 'dart:ui';

/// Data object defining a segment in a circular chart.
class CircularSegmentEntry {
  const CircularSegmentEntry(
      this.value,
      this.color, {
        this.rankKey,
        this.strokeWidth = 15.0, // Default thickness
      });

  /// The value of this data point, defines the sweep angle of the arc.
  final double value;

  /// The color drawn in the stack for this segment.
  final Color? color;

  /// An optional String key, used when animating charts.
  final String? rankKey;

  /// **New Property:** Defines the thickness of the segment.
  final double strokeWidth;

  @override
  String toString() {
    return '$rankKey: $value $color (Width: $strokeWidth)';
  }
}

/// Data object defining a stack in a circular chart.
class CircularStackEntry {
  const CircularStackEntry(this.entries, {this.rankKey});

  /// List of [CircularSegmentEntry]s that make up this stack.
  final List<CircularSegmentEntry> entries;

  /// An optional String key, used for animations.
  final String? rankKey;
}
