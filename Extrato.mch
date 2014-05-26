/* Extrato
 * Author: Ezequely
 * Creation date: 26/05/2014
 */
MACHINE
    Extrato

SEES
    Definitions, Identify
    
VARIABLES
    log
    
INVARIANT
    log : seq (IDENTIFICADOR_OPERACAO * CONTA * CONTA * NAT)
    
INITIALISATION
    log := {}
    
OPERATIONS
    add(operador, conta1, conta2, vl) =
    PRE
        operador : IDENTIFICADOR_OPERACAO &
        conta1 : CONTA &
        conta2 : CONTA &
        vl : NAT
    THEN
        log := log <- (operador, conta1, conta2, vl)
    END
END
