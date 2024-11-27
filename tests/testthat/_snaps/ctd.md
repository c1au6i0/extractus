# extr_ctd fetches expression data

    Code
      dat <- extr_ctd(input_terms = input_terms, report_type = "cgixns", category = "chem",
        action_types = "expression")
    Message
      i Checking Internet Connection...
      i Internet connection OK...
      Sending request to CTD database...
      Request succeeded with status code: 200
    Code
      random_indices <- sample(1:nrow(dat), 100)
      dat[random_indices, ]
    Output
             x_input chemical_name chemical_id  cas_rn gene_symbol   gene_id
      24388  ethanol       Ethanol     D000431 64-17-5       CASP3       836
      4050   50-00-0  Formaldehyde     D005557 50-00-0      TRIM29     23650
      11571  64-17-5       Ethanol     D000431 64-17-5      LRRC8C     84230
      25173  ethanol       Ethanol     D000431 64-17-5      COL1A1      1277
      32618  ethanol       Ethanol     D000431 64-17-5      PYCARD     29108
      13903  64-17-5       Ethanol     D000431 64-17-5        PNO1     56902
      8229   64-17-5       Ethanol     D000431 64-17-5        DRD2      1813
      25305  ethanol       Ethanol     D000431 64-17-5       CPG-1    175586
      25061  ethanol       Ethanol     D000431 64-17-5      CLSTN2     64084
      22306 methanal  Formaldehyde     D005557 50-00-0      WTAPP1 100288077
      12204  64-17-5       Ethanol     D000431 64-17-5      MRPS21     54460
      7075   64-17-5       Ethanol     D000431 64-17-5     COL-106    176955
      26954  ethanol       Ethanol     D000431 64-17-5        FASN      2194
      31276  ethanol       Ethanol     D000431 64-17-5        ODC1      4953
      16044  64-17-5       Ethanol     D000431 64-17-5        SPEN     23013
      6519   64-17-5       Ethanol     D000431 64-17-5        CCN1      3491
      33990  ethanol       Ethanol     D000431 64-17-5       SNRPG      6637
      26663  ethanol       Ethanol     D000431 64-17-5        ETS1      2113
      19242 methanal  Formaldehyde     D005557 50-00-0     FAM199X    139231
      21784 methanal  Formaldehyde     D005557 50-00-0    ST20-AS1    283687
      16910  64-17-5       Ethanol     D000431 64-17-5     TMEM86A    144110
      21875 methanal  Formaldehyde     D005557 50-00-0       TANC1     85461
      25559  ethanol       Ethanol     D000431 64-17-5      CYB5R2     51700
      21323 methanal  Formaldehyde     D005557 50-00-0        RIT1      6016
      13284  64-17-5       Ethanol     D000431 64-17-5        ORM2      5005
      7976   64-17-5       Ethanol     D000431 64-17-5       DDIT3      1649
      9392   64-17-5       Ethanol     D000431 64-17-5        GCLC      2729
      3863   50-00-0  Formaldehyde     D005557 50-00-0     TEKT4P2 100132288
      26876  ethanol       Ethanol     D000431 64-17-5       FABP4      2167
      23148  ethanol       Ethanol     D000431 64-17-5         AK3     50808
      13973  64-17-5       Ethanol     D000431 64-17-5       PPARA      5465
      31334  ethanol       Ethanol     D000431 64-17-5       ORAI1     84876
      28278  ethanol       Ethanol     D000431 64-17-5       HMOX1      3162
      858    50-00-0  Formaldehyde     D005557 50-00-0      CYP4A8    266674
      6763   64-17-5       Ethanol     D000431 64-17-5       CECR2     27443
      32480  ethanol       Ethanol     D000431 64-17-5       PTGS2      5743
      11367  64-17-5       Ethanol     D000431 64-17-5       LCP2A    336073
      29747  ethanol       Ethanol     D000431 64-17-5     MAP3K10      4294
      13602  64-17-5       Ethanol     D000431 64-17-5       PEDS1    387521
      5051   64-17-5       Ethanol     D000431 64-17-5       AGTR1       185
      34474  ethanol       Ethanol     D000431 64-17-5     T01D1.3    173402
      33269  ethanol       Ethanol     D000431 64-17-5       SCFD1     23256
      16920  64-17-5       Ethanol     D000431 64-17-5      TMSB10      9168
      29660  ethanol       Ethanol     D000431 64-17-5        LY86      9450
      29697  ethanol       Ethanol     D000431 64-17-5       MAML2     84441
      11854  64-17-5       Ethanol     D000431 64-17-5      METAP1     23173
      4934   64-17-5       Ethanol     D000431 64-17-5      ADIPOQ      9370
      13940  64-17-5       Ethanol     D000431 64-17-5        POMC      5443
      27075  ethanol       Ethanol     D000431 64-17-5       FGFR1      2260
      21987 methanal  Formaldehyde     D005557 50-00-0       TMCC1     23023
      22126 methanal  Formaldehyde     D005557 50-00-0        TSF1     32821
      25649  ethanol       Ethanol     D000431 64-17-5     CYP27A1      1593
      12535  64-17-5       Ethanol     D000431 64-17-5      NECAB3     63941
      32987  ethanol       Ethanol     D000431 64-17-5      RNF227    284023
      12399  64-17-5       Ethanol     D000431 64-17-5       MYO5A      4644
      35891  ethanol       Ethanol     D000431 64-17-5   Y73F8A.20    178430
      25488  ethanol       Ethanol     D000431 64-17-5        CTSK      1513
      14330  64-17-5       Ethanol     D000431 64-17-5       PSAT1     29968
      17626  64-17-5       Ethanol     D000431 64-17-5        VSIR     64115
      33986  ethanol       Ethanol     D000431 64-17-5      SNRPA1      6627
      8465   64-17-5       Ethanol     D000431 64-17-5      ELOVL6     79071
      6563   64-17-5       Ethanol     D000431 64-17-5       CCND1       595
      20205 methanal  Formaldehyde     D005557 50-00-0       LSAMP      4045
      22281 methanal  Formaldehyde     D005557 50-00-0       WDR36    134430
      10844  64-17-5       Ethanol     D000431 64-17-5         IL6      3569
      33432  ethanol       Ethanol     D000431 64-17-5       SESN2     83667
      33487  ethanol       Ethanol     D000431 64-17-5      SH3TC1     54436
      3045   50-00-0  Formaldehyde     D005557 50-00-0        PRLR      5618
      8615   64-17-5       Ethanol     D000431 64-17-5         EVC      2121
      29670  ethanol       Ethanol     D000431 64-17-5       LYSET     26175
      9346   64-17-5       Ethanol     D000431 64-17-5      GALNT4      8693
      13824  64-17-5       Ethanol     D000431 64-17-5        PLEK      5341
      8696   64-17-5       Ethanol     D000431 64-17-5          F3      2152
      7131   64-17-5       Ethanol     D000431 64-17-5      COL1A1      1277
      32671  ethanol       Ethanol     D000431 64-17-5       RAB28      9364
      20785 methanal  Formaldehyde     D005557 50-00-0        OAS2      4939
      10816  64-17-5       Ethanol     D000431 64-17-5         IL6      3569
      11114  64-17-5       Ethanol     D000431 64-17-5       KCNB1      3745
      7146   64-17-5       Ethanol     D000431 64-17-5      COL1A2      1278
      11096  64-17-5       Ethanol     D000431 64-17-5        KAZN     23254
      12597  64-17-5       Ethanol     D000431 64-17-5      NFATC4      4776
      11878  64-17-5       Ethanol     D000431 64-17-5        MFN1     55669
      34558  ethanol       Ethanol     D000431 64-17-5       TARS1      6897
      24450  ethanol       Ethanol     D000431 64-17-5         CAT       847
      9086   64-17-5       Ethanol     D000431 64-17-5       FMO-2     35561
      10148  64-17-5       Ethanol     D000431 64-17-5       HMGA1      3159
      14504  64-17-5       Ethanol     D000431 64-17-5       PTPRD      5789
      8613   64-17-5       Ethanol     D000431 64-17-5       EVA1A     84141
      21432 methanal  Formaldehyde     D005557 50-00-0       SCAF4     57466
      7793   64-17-5       Ethanol     D000431 64-17-5      CYP2X8    431734
      6217   64-17-5       Ethanol     D000431 64-17-5       CALB1       793
      30249  ethanol       Ethanol     D000431 64-17-5      MRPL41     64975
      26244  ethanol       Ethanol     D000431 64-17-5       DNPH1     10591
      12669  64-17-5       Ethanol     D000431 64-17-5      NFE2L2      4780
      32441  ethanol       Ethanol     D000431 64-17-5       PTC-3    173631
      23193  ethanol       Ethanol     D000431 64-17-5         ALB       213
      20480 methanal  Formaldehyde     D005557 50-00-0         MLX      6945
      36094  ethanol       Ethanol     D000431 64-17-5      ZNF425    155054
      23836  ethanol       Ethanol     D000431 64-17-5        BCL2       596
      10271  64-17-5       Ethanol     D000431 64-17-5      HOMER3      9454
                           organism organism_id
      24388            Mus musculus       10090
      4050             Homo sapiens        9606
      11571            Mus musculus       10090
      25173            Mus musculus       10090
      32618            Mus musculus       10090
      13903            Mus musculus       10090
      8229        Rattus norvegicus       10116
      25305  Caenorhabditis elegans        6239
      25061            Mus musculus       10090
      22306            Homo sapiens        9606
      12204            Mus musculus       10090
      7075   Caenorhabditis elegans        6239
      26954            Homo sapiens        9606
      31276            Homo sapiens        9606
      16044            Mus musculus       10090
      6519             Homo sapiens        9606
      33990            Homo sapiens        9606
      26663            Homo sapiens        9606
      19242            Homo sapiens        9606
      21784            Homo sapiens        9606
      16910            Mus musculus       10090
      21875            Homo sapiens        9606
      25559             Danio rerio        7955
      21323            Homo sapiens        9606
      13284            Homo sapiens        9606
      7976             Homo sapiens        9606
      9392             Homo sapiens        9606
      3863             Homo sapiens        9606
      26876            Mus musculus       10090
      23148       Rattus norvegicus       10116
      13973            Homo sapiens        9606
      31334       Rattus norvegicus       10116
      28278            Mus musculus       10090
      858         Rattus norvegicus       10116
      6763             Mus musculus       10090
      32480            Mus musculus       10090
      11367             Danio rerio        7955
      29747            Mus musculus       10090
      13602             Danio rerio        7955
      5051        Rattus norvegicus       10116
      34474  Caenorhabditis elegans        6239
      33269             Danio rerio        7955
      16920            Mus musculus       10090
      29660            Mus musculus       10090
      29697            Mus musculus       10090
      11854            Homo sapiens        9606
      4934             Homo sapiens        9606
      13940       Rattus norvegicus       10116
      27075       Rattus norvegicus       10116
      21987            Homo sapiens        9606
      22126 Drosophila melanogaster        7227
      25649            Mus musculus       10090
      12535             Danio rerio        7955
      32987            Mus musculus       10090
      12399            Mus musculus       10090
      35891  Caenorhabditis elegans        6239
      25488            Mus musculus       10090
      14330            Mus musculus       10090
      17626            Mus musculus       10090
      33986            Homo sapiens        9606
      8465             Homo sapiens        9606
      6563        Rattus norvegicus       10116
      20205            Homo sapiens        9606
      22281            Homo sapiens        9606
      10844       Rattus norvegicus       10116
      33432            Mus musculus       10090
      33487             Danio rerio        7955
      3045             Homo sapiens        9606
      8615             Mus musculus       10090
      29670            Mus musculus       10090
      9346             Mus musculus       10090
      13824            Mus musculus       10090
      8696             Mus musculus       10090
      7131        Rattus norvegicus       10116
      32671            Mus musculus       10090
      20785            Homo sapiens        9606
      10816            Mus musculus       10090
      11114            Mus musculus       10090
      7146        Rattus norvegicus       10116
      11096            Mus musculus       10090
      12597            Homo sapiens        9606
      11878            Homo sapiens        9606
      34558             Danio rerio        7955
      24450            Homo sapiens        9606
      9086   Caenorhabditis elegans        6239
      10148            Homo sapiens        9606
      14504            Mus musculus       10090
      8613             Mus musculus       10090
      21432            Homo sapiens        9606
      7793              Danio rerio        7955
      6217        Rattus norvegicus       10116
      30249            Homo sapiens        9606
      26244            Homo sapiens        9606
      12669            Mus musculus       10090
      32441  Caenorhabditis elegans        6239
      23193       Rattus norvegicus       10116
      20480            Homo sapiens        9606
      36094            Homo sapiens        9606
      23836            Homo sapiens        9606
      10271            Mus musculus       10090
                                                                                                                                                                                                  interaction
      24388                                                                                                        Ethanol results in increased expression of and results in increased cleavage of CASP3 mRNA
      4050                                                                                                                                        Formaldehyde results in increased expression of TRIM29 mRNA
      11571                                                                                                                                            Ethanol results in increased expression of LRRC8C mRNA
      25173                                                              CNR1 gene mutant form inhibits the reaction [[Ethanol co-treated with Thioacetamide] results in increased expression of COL1A1 mRNA]
      32618                                                                                               diallyl disulfide inhibits the reaction [Ethanol results in increased expression of PYCARD protein]
      13903                                                                                                                                                       Ethanol affects the expression of PNO1 mRNA
      8229                                                                                                                                               Ethanol results in increased expression of DRD2 mRNA
      25305                                                                                                                                             Ethanol results in decreased expression of CPG-1 mRNA
      25061                                                                                                                                            Ethanol results in increased expression of CLSTN2 mRNA
      22306                                                                                                                                       Formaldehyde results in decreased expression of WTAPP1 mRNA
      12204                                                                                                                                                     Ethanol affects the expression of MRPS21 mRNA
      7075                                                                                                                                            Ethanol results in decreased expression of COL-106 mRNA
      26954                                                                                                                                           Ethanol results in increased expression of FASN protein
      31276                                                                                                                                              Ethanol results in increased expression of ODC1 mRNA
      16044                                                                                                                                                       Ethanol affects the expression of SPEN mRNA
      6519                                                                BECN1 protein promotes the reaction [pterostilbene inhibits the reaction [Ethanol results in increased expression of CCN1 protein]]
      33990                                                                                                                                             Ethanol results in decreased expression of SNRPG mRNA
      26663   [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of ETS1 mRNA
      19242                                                                                                                                      Formaldehyde results in decreased expression of FAM199X mRNA
      21784                                                                                                                                     Formaldehyde results in increased expression of ST20-AS1 mRNA
      16910                                                                                                                                                    Ethanol affects the expression of TMEM86A mRNA
      21875                                                                                                                                        Formaldehyde results in increased expression of TANC1 mRNA
      25559                                                                                                                                            Ethanol results in increased expression of CYB5R2 mRNA
      21323                                                                                                                                         Formaldehyde results in increased expression of RIT1 mRNA
      13284                                                                                                                 [Ethanol co-treated with Folic Acid] results in increased expression of ORM2 mRNA
      7976                                                                                                                                           Ethanol results in increased expression of DDIT3 protein
      9392                                                                                                        CYP2E1 protein promotes the reaction [Ethanol results in increased expression of GCLC mRNA]
      3863                                                                                                                                       Formaldehyde results in increased expression of TEKT4P2 mRNA
      26876                                                                                                                                             Ethanol results in decreased expression of FABP4 mRNA
      23148                                                                                                                                               Ethanol results in decreased expression of AK3 mRNA
      13973                                                                        [artenimol co-treated with NR1H4 protein] inhibits the reaction [Ethanol results in decreased expression of PPARA protein]
      31334                                                                                                                                          Ethanol results in increased expression of ORAI1 protein
      28278                                                                                                                                             Ethanol results in increased expression of HMOX1 mRNA
      858                                                                                                                                         Formaldehyde results in decreased expression of CYP4A8 mRNA
      6763                                                                                                                                              Ethanol results in increased expression of CECR2 mRNA
      32480                                                                                                diallyl disulfide inhibits the reaction [Ethanol results in increased expression of PTGS2 protein]
      11367                                                                                                            [Ethanol co-treated with Benzo(a)pyrene] results in decreased expression of LCP2A mRNA
      29747                                                                                                                                           Ethanol results in increased expression of MAP3K10 mRNA
      13602                                                                                                                                             Ethanol results in increased expression of PEDS1 mRNA
      5051                                                                                                                Ethanol affects the reaction [Dietary Fats affects the expression of AGTR1 protein]
      34474                                                                                                                                           Ethanol results in increased expression of T01D1.3 mRNA
      33269                                                                                                                                             Ethanol results in decreased expression of SCFD1 mRNA
      16920                                                                                                                                                     Ethanol affects the expression of TMSB10 mRNA
      29660                                                                                                                                              Ethanol results in increased expression of LY86 mRNA
      29697                                                                                                                                             Ethanol results in increased expression of MAML2 mRNA
      11854 [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in decreased expression of METAP1 mRNA
      4934                                                                                                        ADIPOQ protein inhibits the reaction [Ethanol results in decreased expression of ATG5 mRNA]
      13940                                                                                                                  [Ethanol co-treated with Cyanamide] results in increased expression of POMC mRNA
      27075                                                                                                                                          Ethanol results in increased expression of FGFR1 protein
      21987                                                                                                                                        Formaldehyde results in decreased expression of TMCC1 mRNA
      22126                                                                                                                                         Formaldehyde results in increased expression of TSF1 mRNA
      25649                                                                                                            AM 251 inhibits the reaction [Ethanol results in increased expression of CYP27A1 mRNA]
      12535                                                                                                                                            Ethanol results in increased expression of NECAB3 mRNA
      32987                                                                                                                         Ethanol affects the expression of and affects the splicing of RNF227 mRNA
      12399                                                                                                                          Ethanol affects the expression of and affects the splicing of MYO5A mRNA
      35891                                                                                                                                         Ethanol results in decreased expression of Y73F8A.20 mRNA
      25488                                                                                                       [Carbon Tetrachloride co-treated with Ethanol] results in increased expression of CTSK mRNA
      14330                                                                                                                                             Ethanol results in increased expression of PSAT1 mRNA
      17626                                                                                                                                              Ethanol results in increased expression of VSIR mRNA
      33986                                                                                                               [Ethanol co-treated with Folic Acid] results in increased expression of SNRPA1 mRNA
      8465  [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in decreased expression of ELOVL6 mRNA
      6563                                                                                                     Ethanol affects the reaction [Corticosterone results in decreased expression of CCND1 protein]
      20205                                                                                                                                        Formaldehyde results in decreased expression of LSAMP mRNA
      22281                                                                                                                                        Formaldehyde results in decreased expression of WDR36 mRNA
      10844                                                                                                          Genistein inhibits the reaction [Ethanol results in increased expression of IL6 protein]
      33432                                                              SESN2 protein promotes the reaction [pterostilbene inhibits the reaction [Ethanol results in decreased expression of HMGA1 protein]]
      33487                                                                                                                                            Ethanol results in decreased expression of SH3TC1 mRNA
      3045                                                                                                                                          Formaldehyde results in increased expression of PRLR mRNA
      8615                                                                                                                                                Ethanol results in decreased expression of EVC mRNA
      29670                                                                                                                                             Ethanol results in increased expression of LYSET mRNA
      9346                                                                                                                                             Ethanol results in increased expression of GALNT4 mRNA
      13824                                                                                                                                              Ethanol results in increased expression of PLEK mRNA
      8696                                                                                                          [Carbon Tetrachloride co-treated with Ethanol] results in decreased expression of F3 mRNA
      7131                                                                 3-methyladenine inhibits the reaction [Ethanol promotes the reaction [Mirtazapine results in increased expression of COL1A1 mRNA]]
      32671                                                                                                                                                      Ethanol affects the expression of RAB28 mRNA
      20785                                                                                                                                         Formaldehyde results in decreased expression of OAS2 mRNA
      10816                                                                                                         pterostilbene inhibits the reaction [Ethanol results in increased expression of IL6 mRNA]
      11114                                                                                                    ferrostatin-1 inhibits the reaction [Ethanol results in decreased expression of KCNB1 protein]
      7146                                                                                                                 [Fish Oils co-treated with Ethanol] results in increased expression of COL1A2 mRNA
      11096                                                                                                                                                       Ethanol affects the expression of KAZN mRNA
      12597                                                                                                     NFATC4 protein affects the reaction [Ethanol results in increased expression of H2AX protein]
      11878                                                                                                           Silybin inhibits the reaction [Ethanol results in decreased expression of MFN1 protein]
      34558                                                                                                                                             Ethanol results in increased expression of TARS1 mRNA
      24450                                                                 CAT protein inhibits the reaction [sodium arsenite promotes the reaction [Ethanol results in increased expression of PTGS2 mRNA]]
      9086                                                                                                                                              Ethanol results in increased expression of FMO-2 mRNA
      10148                                                                                                       NFATC4 protein affects the reaction [Ethanol results in increased expression of HMGA1 mRNA]
      14504                                                                                                                          Ethanol affects the expression of and affects the splicing of PTPRD mRNA
      8613                                                                                                                                                       Ethanol affects the expression of EVA1A mRNA
      21432                                                                                                                                        Formaldehyde results in decreased expression of SCAF4 mRNA
      7793                                                                                                                                             Ethanol results in decreased expression of CYP2X8 mRNA
      6217                                                                                                                                              Ethanol results in decreased expression of CALB1 mRNA
      30249 [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of MRPL41 mRNA
      26244                                                                                                                                             Ethanol results in decreased expression of DNPH1 mRNA
      12669                                                                NFE2L2 affects the reaction [tetramethylpyrazine inhibits the reaction [Ethanol results in decreased expression of PPARA protein]]
      32441                                                                                                                                             Ethanol results in increased expression of PTC-3 mRNA
      23193                                                                                                                                            Ethanol results in increased expression of ALB protein
      20480                                                                                                                                          Formaldehyde results in decreased expression of MLX mRNA
      36094                                                                                                                                            Ethanol results in increased expression of ZNF425 mRNA
      23836                                                                                                                                              Ethanol results in decreased expression of BCL2 mRNA
      10271                                                                                                                                            Ethanol results in increased expression of HOMER3 mRNA
                                                     interaction_actions
      24388                      increases^cleavage|increases^expression
      4050                                          increases^expression
      11571                                         increases^expression
      25173  affects^cotreatment|decreases^reaction|increases^expression
      32618                      decreases^reaction|increases^expression
      13903                                           affects^expression
      8229                                          increases^expression
      25305                                         decreases^expression
      25061                                         increases^expression
      22306                                         decreases^expression
      12204                                           affects^expression
      7075                                          decreases^expression
      26954                                         increases^expression
      31276                                         increases^expression
      16044                                           affects^expression
      6519    decreases^reaction|increases^expression|increases^reaction
      33990                                         decreases^expression
      26663 affects^cotreatment|increases^abundance|increases^expression
      19242                                         decreases^expression
      21784                                         increases^expression
      16910                                           affects^expression
      21875                                         increases^expression
      25559                                         increases^expression
      21323                                         increases^expression
      13284                     affects^cotreatment|increases^expression
      7976                                          increases^expression
      9392                       increases^expression|increases^reaction
      3863                                          increases^expression
      26876                                         decreases^expression
      23148                                         decreases^expression
      13973  affects^cotreatment|decreases^expression|decreases^reaction
      31334                                         increases^expression
      28278                                         increases^expression
      858                                           decreases^expression
      6763                                          increases^expression
      32480                      decreases^reaction|increases^expression
      11367                     affects^cotreatment|decreases^expression
      29747                                         increases^expression
      13602                                         increases^expression
      5051                           affects^expression|affects^reaction
      34474                                         increases^expression
      33269                                         decreases^expression
      16920                                           affects^expression
      29660                                         increases^expression
      29697                                         increases^expression
      11854 affects^cotreatment|decreases^expression|increases^abundance
      4934                       decreases^expression|decreases^reaction
      13940                     affects^cotreatment|increases^expression
      27075                                         increases^expression
      21987                                         decreases^expression
      22126                                         increases^expression
      25649                      decreases^reaction|increases^expression
      12535                                         increases^expression
      32987                          affects^expression|affects^splicing
      12399                          affects^expression|affects^splicing
      35891                                         decreases^expression
      25488                     affects^cotreatment|increases^expression
      14330                                         increases^expression
      17626                                         increases^expression
      33986                     affects^cotreatment|increases^expression
      8465  affects^cotreatment|decreases^expression|increases^abundance
      6563                         affects^reaction|decreases^expression
      20205                                         decreases^expression
      22281                                         decreases^expression
      10844                      decreases^reaction|increases^expression
      33432   decreases^expression|decreases^reaction|increases^reaction
      33487                                         decreases^expression
      3045                                          increases^expression
      8615                                          decreases^expression
      29670                                         increases^expression
      9346                                          increases^expression
      13824                                         increases^expression
      8696                      affects^cotreatment|decreases^expression
      7131    decreases^reaction|increases^expression|increases^reaction
      32671                                           affects^expression
      20785                                         decreases^expression
      10816                      decreases^reaction|increases^expression
      11114                      decreases^expression|decreases^reaction
      7146                      affects^cotreatment|increases^expression
      11096                                           affects^expression
      12597                        affects^reaction|increases^expression
      11878                      decreases^expression|decreases^reaction
      34558                                         increases^expression
      24450   decreases^reaction|increases^expression|increases^reaction
      9086                                          increases^expression
      10148                        affects^reaction|increases^expression
      14504                          affects^expression|affects^splicing
      8613                                            affects^expression
      21432                                         decreases^expression
      7793                                          decreases^expression
      6217                                          decreases^expression
      30249 affects^cotreatment|increases^abundance|increases^expression
      26244                                         decreases^expression
      12669     affects^reaction|decreases^expression|decreases^reaction
      32441                                         increases^expression
      23193                                         increases^expression
      20480                                         decreases^expression
      36094                                         increases^expression
      23836                                         decreases^expression
      10271                                         increases^expression
                          pub_med_i_ds
      24388                   35639301
      4050                    23649840
      11571                   30319688
      25173                   21863215
      32618                   35526736
      13903                   30319688
      8229  18713641|34547370|35227807
      25305                   23381935
      25061                   30319688
      22306                   28937961
      12204                   30319688
      7075                    23381935
      26954          27939985|29476730
      31276                   28986285
      16044                   30319688
      6519                    34405320
      33990                   23378141
      26663                   29432896
      19242                   23649840
      21784                   23649840
      16910                   30319688
      21875                   23649840
      25559                   29361514
      21323                   23649840
      13284                   23378141
      7976                    24224909
      9392                    19133322
      3863                    23649840
      26876          15513904|22173916
      23148                   17920746
      13973                   27939985
      31334                   26033013
      28278          20861358|34995708
      858                     12679049
      6763                    30319688
      32480                   35526736
      11367                   35412187
      29747                   30319688
      13602                   29361514
      5051                    31811911
      34474                   23381935
      33269                   24355176
      16920                   26730594
      29660                   30319688
      29697                   30319688
      11854                   29432896
      4934                    24582693
      13940                   11139417
      27075                   29769550
      21987          20655997|23649840
      22126                   28621308
      25649          23894352|28095641
      12535                   29361514
      32987                   30319688
      12399                   30319688
      35891                   23381935
      25488                   30517762
      14330                   19167417
      17626                   30319688
      33986                   23378141
      8465                    29432896
      6563                    38259729
      20205                   27905399
      22281                   23649840
      10844                   23274713
      33432                   34405320
      33487                   29361514
      3045           27905399|28937961
      8615                    34492310
      29670                   30319688
      9346                    30319688
      13824                   30319688
      8696                    30517762
      7131                    35066094
      32671                   30319688
      20785                   28937961
      10816                   34405320
      11114                   34864093
      7146                    17347304
      11096                   30319688
      12597                   34192554
      11878                   35158046
      34558                   29361514
      24450                   26220687
      9086                    23381935
      10148                   34192554
      14504                   30319688
      8613                    30319688
      21432                   20655997
      7793                    29361514
      6217                    17618662
      30249                   29432896
      26244                   11566570
      12669                   27837167
      32441                   23381935
      23193                   23200777
      20480                   23649840
      36094                   28986285
      23836 21878650|31226463|35685625
      10271                   30319688

# extr_ctd fetches other data

    Code
      dat <- extr_ctd(input_terms = input_terms, category = "chem", report_type = "genes_curated",
        input_term_search_type = "directAssociations", action_types = "ANY",
        ontology = c("go_bp", "go_cc"))
    Message
      i Checking Internet Connection...
      i Internet connection OK...
      Sending request to CTD database...
      Request succeeded with status code: 200
    Code
      random_indices <- sample(1:nrow(dat), 100)
      dat[random_indices, ]
    Output
             x_input chemical_name chemical_id  cas_rn gene_symbol   gene_id
      5388   64-17-5       Ethanol     D000431 64-17-5          C9       735
      11564  64-17-5       Ethanol     D000431 64-17-5     PPP1R11      6992
      2762   50-00-0  Formaldehyde     D005557 50-00-0       PRMT6     55170
      25186  ethanol       Ethanol     D000431 64-17-5      MSRB1B 100003670
      11546  64-17-5       Ethanol     D000431 64-17-5        PPID      5481
      17649 methanal  Formaldehyde     D005557 50-00-0      PFKFB4      5210
      11260  64-17-5       Ethanol     D000431 64-17-5       PGP-5    181276
      24196  ethanol       Ethanol     D000431 64-17-5      KCTD12    115207
      14773  64-17-5       Ethanol     D000431 64-17-5   Y54G2A.10    177060
      4182   64-17-5       Ethanol     D000431 64-17-5         ABR        29
      18649 methanal  Formaldehyde     D005557 50-00-0    TMEM185A     84548
      27416  ethanol       Ethanol     D000431 64-17-5       RPL32      6161
      18540 methanal  Formaldehyde     D005557 50-00-0     TBC1D12     23232
      22799  ethanol       Ethanol     D000431 64-17-5         FN1      2335
      5390   64-17-5       Ethanol     D000431 64-17-5     C9ORF72    203228
      25327  ethanol       Ethanol     D000431 64-17-5        <NA>     45338
      7151   64-17-5       Ethanol     D000431 64-17-5      ELOVL2     54898
      21842  ethanol       Ethanol     D000431 64-17-5      DIXDC1     85458
      22113  ethanol       Ethanol     D000431 64-17-5        EGFR      1956
      18144 methanal  Formaldehyde     D005557 50-00-0      SCNN1A      6337
      5704   64-17-5       Ethanol     D000431 64-17-5       CD74A     58113
      22069  ethanol       Ethanol     D000431 64-17-5      EEF1A1      1915
      4664   64-17-5       Ethanol     D000431 64-17-5      ANP32E     81611
      13290  64-17-5       Ethanol     D000431 64-17-5       SPARC      6678
      13031  64-17-5       Ethanol     D000431 64-17-5     SLC35F1    222553
      28635  ethanol       Ethanol     D000431 64-17-5      SWSN-9    172461
      4075   50-00-0  Formaldehyde     D005557 50-00-0      ZNF721    170960
      28082  ethanol       Ethanol     D000431 64-17-5     SLC35E3     55508
      15104 methanal  Formaldehyde     D005557 50-00-0      ADGRG1      9289
      14537  64-17-5       Ethanol     D000431 64-17-5      VCPIP1     80124
      27540  ethanol       Ethanol     D000431 64-17-5       RUBCN      9711
      21858  ethanol       Ethanol     D000431 64-17-5        DLG2      1740
      23909  ethanol       Ethanol     D000431 64-17-5         IL6      3569
      11613  64-17-5       Ethanol     D000431 64-17-5      PPP4R1      9989
      28162  ethanol       Ethanol     D000431 64-17-5     SLC7A11     23657
      4212   64-17-5       Ethanol     D000431 64-17-5       ACADS        35
      10235  64-17-5       Ethanol     D000431 64-17-5        MYL2      4633
      15215 methanal  Formaldehyde     D005557 50-00-0       APBA1       320
      15782 methanal  Formaldehyde     D005557 50-00-0      CREBL2      1389
      19454  ethanol       Ethanol     D000431 64-17-5       ADIRF     10974
      21737  ethanol       Ethanol     D000431 64-17-5         DDO      8528
      7439   64-17-5       Ethanol     D000431 64-17-5    F49C12.2    186025
      9655   64-17-5       Ethanol     D000431 64-17-5      MAP6D1     79929
      9413   64-17-5       Ethanol     D000431 64-17-5       LIN52     91750
      27868  ethanol       Ethanol     D000431 64-17-5        SHC4    399694
      462    50-00-0  Formaldehyde     D005557 50-00-0      CC2D2A     57545
      10149  64-17-5       Ethanol     D000431 64-17-5        MT2A      4502
      22827  ethanol       Ethanol     D000431 64-17-5       FOXK1    221937
      10475  64-17-5       Ethanol     D000431 64-17-5        NFIX      4784
      20433  ethanol       Ethanol     D000431 64-17-5          C6       729
      23041  ethanol       Ethanol     D000431 64-17-5       GFPT1      2673
      9690   64-17-5       Ethanol     D000431 64-17-5     MARCHF9     92979
      10413  64-17-5       Ethanol     D000431 64-17-5       NEDD4      4734
      12129  64-17-5       Ethanol     D000431 64-17-5       RCAN2     10231
      29779  ethanol       Ethanol     D000431 64-17-5   Y25C1A.13    173657
      26074  ethanol       Ethanol     D000431 64-17-5         PBK     55872
      29079  ethanol       Ethanol     D000431 64-17-5      TMEM79     84283
      14660  64-17-5       Ethanol     D000431 64-17-5        WHRN     25861
      24272  ethanol       Ethanol     D000431 64-17-5        KLF6      1316
      18417 methanal  Formaldehyde     D005557 50-00-0      SPTLC3     55304
      731    50-00-0  Formaldehyde     D005557 50-00-0      CREBZF     58487
      28857  ethanol       Ethanol     D000431 64-17-5     TERF2IP     54386
      23423  ethanol       Ethanol     D000431 64-17-5       GULP1     51454
      16230 methanal  Formaldehyde     D005557 50-00-0        FGD4    121512
      19197  ethanol       Ethanol     D000431 64-17-5       ABCC1      4363
      13492  64-17-5       Ethanol     D000431 64-17-5      STK38L     23012
      20189  ethanol       Ethanol     D000431 64-17-5    BGNT-1.3    184798
      12781  64-17-5       Ethanol     D000431 64-17-5        SGK3     23678
      21155  ethanol       Ethanol     D000431 64-17-5     COL14A1      7373
      28490  ethanol       Ethanol     D000431 64-17-5       SSTR4      6754
      966    50-00-0  Formaldehyde     D005557 50-00-0        EBPL     84650
      10684  64-17-5       Ethanol     D000431 64-17-5        NRAS      4893
      9383   64-17-5       Ethanol     D000431 64-17-5      LGALSL     29094
      22577  ethanol       Ethanol     D000431 64-17-5     FAM117B    150864
      26593  ethanol       Ethanol     D000431 64-17-5      PPFIA4      8497
      5591   64-17-5       Ethanol     D000431 64-17-5     CCDC190    339512
      28350  ethanol       Ethanol     D000431 64-17-5     SPATA20     64847
      22177  ethanol       Ethanol     D000431 64-17-5      EIF5A2     56648
      24867  ethanol       Ethanol     D000431 64-17-5       MFGE8      4240
      28555  ethanol       Ethanol     D000431 64-17-5       STRBP     55342
      4749   64-17-5       Ethanol     D000431 64-17-5     ARFGAP2     84364
      24823  ethanol       Ethanol     D000431 64-17-5       MED19    219541
      2482   50-00-0  Formaldehyde     D005557 50-00-0        OPN3     23596
      6885   64-17-5       Ethanol     D000431 64-17-5       DOD-3    178737
      19772  ethanol       Ethanol     D000431 64-17-5     APOBB.2 100330435
      15706 methanal  Formaldehyde     D005557 50-00-0      CLEC2D     29121
      3418   50-00-0  Formaldehyde     D005557 50-00-0        STOM      2040
      27560  ethanol       Ethanol     D000431 64-17-5        RXRG      6258
      2722   50-00-0  Formaldehyde     D005557 50-00-0     PPP1R3C      5507
      19268  ethanol       Ethanol     D000431 64-17-5      ACADSB        36
      56     50-00-0  Formaldehyde     D005557 50-00-0        ADH5       128
      7193   64-17-5       Ethanol     D000431 64-17-5        ENO2      2026
      17318 methanal  Formaldehyde     D005557 50-00-0      MTNAP1     55028
      27729  ethanol       Ethanol     D000431 64-17-5     SELENOJ    572182
      24024  ethanol       Ethanol     D000431 64-17-5       ITGAV      3685
      29001  ethanol       Ethanol     D000431 64-17-5       TMED6    146456
      8109   64-17-5       Ethanol     D000431 64-17-5      GNGT2B    797361
      4590   64-17-5       Ethanol     D000431 64-17-5        ALPL       249
      30011  ethanol       Ethanol     D000431 64-17-5      ZFP941    407812
      24267  ethanol       Ethanol     D000431 64-17-5       KLF13     51621
                          organism organism_id
      5388            Mus musculus       10090
      11564            Danio rerio        7955
      2762            Homo sapiens        9606
      25186            Danio rerio        7955
      11546           Mus musculus       10090
      17649           Homo sapiens        9606
      11260 Caenorhabditis elegans        6239
      24196           Homo sapiens        9606
      14773 Caenorhabditis elegans        6239
      4182            Mus musculus       10090
      18649           Homo sapiens        9606
      27416           Mus musculus       10090
      18540           Homo sapiens        9606
      22799      Rattus norvegicus       10116
      5390            Mus musculus       10090
      25327           Mus musculus       10090
      7151            Mus musculus       10090
      21842           Homo sapiens        9606
      22113      Rattus norvegicus       10116
      18144           Homo sapiens        9606
      5704             Danio rerio        7955
      22069           Mus musculus       10090
      4664            Mus musculus       10090
      13290           Homo sapiens        9606
      13031           Homo sapiens        9606
      28635 Caenorhabditis elegans        6239
      4075            Homo sapiens        9606
      28082            Danio rerio        7955
      15104           Homo sapiens        9606
      14537           Mus musculus       10090
      27540           Mus musculus       10090
      21858           Mus musculus       10090
      23909           Homo sapiens        9606
      11613           Mus musculus       10090
      28162           Mus musculus       10090
      4212             Danio rerio        7955
      10235           Homo sapiens        9606
      15215           Homo sapiens        9606
      15782           Homo sapiens        9606
      19454           Homo sapiens        9606
      21737           Mus musculus       10090
      7439  Caenorhabditis elegans        6239
      9655            Mus musculus       10090
      9413            Mus musculus       10090
      27868           Mus musculus       10090
      462             Homo sapiens        9606
      10149      Rattus norvegicus       10116
      22827           Mus musculus       10090
      10475      Rattus norvegicus       10116
      20433            Danio rerio        7955
      23041            Danio rerio        7955
      9690            Mus musculus       10090
      10413           Homo sapiens        9606
      12129            Danio rerio        7955
      29779 Caenorhabditis elegans        6239
      26074            Danio rerio        7955
      29079           Homo sapiens        9606
      14660           Mus musculus       10090
      24272      Rattus norvegicus       10116
      18417           Homo sapiens        9606
      731             Homo sapiens        9606
      28857           Mus musculus       10090
      23423           Homo sapiens        9606
      16230           Homo sapiens        9606
      19197            Danio rerio        7955
      13492           Mus musculus       10090
      20189 Caenorhabditis elegans        6239
      12781           Mus musculus       10090
      21155           Homo sapiens        9606
      28490           Mus musculus       10090
      966             Homo sapiens        9606
      10684           Mus musculus       10090
      9383            Mus musculus       10090
      22577           Mus musculus       10090
      26593           Homo sapiens        9606
      5591            Mus musculus       10090
      28350            Danio rerio        7955
      22177            Danio rerio        7955
      24867      Rattus norvegicus       10116
      28555           Mus musculus       10090
      4749            Mus musculus       10090
      24823           Mus musculus       10090
      2482            Homo sapiens        9606
      6885  Caenorhabditis elegans        6239
      19772            Danio rerio        7955
      15706           Homo sapiens        9606
      3418            Homo sapiens        9606
      27560           Homo sapiens        9606
      2722            Homo sapiens        9606
      19268           Mus musculus       10090
      56                                    NA
      7193            Homo sapiens        9606
      17318           Homo sapiens        9606
      27729            Danio rerio        7955
      24024           Mus musculus       10090
      29001            Danio rerio        7955
      8109             Danio rerio        7955
      4590            Homo sapiens        9606
      30011           Mus musculus       10090
      24267           Mus musculus       10090
                                             pub_med_ids
      5388                                      19167417
      11564                                     29361514
      2762                                      20655997
      25186                                     35412187
      11546                                     30319688
      17649                                     23649840
      11260                                     23381935
      24196                                     31059573
      14773                                     23381935
      4182                             30319688|30517762
      18649                                     23649840
      27416                                     30319688
      18540                                     20655997
      22799                                     31039417
      5390                                      30319688
      25327                                     30319688
      7151                             19167417|30319688
      21842                                     28986285
      22113                                     15353170
      18144                                     28937961
      5704                                      35412187
      22069                                     30319688
      4664                                      30319688
      13290                                     15963989
      13031                                     28986285
      28635                                     25713357
      4075                                      23649840
      28082                                     29361514
      15104                                     23649840
      14537                                     30319688
      27540                                     30319688
      21858                                     30319688
      23909 28763032|28964808|33161052|34474091|35685625
      11613                                     30319688
      28162                            30319688|33017621
      4212                                      29361514
      10235                            31059573|35713687
      15215                                     23649840
      15782                                     23649840
      19454                                     29432896
      21737                                     30319688
      7439                                      23381935
      9655                                      30319688
      9413                                      30319688
      27868                                     30319688
      462                              23649840|27905399
      10149                            15475485|17637929
      22827                                     30319688
      10475                                     15353170
      20433                                     29361514
      23041                                     29361514
      9690                                      30319688
      10413                                     23378141
      12129                                     35412187
      29779                                     23381935
      26074                                     29361514
      29079                                     29432896
      14660                                     30319688
      24272                                     22486562
      18417                                     23649840
      731                                       20655997
      28857                                     30319688
      23423                                     23378141
      16230                                     20655997
      19197                                     35412187
      13492                                     30319688
      20189                                     23381935
      12781                                     30319688
      21155                                     31059573
      28490                                     30319688
      966                                       23649840
      10684                                     30319688
      9383                                      30319688
      22577                                     30319688
      26593                            20621659|23378141
      5591                                      30319688
      28350                                     29361514
      22177                                     29361514
      24867                                     17920746
      28555                                     30319688
      4749                                      30319688
      24823                                     30319688
      2482                                      23649840
      6885                                      23381935
      19772                                     29361514
      15706                                     23649840
      3418                                      23649840
      27560                                     31059573
      2722                                      27905399
      19268                                     30319688
      56                                        21920416
      7193                             23378141|28986285
      17318                                     23649840
      27729                            29361514|35412187
      24024                            29018328|30319688
      29001                                     29361514
      8109                                      35412187
      4590                                      23378141
      30011                                     30319688
      24267                                     30319688

# extr_ctd fetches tetramers data

    Code
      dat <- extr_tetramer(chem = c("50-00-0", "ethanol"), disease = "", gene = "",
      go = "", input_term_search_type = "directAssociations", qt_match_type = "equals")
    Message
      Sending request to CTD database for tetramer data for 50-00-0...
      Request succeeded with status code: 200
      Sending request to CTD database for tetramer data for ethanol...
      Request succeeded with status code: 200
    Code
      random_indices <- sample(1:nrow(dat), 100)
      dat[random_indices, ]
    Output
              query     chemical chemical_id    gene gene_id
      3552  50-00-0 Formaldehyde     D005557   HMGA2    8091
      37891 ethanol      Ethanol     D000431    AGER     177
      39571 ethanol      Ethanol     D000431    IL1B    3553
      10624 ethanol      Ethanol     D000431   PRDX1    5052
      127   50-00-0 Formaldehyde     D005557  TGFBR1    7046
      17101 ethanol      Ethanol     D000431   SIRT6   51548
      46913 ethanol      Ethanol     D000431   SMAD4    4089
      31208 ethanol      Ethanol     D000431     CCK     885
      30206 ethanol      Ethanol     D000431   SMAD4    4089
      46698 ethanol      Ethanol     D000431   CCNA1    8900
      7715  ethanol      Ethanol     D000431    NOS3    4846
      32629 ethanol      Ethanol     D000431    DPF3    8110
      49828 ethanol      Ethanol     D000431    KRAS    3845
      38563 ethanol      Ethanol     D000431     TNF    7124
      12438 ethanol      Ethanol     D000431    NOS3    4846
      1491  50-00-0 Formaldehyde     D005557    NPPB    4879
      19199 ethanol      Ethanol     D000431    APOE     348
      26156 ethanol      Ethanol     D000431    LDHB    3945
      28445 ethanol      Ethanol     D000431     TNF    7124
      36319 ethanol      Ethanol     D000431 SULT1E1    6783
      43127 ethanol      Ethanol     D000431 GUCY1A1    2982
      30949 ethanol      Ethanol     D000431    IGF2    3481
      26359 ethanol      Ethanol     D000431    PTK2    5747
      49588 ethanol      Ethanol     D000431    INS1   16333
      533   50-00-0 Formaldehyde     D005557    BCL2     596
      46963 ethanol      Ethanol     D000431     BAX     581
      42341 ethanol      Ethanol     D000431   KMT2A    4297
      21976 ethanol      Ethanol     D000431 HSD11B2    3291
      22843 ethanol      Ethanol     D000431  MIR204  406987
      25434 ethanol      Ethanol     D000431   GSK3B    2932
      39744 ethanol      Ethanol     D000431     TNF    7124
      22050 ethanol      Ethanol     D000431     LEP    3952
      7681  ethanol      Ethanol     D000431   FGFR2    2263
      24269 ethanol      Ethanol     D000431   PARP1     142
      11381 ethanol      Ethanol     D000431    EDN1    1906
      26074 ethanol      Ethanol     D000431    EGR2    1959
      42818 ethanol      Ethanol     D000431    CES1    1066
      12921 ethanol      Ethanol     D000431    NGFR    4804
      36831 ethanol      Ethanol     D000431    RHOA     387
      724   50-00-0 Formaldehyde     D005557     BAX     581
      6164  ethanol      Ethanol     D000431    FGF8    2253
      42909 ethanol      Ethanol     D000431   NISCH   11188
      22401 ethanol      Ethanol     D000431     APP     351
      15833 ethanol      Ethanol     D000431    EDN1    1906
      18400 ethanol      Ethanol     D000431    MDM2    4193
      10381 ethanol      Ethanol     D000431   GNAI2    2771
      16516 ethanol      Ethanol     D000431    ZEB1    6935
      43762 ethanol      Ethanol     D000431  ADIPOQ    9370
      22822 ethanol      Ethanol     D000431   GRIA1    2890
      42381 ethanol      Ethanol     D000431   PLOD2    5352
      39089 ethanol      Ethanol     D000431     IL6    3569
      5040  ethanol      Ethanol     D000431    RAF1    5894
      36273 ethanol      Ethanol     D000431    AKT1     207
      31447 ethanol      Ethanol     D000431 TSC22D1    8848
      24896 ethanol      Ethanol     D000431     KMO    8564
      9666  ethanol      Ethanol     D000431     ID4    3400
      22979 ethanol      Ethanol     D000431    CD36     948
      34935 ethanol      Ethanol     D000431    EDN1    1906
      46840 ethanol      Ethanol     D000431    PLAU    5328
      10014 ethanol      Ethanol     D000431  PIK3CA    5290
      41069 ethanol      Ethanol     D000431    TLR4    7099
      35355 ethanol      Ethanol     D000431    IGF1    3479
      21291 ethanol      Ethanol     D000431  CTNNB1    1499
      16777 ethanol      Ethanol     D000431   PPARA    5465
      31830 ethanol      Ethanol     D000431    NOS3    4846
      20592 ethanol      Ethanol     D000431    NOS2    4843
      29612 ethanol      Ethanol     D000431    AKT1     207
      6410  ethanol      Ethanol     D000431   VEGFA    7422
      45185 ethanol      Ethanol     D000431    AKT1     207
      2016  50-00-0 Formaldehyde     D005557    CCL2    6347
      44900 ethanol      Ethanol     D000431     ALB     213
      44293 ethanol      Ethanol     D000431  PPP3CA    5530
      23718 ethanol      Ethanol     D000431    BDNF     627
      37204 ethanol      Ethanol     D000431   TGFB1    7040
      12700 ethanol      Ethanol     D000431   PARP1     142
      49251 ethanol      Ethanol     D000431 ADORA2A     135
      24367 ethanol      Ethanol     D000431   TRP53   22059
      3822  50-00-0 Formaldehyde     D005557    TLR4    7099
      23373 ethanol      Ethanol     D000431   ASIC1      41
      24189 ethanol      Ethanol     D000431  CYP2D6    1565
      32884 ethanol      Ethanol     D000431    IGF2    3481
      23744 ethanol      Ethanol     D000431  GRIN2A    2903
      19541 ethanol      Ethanol     D000431    SOD1    6647
      9424  ethanol      Ethanol     D000431   VEGFA    7422
      39141 ethanol      Ethanol     D000431     RYK    6259
      25304 ethanol      Ethanol     D000431 ALDH7A1     501
      771   50-00-0 Formaldehyde     D005557    SOD1    6647
      5207  ethanol      Ethanol     D000431    BMP4     652
      27798 ethanol      Ethanol     D000431     TNF    7124
      49210 ethanol      Ethanol     D000431   HTR1B    3351
      42469 ethanol      Ethanol     D000431   PARP1     142
      27759 ethanol      Ethanol     D000431     TRH    7200
      47481 ethanol      Ethanol     D000431  CYP1B1    1545
      7883  ethanol      Ethanol     D000431   HIF1A    3091
      28716 ethanol      Ethanol     D000431    TP53    7157
      1803  50-00-0 Formaldehyde     D005557    IL1B    3553
      27696 ethanol      Ethanol     D000431    NOS1    4842
      313   50-00-0 Formaldehyde     D005557     APC     324
      17206 ethanol      Ethanol     D000431    PAX6    5080
      21864 ethanol      Ethanol     D000431  INPPL1    3636
                                                                                    phenotype
      3552                               positive regulation of multicellular organism growth
      37891                                                positive regulation of JNK cascade
      39571                                   positive regulation of neuron apoptotic process
      10624                                                     cell population proliferation
      127                                                                   apoptotic process
      17101                                                               glucose homeostasis
      46913                                                                   spermatogenesis
      31208                                          positive regulation of apoptotic process
      30206                                                        osteoblast differentiation
      46698                                                                   spermatogenesis
      7715                                                                   bone development
      32629                                       positive regulation of cell differentiation
      49828                                                                   visual learning
      38563                                               positive regulation of MAPK cascade
      12438                                      cellular response to organic cyclic compound
      1491                                                                  heart development
      19199                                       high-density lipoprotein particle clearance
      26156                                                             NAD metabolic process
      28445                                               negative regulation of neurogenesis
      36319                                   positive regulation of fat cell differentiation
      43127                                                      regulation of blood pressure
      30949                                               positive regulation of angiogenesis
      26359                                         negative regulation of cell-cell adhesion
      49588                                                                      vasodilation
      533                                                       cell population proliferation
      46963                                                                   spermatogenesis
      42341                                                      protein modification process
      21976                                                           lipid metabolic process
      22843                                                   long-term synaptic potentiation
      25434                                                        mitochondrion organization
      39744                                   positive regulation of neuron apoptotic process
      22050                                                           lipid metabolic process
      7681                                                                   bone development
      24269                                                                     mitochondrion
      11381                                                  cellular calcium ion homeostasis
      26074                                                                       myelination
      42818                                      regulation of bile acid biosynthetic process
      12921                                             cellular response to oxidative stress
      36831                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      724                                                       cell population proliferation
      6164                                                                  apoptotic process
      42909                                                      regulation of blood pressure
      22401                                                               locomotory behavior
      15833                                                        epithelial fluid transport
      18400                                                                 heart development
      10381                                                     cell population proliferation
      16516                                                             forebrain development
      43762                                           regulation of glucose metabolic process
      22822                                                   long-term synaptic potentiation
      42381                                                      protein modification process
      39089                                               positive regulation of MAPK cascade
      5040                                              AMP-activated protein kinase activity
      36273                                   positive regulation of fat cell differentiation
      31447                                          positive regulation of apoptotic process
      24896                                                                     mitochondrion
      9666                                                               cell differentiation
      22979                                        low-density lipoprotein particle clearance
      34935                        positive regulation of cytosolic calcium ion concentration
      46840                                                                   spermatogenesis
      10014                                                                    cell migration
      41069               positive regulation of reactive oxygen species biosynthetic process
      35355                                      positive regulation of ERK1 and ERK2 cascade
      21291                                                                  limb development
      16777                                                                   gluconeogenesis
      31830                                          positive regulation of apoptotic process
      20592                                                             inflammatory response
      29612                                                 nitric oxide biosynthetic process
      6410                                                                  apoptotic process
      45185                                                      response to oxidative stress
      2016                              leukocyte migration involved in inflammatory response
      44900                                                              response to nutrient
      44293                                                                  renal filtration
      23718                                                                            memory
      37204                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      12700                                             cellular response to oxidative stress
      49251                                                                      vasodilation
      24367                                                                     mitochondrion
      3822                           positive regulation of nitric oxide biosynthetic process
      23373                                                                            memory
      24189                                                                     mitochondrion
      32884                              positive regulation of cell population proliferation
      23744                                                                            memory
      19541                                            hydrogen peroxide biosynthetic process
      9424                                                               cell differentiation
      39141                                               positive regulation of MAPK cascade
      25304                                                                     mitochondrion
      771                                                       cellular iron ion homeostasis
      5207                                                                       angiogenesis
      27798                                                 negative regulation of heart rate
      49210                                                                  vasoconstriction
      42469                                                     protein poly-ADP-ribosylation
      27759                                           negative regulation of feeding behavior
      47481                                                         steroid metabolic process
      7883                                                                bone mineralization
      28716 negative regulation of transforming growth factor beta receptor signaling pathway
      1803                                                              inflammatory response
      27696                        negative regulation of cytosolic calcium ion concentration
      313                                                                   apoptotic process
      17206                                                               glucose homeostasis
      21864                                                           lipid metabolic process
            phenotype_id                                disease disease_id
      3552    GO:0040018                  Neoplasm Invasiveness    D009361
      37891   GO:0046330                          Hyperglycemia    D006943
      39571   GO:0043525      Genetic Predisposition to Disease    D020022
      10624   GO:0008283                   Esophageal Neoplasms    D004938
      127     GO:0006915 Chemical and Drug Induced Liver Injury    D056486
      17101   GO:0042593          Hypertrophy, Left Ventricular    D017379
      46913   GO:0007283          Liver Cirrhosis, Experimental    D008106
      31208   GO:0043065                               Anorexia    D000855
      30206   GO:0001649                    Cognition Disorders    D003072
      46698   GO:0007283              Carcinoma, Hepatocellular    D006528
      7715    GO:0060348                   Esophageal Neoplasms    D004938
      32629   GO:0045597                    Atrial Fibrillation    D001281
      49828   GO:0008542                    Disease Progression    D018450
      38563   GO:0043410                                Colitis    D003092
      12438   GO:0071407               Fetal Growth Retardation    D005317
      1491    GO:0007507                                   Pain    D010146
      19199   GO:0034384                               Fibrosis    D005355
      26156   GO:0019674          Liver Cirrhosis, Experimental    D008106
      28445   GO:0050768                          Stomach Ulcer    D013276
      36319   GO:0045600                   Hepatitis, Alcoholic    D006519
      43127   GO:0008217                           Hypertension    D006973
      30949   GO:0045766                       Memory Disorders    D008569
      26359   GO:0022408              Carcinoma, Hepatocellular    D006528
      49588   GO:0042311                               Necrosis    D009336
      533     GO:0008283                                Adenoma    D000236
      46963   GO:0007283                  Myocardial Infarction    D009203
      42341   GO:0036211              Carcinoma, Hepatocellular    D006528
      21976   GO:0006629                  Myocardial Infarction    D009203
      22843   GO:0060291              Diabetes Mellitus, Type 2    D003924
      25434   GO:0007005                         Brain Injuries    D001930
      39744   GO:0043525      Non-alcoholic Fatty Liver Disease    D065626
      22050   GO:0006629                            Proteinuria    D011507
      7681    GO:0060348                              Cleft Lip    D002971
      24269   GO:0005739                         Brain Ischemia    D002545
      11381   GO:0006874                Cardiovascular Diseases    D002318
      26074   GO:0042552                    Myocardial Ischemia    D017202
      42818   GO:0070857                         Brain Injuries    D001930
      12921   GO:0034599                     Nerve Degeneration    D009410
      36831   GO:0043123                 Disease Models, Animal    D004195
      724     GO:0008283                     Nerve Degeneration    D009410
      6164    GO:0006915                              Cleft Lip    D002971
      42909   GO:0008217                       Breast Neoplasms    D001943
      22401   GO:0007626                               Necrosis    D009336
      15833   GO:0042045              Gastrointestinal Diseases    D005767
      18400   GO:0007507        Cell Transformation, Neoplastic    D002471
      10381   GO:0008283                       Breast Neoplasms    D001943
      16516   GO:0030900        Cell Transformation, Neoplastic    D002471
      43762   GO:0010906              Diabetes Mellitus, Type 2    D003924
      22822   GO:0060291              Cocaine-Related Disorders    D019970
      42381   GO:0036211                        Liver Cirrhosis    D008103
      39089   GO:0043410                                 Stroke    D020521
      5040    GO:0004679                Cardiomyopathy, Dilated    D002311
      36273   GO:0045600                           Cardiomegaly    D006332
      31447   GO:0043065        Cell Transformation, Neoplastic    D002471
      24896   GO:0005739          Liver Cirrhosis, Experimental    D008106
      9666    GO:0030154                      Stomach Neoplasms    D013274
      22979   GO:0034383                Cardiomyopathy, Dilated    D002311
      34935   GO:0007204                       Cardiomyopathies    D009202
      46840   GO:0007283                             Hemorrhage    D006470
      10014   GO:0016477                    Disease Progression    D018450
      41069   GO:1903428                  Neoplasm Invasiveness    D009361
      35355   GO:0070374                    Acute Kidney Injury    D058186
      21291   GO:0060173                         Lung Neoplasms    D008175
      16777   GO:0006094 Chemical and Drug Induced Liver Injury    D056486
      31830   GO:0043065                               Ischemia    D007511
      20592   GO:0006954                Subarachnoid Hemorrhage    D013345
      29612   GO:0006809                               Fibrosis    D005355
      6410    GO:0006915                           Inflammation    D007249
      45185   GO:0006979                       Breast Neoplasms    D001943
      2016    GO:0002523              Bronchial Hyperreactivity    D016535
      44900   GO:0007584                   Liver Failure, Acute    D017114
      44293   GO:0097205                         Brain Injuries    D001930
      23718   GO:0007613                      Stomach Neoplasms    D013274
      37204   GO:0043123                                 Stroke    D020521
      12700   GO:0034599                         Brain Injuries    D001930
      49251   GO:0042311                      Anxiety Disorders    D001008
      24367   GO:0005739              Carcinoma, Hepatocellular    D006528
      3822    GO:0045429           Respiratory Hypersensitivity    D012130
      23373   GO:0007613                         Brain Ischemia    D002545
      24189   GO:0005739          Amphetamine-Related Disorders    D019969
      32884   GO:0008284                        Atherosclerosis    D050197
      23744   GO:0007613          Substance Withdrawal Syndrome    D013375
      19541   GO:0050665                 Motor Skills Disorders    D019957
      9424    GO:0030154                        Liver Cirrhosis    D008103
      39141   GO:0043410                            Weight Gain    D015430
      25304   GO:0005739                      Stomach Neoplasms    D013274
      771     GO:0006879                                 Asthma    D001249
      5207    GO:0001525                       Breast Neoplasms    D001943
      27798   GO:0010459                               Anorexia    D000855
      49210   GO:0042310                               Seizures    D012640
      42469   GO:0070212        Cell Transformation, Neoplastic    D002471
      27759   GO:2000252                            Hypothermia    D007035
      47481   GO:0008202                            Fatty Liver    D005234
      7883    GO:0030282                 Diabetes Complications    D048909
      28716   GO:0030512                       Breast Neoplasms    D001943
      1803    GO:0006954                               Necrosis    D009336
      27696   GO:0051481                     Nerve Degeneration    D009410
      313     GO:0006915                      Stomach Neoplasms    D013274
      17206   GO:0042593           Nervous System Malformations    D009421
      21864   GO:0006629                           Hypertension    D006973

