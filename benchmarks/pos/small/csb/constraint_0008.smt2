(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-96, 961] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00100111010) (= i1 #b01111000001)))

; Formula constraint
(assert (and (not (bvsgt #b00001001010 (bvadd i1 (bvadd #b11110100000 #b00001010011)))) (not (= #b00000101000 i1))))

(check-sat)