# count coverage
## ./countCoverage -i ../featureBamFile -p ../param_test
## ./countCoverage -i ../DNaseFlash_SRR -p ../param
#./countCoverage -i ../DNaseFlash_SRR801880 -p ../param_SRR801880
#./countCoverage -i ../DNaseFlash_SRR801881 -p ../param_SRR801881


# extractFeature
## ./extractFeature -i ../coveragesFile  -t ../CMYCData_narrowPeak_2cat.txt -o ../CMYCOutputFeature_2cat_newExtract.txt -p ../param
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../CMYCData_narrowPeak_2cat.txt -o ../CMYCOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../CTCFData_narrowPeak_2cat.txt -o ../CTCFOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../E2FData_narrowPeak_2cat.txt -o ../E2FOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../EGR1Data_narrowPeak_2cat.txt -o ../EGR1OutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../GABPData_narrowPeak_2cat.txt -o ../GABPOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../NRSFData_narrowPeak_2cat.txt -o ../NRSFOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../SRFData_narrowPeak_2cat.txt -o ../SRFOutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880
./extractFeature -i ../coveragesFile_DNaseFlash  -t ../USF1Data_narrowPeak_2cat.txt -o ../USF1OutputFeature_2cat_SRR_filtered.txt -p ../param_SRR801880


