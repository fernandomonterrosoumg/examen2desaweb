Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports LogicaNegocios.ClassHolaMundo

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class WebServiceHolaMundo
    Inherits System.Web.Services.WebService
    Dim logicHolaMundo As New LogicaNegocios.ClassHolaMundo

    <WebMethod()> _
    Public Function HelloWorld() As String
       Return "Hola a todos"
    End Function

    <WebMethod()>
    Public Function holamundoDesdeClase() As String

        Return logicHolaMundo.HolaMundo()

    End Function




    <WebMethod()>
    Public Function ObtenerTablaEjemplo() As DataSet

        Return logicHolaMundo.ObtenerTablaEjemplo()
    End Function

    <WebMethod()>
    Public Function AgregarSexo(Sexo As String, Abreviatura As String) As String

        Return logicHolaMundo.AgregarSexo(Sexo, Abreviatura)
    End Function

End Class