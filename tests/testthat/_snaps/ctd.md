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

# extr_ctd fetches other data

    Code
      dat <- extr_ctd(input_terms = input_terms, category = "chem", report_type = "genes_curated",
        input_term_search_type = "directAssociations", action_types = "ANY",
        ontology = c("go_bp", "go_cc"))
    Message
      Sending request to CTD database...
      Request succeeded with status code: 200
    Code
      random_indices <- sample(1:nrow(dat), 100)
      dat[random_indices, ]
    Output
             x_input chemical_name chemical_id  cas_rn gene_symbol   gene_id
      5388   64-17-5       Ethanol     D000431 64-17-5      CABP1A    449789
      11564  64-17-5       Ethanol     D000431 64-17-5    PPP1R3CB    393807
      2762   50-00-0  Formaldehyde     D005557 50-00-0       PRPS1      5631
      25186  ethanol       Ethanol     D000431 64-17-5        MTOR      2475
      11546  64-17-5       Ethanol     D000431 64-17-5    PPP1R12B      4660
      17649 methanal  Formaldehyde     D005557 50-00-0      PIEZO2     63895
      11260  64-17-5       Ethanol     D000431 64-17-5      PHF21A     51317
      24196  ethanol       Ethanol     D000431 64-17-5      KIF1AB    566766
      14773  64-17-5       Ethanol     D000431 64-17-5  Y69A2AR.14    190540
      4182   64-17-5       Ethanol     D000431 64-17-5      ACAA1A    113868
      18649 methanal  Formaldehyde     D005557 50-00-0   TNFRSF13B     23495
      27416  ethanol       Ethanol     D000431 64-17-5       RPS23      6228
      18540 methanal  Formaldehyde     D005557 50-00-0       TERF2      7014
      22799  ethanol       Ethanol     D000431 64-17-5       FREM2    341640
      5390   64-17-5       Ethanol     D000431 64-17-5       CABP7    164633
      25327  ethanol       Ethanol     D000431 64-17-5        NAV2     89797
      7151   64-17-5       Ethanol     D000431 64-17-5        EME2    197342
      21842  ethanol       Ethanol     D000431 64-17-5      DNAH5L    335340
      22113  ethanol       Ethanol     D000431 64-17-5       EIF3B      8662
      18144 methanal  Formaldehyde     D005557 50-00-0     SERINC1     57515
      5704   64-17-5       Ethanol     D000431 64-17-5       CDC42       998
      22069  ethanol       Ethanol     D000431 64-17-5        EGFR      1956
      4664   64-17-5       Ethanol     D000431 64-17-5       ANXA8    653145
      13290  64-17-5       Ethanol     D000431 64-17-5      SPE-26    177929
      13031  64-17-5       Ethanol     D000431 64-17-5     SLC39A3     29985
      28635  ethanol       Ethanol     D000431 64-17-5     T01B4.4  13224477
      4075   50-00-0  Formaldehyde     D005557 50-00-0       ZNF84      7637
      28082  ethanol       Ethanol     D000431 64-17-5     SLC49A4     84925
      15104 methanal  Formaldehyde     D005557 50-00-0      AFG3L1    114896
      14537  64-17-5       Ethanol     D000431 64-17-5       VIT-6    177619
      27540  ethanol       Ethanol     D000431 64-17-5        SAA2      6289
      21858  ethanol       Ethanol     D000431 64-17-5     DNAJC17     55192
      23909  ethanol       Ethanol     D000431 64-17-5      INSIG1      3638
      11613  64-17-5       Ethanol     D000431 64-17-5      PRDM16     63976
      28162  ethanol       Ethanol     D000431 64-17-5       SMAD3      4088
      4212   64-17-5       Ethanol     D000431 64-17-5       ACBD7    414149
      10235  64-17-5       Ethanol     D000431 64-17-5       MYO3A     53904
      15215 methanal  Formaldehyde     D005557 50-00-0    ARHGAP15     55843
      15782 methanal  Formaldehyde     D005557 50-00-0       CSPP1     79848
      19454  ethanol       Ethanol     D000431 64-17-5        AGLA    567798
      21737  ethanol       Ethanol     D000431 64-17-5       DERL2     51009
      7439   64-17-5       Ethanol     D000431 64-17-5    F53E10.1    178729
      9655   64-17-5       Ethanol     D000431 64-17-5       MAPK8      5599
      9413   64-17-5       Ethanol     D000431 64-17-5      LIPL-1    179771
      27868  ethanol       Ethanol     D000431 64-17-5       SIRT6     51548
      462    50-00-0  Formaldehyde     D005557 50-00-0        CBX5     23468
      10149  64-17-5       Ethanol     D000431 64-17-5      MTMR11     10903
      22827  ethanol       Ethanol     D000431 64-17-5         FTL      2512
      10475  64-17-5       Ethanol     D000431 64-17-5         NGF      4803
      20433  ethanol       Ethanol     D000431 64-17-5   CACNA2D4B 100150428
      23041  ethanol       Ethanol     D000431 64-17-5        GLDN    342035
      9690   64-17-5       Ethanol     D000431 64-17-5      MATH-3    173547
      10413  64-17-5       Ethanol     D000431 64-17-5      NEP-13    173672
      12129  64-17-5       Ethanol     D000431 64-17-5        RELA      5970
      29779  ethanol       Ethanol     D000431 64-17-5   Y54G2A.13    190279
      26074  ethanol       Ethanol     D000431 64-17-5     PCDHGA7     56108
      29079  ethanol       Ethanol     D000431 64-17-5    TNFRSF1B      7133
      14660  64-17-5       Ethanol     D000431 64-17-5       WSCD2      9671
      24272  ethanol       Ethanol     D000431 64-17-5       KRCC1     51315
      18417 methanal  Formaldehyde     D005557 50-00-0     STARD10     10809
      731    50-00-0  Formaldehyde     D005557 50-00-0      CREBRF    153222
      28857  ethanol       Ethanol     D000431 64-17-5        TGM2      7052
      23423  ethanol       Ethanol     D000431 64-17-5        H4C2      8366
      16230 methanal  Formaldehyde     D005557 50-00-0       FNDC4     64838
      19197  ethanol       Ethanol     D000431 64-17-5       ABRAA    324520
      13492  64-17-5       Ethanol     D000431 64-17-5       STX1A      6804
      20189  ethanol       Ethanol     D000431 64-17-5       BMP2K     55589
      12781  64-17-5       Ethanol     D000431 64-17-5    SH3PXD2A      9644
      21155  ethanol       Ethanol     D000431 64-17-5      COL-65    187138
      28490  ethanol       Ethanol     D000431 64-17-5       STIP1     10963
      966    50-00-0  Formaldehyde     D005557 50-00-0        EBPL     84650
      10684  64-17-5       Ethanol     D000431 64-17-5       NRXN1      9378
      9383   64-17-5       Ethanol     D000431 64-17-5         LIF      3976
      22577  ethanol       Ethanol     D000431 64-17-5       FARS2     10667
      26593  ethanol       Ethanol     D000431 64-17-5    PPP1R3CB    393807
      5591   64-17-5       Ethanol     D000431 64-17-5     CCDC88A     55704
      28350  ethanol       Ethanol     D000431 64-17-5      SPRED1    161742
      22177  ethanol       Ethanol     D000431 64-17-5        EMC8     10328
      24867  ethanol       Ethanol     D000431 64-17-5       MIEF1     54471
      28555  ethanol       Ethanol     D000431 64-17-5    SULT1ST1    323424
      4749   64-17-5       Ethanol     D000431 64-17-5    ARHGAP33    115703
      24823  ethanol       Ethanol     D000431 64-17-5       MFGE8      4240
      2482   50-00-0  Formaldehyde     D005557 50-00-0      OSBPL3     26031
      6885   64-17-5       Ethanol     D000431 64-17-5     DPY19L1     23333
      19772  ethanol       Ethanol     D000431 64-17-5    ARHGAP18     93663
      15706 methanal  Formaldehyde     D005557 50-00-0      CNKSR2     22866
      3418   50-00-0  Formaldehyde     D005557 50-00-0      STXBP3      6814
      27560  ethanol       Ethanol     D000431 64-17-5       SAR1A     56681
      2722   50-00-0  Formaldehyde     D005557 50-00-0      PPP3R2      5535
      19268  ethanol       Ethanol     D000431 64-17-5     ACOT11B    641574
      56     50-00-0  Formaldehyde     D005557 50-00-0        ADH5       128
      7193   64-17-5       Ethanol     D000431 64-17-5        ENY2     56943
      17318 methanal  Formaldehyde     D005557 50-00-0      MYO15A     51168
      27729  ethanol       Ethanol     D000431 64-17-5   SERPINA12    145264
      24024  ethanol       Ethanol     D000431 64-17-5       JAZF1    221895
      29001  ethanol       Ethanol     D000431 64-17-5     TMEM203     94107
      8109   64-17-5       Ethanol     D000431 64-17-5       GOLM2    113201
      4590   64-17-5       Ethanol     D000431 64-17-5        AMPH       273
      29963  ethanol       Ethanol     D000431 64-17-5      ZFP941    407812
      24267  ethanol       Ethanol     D000431 64-17-5       KPNA4      3840
                          organism organism_id                pub_med_ids
      5388             Danio rerio        7955                   35412187
      11564            Danio rerio        7955                   29361514
      2762            Homo sapiens        9606                   23649840
      25186           Homo sapiens        9606                   29524503
      11546           Mus musculus       10090                   30319688
      17649           Homo sapiens        9606                   23649840
      11260           Mus musculus       10090                   30319688
      24196            Danio rerio        7955                   29361514
      14773 Caenorhabditis elegans        6239                   23381935
      4182       Rattus norvegicus       10116                   26115886
      18649           Homo sapiens        9606                   23649840
      27416           Mus musculus       10090                   30319688
      18540           Homo sapiens        9606                   20655997
      22799           Homo sapiens        9606                   31059573
      5390            Mus musculus       10090                   30319688
      25327           Homo sapiens        9606                   29432896
      7151            Mus musculus       10090                   30319688
      21842            Danio rerio        7955                   29361514
      22113           Mus musculus       10090                   30319688
      18144           Homo sapiens        9606                   23649840
      5704            Mus musculus       10090                   30319688
      22069           Homo sapiens        9606                   22222162
      4664            Homo sapiens        9606                   29432896
      13290 Caenorhabditis elegans        6239                   23381935
      13031           Mus musculus       10090                   30319688
      28635 Caenorhabditis elegans        6239                   23381935
      4075            Homo sapiens        9606                   23649840
      28082           Mus musculus       10090          19167417|30319688
      15104           Homo sapiens        9606                   20655997
      14537 Caenorhabditis elegans        6239                   23381935
      27540           Mus musculus       10090                   30517762
      21858           Mus musculus       10090                   30319688
      23909           Homo sapiens        9606                   29432896
      11613           Mus musculus       10090                   30319688
      28162           Mus musculus       10090                   30319688
      4212             Danio rerio        7955                   29361514
      10235            Danio rerio        7955                   35412187
      15215           Homo sapiens        9606                   23649840
      15782           Homo sapiens        9606          20655997|23649840
      19454            Danio rerio        7955                   29361514
      21737            Danio rerio        7955                   29361514
      7439  Caenorhabditis elegans        6239                   23381935
      9655       Rattus norvegicus       10116                   19735724
      9413  Caenorhabditis elegans        6239                   23381935
      27868           Mus musculus       10090                   30319688
      462             Homo sapiens        9606                   23649840
      10149           Mus musculus       10090                   30319688
      22827           Homo sapiens        9606                   15963989
      10475           Mus musculus       10090          19397965|35181401
      20433            Danio rerio        7955                   35412187
      23041           Homo sapiens        9606                   23378141
      9690  Caenorhabditis elegans        6239                   23381935
      10413 Caenorhabditis elegans        6239                   23381935
      12129        Cavia porcellus       10141                   24239723
      29779 Caenorhabditis elegans        6239                   23381935
      26074           Mus musculus       10090                   30319688
      29079           Homo sapiens        9606          26470730|26733986
      14660           Mus musculus       10090                   30319688
      24272           Mus musculus       10090                   30319688
      18417           Homo sapiens        9606                   23649840
      731             Homo sapiens        9606                   23649840
      28857           Mus musculus       10090 11696672|30319688|30517762
      23423           Homo sapiens        9606                   28986285
      16230           Homo sapiens        9606                   27664576
      19197            Danio rerio        7955                   35412187
      13492           Mus musculus       10090          19167417|30319688
      20189           Mus musculus       10090                   30319688
      12781           Homo sapiens        9606                   29432896
      21155 Caenorhabditis elegans        6239                   23381935
      28490           Mus musculus       10090                   30319688
      966             Homo sapiens        9606                   23649840
      10684           Mus musculus       10090                   30319688
      9383            Homo sapiens        9606                   35690182
      22577           Mus musculus       10090                   30319688
      26593            Danio rerio        7955                   29361514
      5591            Mus musculus       10090                   29018328
      28350           Mus musculus       10090                   30319688
      22177           Mus musculus       10090                   30319688
      24867           Mus musculus       10090                   30319688
      28555            Danio rerio        7955                   29361514
      4749            Mus musculus       10090                   30319688
      24823           Mus musculus       10090 19167417|30319688|30517762
      2482            Homo sapiens        9606                   23649840
      6885            Mus musculus       10090                   30319688
      19772           Mus musculus       10090                   30319688
      15706           Homo sapiens        9606                   23649840
      3418            Homo sapiens        9606                   23649840
      27560           Mus musculus       10090                   30319688
      2722            Homo sapiens        9606                   27905399
      19268            Danio rerio        7955                   29361514
      56                                    NA                   21920416
      7193            Mus musculus       10090                   30319688
      17318           Homo sapiens        9606                   28937961
      27729           Mus musculus       10090                   19167417
      24024           Mus musculus       10090                   30319688
      29001           Mus musculus       10090                   30319688
      8109            Mus musculus       10090                   30319688
      4590            Homo sapiens        9606                   20621659
      29963           Mus musculus       10090                   30319688
      24267           Mus musculus       10090                   30319688

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
      3552  50-00-0 Formaldehyde     D005557    DRD2    1813
      37891 ethanol      Ethanol     D000431  MAP2K7    5609
      39571 ethanol      Ethanol     D000431    NQO1    1728
      10624 ethanol      Ethanol     D000431     AGT     183
      127   50-00-0 Formaldehyde     D005557     BAX     581
      17101 ethanol      Ethanol     D000431    AKT2     208
      46913 ethanol      Ethanol     D000431    CNR1    1268
      31208 ethanol      Ethanol     D000431    IL1B    3553
      30206 ethanol      Ethanol     D000431     NCL    4691
      46698 ethanol      Ethanol     D000431    IL1A    3552
      7715  ethanol      Ethanol     D000431    ALPL     249
      32629 ethanol      Ethanol     D000431   GSK3B    2932
      49828 ethanol      Ethanol     D000431   MECP2    4204
      38563 ethanol      Ethanol     D000431   FGFR1    2260
      12438 ethanol      Ethanol     D000431    NOS3    4846
      1491  50-00-0 Formaldehyde     D005557     ID4    3400
      19199 ethanol      Ethanol     D000431    EDN1    1906
      26156 ethanol      Ethanol     D000431   MAPK1    5594
      28445 ethanol      Ethanol     D000431    IL1B    3553
      36319 ethanol      Ethanol     D000431    TLR4    7099
      43127 ethanol      Ethanol     D000431   CALCA     796
      30949 ethanol      Ethanol     D000431    FGF2    2247
      26359 ethanol      Ethanol     D000431    TP53    7157
      49588 ethanol      Ethanol     D000431   VEGFA    7422
      533   50-00-0 Formaldehyde     D005557    CCN2    1490
      46963 ethanol      Ethanol     D000431    NGFR    4804
      42341 ethanol      Ethanol     D000431   PARP1     142
      21976 ethanol      Ethanol     D000431    APOE     348
      22843 ethanol      Ethanol     D000431    TAC1    6863
      25434 ethanol      Ethanol     D000431    CNR1    1268
      39744 ethanol      Ethanol     D000431    IL1B    3553
      22050 ethanol      Ethanol     D000431 CYP27A1    1593
      7681  ethanol      Ethanol     D000431    LRP5    4041
      24269 ethanol      Ethanol     D000431   FGFR2    2263
      11381 ethanol      Ethanol     D000431   TGFB1    7040
      26074 ethanol      Ethanol     D000431   ERCC6    2074
      42818 ethanol      Ethanol     D000431    NOS3    4846
      12921 ethanol      Ethanol     D000431    SOD2    6648
      36831 ethanol      Ethanol     D000431     TNF    7124
      724   50-00-0 Formaldehyde     D005557     EPO    2056
      6164  ethanol      Ethanol     D000431   BIRC2     329
      42909 ethanol      Ethanol     D000431 TNFRSF9    3604
      22401 ethanol      Ethanol     D000431    FZD4    8322
      15833 ethanol      Ethanol     D000431    TP63    8626
      18400 ethanol      Ethanol     D000431   MAPK1    5594
      10381 ethanol      Ethanol     D000431     RB1    5925
      16516 ethanol      Ethanol     D000431    POMC    5443
      43762 ethanol      Ethanol     D000431   NR4A1    3164
      22822 ethanol      Ethanol     D000431    APOE     348
      42381 ethanol      Ethanol     D000431     LOX    4015
      39089 ethanol      Ethanol     D000431    JAK2    3717
      5040  ethanol      Ethanol     D000431   NRCAM    4897
      36273 ethanol      Ethanol     D000431   ITGB3    3690
      31447 ethanol      Ethanol     D000431   C1QBP     708
      24896 ethanol      Ethanol     D000431   HADHB    3032
      9666  ethanol      Ethanol     D000431   SMAD2    4087
      22979 ethanol      Ethanol     D000431  SHANK1   50944
      34935 ethanol      Ethanol     D000431     TNF    7124
      46840 ethanol      Ethanol     D000431    PLAU    5328
      10014 ethanol      Ethanol     D000431    IRS2    8660
      41069 ethanol      Ethanol     D000431   TRP53   22059
      35355 ethanol      Ethanol     D000431    GDNF    2668
      21291 ethanol      Ethanol     D000431    GLI3    2737
      16777 ethanol      Ethanol     D000431   GNAI2    2771
      31830 ethanol      Ethanol     D000431   SIRT1   23411
      20592 ethanol      Ethanol     D000431 MIR130B  406920
      29612 ethanol      Ethanol     D000431    WDR1    9948
      6410  ethanol      Ethanol     D000431    PTEN    5728
      45185 ethanol      Ethanol     D000431    SOD2    6648
      2016  50-00-0 Formaldehyde     D005557   MECP2    4204
      44900 ethanol      Ethanol     D000431    MMP9    4318
      44293 ethanol      Ethanol     D000431  MAP3K5    4217
      23718 ethanol      Ethanol     D000431     APP     351
      37204 ethanol      Ethanol     D000431   HMOX1    3162
      12700 ethanol      Ethanol     D000431   PARP1     142
      49251 ethanol      Ethanol     D000431     AGT     183
      24367 ethanol      Ethanol     D000431   DNM1L   10059
      3822  50-00-0 Formaldehyde     D005557    IL1B    3553
      23373 ethanol      Ethanol     D000431  POU5F1    5460
      24189 ethanol      Ethanol     D000431     CLU    1191
      32884 ethanol      Ethanol     D000431    EDN1    1906
      23744 ethanol      Ethanol     D000431    PTEN    5728
      19541 ethanol      Ethanol     D000431   CASP3     836
      9424  ethanol      Ethanol     D000431    RAF1    5894
      39141 ethanol      Ethanol     D000431   PARP1     142
      25304 ethanol      Ethanol     D000431   OPRM1    4988
      771   50-00-0 Formaldehyde     D005557     MYC    4609
      5207  ethanol      Ethanol     D000431   HDAC6   10013
      27798 ethanol      Ethanol     D000431     AGT     183
      49210 ethanol      Ethanol     D000431     ACE    1636
      42469 ethanol      Ethanol     D000431   PARP1     142
      27759 ethanol      Ethanol     D000431    DRD2    1813
      47481 ethanol      Ethanol     D000431  CYP1A2    1544
      7883  ethanol      Ethanol     D000431   HTR1B    3351
      28716 ethanol      Ethanol     D000431   GSK3B    2932
      1803  50-00-0 Formaldehyde     D005557  NFE2L2    4780
      27696 ethanol      Ethanol     D000431 ADORA2B     136
      313   50-00-0 Formaldehyde     D005557   MAPK3    5595
      17206 ethanol      Ethanol     D000431     IL6    3569
      21864 ethanol      Ethanol     D000431   PLPP1    8611
                                                                               phenotype
      3552                          positive regulation of multicellular organism growth
      37891                                           positive regulation of JNK cascade
      39571                              positive regulation of neuron apoptotic process
      10624                                                cell population proliferation
      127                                                              apoptotic process
      17101                                                          glucose homeostasis
      46913                                                              spermatogenesis
      31208                                          positive regulation of angiogenesis
      30206                                                                 ossification
      46698                                                              spermatogenesis
      7715                                                           bone mineralization
      32629                                             positive regulation of autophagy
      49828                                                              visual learning
      38563                                          positive regulation of MAPK cascade
      12438                                 cellular response to organic cyclic compound
      1491                                                             heart development
      19199                                                                heart process
      26156                                                                  myelination
      28445                                          negative regulation of neurogenesis
      36319                                 positive regulation of ERK1 and ERK2 cascade
      43127                                                 regulation of blood pressure
      30949                                          positive regulation of angiogenesis
      26359                                                          necroptotic process
      49588                                                                 vasodilation
      533                                                                 cell migration
      46963                                                              spermatogenesis
      42341                                                 protein modification process
      21976                                                      lipid metabolic process
      22843                                                             long-term memory
      25434                                                                mitochondrion
      39744                              positive regulation of neuron apoptotic process
      22050                                                      lipid metabolic process
      7681                                                              bone development
      24269                                                         midbrain development
      11381                                             cellular calcium ion homeostasis
      26074                                                multicellular organism growth
      42818                                                 regulation of blood pressure
      12921                                        cellular response to oxidative stress
      36831                   positive regulation of I-kappaB kinase/NF-kappaB signaling
      724                                                  cell population proliferation
      6164                                                             apoptotic process
      42909                                                 regulation of blood pressure
      22401                                   locomotion involved in locomotory behavior
      15833                                                establishment of skin barrier
      18400                                                            heart development
      10381                                                cell population proliferation
      16516                                                             feeding behavior
      43762                                      regulation of glucose metabolic process
      22822                                              locomotory exploration behavior
      42381                                                 protein modification process
      39089                                          positive regulation of MAPK cascade
      5040                                                                  angiogenesis
      36273                                 positive regulation of ERK1 and ERK2 cascade
      31447                                     positive regulation of apoptotic process
      24896                                                                mitochondrion
      9666                                                          cell differentiation
      22979                                                             long-term memory
      34935 positive regulation of cytokine production involved in inflammatory response
      46840                                                              spermatogenesis
      10014                                                               cell migration
      41069             positive regulation of reactive oxygen species metabolic process
      35355                                    positive regulation of dopamine secretion
      21291                                                             limb development
      16777                                    gamma-aminobutyric acid signaling pathway
      31830                                     positive regulation of apoptotic process
      20592                                                        inflammatory response
      29612                                                         neutrophil migration
      6410                                                             apoptotic process
      45185                                                 response to oxidative stress
      2016                                                                      learning
      44900                                                         response to nutrient
      44293                                     response to endoplasmic reticulum stress
      23718                                                                       memory
      37204                   positive regulation of I-kappaB kinase/NF-kappaB signaling
      12700                                        cellular response to oxidative stress
      49251                                                                 vasodilation
      24367                                                        mitochondrial fission
      3822                      positive regulation of nitric oxide biosynthetic process
      23373                                            lysine-acetylated histone binding
      24189                                                   microglial cell activation
      32884                                  positive regulation of cell differentiation
      23744                                                                       memory
      19541                                                      hippocampus development
      9424                                                          cell differentiation
      39141                          positive regulation of mitochondrial depolarization
      25304                                                                mitochondrion
      771                                                  cell population proliferation
      5207                                                                  angiogenesis
      27798                         negative regulation of cell population proliferation
      49210                                                             vasoconstriction
      42469                                                protein poly-ADP-ribosylation
      27759                         negative regulation of cell population proliferation
      47481                                                    steroid metabolic process
      7883                                                               bone remodeling
      28716                       negative regulation of protein localization to nucleus
      1803                                                         inflammatory response
      27696                         negative regulation of cell population proliferation
      313                                                              apoptotic process
      17206                                                          glucose homeostasis
      21864                                                      lipid metabolic process
            phenotype_id                                disease disease_id
      3552    GO:0040018                                   Pain    D010146
      37891   GO:0046330                               Fibrosis    D005355
      39571   GO:0043525                          Hyperglycemia    D006943
      10624   GO:0008283                           Hyperalgesia    D006930
      127     GO:0006915 Chemical and Drug Induced Liver Injury    D056486
      17101   GO:0042593              Diabetes Mellitus, Type 2    D003924
      46913   GO:0007283                     Movement Disorders    D009069
      31208   GO:0045766                     Reperfusion Injury    D015427
      30206   GO:0001503                    Myocardial Ischemia    D017202
      46698   GO:0007283 Chemical and Drug Induced Liver Injury    D056486
      7715    GO:0030282               Bone Diseases, Metabolic    D001851
      32629   GO:0010508        Cell Transformation, Neoplastic    D002471
      49828   GO:0008542                 Disease Models, Animal    D004195
      38563   GO:0043410             Craniofacial Abnormalities    D019465
      12438   GO:0071407                           Hepatomegaly    D006529
      1491    GO:0007507                  Neoplasm Invasiveness    D009361
      19199   GO:0003015              Gastrointestinal Diseases    D005767
      26156   GO:0042552                       Cardiomyopathies    D009202
      28445   GO:0050768                           Cardiomegaly    D006332
      36319   GO:0070374                            Weight Loss    D015431
      43127   GO:0008217                           Inflammation    D007249
      30949   GO:0045766                                Gliosis    D005911
      26359   GO:0070266        Cell Transformation, Neoplastic    D002471
      49588   GO:0042311                    Myocardial Ischemia    D017202
      533     GO:0016477                  Scleroderma, Systemic    D012595
      46963   GO:0007283                     Nerve Degeneration    D009410
      42341   GO:0036211              Carcinoma, Hepatocellular    D006528
      21976   GO:0006629                   Hypercholesterolemia    D006937
      22843   GO:0007616                                Amnesia    D000647
      25434   GO:0005739                   Pancreatic Neoplasms    D010190
      39744   GO:0043525                     Reperfusion Injury    D015427
      22050   GO:0006629                        Liver Cirrhosis    D008103
      7681    GO:0060348                           Osteoporosis    D010024
      24269   GO:0030901             Craniofacial Abnormalities    D019465
      11381   GO:0006874                           Hepatomegaly    D006529
      26074   GO:0035264                         Microphthalmos    D008850
      42818   GO:0008217                    Acute Kidney Injury    D058186
      12921   GO:0034599                   Pancreatic Neoplasms    D010190
      36831   GO:0043123                         Cardiotoxicity    D066126
      724     GO:0008283                  Neoplasm Invasiveness    D009361
      6164    GO:0006915                         HIV Infections    D015658
      42909   GO:0008217                Cardiomyopathy, Dilated    D002311
      22401   GO:0031987             Craniofacial Abnormalities    D019465
      15833   GO:0061436                    Neoplasm Metastasis    D009362
      18400   GO:0007507                         Brain Ischemia    D002545
      10381   GO:0008283              Carcinoma, Hepatocellular    D006528
      16516   GO:0007631                       Long QT Syndrome    D008133
      43762   GO:0010906                            Proteinuria    D011507
      22822   GO:0035641                     Nerve Degeneration    D009410
      42381   GO:0036211          Liver Cirrhosis, Experimental    D008106
      39089   GO:0043410              Urinary Bladder Neoplasms    D001749
      5040    GO:0001525                       Breast Neoplasms    D001943
      36273   GO:0070374                                 Stroke    D020521
      31447   GO:0043065                       Breast Neoplasms    D001943
      24896   GO:0005739                            Fatty Liver    D005234
      9666    GO:0030154                 Ventricular Remodeling    D020257
      22979   GO:0007616                 Motor Skills Disorders    D019957
      34935   GO:1900017                    Pulmonary Emphysema    D011656
      46840   GO:0007283               Intracranial Hemorrhages    D020300
      10014   GO:0016477                          Hyperglycemia    D006943
      41069   GO:2000379              Carcinoma, Hepatocellular    D006528
      35355   GO:0033603          Amphetamine-Related Disorders    D019969
      21291   GO:0060173                      Stomach Neoplasms    D013274
      16777   GO:0007214                            Bradycardia    D001919
      31830   GO:0043065                    Glucose Intolerance    D018149
      20592   GO:0006954                           Pancreatitis    D010195
      29612   GO:1990266                           Osteoporosis    D010024
      6410    GO:0006915                         Lung Neoplasms    D008175
      45185   GO:0006979                           Cardiomegaly    D006332
      2016    GO:0007612                     Pulmonary Fibrosis    D011658
      44900   GO:0007584                  Myocardial Infarction    D009203
      44293   GO:0034976                       Cardiomyopathies    D009202
      23718   GO:0007613                 Disease Models, Animal    D004195
      37204   GO:0043123                    Pulmonary Emphysema    D011656
      12700   GO:0034599                       Cardiomyopathies    D009202
      49251   GO:0042311                                 Anemia    D000740
      24367   GO:0000266                           Microcephaly    D008831
      3822    GO:0045429                      Stomach Neoplasms    D013274
      23373   GO:0070577              Heart Defects, Congenital    D006330
      24189   GO:0001774                         Osteoarthritis    D010003
      32884   GO:0045597          Liver Cirrhosis, Experimental    D008106
      23744   GO:0007613                            Fatty Liver    D005234
      19541   GO:0021766                Subarachnoid Hemorrhage    D013345
      9424    GO:0030154                         Lung Neoplasms    D008175
      39141   GO:0051901                              Hepatitis    D006505
      25304   GO:0005739                                 Nausea    D009325
      771     GO:0008283                      Stomach Neoplasms    D013274
      5207    GO:0001525                    Disease Progression    D018450
      27798   GO:0008285                 Ventricular Remodeling    D020257
      49210   GO:0042310           Psychoses, Substance-Induced    D011605
      42469   GO:0070212                           Inflammation    D007249
      27759   GO:0008285                            Tachycardia    D013610
      47481   GO:0008202                           Hepatomegaly    D006529
      7883    GO:0046849          Amphetamine-Related Disorders    D019969
      28716   GO:1900181                    Cognition Disorders    D003072
      1803    GO:0006954                         Lung Neoplasms    D008175
      27696   GO:0008285                                 Sepsis    D018805
      313     GO:0006915                     Nerve Degeneration    D009410
      17206   GO:0042593                           Hypertension    D006973
      21864   GO:0006629                    Disease Progression    D018450

