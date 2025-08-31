Algoritmo TiendaJugos
    Definir producto, tamaño, cantidad, pago Como Entero
    Definir precioU, total1, descuento, recargo, total Como Real
    Definir jugo, tmñ, Mpago Como Cadena
    
    precioU <- 0
    total1 <- 0
    descuento <- 0
    recargo <- 0
    total <- 0
    jugo <- ""
    tmñ <- ""
    Mpago <- ""
    
    Escribir "=== TIENDA DE JUGOS ==="
    Escribir "Productos disponibles:"
    Escribir "1. Jugo de Naranja"
    Escribir "2. Jugo de Fresa"
    Escribir "3. Jugo de Lucuma"
    Escribir "4. Jugo de Papaya"
    Escribir "5. Jugo Surtido"
    Escribir "6. Jugo de Piña"
    Escribir "======================="
    
    Escribir "Seleccione el producto (1-6): "
    Leer producto
    
    Escribir "Seleccione el tamaño (1: Large, 2: Medium, 3: Small): "
    Leer tamaño
    
    Escribir "Cantidad: "
    Leer cantidad
    
    Escribir "Forma de pago (1: Efectivo, 2: Medio electrónico): "
    Leer pago
    
    Segun producto Hacer
        1:
            jugo <- "Jugo de Naranja"
            Si tamaño = 1 Entonces
                precioU <- 15.50
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 12.00
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 10.50
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
            
        2:
            jugo <- "Jugo de Fresa"
            Si tamaño = 1 Entonces
                precioU <- 17.00
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 13.70
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 11.50
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
            
        3:
            jugo <- "Jugo de Lucuma"
            Si tamaño = 1 Entonces
                precioU <- 14.20
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 11.50
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 9.70
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
            
        4:
            jugo <- "Jugo de Papaya"
            Si tamaño = 1 Entonces
                precioU <- 10.00
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 8.50
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 6.50
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
            
        5:
            jugo <- "Jugo de Surtido"
            Si tamaño = 1 Entonces
                precioU <- 20.00
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 17.00
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 15.00
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
            
        6:
            jugo <- "Jugo de Piña"
            Si tamaño = 1 Entonces
                precioU <- 11.50
                tmñ <- "Large"
            Sino
                Si tamaño = 2 Entonces
                    precioU <- 9.40
                    tmñ <- "Medium"
                Sino
                    Si tamaño = 3 Entonces
                        precioU <- 7.20
                        tmñ <- "Small"
                    FinSi
                FinSi
            FinSi
    FinSegun
    
    total1 <- precioU * cantidad
    
    Si pago = 1 Entonces
        Mpago <- "Efectivo"
        descuento <- total1 * 0.10
        total <- total1 - descuento
    Sino
        Si pago = 2 Entonces
            Mpago <- "Tarjeta"
            recargo <- total1 * 0.05
            total <- total1 + recargo
        FinSi
    FinSi
    
    Escribir "===DETALLES DE LA COMPRA==="
    Escribir "Producto: ", jugo
    Escribir "Tamaño: ", tmñ
    Escribir "Cantidad: ", cantidad
    Escribir "Precio unitario: ", precioU
    Escribir "Subtotal: ", total1
    Escribir "Metodo de pago: ", Mpago
    Escribir "Descuento: ", descuento
    Escribir "Recargo: ", recargo
    Escribir "Total: ", total
    Escribir "==========================="
FinAlgoritmo