-----------------------------------------GENERA UNA LISTA CON TODAS LAS CXP POR PAGAR CAPTRADAS EN EL SIGG-------------------------------------------------------

select cxp.iIdCuentasxPagar, ds.iIdEtapa, ce.cNombre, cte.cNombre, cxp.dImporte, cxp.iIdKey, pa.cnombre, pa.capellidopaterno, pa.capellidomaterno,
REPLACE(REPLACE(REPLACE(cxp.cConcepto, Char(9), ''),Char(10), ''),Char(13), '')
from pro.cuentasxpagar cxp
left join dbo.DetallesSolicitud ds on ds.iIdSolicitud = cxp.iIdSolicitud and ds.iIdDetalleSolicitud = cxp.iIdDetalleSolicitud and ds.iIdProceso = 20
left join dbo.Cat_Etapas ce on ce.iIdEtapa = ds.iIdEtapa
left join Financiero.Proveedor p on p.iIdProveedor = iBeneficiario
left join padron.padron pa on pa.iidfoliopadron = p.iIdPadron
left join egresos.Cat_TipoEgresos cte on cte.iIdTipoEgreso = cxp.iIdTipoEgreso
where cxp.iIdPeriodo = 1 and ds.iIdEtapa not in (98, 95,101,103,105)




-------------------------------------------//VERIFICAR LOS DETALLES DE LAS CUENTAS X PAGAR------------------------------------------------------------------
SELECT iidcuentasxpagar,iIdTipoPago,iIdBanco,
  iIdCuentaBancaria,dimporte,
  cTerceroBeneficiario, dtProbablePago 
FROM Egresos.DetallePago 
WHERE iidcuentasxpagar in ()


====================================//MODIFICA TERCER BENEFICIARIO FECHA DE PAGO Y CUENTA BANCARIA-----------------------------------------------------------------------------
/*
UPDATE Egresos.DetallePago SET iIdTipoPago=2, iIdBancoDeposito=NULL, cCuentaBancariaDeposito='', iIdBanco=2 ,
iIdCuentaBancaria=1, cTerceroBeneficiario='', dtProbablePago='2017-30-03' WHERE iidcuentasxpagar IN (cXp) */?


=======================================================//VERIFICAR LA ETAPA==========================================================================================
 SELECT cxp.iIdCuentasxPagar,dt.iIdEtapa,dt.iIdProceso, etapa.cNombre FROM pro.cuentasxpagar cxp left join dbo.detallessolicitud DT
 on cxp.iIdPeriodo = dt.iIdPeriodo and cxp.iIdSolicitud = dt.iIdSolicitud and cxp.iIdDetalleSolicitud=dt.iIdDetalleSolicitud
 left join Cat_Etapas etapa on dt.iIdProceso = etapa.iIdProceso and etapa.iIdEtapa = dt.iIdEtapa 
 and cxp.cIdSistema=dt.cIdSistema where cxp.iIdCuentasxPagar in (CXP)

===========================================//MODIFICAR BANCOS, TERCER BENEFICIARIO, FECHA====================================================================

UPDATE Egresos.DetallePago SET iIdTipoPago=2, iIdBancoDeposito=NULL, cCuentaBancariaDeposito='', iIdBanco=1 ,
 iIdCuentaBancaria=5, cTerceroBeneficiario='', dtProbablePago='2017-25-04' 
 WHERE iidcuentasxpagar in (?CXP)
======================================================================================================================================================
--EL SELECT MUESTRA UNA LISTA CON LA INFORMACION DE LAS CXP, EL UPDATE SOBREESCRIBE LOS CAMPOS INDICADOS
GEENERA LISTA DIA  QUE NECESITAS SACAR DATOS DE UNA CXP O CHEQUE
=
SELECT spresults.* FROM OPENROWSET('SQLNCLI','Server=10.9.3.25;UID=SIGG;PWD=agotanlabatN',
                'EXEC SAG_2017.dbo.PSIGG_CxP_Obtener 20170201, 20170310') AS spresults
 
 

//==================================================ENCONTRAR CHEQUE Y CONTRARESIVOS======================================================


SELECT spresults.* FROM OPENROWSET('SQLNCLI','Server=10.9.3.25;UID=SIGG;PWD=agotanlabatN',
                'EXEC SAG_2017.dbo.PSIGG_CxP_Obtener 20170101, 20170610') AS spresults where cheque =2947
				 

SELECT cxp.iIdCuentasxPagar,dt.iIdEtapa,dt.iIdProceso, etapa.cNombre FROM pro.cuentasxpagar cxp left join dbo.detallessolicitud DT
 on cxp.iIdPeriodo = dt.iIdPeriodo and cxp.iIdSolicitud = dt.iIdSolicitud and cxp.iIdDetalleSolicitud=dt.iIdDetalleSolicitud
 left join Cat_Etapas etapa on dt.iIdProceso = etapa.iIdProceso and etapa.iIdEtapa = dt.iIdEtapa 
 and cxp.cIdSistema=dt.cIdSistema where cxp.iIdCuentasxPagar (PONER CXP)

PAGO DE ARRENDAMIENTO DE 8 UNIDADES BLINDADAS SEGUN CONTRATO DE FECHA 15 DE DICIEMBRE DE 2016 EN EL MES DE FEBRERO
LISTA DE CXP ORGANISMOS ASIMILADOS
SELECT spresults.* FROM OPENROWSET('SQLNCLI','Server=10.9.3.25;UID=SIGG;PWD=agotanlabatN',
                'EXEC SAG_2017.dbo.PSIGG_CxP_Obtener 20170201, 20170310') AS spresults

=BUSCARV(R2:R7741,Hoja2!$A$2:$B$25883,2,0)?