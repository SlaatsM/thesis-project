(set-logic QF_BV)

; Bit width chosen: 14 (covers range [-5059, 5110] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 14))
(declare-const i2 (_ BitVec 14))

; Domain constraints
(assert (and (bvsge i1 #b11111010010011) (bvsle i1 #b00000101100110)))
(assert (or (= i2 #b11111000110010) (= i2 #b11111100111011) (= i2 #b11111110101001) (= i2 #b00000001010000)))

; Formula constraint
(assert (or (not (=> (= #b11111111000101 (bvadd i1 (bvsub #b00000000101100 i1))) (bvslt (bvsub (bvmul #b11111111110010 i1) #b00000000101111) #b11111111101100))) (= (bvadd (bvadd (bvmul #b00000000000010 i1) i2) (bvadd i1 i2)) #b00000001010011)))

(check-sat)