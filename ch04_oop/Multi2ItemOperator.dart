class Multi2ItemOperator {
  final int x;
  final int y;
  const Multi2ItemOperator(this.x, this.y);
  Multi2ItemOperator operator *(Multi2ItemOperator multi2ItemOperator) {
    return new Multi2ItemOperator(
        x * multi2ItemOperator.x, y * multi2ItemOperator.y);
  }
}
