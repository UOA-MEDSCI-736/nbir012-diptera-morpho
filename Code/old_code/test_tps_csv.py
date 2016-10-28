import unittest #importing library for unittests
import compare as cp # importing my Compare() function

class compare_tps_csv(unittest.TestCase):

    def test_compare_initial_index(self):
        #compare = Compare()
        #result = compare(array_tps,array_csv)
        self.assertEquals(cp.array_csv[10], cp.array_tps[10])
        
    def test_compare_index_2(self):
        #compare = Compare()
        #result = compare(array_tps,array_csv)
        self.assertEquals(cp.array_csv[2], cp.array_tps[2])
    
    def test_compare_final_index(self):
        last_index = len(cp.array_csv) - 1
        self.assertTrue(cp.array_csv[last_index] == cp.array_tps[last_index])

    def test_compare_tricky_text(self):
        tricky_index = len(cp.array_csv) - 2
        self.assertTrue(cp.array_csv[tricky_index] == cp.array_tps[tricky_index])

    def test_all_indices(self):
        for index in range(len(cp.array_csv)):
            self.assertEquals(cp.array_csv[index], cp.array_tps[index])