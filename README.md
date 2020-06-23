# Goal

[Spec](https://drive.google.com/file/d/14Nkf8wi2dx_ZByNNjQ05xW6ZwzcaFkx1/view?usp=sharing)

# Code Functionality
這次的作業有三個.m檔

FullSearch.m為function檔，會被hw3.m呼叫到

ThreeStep.m為function檔，會被hw3.m呼叫到

hw3.m為script，請打開點run執行

執行後
會從HW3_105062206/data中取出照片來算
然後會輸出照片到HW3_105062206中

第一小題輸出格式為
兩種圖
predict frame名稱格式為

algorithm_predict_img439_SearchRangeSize_Macroblocksize.jpg

residual圖名稱格式為

algorithm_residual_img439_SearchRangeSize_Macroblocksize.jpg

第2小題的圖名稱分別為

full_search_with_reference_432_predict_img439_8_8.jpg

full_search_residual_with_reference_432_predict_img439_8_8.jpg

執行hw3.m這個script會plot出各個運算的motion vector，視窗名稱為對應的運算。
也會plot出full search 和 3 step search的 totalSAD和PSNR的摺線圖。
