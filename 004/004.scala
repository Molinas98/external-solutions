import scala.io.StdIn
object MinimumOfTwo {
  def main(args: Array[String]): Unit = {
    val amount_numbers = scala.io.StdIn.readInt()

    val result = for (_ <- 0 until amount_numbers) yield {
      val line = scala.io.StdIn.readLine()
      val numbers = line.split(" ").map(_.toInt)

      numbers.min
    }
    println(result.mkString(" "))
  }
}

