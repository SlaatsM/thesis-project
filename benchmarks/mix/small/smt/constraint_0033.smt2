(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 83) (= i1 740) (= i1 992)))

; Formula constraint
(assert (or (=> (=> (> (* -41 i1) -18) (< 81 (* -35 i1))) (not (< 46 -75))) (not (and (> i1 -78) (< (* -95 i1) 86)))))

(check-sat)
(get-model)