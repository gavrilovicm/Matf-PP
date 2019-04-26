import java.util.Scanner

object Zbir_vektora {
  def main(args: Array[String]): Unit = {
    val sc: Scanner = new Scanner(System.in)
    print("Unesite dimenziju vektora: ")
    val dim = sc.nextInt()

    var vektor1 = new Array[Float](dim)
    var vektor2 = new Array[Float](dim)

    println("Unesite elemente prvog vektora")
    for (i<-0 until dim)
      vektor1(i) += sc.nextFloat()

    println("Unesite elemente drugog vektora")
    for (i<-0 until dim)
      vektor2(i) += sc.nextFloat()

    print("Unesite broj niti: ")
    val br_niti = sc.nextInt()

    val korak = Math.ceil(dim.toFloat/br_niti).toInt

    var sabirci: Array[Saberi_vektore] = new Array[Saberi_vektore](br_niti)

    for (i<- 0 until br_niti)
      sabirci(i) = new Saberi_vektore(vektor1, vektor2, i*korak, Math.min((i+1)*(korak), dim))

    for (i<- 0 until br_niti)
      sabirci(i).start()

    for (i<- 0 until br_niti)
      sabirci(i).join()

    println("Niti su zavrsile sa radom..")

    for(i<-0 until dim)
      print(vektor1(i)+" ")
    println()
  }
}

class Saberi_vektore(vektor1: Array[Float],
                     vektor2: Array[Float],
                     i:Int,
                     j:Int) extends Thread{
  override def run(): Unit = {
    for (k<- i until j)
      vektor1(k) += vektor2(k)
  }
}