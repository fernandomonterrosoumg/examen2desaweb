Imports System.Configuration

Imports Oracle.DataAccess.Client

Public Class gestionesBD
    Dim Esquema As String = ConfigurationSettings.AppSettings("Esquema")
    Dim connString As String = ConfigurationSettings.AppSettings("Oracle")

    Public Function WsObtenerProdByProveedor(idProveedor As Integer) As DataSet

        Dim query As String = $"SELECT productos.id_producto, productos.descripcion, productos.precio, productos.id_categoria, productos.id_proveedor " &
                     $"FROM {Esquema}.productos INNER JOIN {Esquema}.proveedores " &
                     $"ON {Esquema}.proveedores.id_proveedor = {Esquema}.productos.id_proveedor " &
                     $"WHERE {Esquema}.productos.id_proveedor = :id_proveedor"

        Dim dataset As New DataSet()

        Using connection As New OracleConnection(connString)
            Try
                connection.Open()

                Using command As New OracleCommand(query, connection)
                    ' Crear y agregar el parámetro
                    command.Parameters.Add(New OracleParameter("id_proveedor", OracleDbType.Int32)).Value = idProveedor

                    ' Crear un adaptador de datos Oracle para llenar el DataSet
                    Dim adapter As New OracleDataAdapter(command)

                    ' Llenar el DataSet con los resultados de la consulta
                    adapter.Fill(dataset)
                End Using
            Catch ex As Exception
                Console.WriteLine("Error al obtener los datos: " & ex.Message)
            End Try
        End Using

        Return dataset
    End Function



    Public Function InsertarFacturaYVentas(factura As Factura) As String
        Try
            Using connection As New OracleConnection(connString)
                connection.Open()

                Dim idFactura As Integer
                Using cmdSecuencia As New OracleCommand($"SELECT {Esquema}.SECUENCIA_FACTURA.NEXTVAL FROM DUAL", connection)
                    idFactura = Convert.ToInt32(cmdSecuencia.ExecuteScalar())
                End Using

                ' Insertar la factura en la tabla FACTURAS con el nuevo ID_FACTURA
                Using cmdFactura As New OracleCommand($"INSERT INTO {Esquema}.FACTURAS (ID_FACTURA, FECHA, ID_CLIENTE) VALUES (:IdFactura, :Fecha, :IdCliente)", connection)
                    cmdFactura.Parameters.Add(New OracleParameter("IdFactura", idFactura))
                    cmdFactura.Parameters.Add(New OracleParameter("Fecha", factura.Fecha))
                    cmdFactura.Parameters.Add(New OracleParameter("IdCliente", factura.IdCliente))
                    cmdFactura.ExecuteNonQuery()
                End Using

                ' Insertar los detalles de ventas en la tabla VENTAS
                For Each venta As Venta In factura.Ventas
                    Using cmdVenta As New OracleCommand($"INSERT INTO {Esquema}.VENTAS (ID_VENTA, ID_FACTURA, ID_PRODUCTO, CANTIDAD) VALUES (:IdVenta, :IdFactura, :IdProducto, :Cantidad)", connection)
                        cmdVenta.Parameters.Add(New OracleParameter("IdVenta", venta.IdVenta))
                        cmdVenta.Parameters.Add(New OracleParameter("IdFactura", idFactura))
                        cmdVenta.Parameters.Add(New OracleParameter("IdProducto", venta.IdProducto))
                        cmdVenta.Parameters.Add(New OracleParameter("Cantidad", venta.Cantidad))
                        cmdVenta.ExecuteNonQuery()
                    End Using
                Next

                Return "Factura y ventas insertadas correctamente."
            End Using
        Catch ex As Exception
            ' Maneja cualquier excepción que pueda ocurrir durante la inserción.
            Return "Error al insertar la factura y ventas: " & ex.Message
        End Try
    End Function


    Public Function ObtenerProductosPorCategoria(Optional idCategoria As Integer = 0) As DataSet
        Dim query As String


        If idCategoria > 0 Then
            ' Si se proporciona un ID de categoría, obtener productos por categoría específica
            query = $"SELECT * FROM {Esquema}.productos WHERE id_categoria = :id_categoria"
        Else
            ' Si no se proporciona un ID de categoría, obtener todos los productos
            query = $"SELECT * FROM {Esquema}.productos"
        End If

        Dim dataset As New DataSet()

        Using connection As New OracleConnection(connString)
            Try
                connection.Open()

                Using command As New OracleCommand(query, connection)
                    If idCategoria > 0 Then
                        ' Si se proporciona un ID de categoría, agregarlo como parámetro
                        command.Parameters.Add(New OracleParameter("id_categoria", OracleDbType.Int32)).Value = idCategoria
                    End If

                    ' Crear un adaptador de datos Oracle para llenar el DataSet
                    Dim adapter As New OracleDataAdapter(command)

                    ' Llenar el DataSet con los resultados de la consulta
                    adapter.Fill(dataset)
                End Using
            Catch ex As Exception
                Console.WriteLine("Error al obtener los datos: " & ex.Message)
            End Try
        End Using

        Return dataset
    End Function


    Public Function ObtenerClientesPorProducto(idProducto As Integer) As DataSet
        Dim query As String = $"SELECT DISTINCT {Esquema}.CLIENTES.* " &
                     $"FROM {Esquema}.CLIENTES " &
                     $"INNER JOIN {Esquema}.FACTURAS f ON {Esquema}.CLIENTES.ID_CLIENTE = f.ID_CLIENTE " &
                     $"INNER JOIN {Esquema}.VENTAS v ON f.ID_FACTURA = v.ID_FACTURA " &
                     $"WHERE v.ID_PRODUCTO = :id_producto"

        Dim dataset As New DataSet()

        Using connection As New OracleConnection(connString)
            Try
                connection.Open()

                Using command As New OracleCommand(query, connection)
                    ' Crear y agregar el parámetro
                    command.Parameters.Add(New OracleParameter("id_producto", OracleDbType.Int32)).Value = idProducto

                    ' Crear un adaptador de datos Oracle para llenar el DataSet
                    Dim adapter As New OracleDataAdapter(command)

                    ' Llenar el DataSet con los resultados de la consulta
                    adapter.Fill(dataset)
                End Using
            Catch ex As Exception
                Console.WriteLine("Error al obtener los datos: " & ex.Message)
            End Try
        End Using

        Return dataset
    End Function




End Class
