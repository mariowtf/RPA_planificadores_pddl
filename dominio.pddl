;Header and description

(define (domain trabajo)

;remove requirements that are not needed
(:requirements :strips  :typing  :negative-preconditions )

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle

    ambulancia localizacion enfermo - object

)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here

    (l_ambulancia ?ambulancia - ambulancia ?localizacion - localizacion)
    (l_enfermo ?enfermo - enfermo ?localizacion - localizacion)

    (enlace ?localizacion1 ?localizacion2 - localizacion)

    (ambulancia_llena ?ambulancia - ambulancia ?enfermo - enfermo)
    (ambulancia_vacia ?ambulancia - ambulancia)
)


(:action conducirVacia
    :parameters (?ambulancia - ambulancia ?localizacionOrigen - localizacion ?localizacionDestino - localizacion)
    :precondition (and 
        (l_ambulancia ?ambulancia ?localizacionOrigen)
        (enlace ?localizacionOrigen ?localizacionDestino)
        (ambulancia_vacia ?ambulancia)
    )
    :effect (and 
        (l_ambulancia ?ambulancia ?localizacionDestino)
        (not (l_ambulancia ?ambulancia ?localizacionOrigen))
    )
)


(:action conducirLlena
    :parameters (?ambulancia - ambulancia ?localizacionOrigen - localizacion ?localizacionDestino - localizacion ?enfermo - enfermo)
    :precondition (and 
        (l_ambulancia ?ambulancia ?localizacionOrigen)
        (enlace ?localizacionOrigen ?localizacionDestino)
        (ambulancia_llena ?ambulancia ?enfermo)
        ;(l_enfermo ?enfermo ?localizacionOrigen)
    )
    :effect (and 
        (l_ambulancia ?ambulancia ?localizacionDestino)
        (not (l_ambulancia ?ambulancia ?localizacionOrigen))
        ;(l_enfermo ?enfermo ?localizacionDestino)
        ;(not (l_enfermo ?enfermo ?localizacionOrigen))
    )
)

(:action subirEnfermo
    :parameters (?ambulancia - ambulancia ?localizacion -localizacion ?enfermo - enfermo)
    :precondition (and 
        (l_ambulancia ?ambulancia ?localizacion)
        (l_enfermo ?enfermo ?localizacion)

        (ambulancia_vacia ?ambulancia)
    )
    :effect (and 
        (ambulancia_llena ?ambulancia ?enfermo)
        (not(ambulancia_vacia ?ambulancia))
        (not( l_enfermo ?enfermo ?localizacion))
    )
)

(:action bajarEnfermo
    :parameters (?ambulancia - ambulancia ?localizacion -localizacion ?enfermo - enfermo)
    :precondition (and 
        (l_ambulancia ?ambulancia ?localizacion)
       ; (l_enfermo ?enfermo ?localizacion)

        (ambulancia_llena ?ambulancia ?enfermo)
    )
    :effect (and 
        (ambulancia_vacia ?ambulancia)
        (not(ambulancia_llena ?ambulancia ?enfermo))
        ( l_enfermo ?enfermo ?localizacion)
    )
)






)