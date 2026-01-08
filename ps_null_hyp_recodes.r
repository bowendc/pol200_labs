fannie <- fannie |>
            mutate(Q12.r = case_when(
                    Q12 <= 2 ~ 1,
                    Q12 == 3 | Q12 == 4 ~ 0, 
                    Q12 == 5 ~ NA, 
                    TRUE ~ NA),
                   Q13.r = case_when(
                    Q13 <= 2 ~ 1,
                    Q13 == 3 | Q13 == 4 ~ 0, 
                    Q13 == 5 ~ NA, 
                    TRUE ~ NA),
                   Q15.r = case_when(
                    Q15 == 1 ~ 1,
                    Q15 == 2 | Q15 == 3 ~ 0, 
                    Q15 == 4 ~ NA, 
                    TRUE ~ NA),
                   Q20B.r = case_when(
                    Q20B == 2 ~ 1,
                    Q20B == 1 | Q20B == 3 ~ 0, 
                    Q20B == 4 ~ NA, 
                    TRUE ~ NA),
                   Q112B_Filt.r = case_when(
                    Q112B_Filt == 3 | Q112B_Filt == 4 ~ 1,
                    Q112B_Filt == 1 | Q112B_Filt == 2 ~ 0, 
                    Q112B_Filt == 5 ~ NA, 
                    TRUE ~ NA),
                   Q116.r = case_when(
                    Q116 == 1 ~ 1,
                    Q116 == 2 | Q116 == 3 ~ 0, 
                    Q116 == 4 ~ NA, 
                    TRUE ~ NA)
            )