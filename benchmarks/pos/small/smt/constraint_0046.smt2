(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 807) (= i1 862)))

; Formula constraint
(assert (=> (> -31 i1) (and (and (<= -32 -24) (> i1 -30)) (=> (<= (* 1 i1) 9) (>= i1 (* -68 i1))))))

(check-sat)
(get-model)