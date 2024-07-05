CREATE OR REPLACE VIEW TopBeneficiarios AS
SELECT 
    b.id AS beneficiario_id,
    b.nombre AS nombre_beneficiario,
    b.tipo_documento,
    b.numero_documento,
    b.email,
    b.telefono,
    COUNT(r.id) AS cantidad_remesas
FROM 
    Remesa r
JOIN 
    Beneficiario b ON r.beneficiario_id = b.id
WHERE 
    r.fecha_hora >= NOW() - INTERVAL '1 month'
GROUP BY 
    b.id, b.nombre, b.tipo_documento, b.numero_documento, b.email, b.telefono
ORDER BY 
    cantidad_remesas DESC
LIMIT 10;
