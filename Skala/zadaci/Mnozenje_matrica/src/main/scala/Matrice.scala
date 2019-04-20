import java.io.{File, PrintWriter}
import java.util.Scanner

import scala.Array._

object Matrice {
  def main(args: Array[String]): Unit = {
    var sc1: Scanner = new Scanner(new File("./matrica1.txt"))
    var sc2: Scanner = new Scanner(new File("./matrica2.txt"))

    val m1 = sc1.nextInt()
    val n1 = sc1.nextInt()
    val m2 = sc2.nextInt()
    val n2 = sc2.nextInt()
    // rezultujuca matrica ce biti dimenzije m1 x n2

    val M1 = ofDim[Int](m1, n1)
    val M2 = ofDim[Int](m2, n2)
    val M3 = ofDim[Int](m1, n2)

    for (i <- 0 until m1)
      for (j <- 0 until n1)
        M1(i)(j) = sc1.nextInt()

    for (i <- 0 until m2)
      for (j <- 0 until n2)
        M2(i)(j) = sc2.nextInt()


    var rezultat = new Array[Mat_klasa](m1)

    for (i <- 0 until n1)
      rezultat(i) = new Mat_klasa(M1(i), M2, M3(i))

    for (i <- 0 until n1)
      rezultat(i).start()

    for (i <- 0 until n1)
      rezultat(i).join()

    val pw : PrintWriter = new PrintWriter(new File("./matrica3.txt"))

    for (i <- 0 until m1){
      for (j <- 0 until n2) {
        pw.append(s"${M3(i)(j)}")
      }
      pw.append("\n")
    }

    pw.close()

    // ovo je za ispis matrice na standardni izlaz
//    for (i <- 0 until m1){
//      for (j <- 0 until n2) {
//        print(M3(i)(j))
//      }
//      println()
//    }
  }
}

class Mat_klasa(vrsta: Array[Int],
                matrica: Array[Array[Int]],
                rezultat: Array[Int]) extends Thread{

  override def run(): Unit = {
    for (i<-matrica(0).indices)
      for (j<- vrsta.indices)
        rezultat(i) += vrsta(j)*matrica(i)(j)
  }

}