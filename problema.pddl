(define (problem trabajoProblema) (:domain trabajo)
(:objects 
    
    L1 L2 L3 L4 - localizacion
    ambulancia1 - ambulancia
    
    enfermo1 enfermo2 - enfermo



)

(:init
    ;todo: put the initial state's facts and numeric values here
    (l_ambulancia ambulancia1 L1)
    (l_enfermo enfermo1 L3)
    (l_enfermo enfermo2 L4)
    (ambulancia_vacia ambulancia1)
    (enlace L1 L2)
    (enlace L2 L4)
    (enlace L4 L3)
    (enlace L2 L1)
    (enlace L4 L2)
    (enlace L3 L4)

)

(:goal (and
    ;todo: put the goal condition here

    (l_enfermo enfermo1 L1)
    (l_enfermo enfermo2 L1)

))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
