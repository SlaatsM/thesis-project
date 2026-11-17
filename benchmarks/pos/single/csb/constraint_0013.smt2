(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-913, 1726] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))
(declare-const i2 (_ BitVec 12))

; Domain constraints
(assert (or (= i1 #b000100111111) (= i1 #b001110001100) (= i1 #b001110101000)))
(assert (or (= i2 #b000000010111) (= i2 #b000001000100) (= i2 #b000110001011)))

; Formula constraint
(assert (and (=> (and (bvslt #b000000000011 #b000000010010) (bvsgt i1 i1)) (bvslt (bvadd i1 #b000000001111) (bvadd i2 #b111110110010))) (and (bvsgt i1 (bvsub (bvsub i1 #b000000111010) i2)) (and (bvsgt (bvadd (bvsub i2 i1) (bvadd #b111110111010 #b000001011110)) #b000000010101) (bvsle i2 (bvadd (bvadd i1 i2) i2))))))

(check-sat)