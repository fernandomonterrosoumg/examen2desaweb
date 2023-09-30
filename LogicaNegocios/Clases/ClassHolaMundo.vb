Imports Oracle.DataAccess.Client
Imports System.Configuration




Public Class ClassHolaMundo

    Dim Esquema As String = ConfigurationSettings.AppSettings("Esquema")
    Dim connString As String = ConfigurationSettings.AppSettings("Oracle")


    Public Function HolaMundo() As String
        Return "Hola Mundo desde Clase de Ws"
    End Function



    Public Function ObtenerTablaEjemplo() As DataSet


        Dim comando As New OracleCommand
        Dim parametro As New OracleParameter
        Dim tabla As New DataTable
        Dim conexion As New CapaDatos.DataConnection
        Dim dataset As DataSet

        conexion.AbrirConexion(connString)


        Try
            comando.CommandText = Esquema + ".PAQUETE1.OBTENER_CATALOGO_SEXOS"
            comando.CommandType = CommandType.StoredProcedure


            'parametro = New OracleParameter
            'parametro.ParameterName = "p_expediente_id"
            'parametro.Direction = ParameterDirection.Input
            'conexion.GetOracleDbType(parametro, valor1)
            'comando.Parameters.Add(parametro)

            parametro = New OracleParameter
            parametro.ParameterName = "p_cursor"
            parametro.Direction = ParameterDirection.Output
            parametro.OracleDbType = OracleDbType.RefCursor
            comando.Parameters.Add(parametro)


            dataset = conexion.LlenarDataSet(comando)



        Catch ex As Exception

        End Try



        Return dataset
    End Function


    Public Function AgregarSexo(Sexo As String, Abreviatura As String) As String


        Dim comando As New OracleCommand
        Dim parametro As New OracleParameter
        Dim tabla As New DataTable
        Dim conexion As New CapaDatos.DataConnection
        Dim salida As String

        conexion.AbrirConexion(connString)


        Try
            comando.CommandText = Esquema + ".PAQUETE1.agregar_catalogo_sexos"
            comando.CommandType = CommandType.StoredProcedure


            parametro = New OracleParameter
            parametro.ParameterName = "p_sexo"
            parametro.Direction = ParameterDirection.Input
            conexion.GetOracleDbType(parametro, Sexo)
            comando.Parameters.Add(parametro)

            parametro = New OracleParameter
            parametro.ParameterName = "p_abreviatura"
            parametro.Direction = ParameterDirection.Input
            conexion.GetOracleDbType(parametro, Abreviatura)
            comando.Parameters.Add(parametro)



            parametro = New OracleParameter
            parametro.ParameterName = "p_salida"
            parametro.Direction = ParameterDirection.Output
            parametro.OracleDbType = OracleDbType.Varchar2
            parametro.Size = 200

            comando.Parameters.Add(parametro)

            salida = conexion.DBExecuteNonQueryReturnValue(comando, "p_salida").ToString

        Catch ex As Exception

        End Try



        Return salida
    End Function


End Class
