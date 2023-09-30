Imports System.ComponentModel
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports LogicaNegocios

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class WebServiceController
    Inherits System.Web.Services.WebService
    Dim gestiones As New LogicaNegocios.gestionesBD



    <WebMethod()>
    Public Function InsertarFacturaYVentas(factura As Factura) As String
        Return gestiones.InsertarFacturaYVentas(factura)
    End Function
    <WebMethod()>
    Public Function WsObtenerProdByProveedor(idProveedor As Integer) As DataSet

        Return gestiones.WsObtenerProdByProveedor(idProveedor)
    End Function
    <WebMethod()>
    Public Function ObtenerProductosPorCategoria(idCategoria As Integer) As DataSet

        Return gestiones.ObtenerProductosPorCategoria(idCategoria)
    End Function
    <WebMethod()>
    Public Function ObtenerClientesPorProducto(idProducto As Integer) As DataSet
        Return gestiones.ObtenerClientesPorProducto(idProducto)
    End Function

End Class