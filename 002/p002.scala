import scala.io.StdIn

object Main {
  def main(args: Array[String]): Unit = {
    val amount_numbers = StdIn.readInt()
    val numbers = StdIn.readLine().split(" ").map(_.toInt)
    val sum = numbers.sum
    println(sum)
  }
}

