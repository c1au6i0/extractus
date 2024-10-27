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
      11571  64-17-5       Ethanol     D000431 64-17-5       LSM12    124801
      25173  ethanol       Ethanol     D000431 64-17-5      COL1A1      1277
      32618  ethanol       Ethanol     D000431 64-17-5     R10E9.2    175513
      13903  64-17-5       Ethanol     D000431 64-17-5      PNPLA7    375775
      8229   64-17-5       Ethanol     D000431 64-17-5 DRE-MIR-727 100033738
      25305  ethanol       Ethanol     D000431 64-17-5       CPT1A      1374
      25061  ethanol       Ethanol     D000431 64-17-5       CNBPA    326846
      22306 methanal  Formaldehyde     D005557 50-00-0      YME1L1     10730
      12204  64-17-5       Ethanol     D000431 64-17-5       MSD-4    175648
      7075   64-17-5       Ethanol     D000431 64-17-5     COL11A1      1301
      26954  ethanol       Ethanol     D000431 64-17-5        FASN      2194
      31276  ethanol       Ethanol     D000431 64-17-5        OPA1      4976
      16044  64-17-5       Ethanol     D000431 64-17-5      SPINT2     10653
      6519   64-17-5       Ethanol     D000431 64-17-5        CCN1      3491
      33990  ethanol       Ethanol     D000431 64-17-5        SOD1      6647
      26663  ethanol       Ethanol     D000431 64-17-5        EZH2      2146
      19242 methanal  Formaldehyde     D005557 50-00-0        FAR2     55711
      21784 methanal  Formaldehyde     D005557 50-00-0        STIL      6491
      16910  64-17-5       Ethanol     D000431 64-17-5       TMT1A     25840
      21875 methanal  Formaldehyde     D005557 50-00-0    TBC1D27P     96597
      25559  ethanol       Ethanol     D000431 64-17-5        CYBB      1536
      21323 methanal  Formaldehyde     D005557 50-00-0      RNF213     57674
      13284  64-17-5       Ethanol     D000431 64-17-5       OTUD1    220213
      7976   64-17-5       Ethanol     D000431 64-17-5       DDIT3      1649
      9392   64-17-5       Ethanol     D000431 64-17-5        GCLC      2729
      3863   50-00-0  Formaldehyde     D005557 50-00-0     TEKT4P2 100132288
      26876  ethanol       Ethanol     D000431 64-17-5     FAM136A     84908
      23148  ethanol       Ethanol     D000431 64-17-5      AKR1D1      6718
      13973  64-17-5       Ethanol     D000431 64-17-5       PPARA      5465
      31334  ethanol       Ethanol     D000431 64-17-5        OXR1     55074
      28278  ethanol       Ethanol     D000431 64-17-5       HNF1A      6927
      858    50-00-0  Formaldehyde     D005557 50-00-0      CYP4A8    266674
      6763   64-17-5       Ethanol     D000431 64-17-5       CELF3     11189
      32480  ethanol       Ethanol     D000431 64-17-5      PTGS2A    246227
      11367  64-17-5       Ethanol     D000431 64-17-5        LDLR      3949
      29747  ethanol       Ethanol     D000431 64-17-5      MAPK14      1432
      13602  64-17-5       Ethanol     D000431 64-17-5        PEPD      5184
      5051   64-17-5       Ethanol     D000431 64-17-5       AGTR1       185
      34474  ethanol       Ethanol     D000431 64-17-5    T19B10.2    179551
      33269  ethanol       Ethanol     D000431 64-17-5      SCUBE1     80274
      16920  64-17-5       Ethanol     D000431 64-17-5         TNC      3371
      29660  ethanol       Ethanol     D000431 64-17-5       MAGOH      4116
      29697  ethanol       Ethanol     D000431 64-17-5    MAP1LC3B     81631
      11854  64-17-5       Ethanol     D000431 64-17-5      METTL9     51108
      4934   64-17-5       Ethanol     D000431 64-17-5      ADIPOQ      9370
      13940  64-17-5       Ethanol     D000431 64-17-5         POR      5447
      27075  ethanol       Ethanol     D000431 64-17-5      FIPR-5   3565026
      21987 methanal  Formaldehyde     D005557 50-00-0     TMEM212    389177
      22126 methanal  Formaldehyde     D005557 50-00-0   TTC28-AS1    284900
      25649  ethanol       Ethanol     D000431 64-17-5      CYP2A5     13087
      12535  64-17-5       Ethanol     D000431 64-17-5       NEGR1    257194
      32987  ethanol       Ethanol     D000431 64-17-5       RORAB    554722
      12399  64-17-5       Ethanol     D000431 64-17-5       MYT1L     23040
      35891  ethanol       Ethanol     D000431 64-17-5         YY1      7528
      25488  ethanol       Ethanol     D000431 64-17-5      CX3CR1      1524
      14330  64-17-5       Ethanol     D000431 64-17-5       PSMA3      5684
      17626  64-17-5       Ethanol     D000431 64-17-5     W01B6.6    189083
      33986  ethanol       Ethanol     D000431 64-17-5        SOD1      6647
      8465   64-17-5       Ethanol     D000431 64-17-5         EMD      2010
      6563   64-17-5       Ethanol     D000431 64-17-5       CCND2       894
      20205 methanal  Formaldehyde     D005557 50-00-0        LY86      9450
      22281 methanal  Formaldehyde     D005557 50-00-0       WIPI1     55062
      10844  64-17-5       Ethanol     D000431 64-17-5         IL6      3569
      33432  ethanol       Ethanol     D000431 64-17-5       SFXN5     94097
      33487  ethanol       Ethanol     D000431 64-17-5       SIAH2      6478
      3045   50-00-0  Formaldehyde     D005557 50-00-0        PRLR      5618
      8615   64-17-5       Ethanol     D000431 64-17-5        EXO5     64789
      29670  ethanol       Ethanol     D000431 64-17-5       MAML2     84441
      9346   64-17-5       Ethanol     D000431 64-17-5       GAPDH      2597
      13824  64-17-5       Ethanol     D000431 64-17-5     PLEKHG3     26030
      8696   64-17-5       Ethanol     D000431 64-17-5     F32H2.7    172716
      7131   64-17-5       Ethanol     D000431 64-17-5      COL1A1      1277
      32671  ethanol       Ethanol     D000431 64-17-5        RAC1      5879
      20785 methanal  Formaldehyde     D005557 50-00-0       ORAI3     93129
      10816  64-17-5       Ethanol     D000431 64-17-5         IL6      3569
      11114  64-17-5       Ethanol     D000431 64-17-5       KCND3      3752
      7146   64-17-5       Ethanol     D000431 64-17-5      COL2A1      1280
      11096  64-17-5       Ethanol     D000431 64-17-5       KCNA5      3741
      12597  64-17-5       Ethanol     D000431 64-17-5      NFATC4      4776
      11878  64-17-5       Ethanol     D000431 64-17-5      MFSD4A    148808
      34558  ethanol       Ethanol     D000431 64-17-5       TCEA3      6920
      24450  ethanol       Ethanol     D000431 64-17-5         CAT       847
      9086   64-17-5       Ethanol     D000431 64-17-5        FMO5      2330
      10148  64-17-5       Ethanol     D000431 64-17-5       HMGA1      3159
      14504  64-17-5       Ethanol     D000431 64-17-5       PTPRS      5802
      8613   64-17-5       Ethanol     D000431 64-17-5       EXH-1    183261
      21432 methanal  Formaldehyde     D005557 50-00-0      SCNN1A      6337
      7793   64-17-5       Ethanol     D000431 64-17-5    CYP-35C1    179885
      6217   64-17-5       Ethanol     D000431 64-17-5       CALCA       796
      30249  ethanol       Ethanol     D000431 64-17-5       MSMO1      6307
      26244  ethanol       Ethanol     D000431 64-17-5        DPP4      1803
      12669  64-17-5       Ethanol     D000431 64-17-5      NFE2L2      4780
      32441  ethanol       Ethanol     D000431 64-17-5       PTGS2      5743
      23193  ethanol       Ethanol     D000431 64-17-5       ALDH2       217
      20480 methanal  Formaldehyde     D005557 50-00-0        MOGS      7841
      36060  ethanol       Ethanol     D000431 64-17-5      ZNF425    155054
      23836  ethanol       Ethanol     D000431 64-17-5        BCL2       596
      10271  64-17-5       Ethanol     D000431 64-17-5       HOXA1      3198
                          organism organism_id
      24388      Rattus norvegicus       10116
      4050            Homo sapiens        9606
      11571           Mus musculus       10090
      25173      Rattus norvegicus       10116
      32618 Caenorhabditis elegans        6239
      13903           Mus musculus       10090
      8229             Danio rerio        7955
      25305           Mus musculus       10090
      25061            Danio rerio        7955
      22306           Homo sapiens        9606
      12204 Caenorhabditis elegans        6239
      7075            Mus musculus       10090
      26954           Mus musculus       10090
      31276           Homo sapiens        9606
      16044           Homo sapiens        9606
      6519            Homo sapiens        9606
      33990           Mus musculus       10090
      26663           Mus musculus       10090
      19242           Homo sapiens        9606
      21784           Homo sapiens        9606
      16910           Homo sapiens        9606
      21875           Homo sapiens        9606
      25559      Rattus norvegicus       10116
      21323           Homo sapiens        9606
      13284           Homo sapiens        9606
      7976            Mus musculus       10090
      9392            Mus musculus       10090
      3863            Homo sapiens        9606
      26876           Mus musculus       10090
      23148           Mus musculus       10090
      13973           Homo sapiens        9606
      31334           Mus musculus       10090
      28278           Mus musculus       10090
      858        Rattus norvegicus       10116
      6763             Danio rerio        7955
      32480            Danio rerio        7955
      11367           Homo sapiens        9606
      29747           Mus musculus       10090
      13602            Danio rerio        7955
      5051       Rattus norvegicus       10116
      34474 Caenorhabditis elegans        6239
      33269           Mus musculus       10090
      16920      Rattus norvegicus       10116
      29660           Mus musculus       10090
      29697           Mus musculus       10090
      11854           Mus musculus       10090
      4934            Homo sapiens        9606
      13940           Mus musculus       10090
      27075 Caenorhabditis elegans        6239
      21987           Homo sapiens        9606
      22126           Homo sapiens        9606
      25649           Mus musculus       10090
      12535           Mus musculus       10090
      32987            Danio rerio        7955
      12399           Mus musculus       10090
      35891           Mus musculus       10090
      25488           Mus musculus       10090
      14330           Mus musculus       10090
      17626 Caenorhabditis elegans        6239
      33986           Mus musculus       10090
      8465            Mus musculus       10090
      6563            Homo sapiens        9606
      20205           Homo sapiens        9606
      22281           Homo sapiens        9606
      10844      Rattus norvegicus       10116
      33432           Mus musculus       10090
      33487           Mus musculus       10090
      3045            Homo sapiens        9606
      8615            Mus musculus       10090
      29670           Mus musculus       10090
      9346             Danio rerio        7955
      13824           Homo sapiens        9606
      8696  Caenorhabditis elegans        6239
      7131       Rattus norvegicus       10116
      32671      Rattus norvegicus       10116
      20785           Homo sapiens        9606
      10816      Rattus norvegicus       10116
      11114           Mus musculus       10090
      7146       Rattus norvegicus       10116
      11096           Mus musculus       10090
      12597           Mus musculus       10090
      11878           Mus musculus       10090
      34558            Danio rerio        7955
      24450      Rattus norvegicus       10116
      9086            Mus musculus       10090
      10148           Mus musculus       10090
      14504           Mus musculus       10090
      8613  Caenorhabditis elegans        6239
      21432           Homo sapiens        9606
      7793  Caenorhabditis elegans        6239
      6217            Mus musculus       10090
      30249            Danio rerio        7955
      26244           Mus musculus       10090
      12669           Mus musculus       10090
      32441           Homo sapiens        9606
      23193           Homo sapiens        9606
      20480           Homo sapiens        9606
      36060           Homo sapiens        9606
      23836      Rattus norvegicus       10116
      10271           Mus musculus       10090
                                                                                                                                                                                                   interaction
      24388                                                                                                                                              Ethanol results in decreased expression of CASP3 mRNA
      4050                                                                                                                                         Formaldehyde results in increased expression of TRIM29 mRNA
      11571                                                                                                                                                       Ethanol affects the expression of LSM12 mRNA
      25173                                                              methyl ferulate inhibits the reaction [[Carbon Tetrachloride co-treated with Ethanol] results in increased expression of COL1A1 mRNA]
      32618                                                                                                                                            Ethanol results in decreased expression of R10E9.2 mRNA
      13903                                                                                                                                             Ethanol results in increased expression of PNPLA7 mRNA
      8229                                                                                                                                         Ethanol results in increased expression of DRE-MIR-727 mRNA
      25305                                                                                                            Berberine inhibits the reaction [Ethanol results in decreased expression of CPT1A mRNA]
      25061                                                                                                                                                       Ethanol affects the expression of CNBPA mRNA
      22306                                                                                                                                        Formaldehyde results in increased expression of YME1L1 mRNA
      12204                                                                                                                                              Ethanol results in decreased expression of MSD-4 mRNA
      7075                                                                                                                                             Ethanol results in decreased expression of COL11A1 mRNA
      26954                                                                                                         Rosiglitazone inhibits the reaction [Ethanol results in decreased expression of FASN mRNA]
      31276                                                                                                            Silybin inhibits the reaction [Ethanol results in decreased expression of OPA1 protein]
      16044  [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of SPINT2 mRNA
      6519                                                                                                                                                Ethanol results in decreased expression of CCN1 mRNA
      33990                                                                                                          [Zinc deficiency co-treated with Ethanol] results in decreased expression of SOD1 protein
      26663                                                                                                                                                        Ethanol affects the expression of EZH2 mRNA
      19242                                                                                                                                          Formaldehyde results in decreased expression of FAR2 mRNA
      21784                                                                                                                                          Formaldehyde results in decreased expression of STIL mRNA
      16910                                                                                                                 [Ethanol co-treated with Folic Acid] results in decreased expression of TMT1A mRNA
      21875                                                                                                                                      Formaldehyde results in decreased expression of TBC1D27P mRNA
      25559                                                                                                       ginkgolide B inhibits the reaction [Ethanol results in increased expression of CYBB protein]
      21323                                                                                                                                        Formaldehyde results in increased expression of RNF213 mRNA
      13284                                                                                                                                              Ethanol results in decreased expression of OTUD1 mRNA
      7976                                                                                                        Hydralazine inhibits the reaction [Ethanol results in increased expression of DDIT3 protein]
      9392                                                                                                           withaferin A inhibits the reaction [Ethanol results in increased expression of GCLC mRNA]
      3863                                                                                                                                        Formaldehyde results in increased expression of TEKT4P2 mRNA
      26876                                                                                                                                            Ethanol results in increased expression of FAM136A mRNA
      23148                                                                                                                                             Ethanol results in increased expression of AKR1D1 mRNA
      13973                                                               RIPK3 protein inhibits the reaction [pterostilbene inhibits the reaction [Ethanol results in decreased expression of PPARA protein]]
      31334                                                                                                                            Ethanol affects the expression of and affects the splicing of OXR1 mRNA
      28278                                                                                                            [Zinc deficiency co-treated with Ethanol] results in increased expression of HNF1A mRNA
      858                                                                                                                                          Formaldehyde results in decreased expression of CYP4A8 mRNA
      6763                                                                                                                                               Ethanol results in increased expression of CELF3 mRNA
      32480                                                                                                                                             Ethanol results in increased expression of PTGS2A mRNA
      11367                                                                                                                                               Ethanol results in decreased expression of LDLR mRNA
      29747                                                                                      MAPK14 protein promotes the reaction [Ethanol results in increased expression of CASP3 protein modified form]
      13602                                                                                                                                               Ethanol results in decreased expression of PEPD mRNA
      5051                                                                                                                 Ethanol affects the reaction [Dietary Fats affects the expression of AGTR1 protein]
      34474                                                                                                                                           Ethanol results in increased expression of T19B10.2 mRNA
      33269                                                                                                                                             Ethanol results in increased expression of SCUBE1 mRNA
      16920                                                                                                          Hesperidin inhibits the reaction [Ethanol results in increased expression of TNC protein]
      29660                                                                                                                                                       Ethanol affects the expression of MAGOH mRNA
      29697                                                                                                                                        Ethanol results in decreased expression of MAP1LC3B protein
      11854                                                                                                                                                      Ethanol affects the expression of METTL9 mRNA
      4934                                                                                                         ADIPOQ protein inhibits the reaction [Ethanol results in decreased expression of ATG5 mRNA]
      13940                                                                                                                             Ethanol affects the expression of and affects the splicing of POR mRNA
      27075                                                                                                                                             Ethanol results in decreased expression of FIPR-5 mRNA
      21987                                                                                                                                       Formaldehyde results in increased expression of TMEM212 mRNA
      22126                                                                                                                                     Formaldehyde results in increased expression of TTC28-AS1 mRNA
      25649                                                                                                    NFE2L2 protein affects the reaction [Ethanol results in increased expression of CYP2A5 protein]
      12535                                                                                                                           Ethanol affects the expression of and affects the splicing of NEGR1 mRNA
      32987                                                                                                             [Ethanol co-treated with Benzo(a)pyrene] results in increased expression of RORAB mRNA
      12399                                                                                                                                                       Ethanol affects the expression of MYT1L mRNA
      35891                                                                                                           Melatonin inhibits the reaction [Ethanol results in increased expression of YY1 protein]
      25488                                                                                                                                             Ethanol results in increased expression of CX3CR1 mRNA
      14330                                                                                                                                              Ethanol results in increased expression of PSMA3 mRNA
      17626                                                                                                                                            Ethanol results in decreased expression of W01B6.6 mRNA
      33986                                                                                                                                            Ethanol results in decreased expression of SOD1 protein
      8465                                                                                                                                                 Ethanol results in increased expression of EMD mRNA
      6563                                                                                                               Lithium inhibits the reaction [Ethanol results in decreased expression of CCND2 mRNA]
      20205                                                                                                                                          Formaldehyde results in decreased expression of LY86 mRNA
      22281                                                                                                                                         Formaldehyde results in decreased expression of WIPI1 mRNA
      10844                                                                                                             Scopoletin inhibits the reaction [Ethanol results in increased expression of IL6 mRNA]
      33432                                                                                                                                              Ethanol results in increased expression of SFXN5 mRNA
      33487                                                                                                                                              Ethanol results in increased expression of SIAH2 mRNA
      3045                                                                                                                                           Formaldehyde results in increased expression of PRLR mRNA
      8615                                                                                                                                                         Ethanol affects the expression of EXO5 mRNA
      29670                                                                                                                                              Ethanol results in increased expression of MAML2 mRNA
      9346                                                                                                                                               Ethanol results in decreased expression of GAPDH mRNA
      13824 [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of PLEKHG3 mRNA
      8696                                                                                                                                             Ethanol results in decreased expression of F32H2.7 mRNA
      7131                                                                                                                                              Ethanol results in increased expression of COL1A1 mRNA
      32671                                                                                                                                            Ethanol results in decreased expression of RAC1 protein
      20785                                                                                                                                         Formaldehyde results in increased expression of ORAI3 mRNA
      10816                                                                                                             Arbutin inhibits the reaction [Ethanol results in increased expression of IL6 protein]
      11114                                                                                                        ferrostatin-1 inhibits the reaction [Ethanol results in decreased expression of KCND3 mRNA]
      7146                                                                                                                                           Ethanol results in decreased expression of COL2A1 protein
      11096                                                                                                        ferrostatin-1 inhibits the reaction [Ethanol results in decreased expression of KCNA5 mRNA]
      12597                                                                                                                                          Ethanol results in increased expression of NFATC4 protein
      11878                                                                                                                                                      Ethanol affects the expression of MFSD4A mRNA
      34558                                                                                                                                              Ethanol results in decreased expression of TCEA3 mRNA
      24450                                                                                                        Ethanol results in increased expression of and results in increased activity of CAT protein
      9086                                                                                                                                                Ethanol results in increased expression of FMO5 mRNA
      10148                                                                                                        NFATC4 protein affects the reaction [Ethanol results in increased expression of HMGA1 mRNA]
      14504                                                                                                                                              Ethanol results in increased expression of PTPRS mRNA
      8613                                                                                                                                               Ethanol results in decreased expression of EXH-1 mRNA
      21432                                                                                                                                        Formaldehyde results in increased expression of SCNN1A mRNA
      7793                                                                                                                                            Ethanol results in increased expression of CYP-35C1 mRNA
      6217                                                                                                                                               Ethanol results in increased expression of CALCA mRNA
      30249                                                                                                             [Ethanol co-treated with Benzo(a)pyrene] results in increased expression of MSMO1 mRNA
      26244                                                                                                                                            Ethanol results in increased expression of DPP4 protein
      12669                                                                                               NFE2L2 gene mutant form inhibits the reaction [Ethanol results in increased expression of ADH1 mRNA]
      32441                                                              Cyclosporine inhibits the reaction [sodium arsenite promotes the reaction [Ethanol results in increased expression of PTGS2 protein]]
      23193                                                                                                       ALDH2 protein inhibits the reaction [Ethanol results in increased expression of BAX protein]
      20480                                                                                                                                          Formaldehyde results in decreased expression of MOGS mRNA
      36060                                                                                                                                             Ethanol results in increased expression of ZNF425 mRNA
      23836                                                                                                                    caraway oil inhibits the reaction [Ethanol affects the expression of BCL2 mRNA]
      10271                                                                                                           Folic Acid inhibits the reaction [Ethanol results in decreased expression of HOXA1 mRNA]
                                                     interaction_actions
      24388                                         decreases^expression
      4050                                          increases^expression
      11571                                           affects^expression
      25173  affects^cotreatment|decreases^reaction|increases^expression
      32618                                         decreases^expression
      13903                                         increases^expression
      8229                                          increases^expression
      25305                      decreases^expression|decreases^reaction
      25061                                           affects^expression
      22306                                         increases^expression
      12204                                         decreases^expression
      7075                                          decreases^expression
      26954                      decreases^expression|decreases^reaction
      31276                      decreases^expression|decreases^reaction
      16044 affects^cotreatment|increases^abundance|increases^expression
      6519                                          decreases^expression
      33990                     affects^cotreatment|decreases^expression
      26663                                           affects^expression
      19242                                         decreases^expression
      21784                                         decreases^expression
      16910                     affects^cotreatment|decreases^expression
      21875                                         decreases^expression
      25559                      decreases^reaction|increases^expression
      21323                                         increases^expression
      13284                                         decreases^expression
      7976                       decreases^reaction|increases^expression
      9392                       decreases^reaction|increases^expression
      3863                                          increases^expression
      26876                                         increases^expression
      23148                                         increases^expression
      13973                      decreases^expression|decreases^reaction
      31334                          affects^expression|affects^splicing
      28278                     affects^cotreatment|increases^expression
      858                                           decreases^expression
      6763                                          increases^expression
      32480                                         increases^expression
      11367                                         decreases^expression
      29747                      increases^expression|increases^reaction
      13602                                         decreases^expression
      5051                           affects^expression|affects^reaction
      34474                                         increases^expression
      33269                                         increases^expression
      16920                      decreases^reaction|increases^expression
      29660                                           affects^expression
      29697                                         decreases^expression
      11854                                           affects^expression
      4934                       decreases^expression|decreases^reaction
      13940                          affects^expression|affects^splicing
      27075                                         decreases^expression
      21987                                         increases^expression
      22126                                         increases^expression
      25649                        affects^reaction|increases^expression
      12535                          affects^expression|affects^splicing
      32987                     affects^cotreatment|increases^expression
      12399                                           affects^expression
      35891                      decreases^reaction|increases^expression
      25488                                         increases^expression
      14330                                         increases^expression
      17626                                         decreases^expression
      33986                                         decreases^expression
      8465                                          increases^expression
      6563                       decreases^expression|decreases^reaction
      20205                                         decreases^expression
      22281                                         decreases^expression
      10844                      decreases^reaction|increases^expression
      33432                                         increases^expression
      33487                                         increases^expression
      3045                                          increases^expression
      8615                                            affects^expression
      29670                                         increases^expression
      9346                                          decreases^expression
      13824 affects^cotreatment|increases^abundance|increases^expression
      8696                                          decreases^expression
      7131                                          increases^expression
      32671                                         decreases^expression
      20785                                         increases^expression
      10816                      decreases^reaction|increases^expression
      11114                      decreases^expression|decreases^reaction
      7146                                          decreases^expression
      11096                      decreases^expression|decreases^reaction
      12597                                         increases^expression
      11878                                           affects^expression
      34558                                         decreases^expression
      24450                      increases^activity|increases^expression
      9086                                          increases^expression
      10148                        affects^reaction|increases^expression
      14504                                         increases^expression
      8613                                          decreases^expression
      21432                                         increases^expression
      7793                                          increases^expression
      6217                                          increases^expression
      30249                     affects^cotreatment|increases^expression
      26244                                         increases^expression
      12669                      decreases^reaction|increases^expression
      32441   decreases^reaction|increases^expression|increases^reaction
      23193                      decreases^reaction|increases^expression
      20480                                         decreases^expression
      36060                                         increases^expression
      23836                        affects^expression|decreases^reaction
      10271                      decreases^expression|decreases^reaction
                                  pub_med_i_ds
      24388                           32497709
      4050                            23649840
      11571                           30319688
      25173                           30543783
      32618                           23381935
      13903                           30319688
      8229                            22298809
      25305                           25455889
      25061                           24355176
      22306                           20655997
      12204                           23381935
      7075                            34755883
      26954                           22173916
      31276                           35158046
      16044                           29432896
      6519                            31059573
      33990                           24155903
      26663                           30319688
      19242                           23649840
      21784                           20655997
      16910                           23378141
      21875                           23649840
      25559                           21704112
      21323                           23649840
      13284                           31059573
      7976                            28119953
      9392                            34995708
      3863                            23649840
      26876                           30319688
      23148                           19167417
      13973                           34474091
      31334                           30319688
      28278                           24155903
      858                             12679049
      6763                            29361514
      32480                           29361514
      11367                           31226463
      29747                           27270636
      13602                           29361514
      5051                            31811911
      34474                           23381935
      33269                           30319688
      16920                           30368987
      29660                           30319688
      29697                           34405320
      11854                           30319688
      4934                            24582693
      13940                           30319688
      27075                           23381935
      21987                           23649840
      22126                           20655997
      25649                           28131861
      12535                           30319688
      32987                           35412187
      12399                           26730594
      35891                           28095641
      25488                           30319688
      14330                           30319688
      17626                           23381935
      33986                  24065054|37271273
      8465                            30319688
      6563                            21878650
      20205                           23649840
      22281                           23649840
      10844                           26115886
      33432                           30319688
      33487                           30319688
      3045                   27905399|28937961
      8615                            30319688
      29670                           30319688
      9346                            29361514
      13824                           29432896
      8696                            23381935
      7131  12065697|22280800|22413959|9540844
      32671                           20829428
      20785                           23649840
      10816                           34346143
      11114                           34864093
      7146                            36174738
      11096                           34864093
      12597                           34192554
      11878                           30319688
      34558                           29361514
      24450                           32894639
      9086                            19167417
      10148                           34192554
      14504                           30319688
      8613                            23381935
      21432                           28937961
      7793                            23381935
      6217                            34755883
      30249                           35412187
      26244                           37271273
      12669                           34116071
      32441                           26220687
      23193                           19429258
      20480                           23649840
      36060                           28986285
      23836                           25859307
      10271                           19091803

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
             x_input chemical_name chemical_id  cas_rn  gene_symbol   gene_id
      5388   64-17-5       Ethanol     D000431 64-17-5          CA1       759
      11564  64-17-5       Ethanol     D000431 64-17-5     PPP1R14B     26472
      2762   50-00-0  Formaldehyde     D005557 50-00-0        PRMT6     55170
      25186  ethanol       Ethanol     D000431 64-17-5       MSRP-6    173607
      11546  64-17-5       Ethanol     D000431 64-17-5        PPIL2     23759
      17649 methanal  Formaldehyde     D005557 50-00-0        PGBD1     84547
      11260  64-17-5       Ethanol     D000431 64-17-5          PGR      5241
      24196  ethanol       Ethanol     D000431 64-17-5        KCTD7    154881
      14773  64-17-5       Ethanol     D000431 64-17-5 Y57G11C.1130  13203002
      4182   64-17-5       Ethanol     D000431 64-17-5        ABRAA    324520
      18649 methanal  Formaldehyde     D005557 50-00-0      TMEM218    219854
      27416  ethanol       Ethanol     D000431 64-17-5        RPL38      6169
      18540 methanal  Formaldehyde     D005557 50-00-0     TBC1D27P     96597
      22799  ethanol       Ethanol     D000431 64-17-5        FOLR1      2348
      5390   64-17-5       Ethanol     D000431 64-17-5        CA15C    768190
      25327  ethanol       Ethanol     D000431 64-17-5        NAB1A    565795
      7151   64-17-5       Ethanol     D000431 64-17-5       ELOVL5     60481
      21842  ethanol       Ethanol     D000431 64-17-5         DLAT      1737
      22113  ethanol       Ethanol     D000431 64-17-5         EGR2      1959
      18144 methanal  Formaldehyde     D005557 50-00-0        SCRN3     79634
      5704   64-17-5       Ethanol     D000431 64-17-5         CD84      8832
      22069  ethanol       Ethanol     D000431 64-17-5    EEF1AKMT3     25895
      4664   64-17-5       Ethanol     D000431 64-17-5     ANPEPB.1    322533
      13290  64-17-5       Ethanol     D000431 64-17-5        SPART     23111
      13031  64-17-5       Ethanol     D000431 64-17-5      SLC36A1    206358
      28635  ethanol       Ethanol     D000431 64-17-5          SYK      6850
      4075   50-00-0  Formaldehyde     D005557 50-00-0       ZNF746    155061
      28082  ethanol       Ethanol     D000431 64-17-5      SLC37A3     84255
      15104 methanal  Formaldehyde     D005557 50-00-0         ADH5       128
      14537  64-17-5       Ethanol     D000431 64-17-5        VDAC2      7417
      27540  ethanol       Ethanol     D000431 64-17-5        RUNX2       860
      21858  ethanol       Ethanol     D000431 64-17-5       DLGAP3     58512
      23909  ethanol       Ethanol     D000431 64-17-5        ILDR1    286676
      11613  64-17-5       Ethanol     D000431 64-17-5       PPP6R1     22870
      28162  ethanol       Ethanol     D000431 64-17-5       SLC7A7      9056
      4212   64-17-5       Ethanol     D000431 64-17-5        ACADS        35
      10235  64-17-5       Ethanol     D000431 64-17-5         MYL6      4637
      15215 methanal  Formaldehyde     D005557 50-00-0     APOBEC3B      9582
      15782 methanal  Formaldehyde     D005557 50-00-0        CRIPT      9419
      19454  ethanol       Ethanol     D000431 64-17-5      ADORA2A       135
      21737  ethanol       Ethanol     D000431 64-17-5         DDX1      1653
      7439   64-17-5       Ethanol     D000431 64-17-5     F49C12.5    186028
      9655   64-17-5       Ethanol     D000431 64-17-5       MAP7D2    256714
      9413   64-17-5       Ethanol     D000431 64-17-5        LIN7C     55327
      27868  ethanol       Ethanol     D000431 64-17-5      SHISAL1     85352
      462    50-00-0  Formaldehyde     D005557 50-00-0       CC2D2A     57545
      10149  64-17-5       Ethanol     D000431 64-17-5        MTCH2     23788
      22827  ethanol       Ethanol     D000431 64-17-5        FOXO4      4303
      10475  64-17-5       Ethanol     D000431 64-17-5        NFKB1      4790
      20433  ethanol       Ethanol     D000431 64-17-5          C8B       732
      23041  ethanol       Ethanol     D000431 64-17-5         GGA2     23062
      9690   64-17-5       Ethanol     D000431 64-17-5        MARF1      9665
      10413  64-17-5       Ethanol     D000431 64-17-5       NEDD4L     23327
      12129  64-17-5       Ethanol     D000431 64-17-5       RCBTB1     55213
      29779  ethanol       Ethanol     D000431 64-17-5    Y38C1AB.1    176823
      26074  ethanol       Ethanol     D000431 64-17-5        PCBD1      5092
      29079  ethanol       Ethanol     D000431 64-17-5       TMEM98     26022
      14660  64-17-5       Ethanol     D000431 64-17-5        WHT-8    189976
      24272  ethanol       Ethanol     D000431 64-17-5        KLHL1     57626
      18417 methanal  Formaldehyde     D005557 50-00-0       SREBF1      6720
      731    50-00-0  Formaldehyde     D005557 50-00-0       CREBZF     58487
      28857  ethanol       Ethanol     D000431 64-17-5       TEX261    113419
      23423  ethanol       Ethanol     D000431 64-17-5         GZMB      3002
      16230 methanal  Formaldehyde     D005557 50-00-0       FGFR1A     30705
      19197  ethanol       Ethanol     D000431 64-17-5        ABCC5     10057
      13492  64-17-5       Ethanol     D000431 64-17-5        STMN2     11075
      20189  ethanol       Ethanol     D000431 64-17-5      BHLHE41     79365
      12781  64-17-5       Ethanol     D000431 64-17-5        SGSM1    129049
      21155  ethanol       Ethanol     D000431 64-17-5      COL-176    181219
      28490  ethanol       Ethanol     D000431 64-17-5      ST3GAL2      6483
      966    50-00-0  Formaldehyde     D005557 50-00-0         EBPL     84650
      10684  64-17-5       Ethanol     D000431 64-17-5        NRCAM      4897
      9383   64-17-5       Ethanol     D000431 64-17-5         LGI2     55203
      22577  ethanol       Ethanol     D000431 64-17-5       FAM13A     10144
      26593  ethanol       Ethanol     D000431 64-17-5         PPIF     10105
      5591   64-17-5       Ethanol     D000431 64-17-5      CCDC28A     25901
      28350  ethanol       Ethanol     D000431 64-17-5        SPCS1     28972
      22177  ethanol       Ethanol     D000431 64-17-5        ELAC2     60528
      24867  ethanol       Ethanol     D000431 64-17-5       MFSD10     10227
      28555  ethanol       Ethanol     D000431 64-17-5        STT3B    201595
      4749   64-17-5       Ethanol     D000431 64-17-5       ARFIP1     27236
      24823  ethanol       Ethanol     D000431 64-17-5         MED4     29079
      2482   50-00-0  Formaldehyde     D005557 50-00-0         OPN3     23596
      6885   64-17-5       Ethanol     D000431 64-17-5         DOK6    220164
      19772  ethanol       Ethanol     D000431 64-17-5      APODA.2 100148022
      15706 methanal  Formaldehyde     D005557 50-00-0         CLGN      1047
      3418   50-00-0  Formaldehyde     D005557 50-00-0         STOM      2040
      27560  ethanol       Ethanol     D000431 64-17-5       S100A1      6271
      2722   50-00-0  Formaldehyde     D005557 50-00-0      PPP1R3C      5507
      19268  ethanol       Ethanol     D000431 64-17-5        ACAP3    116983
      56     50-00-0  Formaldehyde     D005557 50-00-0         ADH5       128
      7193   64-17-5       Ethanol     D000431 64-17-5       ENOPH1     58478
      17318 methanal  Formaldehyde     D005557 50-00-0          MTR      4548
      27729  ethanol       Ethanol     D000431 64-17-5     SELENOT2    352917
      24024  ethanol       Ethanol     D000431 64-17-5        ITGB5      3693
      29001  ethanol       Ethanol     D000431 64-17-5      TMEM108     66000
      8109   64-17-5       Ethanol     D000431 64-17-5        GNL3L     54552
      4590   64-17-5       Ethanol     D000431 64-17-5         ALPL       249
      30003  ethanol       Ethanol     D000431 64-17-5       ZFP941    407812
      24267  ethanol       Ethanol     D000431 64-17-5         KLF9       687
                          organism organism_id
      5388       Rattus norvegicus       10116
      11564           Mus musculus       10090
      2762            Homo sapiens        9606
      25186 Caenorhabditis elegans        6239
      11546           Mus musculus       10090
      17649           Homo sapiens        9606
      11260      Rattus norvegicus       10116
      24196           Mus musculus       10090
      14773 Caenorhabditis elegans        6239
      4182             Danio rerio        7955
      18649           Homo sapiens        9606
      27416           Mus musculus       10090
      18540           Homo sapiens        9606
      22799           Homo sapiens        9606
      5390             Danio rerio        7955
      25327            Danio rerio        7955
      7151             Danio rerio        7955
      21842            Danio rerio        7955
      22113           Mus musculus       10090
      18144           Homo sapiens        9606
      5704            Mus musculus       10090
      22069           Homo sapiens        9606
      4664             Danio rerio        7955
      13290           Mus musculus       10090
      13031      Rattus norvegicus       10116
      28635      Rattus norvegicus       10116
      4075            Homo sapiens        9606
      28082           Mus musculus       10090
      15104           Homo sapiens        9606
      14537           Homo sapiens        9606
      27540           Mus musculus       10090
      21858           Mus musculus       10090
      23909      Rattus norvegicus       10116
      11613           Mus musculus       10090
      28162            Danio rerio        7955
      4212            Mus musculus       10090
      10235            Danio rerio        7955
      15215           Homo sapiens        9606
      15782           Homo sapiens        9606
      19454           Mus musculus       10090
      21737           Mus musculus       10090
      7439  Caenorhabditis elegans        6239
      9655            Mus musculus       10090
      9413            Mus musculus       10090
      27868           Mus musculus       10090
      462             Homo sapiens        9606
      10149           Mus musculus       10090
      22827           Mus musculus       10090
      10475      Rattus norvegicus       10116
      20433      Rattus norvegicus       10116
      23041           Mus musculus       10090
      9690            Mus musculus       10090
      10413           Mus musculus       10090
      12129           Mus musculus       10090
      29779 Caenorhabditis elegans        6239
      26074      Rattus norvegicus       10116
      29079             Sus scrofa        9823
      14660 Caenorhabditis elegans        6239
      24272           Mus musculus       10090
      18417           Homo sapiens        9606
      731             Homo sapiens        9606
      28857           Mus musculus       10090
      23423           Mus musculus       10090
      16230            Danio rerio        7955
      19197           Mus musculus       10090
      13492           Mus musculus       10090
      20189            Danio rerio        7955
      12781           Mus musculus       10090
      21155 Caenorhabditis elegans        6239
      28490           Mus musculus       10090
      966             Homo sapiens        9606
      10684           Mus musculus       10090
      9383            Mus musculus       10090
      22577           Homo sapiens        9606
      26593           Mus musculus       10090
      5591            Mus musculus       10090
      28350           Mus musculus       10090
      22177           Mus musculus       10090
      24867      Rattus norvegicus       10116
      28555           Mus musculus       10090
      4749            Mus musculus       10090
      24823           Mus musculus       10090
      2482            Homo sapiens        9606
      6885            Mus musculus       10090
      19772            Danio rerio        7955
      15706           Homo sapiens        9606
      3418            Homo sapiens        9606
      27560           Mus musculus       10090
      2722            Homo sapiens        9606
      19268           Mus musculus       10090
      56                                    NA
      7193             Danio rerio        7955
      17318           Homo sapiens        9606
      27729            Danio rerio        7955
      24024           Homo sapiens        9606
      29001           Mus musculus       10090
      8109            Mus musculus       10090
      4590            Mus musculus       10090
      30003           Mus musculus       10090
      24267           Mus musculus       10090
                                             pub_med_ids
      5388                                      23200777
      11564                                     19167417
      2762                                      20655997
      25186                                     23381935
      11546                                     30319688
      17649                                     23649840
      11260                                     23591044
      24196                                     30319688
      14773                                     23381935
      4182                                      35412187
      18649                                     27664576
      27416                                     30319688
      18540                                     23649840
      22799                            17531458|19616087
      5390                                      35412187
      25327                            24355176|29361514
      7151                                      29361514
      21842                                     29361514
      22113                                     30319688
      18144                                     23649840
      5704                                      30319688
      22069                                     29432896
      4664                                      29361514
      13290                                     30319688
      13031                                     20655511
      28635                                     17920746
      4075                             20655997|23649840
      28082                                     30319688
      15104                            12604204|19038239
      14537                                     33017621
      27540                            24872432|34755883
      21858                                     30319688
      23909                                     31078653
      11613                                     30319688
      28162                                     35412187
      4212                             24146112|30319688
      10235                                     24355176
      15215                                     23649840
      15782                                     23649840
      19454                                     21955143
      21737                                     30319688
      7439                                      23381935
      9655                                      30319688
      9413                             21955143|30319688
      27868                                     30319688
      462                              23649840|27905399
      10149                                     30319688
      22827                                     30319688
      10475 11772933|17887948|30372842|32894639|37499997
      20433                                     15353170
      23041                                     30319688
      9690                                      30319688
      10413                                     30319688
      12129                                     30319688
      29779                                     23381935
      26074                                     17920746
      29079                                     28069986
      14660                                     23381935
      24272                                     30319688
      18417                                     23649840
      731                                       20655997
      28857                                     30319688
      23423                                     12700414
      16230                                     38070821
      19197                                     30517762
      13492                                     30319688
      20189                                     35412187
      12781                                     30319688
      21155                                     23381935
      28490                                     30319688
      966                                       23649840
      10684                                     30319688
      9383                                      30319688
      22577                                     23378141
      26593                                     30319688
      5591                                      30319688
      28350                                     30319688
      22177                                     30319688
      24867                                     17347304
      28555                                     30319688
      4749                                      30319688
      24823                                     30319688
      2482                                      23649840
      6885                                      30319688
      19772                                     29361514
      15706                                     23649840
      3418                                      23649840
      27560                                     30319688
      2722                                      27905399
      19268                                     30319688
      56                                        21920416
      7193                                      24355176
      17318                                     23649840
      27729                                     24355176
      24024                                     29432896
      29001                                     30319688
      8109                                      30319688
      4590                                      30319688
      30003                                     30319688
      24267                            19167417|30319688

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
              query     chemical chemical_id     gene gene_id
      3552  50-00-0 Formaldehyde     D005557     BCL2     596
      37891 ethanol      Ethanol     D000431    THBS1    7057
      39571 ethanol      Ethanol     D000431     IL1B    3553
      10624 ethanol      Ethanol     D000431    STAT3    6774
      127   50-00-0 Formaldehyde     D005557    KMT2A    4297
      17101 ethanol      Ethanol     D000431      IL6    3569
      46913 ethanol      Ethanol     D000431     FGF2    2247
      31208 ethanol      Ethanol     D000431      TNF    7124
      30206 ethanol      Ethanol     D000431     NOS3    4846
      46698 ethanol      Ethanol     D000431    NODAL    4838
      7715  ethanol      Ethanol     D000431     ATF4     468
      32629 ethanol      Ethanol     D000431      HGF    3082
      38563 ethanol      Ethanol     D000431    PRKCD    5580
      12438 ethanol      Ethanol     D000431    GRIA1    2890
      1491  50-00-0 Formaldehyde     D005557     EDN1    1906
      19199 ethanol      Ethanol     D000431    NR4A3    8013
      26156 ethanol      Ethanol     D000431     BAP1    8314
      28445 ethanol      Ethanol     D000431    ACVR1      90
      36319 ethanol      Ethanol     D000431    CASP8     841
      43127 ethanol      Ethanol     D000431      LEP    3952
      30949 ethanol      Ethanol     D000431      JUN    3725
      26359 ethanol      Ethanol     D000431    FGFR3    2261
      49588 ethanol      Ethanol     D000431    GSTA5  221357
      533   50-00-0 Formaldehyde     D005557     BCL2     596
      46963 ethanol      Ethanol     D000431   CYP1B1    1545
      42341 ethanol      Ethanol     D000431   NDUFS1    4719
      21976 ethanol      Ethanol     D000431     PTEN    5728
      22843 ethanol      Ethanol     D000431      IL6    3569
      25434 ethanol      Ethanol     D000431  PLEKHA1   59338
      39744 ethanol      Ethanol     D000431     APOE     348
      22050 ethanol      Ethanol     D000431      AVP     551
      7681  ethanol      Ethanol     D000431     PLS3    5358
      24269 ethanol      Ethanol     D000431  MRPS18B   28973
      11381 ethanol      Ethanol     D000431    TGFB1    7040
      26074 ethanol      Ethanol     D000431      NGF    4803
      42818 ethanol      Ethanol     D000431    PTGS2    5743
      12921 ethanol      Ethanol     D000431    OPRK1    4986
      36831 ethanol      Ethanol     D000431     RELA    5970
      724   50-00-0 Formaldehyde     D005557     HES1    3280
      6164  ethanol      Ethanol     D000431    BIRC2     329
      42909 ethanol      Ethanol     D000431    PTGS1    5742
      22401 ethanol      Ethanol     D000431    CCND2     894
      15833 ethanol      Ethanol     D000431     SYN2    6854
      18400 ethanol      Ethanol     D000431     EDN1    1906
      10381 ethanol      Ethanol     D000431   CTNNB1    1499
      16516 ethanol      Ethanol     D000431   GABBR1    2550
      43762 ethanol      Ethanol     D000431      HGF    3082
      22822 ethanol      Ethanol     D000431    PTGS2    5743
      42381 ethanol      Ethanol     D000431    SIRT1   23411
      39089 ethanol      Ethanol     D000431    HDAC4    9759
      5040  ethanol      Ethanol     D000431      JUN    3725
      36273 ethanol      Ethanol     D000431     EDN1    1906
      31447 ethanol      Ethanol     D000431   MIR29C  407026
      24896 ethanol      Ethanol     D000431     SOD2    6648
      9666  ethanol      Ethanol     D000431     CD47     961
      22979 ethanol      Ethanol     D000431   CYP1B1    1545
      34935 ethanol      Ethanol     D000431     CD63     967
      46840 ethanol      Ethanol     D000431     RARG    5916
      10014 ethanol      Ethanol     D000431      KDR    3791
      41069 ethanol      Ethanol     D000431    STAT3    6774
      35355 ethanol      Ethanol     D000431     CCL2    6347
      21291 ethanol      Ethanol     D000431     ATF3     467
      16777 ethanol      Ethanol     D000431    IGF1R    3480
      31830 ethanol      Ethanol     D000431     SOD1    6647
      20592 ethanol      Ethanol     D000431    IGF1R    3480
      29612 ethanol      Ethanol     D000431    MMP13    4322
      6410  ethanol      Ethanol     D000431     IL1B    3553
      45185 ethanol      Ethanol     D000431   TXNRD1    7296
      2016  50-00-0 Formaldehyde     D005557      TNF    7124
      44900 ethanol      Ethanol     D000431     MMP2    4313
      44293 ethanol      Ethanol     D000431      IL4    3565
      23718 ethanol      Ethanol     D000431     HES1    3280
      37204 ethanol      Ethanol     D000431     TLR4    7099
      12700 ethanol      Ethanol     D000431 PPARGC1A   10891
      49251 ethanol      Ethanol     D000431   ADORA1     134
      24367 ethanol      Ethanol     D000431     CNR1    1268
      3822  50-00-0 Formaldehyde     D005557    TRPV1    7442
      23373 ethanol      Ethanol     D000431     CHAT    1103
      24189 ethanol      Ethanol     D000431    TMCO1   54499
      32884 ethanol      Ethanol     D000431    CCND2     894
      23744 ethanol      Ethanol     D000431     MFN2    9927
      19541 ethanol      Ethanol     D000431     CD14     929
      9424  ethanol      Ethanol     D000431     YES1    7525
      39141 ethanol      Ethanol     D000431   CTNNB1    1499
      25304 ethanol      Ethanol     D000431    ATP7A     538
      771   50-00-0 Formaldehyde     D005557    HMOX1    3162
      5207  ethanol      Ethanol     D000431    FGFR1    2260
      27798 ethanol      Ethanol     D000431     PTEN    5728
      49210 ethanol      Ethanol     D000431     NOS3    4846
      42469 ethanol      Ethanol     D000431    PTGS2    5743
      27759 ethanol      Ethanol     D000431      TNF    7124
      47481 ethanol      Ethanol     D000431     SOD2    6648
      7883  ethanol      Ethanol     D000431     GJA1    2697
      28716 ethanol      Ethanol     D000431    MYD88    4615
      1803  50-00-0 Formaldehyde     D005557    ANXA1     301
      27696 ethanol      Ethanol     D000431      TNF    7124
      313   50-00-0 Formaldehyde     D005557   CDKN1B    1027
      17206 ethanol      Ethanol     D000431      MYC    4609
      21864 ethanol      Ethanol     D000431     DRD1    1812
      28363 ethanol      Ethanol     D000431    PPARA    5465
                                                                                    phenotype
      3552                               positive regulation of multicellular organism growth
      37891                                      positive regulation of macrophage chemotaxis
      39571                          positive regulation of nitric oxide biosynthetic process
      10624                                                     cell population proliferation
      127                                                                   apoptotic process
      17101                                                               glucose homeostasis
      46913                                                           stem cell proliferation
      31208                                          positive regulation of apoptotic process
      30206                                               positive regulation of angiogenesis
      46698                                                  stem cell population maintenance
      7715                                                                bone mineralization
      32629                              positive regulation of cell population proliferation
      38563                                               positive regulation of MAPK cascade
      12438                                      cellular response to organic cyclic compound
      1491                                                                  heart development
      19199                                                           hippocampus development
      26156                              negative regulation of cell population proliferation
      28445                                                       neural crest cell migration
      36319                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      43127               regulation of cytokine production involved in inflammatory response
      30949                                          positive regulation of apoptotic process
      26359                              negative regulation of cell population proliferation
      49588                                                      xenobiotic catabolic process
      533                                                       cell population proliferation
      46963                                                         steroid metabolic process
      42341                                         reactive oxygen species metabolic process
      21976                                                               locomotory behavior
      22843                                                maintenance of blood-brain barrier
      25434                                                     multicellular organism growth
      39744                          positive regulation of nitric oxide biosynthetic process
      22050                                                               locomotory behavior
      7681                                                                bone mineralization
      24269                                                                     mitochondrion
      11381                                                  cellular calcium ion homeostasis
      26074                              negative regulation of cell population proliferation
      42818                                                      regulation of blood pressure
      12921                                                    chemical synaptic transmission
      36831                                   positive regulation of interleukin-6 production
      724                                                       cell population proliferation
      6164                                                                  apoptotic process
      42909                                                      regulation of blood pressure
      22401                                                                  long-term memory
      15833                                                                   eye development
      18400                                                                 heart development
      10381                                                     cell population proliferation
      16516                                         gamma-aminobutyric acid signaling pathway
      43762                                                     regulation of p38MAPK cascade
      22822                                                maintenance of blood-brain barrier
      42381                                      regulation of bile acid biosynthetic process
      39089                                   positive regulation of neuron apoptotic process
      5040                                                                       angiogenesis
      36273                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      31447                                          positive regulation of apoptotic process
      24896                                                                     mitochondrion
      9666                                                                     cell migration
      22979                                                  membrane lipid catabolic process
      34935                                                positive regulation of endocytosis
      46840                                                           stem cell proliferation
      10014                                                                    cell migration
      41069                           positive regulation of tumor necrosis factor production
      35355                                      positive regulation of ERK1 and ERK2 cascade
      21291                                                                 lipid homeostasis
      16777                                                               glucose homeostasis
      31830                                          positive regulation of apoptotic process
      20592                             insulin-like growth factor receptor signaling pathway
      29612                                                                      ossification
      6410                                                                  apoptotic process
      45185                                                      response to oxidative stress
      2016                              leukocyte migration involved in inflammatory response
      44900                                                      response to oxidative stress
      44293                                                              response to nutrient
      23718                                                              midbrain development
      37204                                   positive regulation of interleukin-6 production
      12700                                             cellular response to oxidative stress
      49251                                                                      vasodilation
      24367                                                                     mitochondrion
      3822                           positive regulation of nitric oxide biosynthetic process
      23373                                                                            memory
      24189                                                                     mitochondrion
      32884                              positive regulation of cell population proliferation
      23744                                             mitochondrial calcium ion homeostasis
      19541                                                             inflammatory response
      9424                                                               cell differentiation
      39141                                   positive regulation of neuron apoptotic process
      25304                                                        mitochondrion organization
      771                                                       cellular iron ion homeostasis
      5207                                                                       angiogenesis
      27798                              negative regulation of multicellular organism growth
      49210                                                                      vasodilation
      42469                                                      regulation of blood pressure
      27759                                         negative regulation of mitotic cell cycle
      47481                                                      superoxide metabolic process
      7883                                                                    bone remodeling
      28716                                                                      neurogenesis
      1803                                                              inflammatory response
      27696                                         negative regulation of mitotic cell cycle
      313                                                                   apoptotic process
      17206                                                         glucose metabolic process
      21864                                                               locomotory behavior
      28363 negative regulation of transforming growth factor beta receptor signaling pathway
            phenotype_id                                disease disease_id
      3552    GO:0040018                     Nerve Degeneration    D009410
      37891   GO:0010759                               Fibrosis    D005355
      39571   GO:0045429                 Disease Models, Animal    D004195
      10624   GO:0008283                         Lung Neoplasms    D008175
      127     GO:0006915                 Chromosome Aberrations    D002869
      17101   GO:0042593                                 Stroke    D020521
      46913   GO:0072089                     Nerve Degeneration    D009410
      31208   GO:0043065                                  Edema    D004487
      30206   GO:0045766                    Atrial Fibrillation    D001281
      46698   GO:0019827                      Holoprosencephaly    D016142
      7715    GO:0030282                            Fatty Liver    D005234
      32629   GO:0008284              Carcinoma, Hepatocellular    D006528
      38563   GO:0043410                Neurotoxicity Syndromes    D020258
      12438   GO:0071407     Sexual Dysfunctions, Psychological    D020018
      1491    GO:0007507                     Pulmonary Fibrosis    D011658
      19199   GO:0021766                   Hypercholesterolemia    D006937
      26156   GO:0008285                       Breast Neoplasms    D001943
      28445   GO:0001755                      Acute Lung Injury    D055371
      36319   GO:0043123              Carcinoma, Hepatocellular    D006528
      43127   GO:1900015                            Tachycardia    D013610
      30949   GO:0043065              Carcinoma, Hepatocellular    D006528
      26359   GO:0008285                           Cleft Palate    D002972
      49588   GO:0042178                           Hypertension    D006973
      533     GO:0008283                                 Asthma    D001249
      46963   GO:0008202                                Adenoma    D000236
      42341   GO:0072593                      Stomach Neoplasms    D013274
      21976   GO:0007626                             Hemangioma    D006391
      22843   GO:0035633                       Cardiomyopathies    D009202
      25434   GO:0035264              Diabetes Mellitus, Type 2    D003924
      39744   GO:0045429                         Lung Neoplasms    D008175
      22050   GO:0007626                       Memory Disorders    D008569
      7681    GO:0030282 Chemical and Drug Induced Liver Injury    D056486
      24269   GO:0005739                    Disease Progression    D018450
      11381   GO:0006874                           Osteoporosis    D010024
      26074   GO:0008285                                Amnesia    D000647
      42818   GO:0008217                    Neoplasm Metastasis    D009362
      12921   GO:0007268              Cocaine-Related Disorders    D019970
      36831   GO:0032755          Amphetamine-Related Disorders    D019969
      724     GO:0008283      Neuroectodermal Tumors, Primitive    D018242
      6164    GO:0006915                         HIV Infections    D015658
      42909   GO:0008217                          Stomach Ulcer    D013276
      22401   GO:0007616                    Myocardial Ischemia    D017202
      15833   GO:0001654                           Hyperalgesia    D006930
      18400   GO:0007507    Glomerulosclerosis, Focal Segmental    D005923
      10381   GO:0008283                    Disease Progression    D018450
      16516   GO:0007214                           Hyperkinesis    D006948
      43762   GO:1900744          Liver Cirrhosis, Experimental    D008106
      22822   GO:0035633                         Brain Ischemia    D002545
      42381   GO:0070857                         HIV Infections    D015658
      39089   GO:0043525                 Diabetes Complications    D048909
      5040    GO:0001525                         Brain Injuries    D001930
      36273   GO:0043123                            Bradycardia    D001919
      31447   GO:0043065                        Liver Cirrhosis    D008103
      24896   GO:0005739     Peripheral Nervous System Diseases    D010523
      9666    GO:0016477                       Bipolar Disorder    D001714
      22979   GO:0046466 Chemical and Drug Induced Liver Injury    D056486
      34935   GO:0045807          Liver Neoplasms, Experimental    D008114
      46840   GO:0072089                         Heart Diseases    D006331
      10014   GO:0016477                   Pancreatic Neoplasms    D010190
      41069   GO:0032760                         Brain Ischemia    D002545
      35355   GO:0070374                          Hyperglycemia    D006943
      21291   GO:0055088     Peripheral Nervous System Diseases    D010523
      16777   GO:0042593        Cell Transformation, Neoplastic    D002471
      31830   GO:0043065                              Paralysis    D010243
      20592   GO:0048009     Peripheral Nervous System Diseases    D010523
      29612   GO:0001503          Liver Cirrhosis, Experimental    D008106
      6410    GO:0006915                      Muscular Diseases    D009135
      45185   GO:0006979                    Myocardial Ischemia    D017202
      2016    GO:0002523 Chemical and Drug Induced Liver Injury    D056486
      44900   GO:0006979                    Disease Progression    D018450
      44293   GO:0007584                               Fibrosis    D005355
      23718   GO:0030901                         Lung Neoplasms    D008175
      37204   GO:0032755                    Neoplasm Metastasis    D009362
      12700   GO:0034599                  Myocardial Infarction    D009203
      49251   GO:0042311                Subarachnoid Hemorrhage    D013345
      24367   GO:0005739                    Glucose Intolerance    D018149
      3822    GO:0045429                               Sneezing    D012912
      23373   GO:0007613                       Retinal Diseases    D012164
      24189   GO:0005739             Craniofacial Abnormalities    D019465
      32884   GO:0008284              Diabetes Mellitus, Type 2    D003924
      23744   GO:0051560                           Hyperalgesia    D006930
      19541   GO:0006954                         Brain Injuries    D001930
      9424    GO:0030154                      Prenatal Injuries    D049188
      39141   GO:0043525                               Fibrosis    D005355
      25304   GO:0007005                               Seizures    D012640
      771     GO:0006879 Chemical and Drug Induced Liver Injury    D056486
      5207    GO:0001525             Craniofacial Abnormalities    D019465
      27798   GO:0040015                            Fatty Liver    D005234
      49210   GO:0042311                        Pulmonary Edema    D011654
      42469   GO:0008217              Carcinoma, Hepatocellular    D006528
      27759   GO:0045930                                 Sepsis    D018805
      47481   GO:0006801                  Neoplasm Invasiveness    D009361
      7883    GO:0046849                         Lung Neoplasms    D008175
      28716   GO:0022008                           Inflammation    D007249
      1803    GO:0006954                  Neoplasm Invasiveness    D009361
      27696   GO:0045930                           Inflammation    D007249
      313     GO:0006915                      Stomach Neoplasms    D013274
      17206   GO:0006006                              Cleft Lip    D002971
      21864   GO:0007626                       Bipolar Disorder    D001714
      28363   GO:0030512                 Fatty Liver, Alcoholic    D005235

