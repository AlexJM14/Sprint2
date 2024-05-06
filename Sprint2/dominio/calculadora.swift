import Foundation

func calcularArea(figura:String,altura:String,base:String,radio:String,lado:String) -> Double {
    switch figura {
    case("triangulo"):
        return (Double(base)! * Double(altura)!) / 2
    case ("circulo"):
        return Double.pi * pow(Double(radio)!, 2)
    case ("cuadrado"):
        return pow(Double(lado)!, 2)
    default:
        return 0.0
    }
}
func camposCorrectos(campo:String) -> Bool{
    if Double(campo) != nil{
        print("Numero decimal")
        return true
    }
    else {
        print("Introduce un número válido")
        return false
    }
}

