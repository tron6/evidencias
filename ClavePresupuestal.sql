SELECT nombreCont, apellidosCvl
FROM CLIENTE
WHERE cifcl > ANY
(SELECT cifcl
 FROM CLIENTE
 WHERE ciudad = 'Chetumal')
AND nombre LIKE 'A%'