# extr_ctd fetches expression data

    Code
      dat <- extr_ctd(input_terms = input_terms, report_type = "cgixns", category = "chem",
        action_types = "expression")
    Message
      Sending request to CTD database...
      Request succeeded with status code: 200
    Code
      random_indices <- sample(1:nrow(dat), 100)
      dat[random_indices, ]
    Output
             x_input chemical_name chemical_id  cas_rn gene_symbol  gene_id
      24388  ethanol       Ethanol     D000431 64-17-5         CAT      847
      4050   50-00-0  Formaldehyde     D005557 50-00-0       TSEN2    80746
      11571  64-17-5       Ethanol     D000431 64-17-5        LY96    23643
      25173  ethanol       Ethanol     D000431 64-17-5      COMMD1   150684
      32618  ethanol       Ethanol     D000431 64-17-5        RAC1     5879
      13903  64-17-5       Ethanol     D000431 64-17-5        POMC     5443
      8229   64-17-5       Ethanol     D000431 64-17-5        DTX3   196403
      25305  ethanol       Ethanol     D000431 64-17-5      CRELD2    79174
      25061  ethanol       Ethanol     D000431 64-17-5     COL10A1     1300
      22306 methanal  Formaldehyde     D005557 50-00-0       ZFPM2    23414
      12204  64-17-5       Ethanol     D000431 64-17-5      MSP-45   173884
      7075   64-17-5       Ethanol     D000431 64-17-5     COL-172   180934
      26954  ethanol       Ethanol     D000431 64-17-5       FCRLA    84824
      31276  ethanol       Ethanol     D000431 64-17-5        OTX2     5015
      16044  64-17-5       Ethanol     D000431 64-17-5      SPRED2   200734
      6519   64-17-5       Ethanol     D000431 64-17-5        CCN2     1490
      33990  ethanol       Ethanol     D000431 64-17-5       SPAG9     9043
      26663  ethanol       Ethanol     D000431 64-17-5     F25F2.1   175589
      19242 methanal  Formaldehyde     D005557 50-00-0       FBXO9    26268
      21784 methanal  Formaldehyde     D005557 50-00-0     SYNCRIP    10492
      16910  64-17-5       Ethanol     D000431 64-17-5         TNF     7124
      21875 methanal  Formaldehyde     D005557 50-00-0        TFPI     7035
      25559  ethanol       Ethanol     D000431 64-17-5      CYP1B1     1545
      21323 methanal  Formaldehyde     D005557 50-00-0       RSAD2    91543
      13284  64-17-5       Ethanol     D000431 64-17-5       P2RY6     5031
      7976   64-17-5       Ethanol     D000431 64-17-5       DDX21     9188
      9392   64-17-5       Ethanol     D000431 64-17-5       GDPD2    54857
      3863   50-00-0  Formaldehyde     D005557 50-00-0       TFB1M    51106
      26876  ethanol       Ethanol     D000431 64-17-5        FASN     2194
      23148  ethanol       Ethanol     D000431 64-17-5       ALDH2      217
      13973  64-17-5       Ethanol     D000431 64-17-5       PPARA     5465
      31334  ethanol       Ethanol     D000431 64-17-5       PAM16    51025
      28278  ethanol       Ethanol     D000431 64-17-5        HRH1     3269
      858    50-00-0  Formaldehyde     D005557 50-00-0     CYP3A43    64816
      6763   64-17-5       Ethanol     D000431 64-17-5       CEP41    95681
      32480  ethanol       Ethanol     D000431 64-17-5       PTPRD     5789
      11367  64-17-5       Ethanol     D000431 64-17-5        LEPR     3953
      29747  ethanol       Ethanol     D000431 64-17-5      MBOAT2   129642
      13602  64-17-5       Ethanol     D000431 64-17-5       PFDN1     5201
      5051   64-17-5       Ethanol     D000431 64-17-5         AHR      196
      34474  ethanol       Ethanol     D000431 64-17-5       TARS1     6897
      33269  ethanol       Ethanol     D000431 64-17-5     SELENOP     6414
      16920  64-17-5       Ethanol     D000431 64-17-5         TNF     7124
      29660  ethanol       Ethanol     D000431 64-17-5      MAP2K1     5604
      29697  ethanol       Ethanol     D000431 64-17-5       MAPK3     5595
      11854  64-17-5       Ethanol     D000431 64-17-5      MFSD4A   148808
      4934   64-17-5       Ethanol     D000431 64-17-5      ADIPOQ     9370
      13940  64-17-5       Ethanol     D000431 64-17-5       PPARA     5465
      27075  ethanol       Ethanol     D000431 64-17-5        FMO5     2330
      21987 methanal  Formaldehyde     D005557 50-00-0      TNFSF4     7292
      22126 methanal  Formaldehyde     D005557 50-00-0     UGT2B17     7367
      25649  ethanol       Ethanol     D000431 64-17-5     CYP2C55    72082
      12535  64-17-5       Ethanol     D000431 64-17-5    NEUROD6B   114415
      32987  ethanol       Ethanol     D000431 64-17-5       RPP38    10557
      12399  64-17-5       Ethanol     D000431 64-17-5      NAP1L1     4673
      35891  ethanol       Ethanol     D000431 64-17-5      ZFAND6    54469
      25488  ethanol       Ethanol     D000431 64-17-5        CYBA     1535
      14330  64-17-5       Ethanol     D000431 64-17-5      PSMD14    10213
      17626  64-17-5       Ethanol     D000431 64-17-5       WDR43    23160
      33986  ethanol       Ethanol     D000431 64-17-5       SOX9B    60642
      8465   64-17-5       Ethanol     D000431 64-17-5        ENO1     2023
      6563   64-17-5       Ethanol     D000431 64-17-5        CCR2   729230
      20205 methanal  Formaldehyde     D005557 50-00-0      MAP3K7     6885
      22281 methanal  Formaldehyde     D005557 50-00-0       ZC3H4    23211
      10844  64-17-5       Ethanol     D000431 64-17-5       INHBB     3625
      33432  ethanol       Ethanol     D000431 64-17-5       SIAH2     6478
      33487  ethanol       Ethanol     D000431 64-17-5       SIRT1    23411
      3045   50-00-0  Formaldehyde     D005557 50-00-0       PRPS1     5631
      8615   64-17-5       Ethanol     D000431 64-17-5    F09C12.8   173881
      29670  ethanol       Ethanol     D000431 64-17-5     MAP3K19    80122
      9346   64-17-5       Ethanol     D000431 64-17-5        GBE1     2632
      13824  64-17-5       Ethanol     D000431 64-17-5        PLP1     5354
      8696   64-17-5       Ethanol     D000431 64-17-5     F40E3.5   171824
      7131   64-17-5       Ethanol     D000431 64-17-5      COL-41   181610
      32671  ethanol       Ethanol     D000431 64-17-5      RASSF2     9770
      20785 methanal  Formaldehyde     D005557 50-00-0       PALS2    51678
      10816  64-17-5       Ethanol     D000431 64-17-5         IL6     3569
      11114  64-17-5       Ethanol     D000431 64-17-5      KCNMB4    27345
      7146   64-17-5       Ethanol     D000431 64-17-5      COL-63   172607
      11096  64-17-5       Ethanol     D000431 64-17-5       KCNH1     3756
      12597  64-17-5       Ethanol     D000431 64-17-5      NFE2L2     4780
      11878  64-17-5       Ethanol     D000431 64-17-5    MID1IP1A    30600
      34558  ethanol       Ethanol     D000431 64-17-5        TERT     7015
      24450  ethanol       Ethanol     D000431 64-17-5     CCDC85A   114800
      9086   64-17-5       Ethanol     D000431 64-17-5         FOS     2353
      10148  64-17-5       Ethanol     D000431 64-17-5       HMGCR     3156
      14504  64-17-5       Ethanol     D000431 64-17-5       PUF-3   178320
      8613   64-17-5       Ethanol     D000431 64-17-5    F08G5.14 13198592
      21432 methanal  Formaldehyde     D005557 50-00-0    SERPINB5     5268
      7793   64-17-5       Ethanol     D000431 64-17-5     CYP4A10    13117
      6217   64-17-5       Ethanol     D000431 64-17-5      CALR3B   321315
      30249  ethanol       Ethanol     D000431 64-17-5         MT1    17748
      26244  ethanol       Ethanol     D000431 64-17-5      DUSP10    11221
      12669  64-17-5       Ethanol     D000431 64-17-5        NFIC     4782
      32441  ethanol       Ethanol     D000431 64-17-5        PTMA     5757
      23193  ethanol       Ethanol     D000431 64-17-5    ALDOART1   353204
      20480 methanal  Formaldehyde     D005557 50-00-0       MSL-1    35121
      36002  ethanol       Ethanol     D000431 64-17-5      ZNF425   155054
      23836  ethanol       Ethanol     D000431 64-17-5        BDNF      627
      10271  64-17-5       Ethanol     D000431 64-17-5    HS3ST1L2   562344
                          organism organism_id
      24388           Mus musculus       10090
      4050            Homo sapiens        9606
      11571      Rattus norvegicus       10116
      25173           Mus musculus       10090
      32618      Rattus norvegicus       10116
      13903      Rattus norvegicus       10116
      8229            Mus musculus       10090
      25305            Danio rerio        7955
      25061      Rattus norvegicus       10116
      22306           Homo sapiens        9606
      12204 Caenorhabditis elegans        6239
      7075  Caenorhabditis elegans        6239
      26954           Homo sapiens        9606
      31276           Homo sapiens        9606
      16044           Mus musculus       10090
      6519            Mus musculus       10090
      33990           Mus musculus       10090
      26663 Caenorhabditis elegans        6239
      19242           Homo sapiens        9606
      21784           Homo sapiens        9606
      16910           Mus musculus       10090
      21875           Homo sapiens        9606
      25559           Mus musculus       10090
      21323           Homo sapiens        9606
      13284           Mus musculus       10090
      7976             Danio rerio        7955
      9392            Mus musculus       10090
      3863            Homo sapiens        9606
      26876           Homo sapiens        9606
      23148           Homo sapiens        9606
      13973           Mus musculus       10090
      31334           Homo sapiens        9606
      28278           Mus musculus       10090
      858             Homo sapiens        9606
      6763            Mus musculus       10090
      32480           Mus musculus       10090
      11367           Mus musculus       10090
      29747           Mus musculus       10090
      13602           Mus musculus       10090
      5051            Mus musculus       10090
      34474            Danio rerio        7955
      33269           Mus musculus       10090
      16920           Mus musculus       10090
      29660      Rattus norvegicus       10116
      29697           Homo sapiens        9606
      11854           Mus musculus       10090
      4934       Rattus norvegicus       10116
      13940           Homo sapiens        9606
      27075           Mus musculus       10090
      21987           Homo sapiens        9606
      22126           Homo sapiens        9606
      25649           Mus musculus       10090
      12535            Danio rerio        7955
      32987           Mus musculus       10090
      12399            Danio rerio        7955
      35891           Mus musculus       10090
      25488           Mus musculus       10090
      14330           Mus musculus       10090
      17626            Danio rerio        7955
      33986            Danio rerio        7955
      8465       Rattus norvegicus       10116
      6563            Mus musculus       10090
      20205           Homo sapiens        9606
      22281           Homo sapiens        9606
      10844           Mus musculus       10090
      33432           Mus musculus       10090
      33487      Rattus norvegicus       10116
      3045            Homo sapiens        9606
      8615  Caenorhabditis elegans        6239
      29670           Mus musculus       10090
      9346            Homo sapiens        9606
      13824           Homo sapiens        9606
      8696  Caenorhabditis elegans        6239
      7131  Caenorhabditis elegans        6239
      32671           Mus musculus       10090
      20785           Homo sapiens        9606
      10816      Rattus norvegicus       10116
      11114           Mus musculus       10090
      7146  Caenorhabditis elegans        6239
      11096           Mus musculus       10090
      12597           Homo sapiens        9606
      11878            Danio rerio        7955
      34558           Homo sapiens        9606
      24450           Mus musculus       10090
      9086       Rattus norvegicus       10116
      10148      Rattus norvegicus       10116
      14504 Caenorhabditis elegans        6239
      8613  Caenorhabditis elegans        6239
      21432           Homo sapiens        9606
      7793            Mus musculus       10090
      6217             Danio rerio        7955
      30249           Mus musculus       10090
      26244           Homo sapiens        9606
      12669           Mus musculus       10090
      32441      Rattus norvegicus       10116
      23193           Mus musculus       10090
      20480           Homo sapiens        9606
      36002           Homo sapiens        9606
      23836           Mus musculus       10090
      10271            Danio rerio        7955
                                                                                                                                                                                                                             interaction
      24388                                                                                                                                                                       Ethanol results in decreased expression of CAT protein
      4050                                                                                                                                                                    Formaldehyde results in decreased expression of TSEN2 mRNA
      11571                                                                                                                                                                         Ethanol results in increased expression of LY96 mRNA
      25173                                                                                                                                                                                Ethanol affects the expression of COMMD1 mRNA
      32618                                                                                                                                                                      Ethanol results in decreased expression of RAC1 protein
      13903                                                                                                                                             [Ethanol co-treated with Cyanamide] results in decreased expression of POMC mRNA
      8229                                                                                                                                                       Ethanol affects the expression of and affects the splicing of DTX3 mRNA
      25305                                                                                                                                                                       Ethanol results in increased expression of CRELD2 mRNA
      25061                                                                                                                                                                   Ethanol results in increased expression of COL10A1 protein
      22306                                                                                                                                                                   Formaldehyde results in decreased expression of ZFPM2 mRNA
      12204                                                                                                                                                                       Ethanol results in decreased expression of MSP-45 mRNA
      7075                                                                                                                                                                       Ethanol results in increased expression of COL-172 mRNA
      26954                                                                                                                                                                        Ethanol results in decreased expression of FCRLA mRNA
      31276                                                                                                                                            [Folic Acid co-treated with Ethanol] results in decreased expression of OTX2 mRNA
      16044                                                                                                                                                                                Ethanol affects the expression of SPRED2 mRNA
      6519                                                                                                                                       Fomepizole inhibits the reaction [Ethanol results in increased expression of CCN2 mRNA]
      33990                                                                                                                                                     Ethanol affects the expression of and affects the splicing of SPAG9 mRNA
      26663                                                                                                                                                                      Ethanol results in decreased expression of F25F2.1 mRNA
      19242                                                                                                                                                                   Formaldehyde results in decreased expression of FBXO9 mRNA
      21784                                                                                                                                                                 Formaldehyde results in decreased expression of SYNCRIP mRNA
      16910                                                                                                                  1,3,5,6-tetrahydroxyxanthone inhibits the reaction [Ethanol results in increased expression of TNF protein]
      21875                                                                                                                                                                    Formaldehyde results in increased expression of TFPI mRNA
      25559                                                                                                                                Ethanol inhibits the reaction [Benzo(a)pyrene results in increased expression of CYP1B1 mRNA]
      21323                                                                                                                                                                   Formaldehyde results in decreased expression of RSAD2 mRNA
      13284                                                                                                                                 [Carbon Tetrachloride co-treated with Ethanol] results in increased expression of P2RY6 mRNA
      7976                                                                                                                                                                         Ethanol results in decreased expression of DDX21 mRNA
      9392                                                                                                                                                                         Ethanol results in increased expression of GDPD2 mRNA
      3863                                                                                                                                                                    Formaldehyde results in decreased expression of TFB1M mRNA
      26876                                                                                                                                       artenimol inhibits the reaction [Ethanol results in increased expression of FASN mRNA]
      23148                                                                                                                                ALDH2 protein inhibits the reaction [Ethanol results in increased expression of XIAP protein]
      13973                                                                                                                                                                     Ethanol results in increased expression of PPARA protein
      31334                             [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of PAM16 mRNA
      28278                                                                                                                                  [Carbon Tetrachloride co-treated with Ethanol] results in increased expression of HRH1 mRNA
      858                                                                                                                                                                   Formaldehyde results in decreased expression of CYP3A43 mRNA
      6763                                                                                                                                                                         Ethanol results in decreased expression of CEP41 mRNA
      32480                                                                                                                                                                        Ethanol results in decreased expression of PTPRD mRNA
      11367                                        m-trifluoromethyl-diphenyl diselenide inhibits the reaction [[lard co-treated with Ethanol co-treated with High Fructose Corn Syrup] results in decreased expression of LEPR protein]
      29747                                                                                                                                                                       Ethanol results in increased expression of MBOAT2 mRNA
      13602                                                                                                                                                                                 Ethanol affects the expression of PFDN1 mRNA
      5051                                                                                                                                                                        Ethanol results in decreased expression of AHR protein
      34474                                                                                                                                                                        Ethanol results in increased expression of TARS1 mRNA
      33269                                                                                                                                                                      Ethanol results in decreased expression of SELENOP mRNA
      16920                                                                                                                                   Cannabidiol inhibits the reaction [Ethanol results in increased expression of TNF protein]
      29660                                                                                                                                                                    Ethanol results in increased expression of MAP2K1 protein
      29697                                                                                                                                                                        Ethanol results in decreased expression of MAPK3 mRNA
      11854                                                                                                                                                                                Ethanol affects the expression of MFSD4A mRNA
      4934                                                                                                                                ADIPOQ protein inhibits the reaction [Ethanol results in decreased expression of ATG5 protein]
      13940                                                                                                                                  CYP2E1 protein affects the reaction [Ethanol results in decreased expression of PPARA mRNA]
      27075                                                                                                                                                                         Ethanol results in increased expression of FMO5 mRNA
      21987                                                                                                                                                                  Formaldehyde results in increased expression of TNFSF4 mRNA
      22126                                                                                                                                                                 Formaldehyde results in increased expression of UGT2B17 mRNA
      25649                                                                                                                                                                      Ethanol results in increased expression of CYP2C55 mRNA
      12535                                                                                                                                                                     Ethanol results in decreased expression of NEUROD6B mRNA
      32987                                                                                                                                                                                 Ethanol affects the expression of RPP38 mRNA
      12399                                                                                                                                                                                Ethanol affects the expression of NAP1L1 mRNA
      35891                                                                                                                                                                       Ethanol results in increased expression of ZFAND6 mRNA
      25488                                                                                                     3-(4-methylphenylsulfonyl)-2-propenenitrile inhibits the reaction [Ethanol results in increased expression of CYBA mRNA]
      14330                                                                                                                                                                       Ethanol results in increased expression of PSMD14 mRNA
      17626                                                                                                                                                                        Ethanol results in decreased expression of WDR43 mRNA
      33986                                                                                                                                       [Ethanol co-treated with Benzo(a)pyrene] results in decreased expression of SOX9B mRNA
      8465                                                                                                                                                                          Ethanol results in increased expression of ENO1 mRNA
      6563                                                                        N-(oxo-5,6-dihydrophenanthridin-2-yl)-N,N-dimethylacetamide hydrochloride inhibits the reaction [Ethanol results in increased expression of CCR2 mRNA]
      20205                                                                                                                                                                  Formaldehyde results in decreased expression of MAP3K7 mRNA
      22281                                                                                                                                                                   Formaldehyde results in decreased expression of ZC3H4 mRNA
      10844                                                                                                                                                                                 Ethanol affects the expression of INHBB mRNA
      33432                                                                                                                                                                        Ethanol results in increased expression of SIAH2 mRNA
      33487                                                                                                  Resveratrol promotes the reaction [[Ethanol co-treated with Aflatoxin B1] results in increased expression of SIRT1 protein]
      3045                                                                                                                                                                    Formaldehyde results in decreased expression of PRPS1 mRNA
      8615                                                                                                                                                                      Ethanol results in decreased expression of F09C12.8 mRNA
      29670                                                                                                                                                                               Ethanol affects the expression of MAP3K19 mRNA
      9346                                                                                                                                             [Ethanol co-treated with Folic Acid] results in increased expression of GBE1 mRNA
      13824                                                                                                                                                                         Ethanol results in increased expression of PLP1 mRNA
      8696                                                                                                                                                                       Ethanol results in decreased expression of F40E3.5 mRNA
      7131                                                                                                                                                                        Ethanol results in increased expression of COL-41 mRNA
      32671                                                                                                                                                                       Ethanol results in increased expression of RASSF2 mRNA
      20785                                                                                                                                                                   Formaldehyde results in decreased expression of PALS2 mRNA
      10816                                                                                                                                Plant Extracts inhibits the reaction [Ethanol results in increased expression of IL6 protein]
      11114                                                                                                                                                                                Ethanol affects the expression of KCNMB4 mRNA
      7146                                                                                                                                                                        Ethanol results in decreased expression of COL-63 mRNA
      11096                                                                                                                                                                                 Ethanol affects the expression of KCNH1 mRNA
      12597                              [2-methyl-2H-pyrazole-3-carboxylic acid (2-methyl-4-o-tolylazophenyl)amide inhibits the reaction [Ethanol co-treated with Benzo(a)pyrene]] which results in increased expression of NFE2L2 mRNA
      11878                                                                                                                                                                     Ethanol results in increased expression of MID1IP1A mRNA
      34558                                                                                                                                NFATC4 protein affects the reaction [Ethanol results in decreased expression of TERT protein]
      24450                                                                                                                                                                               Ethanol affects the expression of CCDC85A mRNA
      9086                                                                                                                                        Ethanol promotes the reaction [Cocaine results in increased expression of FOS protein]
      10148                                                                                                                                                                                 Ethanol affects the expression of HMGCR mRNA
      14504                                                                                                                                                                        Ethanol results in decreased expression of PUF-3 mRNA
      8613                                                                                                                                                                      Ethanol results in increased expression of F08G5.14 mRNA
      21432                                                                                                                                                                Formaldehyde results in decreased expression of SERPINB5 mRNA
      7793  [Betaine co-treated with Choline co-treated with Folic Acid co-treated with Methionine co-treated with Vitamin B 12 co-treated with Zinc Sulfate co-treated with Ethanol] results in increased expression of CYP4A10 protein
      6217                                                                                                                                                                        Ethanol results in increased expression of CALR3B mRNA
      30249                                                                                                                                                                       Ethanol results in decreased expression of MT1 protein
      26244                                                                                                                                          [Ethanol co-treated with Folic Acid] results in increased expression of DUSP10 mRNA
      12669                                                                                                                                                                         Ethanol results in increased expression of NFIC mRNA
      32441                                                                                                                                                                         Ethanol results in decreased expression of PTMA mRNA
      23193                                                                                                                                                                     Ethanol results in increased expression of ALDOART1 mRNA
      20480                                                                                                                                                                   Formaldehyde results in decreased expression of MSL-1 mRNA
      36002                                                                                                                                                                       Ethanol results in increased expression of ZNF425 mRNA
      23836                                        m-trifluoromethyl-diphenyl diselenide inhibits the reaction [[Ethanol co-treated with High Fructose Corn Syrup co-treated with lard] results in decreased expression of BDNF protein]
      10271                                                                                                                                                                     Ethanol results in increased expression of HS3ST1L2 mRNA
                                                     interaction_actions
      24388                                         decreases^expression
      4050                                          decreases^expression
      11571                                         increases^expression
      25173                                           affects^expression
      32618                                         decreases^expression
      13903                     affects^cotreatment|decreases^expression
      8229                           affects^expression|affects^splicing
      25305                                         increases^expression
      25061                                         increases^expression
      22306                                         decreases^expression
      12204                                         decreases^expression
      7075                                          increases^expression
      26954                                         decreases^expression
      31276                     affects^cotreatment|decreases^expression
      16044                                           affects^expression
      6519                       decreases^reaction|increases^expression
      33990                          affects^expression|affects^splicing
      26663                                         decreases^expression
      19242                                         decreases^expression
      21784                                         decreases^expression
      16910                      decreases^reaction|increases^expression
      21875                                         increases^expression
      25559                      decreases^reaction|increases^expression
      21323                                         decreases^expression
      13284                     affects^cotreatment|increases^expression
      7976                                          decreases^expression
      9392                                          increases^expression
      3863                                          decreases^expression
      26876                      decreases^reaction|increases^expression
      23148                      decreases^reaction|increases^expression
      13973                                         increases^expression
      31334 affects^cotreatment|increases^abundance|increases^expression
      28278                     affects^cotreatment|increases^expression
      858                                           decreases^expression
      6763                                          decreases^expression
      32480                                         decreases^expression
      11367  affects^cotreatment|decreases^expression|decreases^reaction
      29747                                         increases^expression
      13602                                           affects^expression
      5051                                          decreases^expression
      34474                                         increases^expression
      33269                                         decreases^expression
      16920                      decreases^reaction|increases^expression
      29660                                         increases^expression
      29697                                         decreases^expression
      11854                                           affects^expression
      4934                       decreases^expression|decreases^reaction
      13940                        affects^reaction|decreases^expression
      27075                                         increases^expression
      21987                                         increases^expression
      22126                                         increases^expression
      25649                                         increases^expression
      12535                                         decreases^expression
      32987                                           affects^expression
      12399                                           affects^expression
      35891                                         increases^expression
      25488                      decreases^reaction|increases^expression
      14330                                         increases^expression
      17626                                         decreases^expression
      33986                     affects^cotreatment|decreases^expression
      8465                                          increases^expression
      6563                       decreases^reaction|increases^expression
      20205                                         decreases^expression
      22281                                         decreases^expression
      10844                                           affects^expression
      33432                                         increases^expression
      33487  affects^cotreatment|increases^expression|increases^reaction
      3045                                          decreases^expression
      8615                                          decreases^expression
      29670                                           affects^expression
      9346                      affects^cotreatment|increases^expression
      13824                                         increases^expression
      8696                                          decreases^expression
      7131                                          increases^expression
      32671                                         increases^expression
      20785                                         decreases^expression
      10816                      decreases^reaction|increases^expression
      11114                                           affects^expression
      7146                                          decreases^expression
      11096                                           affects^expression
      12597  affects^cotreatment|decreases^reaction|increases^expression
      11878                                         increases^expression
      34558                        affects^reaction|decreases^expression
      24450                                           affects^expression
      9086                       increases^expression|increases^reaction
      10148                                           affects^expression
      14504                                         decreases^expression
      8613                                          increases^expression
      21432                                         decreases^expression
      7793                      affects^cotreatment|increases^expression
      6217                                          increases^expression
      30249                                         decreases^expression
      26244                     affects^cotreatment|increases^expression
      12669                                         increases^expression
      32441                                         decreases^expression
      23193                                         increases^expression
      20480                                         decreases^expression
      36002                                         increases^expression
      23836  affects^cotreatment|decreases^expression|decreases^reaction
      10271                                         increases^expression
                          pub_med_i_ds
      24388 22554647|24065054|37271273
      4050                    23649840
      11571                   28852734
      25173                   30319688
      32618                   20829428
      13903                   16375214
      8229                    30319688
      25305                   29361514
      25061                   36174738
      22306                   20655997
      12204                   23381935
      7075                    23381935
      26954                   31059573
      31276                   25566775
      16044                   30319688
      6519                    19280452
      33990                   30319688
      26663                   23381935
      19242                   20655997
      21784                   23649840
      16910                   27545833
      21875                   23649840
      25559                   22486318
      21323                   28937961
      13284                   30517762
      7976                    29361514
      9392                    30319688
      3863                    23649840
      26876                   27939985
      23148                   19429258
      13973 25162931|28962519|34116071
      31334                   29432896
      28278                   30517762
      858                     27905399
      6763                    34492310
      32480                   29018328
      11367                   37023972
      29747                   30319688
      13602                   30319688
      5051                    22486318
      34474                   29361514
      33269                   18992320
      16920                   28935932
      29660                   23702218
      29697                   11566570
      11854                   30319688
      4934                    24582693
      13940                   28385499
      27075                   19167417
      21987                   23649840
      22126                   23649840
      25649                   19167417
      12535                   22253472
      32987                   30319688
      12399                   24355176
      35891                   30319688
      25488                   23978445
      14330                   30319688
      17626                   29361514
      33986                   35412187
      8465                    15353170
      6563                    27984176
      20205                   23649840
      22281                   20655997
      10844                   30319688
      33432                   30319688
      33487                   32894639
      3045                    23649840
      8615                    23381935
      29670                   30319688
      9346                    23378141
      13824                   28986285
      8696                    23381935
      7131                    23381935
      32671                   30319688
      20785                   23649840
      10816                   22525864
      11114                   30319688
      7146                    23381935
      11096                   30319688
      12597                   35412187
      11878                   29361514
      34558                   34192554
      24450                   30319688
      9086                    14741756
      10148          31075344|32535229
      14504                   23381935
      8613                    23381935
      21432                   28937961
      7793                    20118189
      6217                    29361514
      30249                   15920153
      26244                   23378141
      12669                   30319688
      32441                   17920746
      23193                   30319688
      20480                   20655997
      36002                   28986285
      23836                   37054933
      10271                   29361514

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
      11564 ethanol      Ethanol     D000431     HPX    3263
      25186 ethanol      Ethanol     D000431  CYP2E1    1571
      17649 ethanol      Ethanol     D000431    INS1   16333
      11260 ethanol      Ethanol     D000431    SPP1    6696
      47541 ethanol      Ethanol     D000431 CYP24A1    1591
      4182  50-00-0 Formaldehyde     D005557   DDIT3    1649
      27416 ethanol      Ethanol     D000431 PPP2R5C    5527
      18540 ethanol      Ethanol     D000431    FGF8    2253
      5390  ethanol      Ethanol     D000431 ANGPTL3   27329
      30929 ethanol      Ethanol     D000431  TGFBR2    7048
      21842 ethanol      Ethanol     D000431   JAZF1  221895
      18144 ethanol      Ethanol     D000431   PTGES    9536
      46058 ethanol      Ethanol     D000431  CTNNB1    1499
      30407 ethanol      Ethanol     D000431    SPP1    6696
      36843 ethanol      Ethanol     D000431   S100B    6285
      15104 ethanol      Ethanol     D000431    LEPR    3953
      27540 ethanol      Ethanol     D000431     NGF    4803
      32331 ethanol      Ethanol     D000431    AGER     177
      36980 ethanol      Ethanol     D000431  ADIPOQ    9370
      15782 ethanol      Ethanol     D000431    IL18    3606
      9413  ethanol      Ethanol     D000431  CTNNB1    1499
      33230 ethanol      Ethanol     D000431     SRC    6714
      22827 ethanol      Ethanol     D000431    APOE     348
      20433 ethanol      Ethanol     D000431   TGFB1    7040
      9690  ethanol      Ethanol     D000431    BCL2     596
      12129 ethanol      Ethanol     D000431     ATM     472
      47428 ethanol      Ethanol     D000431  CYP2E1    1571
      23423 ethanol      Ethanol     D000431   ITGB1    3688
      31184 ethanol      Ethanol     D000431    MMP9    4318
      20189 ethanol      Ethanol     D000431   MECP2    4204
      33734 ethanol      Ethanol     D000431     INS    3630
      9383  ethanol      Ethanol     D000431   SORT1    6272
      26593 ethanol      Ethanol     D000431   TGFB1    7040
      4749  ethanol      Ethanol     D000431  CXCL12    6387
      35250 ethanol      Ethanol     D000431    CD36     948
      3418  50-00-0 Formaldehyde     D005557   MIR21  406991
      19268 ethanol      Ethanol     D000431   GSK3B    2932
      39961 ethanol      Ethanol     D000431     IL6    3569
      27729 ethanol      Ethanol     D000431   PPARG    5468
      4590  ethanol      Ethanol     D000431    IGF1    3479
      29001 ethanol      Ethanol     D000431   PPARG    5468
      11158 ethanol      Ethanol     D000431    NOS2    4843
      43112 ethanol      Ethanol     D000431     REN    5972
      4257  50-00-0 Formaldehyde     D005557    SOD1    6647
      31156 ethanol      Ethanol     D000431   VEGFA    7422
      28932 ethanol      Ethanol     D000431   HDAC1    3065
      10688 ethanol      Ethanol     D000431    BCL2     596
      45237 ethanol      Ethanol     D000431    GCLM    2730
      26028 ethanol      Ethanol     D000431    MTOR    2475
      15737 ethanol      Ethanol     D000431    EDN1    1906
      28573 ethanol      Ethanol     D000431     ID1    3397
      45347 ethanol      Ethanol     D000431     CAT     847
      10185 ethanol      Ethanol     D000431    CCN2    1490
      32916 ethanol      Ethanol     D000431    JAK2    3717
      121   50-00-0 Formaldehyde     D005557   PARP1     142
      8790  ethanol      Ethanol     D000431    BMP4     652
      10770 ethanol      Ethanol     D000431   FGFR2    2263
      30119 ethanol      Ethanol     D000431  COL1A1    1277
      33883 ethanol      Ethanol     D000431   PTGS2    5743
      3616  50-00-0 Formaldehyde     D005557     TNF    7124
      45107 ethanol      Ethanol     D000431    SOD2    6648
      43473 ethanol      Ethanol     D000431    BAP1    8314
      34905 ethanol      Ethanol     D000431     TNF    7124
      30613 ethanol      Ethanol     D000431    SOD2    6648
      47695 ethanol      Ethanol     D000431    EDN1    1906
      12284 ethanol      Ethanol     D000431   PTGS1    5742
      35520 ethanol      Ethanol     D000431     IL6    3569
      41806 ethanol      Ethanol     D000431    CCL3    6348
      46464 ethanol      Ethanol     D000431    DRD1    1812
      8411  ethanol      Ethanol     D000431    ALPL     249
      49722 ethanol      Ethanol     D000431     TNF    7124
      1926  50-00-0 Formaldehyde     D005557    TLR4    7099
      18197 ethanol      Ethanol     D000431    FKRP   79147
      2833  50-00-0 Formaldehyde     D005557    NQO1    1728
      22078 ethanol      Ethanol     D000431   ENPP2    5168
      40749 ethanol      Ethanol     D000431    EDN1    1906
      21545 ethanol      Ethanol     D000431   PPARG    5468
      7560  ethanol      Ethanol     D000431 SLC10A7   84068
      24857 ethanol      Ethanol     D000431   NR3C1    2908
      48020 ethanol      Ethanol     D000431 SIGMAR1   10280
      37498 ethanol      Ethanol     D000431     LEP    3952
      25068 ethanol      Ethanol     D000431    TERT    7015
      3255  50-00-0 Formaldehyde     D005557   GSK3B    2932
      8706  ethanol      Ethanol     D000431   SPARC    6678
      47932 ethanol      Ethanol     D000431    NOX4   50507
      45626 ethanol      Ethanol     D000431   PTGS2    5743
      42213 ethanol      Ethanol     D000431     AGT     183
      27417 ethanol      Ethanol     D000431     TNF    7124
      6186  ethanol      Ethanol     D000431    CD40     958
      34427 ethanol      Ethanol     D000431   ERBB2    2064
      26757 ethanol      Ethanol     D000431   PTGS2    5743
      48321 ethanol      Ethanol     D000431    GPX1    2876
      2312  50-00-0 Formaldehyde     D005557   MYOCD   93649
      27219 ethanol      Ethanol     D000431    FGF2    2247
      34607 ethanol      Ethanol     D000431   STK11    6794
      46448 ethanol      Ethanol     D000431   MECP2    4204
      15923 ethanol      Ethanol     D000431   TRAF4    9618
      42726 ethanol      Ethanol     D000431     MET    4233
      42504 ethanol      Ethanol     D000431     AHR     196
      32445 ethanol      Ethanol     D000431   SIRT1   23411
                                                                                    phenotype
      11564                                                     cellular iron ion homeostasis
      25186                                                                     mitochondrion
      17649                                                         glucose metabolic process
      11260                                                  cellular calcium ion homeostasis
      47541                                                         steroid metabolic process
      4182                                           response to endoplasmic reticulum stress
      27416                              negative regulation of cell population proliferation
      18540                                                                 heart development
      5390                                                                       angiogenesis
      30929                                               positive regulation of angiogenesis
      21842                                                           lipid metabolic process
      18144                                                  glutathione transferase activity
      46058                                                       skeletal system development
      30407                                                        osteoblast differentiation
      36843                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      15104                                                     cytochrome-c oxidase activity
      27540                              negative regulation of cell population proliferation
      32331                                          positive regulation of apoptotic process
      36980                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      15782                                                     establishment of skin barrier
      9413                                                               cell differentiation
      33230                              positive regulation of cell population proliferation
      22827                                                   locomotory exploration behavior
      20433                                                             inflammatory response
      9690                                                                        cell growth
      12129                                          cellular response to DNA damage stimulus
      47428                                                         steroid metabolic process
      23423                                                maintenance of blood-brain barrier
      31184                                               positive regulation of angiogenesis
      20189                                                             inflammatory response
      33734                              positive regulation of cell population proliferation
      9383                                                               cell differentiation
      26593                                         negative regulation of cell-cell adhesion
      4749                                                          adult locomotory behavior
      35250                        positive regulation of cytosolic calcium ion concentration
      3418       positive regulation of cytokine production involved in inflammatory response
      19268                                                  hepatic stellate cell activation
      39961                          positive regulation of nitric oxide biosynthetic process
      27729                              negative regulation of cell population proliferation
      4590                                            activation of protein kinase B activity
      29001 negative regulation of transforming growth factor beta receptor signaling pathway
      11158                                                            cell redox homeostasis
      43112                                                      regulation of blood pressure
      4257                                                      superoxide dismutase activity
      31156                                               positive regulation of angiogenesis
      28932 negative regulation of transforming growth factor beta receptor signaling pathway
      10688                                                     cell population proliferation
      45237                                                      response to oxidative stress
      26028                                                     multicellular organism growth
      15737                                                        epithelial fluid transport
      28573                                               negative regulation of neurogenesis
      45347                                                      response to oxidative stress
      10185                                                                    cell migration
      32916                                       positive regulation of cell differentiation
      121                                                                   apoptotic process
      8790                                                              cartilage development
      10770                                                     cell population proliferation
      30119                                                                      ossification
      33883                              positive regulation of cell population proliferation
      3616                                     positive regulation of NIK/NF-kappaB signaling
      45107                                                      response to oxidative stress
      43473               regulation of cytokine production involved in inflammatory response
      34905      positive regulation of cytokine production involved in inflammatory response
      30613                                                               paracrine signaling
      47695                                                       superoxide anion generation
      12284                                      cellular response to organic cyclic compound
      35520                                      positive regulation of ERK1 and ERK2 cascade
      41806                           positive regulation of tumor necrosis factor production
      46464                                                                   social behavior
      8411                                                            calcium ion homeostasis
      49722                                                                      vasodilation
      1926                                                          interleukin-10 production
      18197                                                 glycoprotein biosynthetic process
      2833                                                  nitric oxide biosynthetic process
      22078                                                           lipid metabolic process
      40749                            positive regulation of protein localization to nucleus
      21545                                                                 lipid homeostasis
      7560                                                                   bone development
      24857                                                                     mitochondrion
      48020                                                                 swimming behavior
      37498                                   positive regulation of interleukin-6 production
      25068                                                                     mitochondrion
      3255                                           positive regulation of apoptotic process
      8706                                                              cartilage development
      47932                                                      superoxide metabolic process
      45626                                                      response to oxidative stress
      42213                                                       protein import into nucleus
      27417                              negative regulation of cell population proliferation
      6186                                                                  apoptotic process
      34427                              positive regulation of cell population proliferation
      26757                              negative regulation of cell population proliferation
      48321                                                           temperature homeostasis
      2312                               negative regulation of cell population proliferation
      27219                              negative regulation of cell population proliferation
      34607                                        positive regulation of cellular senescence
      46448                                                                   social behavior
      15923                                                                   eye development
      42726                                         reactive oxygen species metabolic process
      42504                                      reactive oxygen species biosynthetic process
      32445                                          positive regulation of apoptotic process
            phenotype_id                                         disease disease_id
      11564   GO:0006879                             Acute Kidney Injury    D058186
      25186   GO:0005739                   Liver Neoplasms, Experimental    D008114
      17649   GO:0006006                                        Necrosis    D009336
      11260   GO:0006874                             Acute Kidney Injury    D058186
      47541   GO:0008202                                  Lung Neoplasms    D008175
      4182    GO:0034976                                           Ulcer    D014456
      27416   GO:0008285               Micronuclei, Chromosome-Defective    D048629
      18540   GO:0007507                                    Cleft Palate    D002972
      5390    GO:0001525                   Liver Cirrhosis, Experimental    D008106
      30929   GO:0045766                               Eye Abnormalities    D005124
      21842   GO:0006629                       Diabetes Mellitus, Type 2    D003924
      18144   GO:0004364                                  Hydronephrosis    D006869
      46058   GO:0001501          Chemical and Drug Induced Liver Injury    D056486
      30407   GO:0001649                                  Heart Diseases    D006331
      36843   GO:0043123                             Cerebral Hemorrhage    D002543
      15104   GO:0004129                                   Hyperglycemia    D006943
      27540   GO:0008285                              Nerve Degeneration    D009410
      32331   GO:0043065                                  Osteoarthritis    D010003
      36980   GO:0043123                                    Hypertension    D006973
      15782   GO:0061436                                  Brain Ischemia    D002545
      9413    GO:0030154                                  Lung Neoplasms    D008175
      33230   GO:0008284                                    Cardiomegaly    D006332
      22827   GO:0035641                  Neurobehavioral Manifestations    D019954
      20433   GO:0006954                                  Lung Neoplasms    D008175
      9690    GO:0016049                                Memory Disorders    D008569
      12129   GO:0006974                            Pancreatic Neoplasms    D010190
      47428   GO:0008202          Chemical and Drug Induced Liver Injury    D056486
      23423   GO:0035633                                Cardiomyopathies    D009202
      31184   GO:0045766                            Pancreatic Neoplasms    D010190
      20189   GO:0006954                                    Hyperalgesia    D006930
      33734   GO:0008284                            Hypertriglyceridemia    D015228
      9383    GO:0030154                                  Liver Diseases    D008107
      26593   GO:0022408               Non-alcoholic Fatty Liver Disease    D065626
      4749    GO:0008344                                  HIV Infections    D015658
      35250   GO:0007204                             Myocardial Ischemia    D017202
      3418    GO:1900017                                    Inflammation    D007249
      19268   GO:0035733                 Cell Transformation, Neoplastic    D002471
      39961   GO:0045429                       Diabetes Mellitus, Type 2    D003924
      27729   GO:0008285                               Stomach Neoplasms    D013274
      4590    GO:0032148 Drug-Related Side Effects and Adverse Reactions    D064420
      29001   GO:0030512                               Stomach Neoplasms    D013274
      11158   GO:0045454                                     Hypothermia    D007035
      43112   GO:0008217                   Hypertrophy, Left Ventricular    D017379
      4257    GO:0004784          Chemical and Drug Induced Liver Injury    D056486
      31156   GO:0045766                             Neoplasm Metastasis    D009362
      28932   GO:0030512                                  Heart Diseases    D006331
      10688   GO:0008283                           Learning Disabilities    D007859
      45237   GO:0006979          Chemical and Drug Induced Liver Injury    D056486
      26028   GO:0035264                                    Hepatomegaly    D006529
      15737   GO:0042045                             Acute Kidney Injury    D058186
      28573   GO:0050768                             Neoplasm Metastasis    D009362
      45347   GO:0006979                                     Fatty Liver    D005234
      10185   GO:0016477               Prenatal Exposure Delayed Effects    D011297
      32916   GO:0045597                             Myocardial Ischemia    D017202
      121     GO:0006915                                Cardiomyopathies    D009202
      8790    GO:0051216                                  Osteoarthritis    D010003
      10770   GO:0008283                                  Lung Neoplasms    D008175
      30119   GO:0001503                                        Fibrosis    D005355
      33883   GO:0008284                   Liver Cirrhosis, Experimental    D008106
      3616    GO:1901224                                  Lung Neoplasms    D008175
      45107   GO:0006979                                 Atherosclerosis    D050197
      43473   GO:1900015                                Breast Neoplasms    D001943
      34905   GO:1900017                           Myocardial Infarction    D009203
      30613   GO:0038001                                     Fatty Liver    D005234
      47695   GO:0042554                             Myocardial Ischemia    D017202
      12284   GO:0071407                                Breast Neoplasms    D001943
      35520   GO:0070374                                  Brain Injuries    D001930
      41806   GO:0032760                           Neoplasm Invasiveness    D009361
      46464   GO:0035176                                     Hypotension    D007022
      8411    GO:0055074                        Bone Diseases, Metabolic    D001851
      49722   GO:0042311                         Ventricular Dysfunction    D018754
      1926    GO:0032613                                       Pneumonia    D011014
      18197   GO:0009101                                         Dyspnea    D004417
      2833    GO:0006809                         Neoplasms, Experimental    D009374
      22078   GO:0006629                   Liver Cirrhosis, Experimental    D008106
      40749   GO:1900182                      Depressive Disorder, Major    D003865
      21545   GO:0055088                                    Hypertension    D006973
      7560    GO:0060348                                     Cholestasis    D002779
      24857   GO:0005739 Drug-Related Side Effects and Adverse Reactions    D064420
      48020   GO:0036269                                  HIV Infections    D015658
      37498   GO:0032755                                   Hyperglycemia    D006943
      25068   GO:0005739                                 Kidney Diseases    D007674
      3255    GO:0043065                                       Poisoning    D011041
      8706    GO:0051216                                    Hyperalgesia    D006930
      47932   GO:0006801                   Liver Cirrhosis, Experimental    D008106
      45626   GO:0006979                             Neoplasm Metastasis    D009362
      42213   GO:0006606                   Hypertrophy, Left Ventricular    D017379
      27417   GO:0008285               Micronuclei, Chromosome-Defective    D048629
      6186    GO:0006915                                   Hyperglycemia    D006943
      34427   GO:0008284                       Urinary Bladder Neoplasms    D001749
      26757   GO:0008285                                Breast Neoplasms    D001943
      48321   GO:0001659                                    Hypertension    D006973
      2312    GO:0008285                                    Cardiomegaly    D006332
      27219   GO:0008285                                    Inflammation    D007249
      34607   GO:2000774                            Pancreatic Neoplasms    D010190
      46448   GO:0035176                                    Hyperalgesia    D006930
      15923   GO:0001654                                  Brain Injuries    D001930
      42726   GO:0072593                             Neoplasm Metastasis    D009362
      42504   GO:1903409                                    Cardiomegaly    D006332
      32445   GO:0043065                                Retinal Diseases    D012164
