(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-58618, 59360] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111011001110) (= i1 #b00000001011100110)))

; Formula constraint
(assert (=> (and (and (= i1 i1) (bvsgt #b11111111111000011 (bvadd i1 (bvmul #b11111111111100010 i1)))) (and (bvslt #b00000000000001100 i1) (not (= #b00000000001010010 (bvsub i1 (bvmul #b11111111110110001 i1)))))) (not (=> (bvslt (bvmul #b11111111111000011 i1) i1) (bvslt #b00000000000010011 (bvadd (bvsub i1 i1) (bvmul #b00000000000111111 i1)))))))

(check-sat)