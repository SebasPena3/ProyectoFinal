import Foundation

struct Producto {
    let nombre: String
    let desc: String
    let precio: Double
}

let productos = [
    Producto(nombre: "Ford Mustang", desc: "Ícono de los muscle cars, conocido por su potencia y estilo clásico", precio: 30000.0),
    Producto(nombre: "Chevrolet Camaro", desc: "Deportivo estadounidense con diseño agresivo y gran desempeño", precio: 27000.0),
    Producto(nombre: "Toyota Corolla", desc: "Compacto confiable y eficiente, ideal para el día a día", precio: 21000.0),
    Producto(nombre: "Honda Civic", des: "Sedán versátil y moderno con excelente consumo de combustible", precio: 24000.0),
    Producto(nombre: "Tesla Model 3", desc: " Eléctrico popular, con tecnología avanzada y aceleración impresionante", precio: 40000.0),
    Producto(nombre: "BMW M3", desc: "Sedán de lujo con un enfoque deportivo y manejo excepcional", precio: 73000.0),
    Producto(nombre: "Audi A4", desc: "Elegancia y rendimiento equilibrados, perfecto para ejecutivos", precio: 42000.0),
    Producto(nombre: "Porsche 911", desc: " Leyenda de los autos deportivos, conocido por su velocidad y diseño icónico", precio: 120000.0),
    Producto(nombre: "Jeep Wrangler", desc: "SUV robusto, diseñado para aventuras todoterreno", precio: 33000.0),
    Producto(nombre: "Lamborghini Huracán", desc: "Superdeportivo italiano con diseño exótico y gran potencia", precio: 215000.0),
]

func showProducts() {
    print("\nLista de Productos:")
    for (index, producto) in productos.enumerated() {
        print("\(index + 1). \(product.nombre) - $\(product.precio)")
    }
    print("\nElige un producto para ver los detalles (1-10), o escribe 0 para salir:")
}

func showProductDetails(index: Int) {
    let product = products[index]
    print("\nDetalles del producto:")
    print("Nombre: \(producto.nombre)")
    print("Descripción: \(producto.desc)")
    print("Precio: $\(producto.precio)")
}

while true {
    showProducts()
    if let input = readLine(), let choice = Int(input), choice > 0 && choice <= productos.count {
        showProductDetails(index: choice - 1)
    } else if input == "0" {
        print("Gracias por usar el programa. ¡Adiós!")
        break
    } else {
        print("Opción inválida, intenta nuevamente.")
    }
}
