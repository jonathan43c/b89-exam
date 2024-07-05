CREATE OR REPLACE VIEW RemesasNoProcesadas AS
SELECT 
    comerciante_id, 
    COUNT(*) AS cantidad_no_procesadas
FROM 
    Remesa
WHERE 
    estado_id != (SELECT id FROM EstadoRemesa WHERE nombre_estado = 'Procesado')
    AND fecha_hora >= NOW() - INTERVAL '1 month'
GROUP BY 
    comerciante_id;