using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jugos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int producto, tamaño, cantidad, pago;
            double precioU = 0, total1 = 0, descuento = 0, recargo = 0, total = 0;
            string jugo = "", tmñ = "", Mpago = "";

            Console.WriteLine("=== TIENDA DE JUGOS ===");
            Console.WriteLine("Productos disponibles:");
            Console.WriteLine("1. Jugo de Naranja");
            Console.WriteLine("2. Jugo de Fresa");
            Console.WriteLine("3. Jugo de Lucuma");
            Console.WriteLine("4. Jugo de Papaya");
            Console.WriteLine("5. Jugo Surtido");
            Console.WriteLine("6. Jugo de Piña");
            Console.WriteLine("=======================");

            Console.Write("Seleccione el producto (1-6): ");
            producto = int.Parse(Console.ReadLine());

            Console.Write("Seleccione el tamaño (1: Large, 2: Medium, 3: Small): ");
            tamaño = int.Parse(Console.ReadLine());

            Console.Write("Cantidad: ");
            cantidad = int.Parse(Console.ReadLine());

            Console.Write("Forma de pago (1: Efectivo, 2: Medio electrónico): ");
            pago = int.Parse(Console.ReadLine());

            switch (producto)
            {
                case 1:
                    jugo = "Jugo de Naranja";
                    if (tamaño == 1) { precioU = 15.50; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 12.00; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 10.50; tmñ = "Small"; }
                    break;

                case 2:
                    jugo = "Jugo de Fresa";
                    if (tamaño == 1) { precioU = 17.00; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 13.70; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 11.50; tmñ = "Small"; }
                    break;

                case 3:
                    jugo = "Jugo de Lucuma";
                    if (tamaño == 1) { precioU = 14.20; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 11.50; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 9.70; tmñ = "Small"; }
                    break;

                case 4:
                    jugo = "Jugo de Papaya";
                    if (tamaño == 1) { precioU = 10.00; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 8.50; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 6.50; tmñ = "Small"; }
                    break;

                case 5:
                    jugo = "Jugo de Surtido";
                    if (tamaño == 1) { precioU = 20.00; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 17.00; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 15.00; tmñ = "Small"; }
                    break;

                case 6:
                    jugo = "Jugo de Piña";
                    if (tamaño == 1) { precioU = 11.50; tmñ = "Large"; }
                    else if (tamaño == 2) { precioU = 9.40; tmñ = "Medium"; }
                    else if (tamaño == 3) { precioU = 7.20; tmñ = "Small"; }
                    break;
            }

            total1 = precioU * cantidad;

            if (pago == 1)
            {
                Mpago = "Efectivo";
                descuento = total1 * 0.10;
                total = total1 - descuento;
            }
            else if (pago == 2)
            {
                Mpago = "Tarjeta";
                recargo = total1 * 0.5;
                total = total1 + recargo;
            }

            Console.WriteLine("===DETALLES DE LA COMPRA===");
            Console.WriteLine("Producto: " + jugo);
            Console.WriteLine("Tamaño: " + tmñ);
            Console.WriteLine("Cantidad: " + cantidad);
            Console.WriteLine("Precio unitario: " + precioU);
            Console.WriteLine("Subtotal: " + total1);
            Console.WriteLine("Metodo de pago: " + Mpago);
            Console.WriteLine("Descuento: " + descuento);
            Console.WriteLine("Recargo: " + recargo);
            Console.WriteLine("Total: " + total);
            Console.WriteLine("===========================");
        }
    }
}
