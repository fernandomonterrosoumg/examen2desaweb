Public Class Factura
    Public Property IdFactura As Integer
    Public Property Fecha As Date
    Public Property IdCliente As Integer
    Public Property Ventas As List(Of Venta)
End Class