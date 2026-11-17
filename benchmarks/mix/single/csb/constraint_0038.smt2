(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-84920, 82990] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110100010011) (= i1 #b000000001111000101)))

; Formula constraint
(assert (and (=> (= #b111111111110111011 (bvadd i1 (bvsub #b000000000000010100 (bvmul #b111111111111011001 i1)))) (or (bvsgt (bvmul #b111111111111000101 i1) i1) (bvsgt (bvmul #b000000000000001110 i1) (bvsub #b111111111111100101 (bvmul #b000000000001010110 i1))))) (not (and (not (= i1 (bvmul #b111111111110101000 i1))) (bvsge #b111111111111101010 i1)))))

(check-sat)