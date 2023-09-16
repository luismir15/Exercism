import java.lang.IllegalArgumentException

object Hamming {
  fun compute(leftStrand: String, rightStrand: String): Int {
    if (leftStrand.isBlank() && rightStrand.isBlank())
      return 0;
    else if (leftStrand.length != rightStrand.length)
      throw IllegalArgumentException("left and right strands must be of equal length");

    var count = 0;
    for (i in leftStrand.indices) {
      print(i);
      if (leftStrand[i] != rightStrand[i])
        count++;
    }

    return count;
  }
}
