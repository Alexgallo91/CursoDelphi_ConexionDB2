unit Utilerias;

interface
uses
  Data.DB, Data.win.ADODB, //para BD
  Dialogs,
  System.SysUtils;
  function AbrirConexionBD(Conexion:TADOConnection):Boolean;

  implementation
  function AbrirConexionBD(Conexion:TADOConnection):Boolean;
  begin
    Result:=false;
    try
      Conexion.Connected:=true;
      Result:=Conexion.Connected;
    except
      on E:Exception do
         ShowMessage('Ocurrio un error al intentar abrir la BD'+
                     'Detalles: ' + E.Message);

    end;
  end;

end.
