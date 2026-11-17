(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-78943, 123293] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111111011111100) (= i1 #b000000000101010100) (= i1 #b000000001101110111)))

; Formula constraint
(assert (or (or (=> (bvslt (bvsub (bvmul #b000000000000110010 i1) (bvmul #b111111111110100111 i1)) i1) (bvslt (bvmul #b000000000001011001 i1) #b000000000001100010)) (not (bvsle #b000000000000111100 (bvadd i1 (bvmul #b111111111110101101 i1))))) (bvslt (bvmul #b111111111111100101 i1) (bvadd (bvmul #b000000000000000100 i1) #b000000000000100101))))

(check-sat)