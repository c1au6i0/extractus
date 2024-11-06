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
             x_input chemical_name chemical_id  cas_rn    gene_symbol   gene_id
      24388  ethanol       Ethanol     D000431 64-17-5          CASP3       836
      4050   50-00-0  Formaldehyde     D005557 50-00-0         TRIM29     23650
      11571  64-17-5       Ethanol     D000431 64-17-5         LRRTM1    347730
      25173  ethanol       Ethanol     D000431 64-17-5         COL1A1      1277
      32618  ethanol       Ethanol     D000431 64-17-5       R07E5.15    175570
      13903  64-17-5       Ethanol     D000431 64-17-5         PNPLA2     57104
      8229   64-17-5       Ethanol     D000431 64-17-5 DRE-MIR-146B-1 100033671
      25305  ethanol       Ethanol     D000431 64-17-5          CPT1A      1374
      25061  ethanol       Ethanol     D000431 64-17-5         CMKLR1      1240
      22306 methanal  Formaldehyde     D005557 50-00-0          XRCC5      7520
      12204  64-17-5       Ethanol     D000431 64-17-5          MSD-1    177863
      7075   64-17-5       Ethanol     D000431 64-17-5        COL10A1      1300
      26954  ethanol       Ethanol     D000431 64-17-5           FASN      2194
      31276  ethanol       Ethanol     D000431 64-17-5          OLIG3    167826
      16044  64-17-5       Ethanol     D000431 64-17-5          SPI1B     30117
      6519   64-17-5       Ethanol     D000431 64-17-5           CCN1      3491
      33990  ethanol       Ethanol     D000431 64-17-5           SOD1      6647
      26663  ethanol       Ethanol     D000431 64-17-5          EXOC3     11336
      19242 methanal  Formaldehyde     D005557 50-00-0     FAM83C-AS1    140846
      21784 methanal  Formaldehyde     D005557 50-00-0          STAT3      6774
      16910  64-17-5       Ethanol     D000431 64-17-5         TMSB10      9168
      21875 methanal  Formaldehyde     D005557 50-00-0         TBC1D1     23216
      25559  ethanol       Ethanol     D000431 64-17-5           CYBB      1536
      21323 methanal  Formaldehyde     D005557 50-00-0         RNF145    153830
      13284  64-17-5       Ethanol     D000431 64-17-5           OST4 100128731
      7976   64-17-5       Ethanol     D000431 64-17-5          DDIT3      1649
      9392   64-17-5       Ethanol     D000431 64-17-5           GCLC      2729
      3863   50-00-0  Formaldehyde     D005557 50-00-0        TEKT4P2 100132288
      26876  ethanol       Ethanol     D000431 64-17-5        FAM107A     11170
      23148  ethanol       Ethanol     D000431 64-17-5         AKR1B1       231
      13973  64-17-5       Ethanol     D000431 64-17-5          PPARA      5465
      31334  ethanol       Ethanol     D000431 64-17-5         OTUD7B     56957
      28278  ethanol       Ethanol     D000431 64-17-5          HMOX1      3162
      858    50-00-0  Formaldehyde     D005557 50-00-0         CYP4A8    266674
      6763   64-17-5       Ethanol     D000431 64-17-5          CEL.2    565117
      32480  ethanol       Ethanol     D000431 64-17-5          PTGS2      5743
      11367  64-17-5       Ethanol     D000431 64-17-5           LDHA      3939
      29747  ethanol       Ethanol     D000431 64-17-5          MAPK1      5594
      13602  64-17-5       Ethanol     D000431 64-17-5           PENK      5179
      5051   64-17-5       Ethanol     D000431 64-17-5          AGTR1       185
      34474  ethanol       Ethanol     D000431 64-17-5        T10E9.4    172362
      33269  ethanol       Ethanol     D000431 64-17-5          SCP2A    393839
      16920  64-17-5       Ethanol     D000431 64-17-5            TNC      3371
      29660  ethanol       Ethanol     D000431 64-17-5          M60.7    187467
      29697  ethanol       Ethanol     D000431 64-17-5       MAP1LC3B     81631
      11854  64-17-5       Ethanol     D000431 64-17-5        METTL26     84326
      4934   64-17-5       Ethanol     D000431 64-17-5         ADIPOQ      9370
      13940  64-17-5       Ethanol     D000431 64-17-5           PON2      5445
      27075  ethanol       Ethanol     D000431 64-17-5          FHL2B    450007
      21987 methanal  Formaldehyde     D005557 50-00-0       TMEM184C     55751
      22126 methanal  Formaldehyde     D005557 50-00-0         TSPYL2     64061
      25649  ethanol       Ethanol     D000431 64-17-5         CYP2A4     13086
      12535  64-17-5       Ethanol     D000431 64-17-5           NEFH      4744
      32987  ethanol       Ethanol     D000431 64-17-5          ROCK1      6093
      12399  64-17-5       Ethanol     D000431 64-17-5         MYOZ3A 100148802
      35891  ethanol       Ethanol     D000431 64-17-5          YWHAH      7533
      25488  ethanol       Ethanol     D000431 64-17-5           CUBN      8029
      14330  64-17-5       Ethanol     D000431 64-17-5          PSMA2      5683
      17626  64-17-5       Ethanol     D000431 64-17-5            VXN    254778
      33986  ethanol       Ethanol     D000431 64-17-5          SOCS3      9021
      8465   64-17-5       Ethanol     D000431 64-17-5          EMC10    284361
      6563   64-17-5       Ethanol     D000431 64-17-5          CCND2       894
      20205 methanal  Formaldehyde     D005557 50-00-0           LTO1    220064
      22281 methanal  Formaldehyde     D005557 50-00-0         WDSUB1    151525
      10844  64-17-5       Ethanol     D000431 64-17-5            IL6      3569
      33432  ethanol       Ethanol     D000431 64-17-5           SFPQ      6421
      33487  ethanol       Ethanol     D000431 64-17-5        SHROOM1    134549
      3045   50-00-0  Formaldehyde     D005557 50-00-0           PRLR      5618
      8615   64-17-5       Ethanol     D000431 64-17-5          EXC-4    173314
      29670  ethanol       Ethanol     D000431 64-17-5          MAGT1     84061
      9346   64-17-5       Ethanol     D000431 64-17-5          GAP43      2596
      13824  64-17-5       Ethanol     D000431 64-17-5        PLEKHB2     55041
      8696   64-17-5       Ethanol     D000431 64-17-5        F32B4.2    173036
      7131   64-17-5       Ethanol     D000431 64-17-5         COL1A1      1277
      32671  ethanol       Ethanol     D000431 64-17-5          RABL3    285282
      20785 methanal  Formaldehyde     D005557 50-00-0           OPA1      4976
      10816  64-17-5       Ethanol     D000431 64-17-5            IL6      3569
      11114  64-17-5       Ethanol     D000431 64-17-5          KCND1      3750
      7146   64-17-5       Ethanol     D000431 64-17-5         COL2A1      1280
      11096  64-17-5       Ethanol     D000431 64-17-5          KCNA5      3741
      12597  64-17-5       Ethanol     D000431 64-17-5         NFATC4      4776
      11878  64-17-5       Ethanol     D000431 64-17-5         MFSD2A     84879
      34558  ethanol       Ethanol     D000431 64-17-5         TBKBP1      9755
      24450  ethanol       Ethanol     D000431 64-17-5            CAT       847
      9086   64-17-5       Ethanol     D000431 64-17-5          FMO-4    179845
      10148  64-17-5       Ethanol     D000431 64-17-5          HMGA1      3159
      14504  64-17-5       Ethanol     D000431 64-17-5          PTPRO      5800
      8613   64-17-5       Ethanol     D000431 64-17-5          EWSR1      2130
      21432 methanal  Formaldehyde     D005557 50-00-0           SCG5      6447
      7793   64-17-5       Ethanol     D000431 64-17-5       CYP-35A5    178802
      6217   64-17-5       Ethanol     D000431 64-17-5          CALB2       794
      30249  ethanol       Ethanol     D000431 64-17-5          MSD-2    260109
      26244  ethanol       Ethanol     D000431 64-17-5           DPCD     25911
      12669  64-17-5       Ethanol     D000431 64-17-5         NFE2L2      4780
      32441  ethanol       Ethanol     D000431 64-17-5         PTGFRN      5738
      23193  ethanol       Ethanol     D000431 64-17-5        ALDH1L1     10840
      20480 methanal  Formaldehyde     D005557 50-00-0           MMP3      4314
      36070  ethanol       Ethanol     D000431 64-17-5         ZNF425    155054
      23836  ethanol       Ethanol     D000431 64-17-5           BCL2       596
      10271  64-17-5       Ethanol     D000431 64-17-5       HOTAIRM1 100506311
                          organism organism_id
      24388      Rattus norvegicus       10116
      4050            Homo sapiens        9606
      11571           Mus musculus       10090
      25173      Rattus norvegicus       10116
      32618 Caenorhabditis elegans        6239
      13903      Rattus norvegicus       10116
      8229             Danio rerio        7955
      25305           Homo sapiens        9606
      25061            Danio rerio        7955
      22306           Homo sapiens        9606
      12204 Caenorhabditis elegans        6239
      7075       Rattus norvegicus       10116
      26954           Mus musculus       10090
      31276           Homo sapiens        9606
      16044            Danio rerio        7955
      6519            Homo sapiens        9606
      33990           Homo sapiens        9606
      26663           Homo sapiens        9606
      19242           Homo sapiens        9606
      21784           Homo sapiens        9606
      16910           Mus musculus       10090
      21875           Homo sapiens        9606
      25559           Mus musculus       10090
      21323           Homo sapiens        9606
      13284            Danio rerio        7955
      7976            Mus musculus       10090
      9392            Mus musculus       10090
      3863            Homo sapiens        9606
      26876           Mus musculus       10090
      23148      Rattus norvegicus       10116
      13973           Homo sapiens        9606
      31334           Mus musculus       10090
      28278      Rattus norvegicus       10116
      858        Rattus norvegicus       10116
      6763             Danio rerio        7955
      32480      Rattus norvegicus       10116
      11367      Rattus norvegicus       10116
      29747           Mus musculus       10090
      13602           Homo sapiens        9606
      5051       Rattus norvegicus       10116
      34474 Caenorhabditis elegans        6239
      33269            Danio rerio        7955
      16920           Mus musculus       10090
      29660 Caenorhabditis elegans        6239
      29697           Homo sapiens        9606
      11854           Mus musculus       10090
      4934            Homo sapiens        9606
      13940            Danio rerio        7955
      27075            Danio rerio        7955
      21987           Homo sapiens        9606
      22126           Homo sapiens        9606
      25649           Mus musculus       10090
      12535      Rattus norvegicus       10116
      32987           Mus musculus       10090
      12399            Danio rerio        7955
      35891           Mus musculus       10090
      25488      Rattus norvegicus       10116
      14330            Danio rerio        7955
      17626           Mus musculus       10090
      33986      Rattus norvegicus       10116
      8465            Mus musculus       10090
      6563            Homo sapiens        9606
      20205           Homo sapiens        9606
      22281           Homo sapiens        9606
      10844      Rattus norvegicus       10116
      33432           Mus musculus       10090
      33487           Mus musculus       10090
      3045            Homo sapiens        9606
      8615  Caenorhabditis elegans        6239
      29670           Mus musculus       10090
      9346            Mus musculus       10090
      13824           Mus musculus       10090
      8696  Caenorhabditis elegans        6239
      7131       Rattus norvegicus       10116
      32671           Mus musculus       10090
      20785           Homo sapiens        9606
      10816           Mus musculus       10090
      11114           Mus musculus       10090
      7146           Gallus gallus        9031
      11096           Mus musculus       10090
      12597           Homo sapiens        9606
      11878           Mus musculus       10090
      34558           Mus musculus       10090
      24450      Rattus norvegicus       10116
      9086  Caenorhabditis elegans        6239
      10148           Mus musculus       10090
      14504      Rattus norvegicus       10116
      8613            Mus musculus       10090
      21432      Rattus norvegicus       10116
      7793  Caenorhabditis elegans        6239
      6217       Rattus norvegicus       10116
      30249 Caenorhabditis elegans        6239
      26244           Mus musculus       10090
      12669           Mus musculus       10090
      32441           Mus musculus       10090
      23193      Rattus norvegicus       10116
      20480           Homo sapiens        9606
      36070           Homo sapiens        9606
      23836           Mus musculus       10090
      10271           Homo sapiens        9606
                                                                                                                                                                                                     interaction
      24388                                                                                             beta-patchoulene analog inhibits the reaction [Ethanol results in increased expression of CASP3 protein]
      4050                                                                                                                                           Formaldehyde results in increased expression of TRIM29 mRNA
      11571                                                                                                                                                        Ethanol affects the expression of LRRTM1 mRNA
      25173                                                                                                        [Carbon Tetrachloride co-treated with Ethanol] results in increased expression of COL1A1 mRNA
      32618                                                                                                                                             Ethanol results in decreased expression of R07E5.15 mRNA
      13903                                                                                                             Silymarin inhibits the reaction [Ethanol results in increased expression of PNPLA2 mRNA]
      8229                                                                                                                                        Ethanol results in increased expression of DRE-MIR-146B-1 mRNA
      25305                                                                           [artenimol co-treated with NR1H4 protein] inhibits the reaction [Ethanol results in decreased expression of CPT1A protein]
      25061                                                                                                              [Ethanol co-treated with Benzo(a)pyrene] results in decreased expression of CMKLR1 mRNA
      22306                                                                                                                                           Formaldehyde results in decreased expression of XRCC5 mRNA
      12204                                                                                                                                                Ethanol results in decreased expression of MSD-1 mRNA
      7075                                                                                                                                            Ethanol results in increased expression of COL10A1 protein
      26954                                                                                                                                                 Ethanol results in decreased expression of FASN mRNA
      31276                                                                                                                   [Ethanol co-treated with Folic Acid] results in increased expression of OLIG3 mRNA
      16044                                                                                                               [Ethanol co-treated with Benzo(a)pyrene] results in decreased expression of SPI1B mRNA
      6519                                                      CCN1 protein inhibits the reaction [pterostilbene inhibits the reaction [Ethanol results in increased expression of H2AX protein modified form]]
      33990                                                                                                          NFE2L2 protein promotes the reaction [Ethanol results in increased expression of SOD1 mRNA]
      26663     [[Gasoline co-treated with Ethanol] results in increased abundance of [Particulate Matter co-treated with Polycyclic Aromatic Hydrocarbons]] which results in increased expression of EXOC3 mRNA
      19242                                                                                                                                      Formaldehyde results in increased expression of FAM83C-AS1 mRNA
      21784                                                                                                                                           Formaldehyde results in increased expression of STAT3 mRNA
      16910                                                                                                                                               Ethanol results in increased expression of TMSB10 mRNA
      21875                                                                                                                                          Formaldehyde results in increased expression of TBC1D1 mRNA
      25559                                                                                                                                                 Ethanol results in increased expression of CYBB mRNA
      21323                                                                                                                                          Formaldehyde results in decreased expression of RNF145 mRNA
      13284                                                                                                                                                 Ethanol results in increased expression of OST4 mRNA
      7976                                                                                                                                                 Ethanol results in increased expression of DDIT3 mRNA
      9392                                                                                                                                                  Ethanol results in increased expression of GCLC mRNA
      3863                                                                                                                                          Formaldehyde results in increased expression of TEKT4P2 mRNA
      26876                                                                                                                                              Ethanol results in increased expression of FAM107A mRNA
      23148                                                                                                                                               Ethanol results in decreased expression of AKR1B1 mRNA
      13973                                                                                                       NR1H4 protein inhibits the reaction [Ethanol results in decreased expression of PPARA protein]
      31334                                                                                                                                               Ethanol results in increased expression of OTUD7B mRNA
      28278                                                                                                              Silymarin inhibits the reaction [Ethanol results in decreased expression of HMOX1 mRNA]
      858                                                                                                                                            Formaldehyde results in decreased expression of CYP4A8 mRNA
      6763                                                                                                                                                 Ethanol results in decreased expression of CEL.2 mRNA
      32480 Ethanol promotes the reaction [[2,4-dichlorophenoxyacetic acid isooctyl ester results in increased abundance of 2,4-Dichlorophenoxyacetic Acid] which results in increased expression of PTGS2 mRNA]
      11367                                                                       Sildenafil Citrate inhibits the reaction [[Aflatoxin B1 co-treated with Ethanol] results in increased expression of LDHA mRNA]
      29747                                                                                                                                             Ethanol results in decreased expression of MAPK1 protein
      13602                                                                                                              Fomepizole inhibits the reaction [Ethanol results in decreased expression of PENK mRNA]
      5051                                                                                                                   Ethanol affects the reaction [Dietary Fats affects the expression of AGTR1 protein]
      34474                                                                                                                                              Ethanol results in decreased expression of T10E9.4 mRNA
      33269                                                                                                                                                Ethanol results in decreased expression of SCP2A mRNA
      16920                                                                                                                                                  Ethanol results in increased expression of TNC mRNA
      29660                                                                                                                                                Ethanol results in increased expression of M60.7 mRNA
      29697                                                                                                                                          Ethanol results in decreased expression of MAP1LC3B protein
      11854                                                                                                                                                       Ethanol affects the expression of METTL26 mRNA
      4934                                                                                                           ADIPOQ protein inhibits the reaction [Ethanol results in decreased expression of ATG5 mRNA]
      13940                                                                                                                                                 Ethanol results in decreased expression of PON2 mRNA
      27075                                                                                                               [Ethanol co-treated with Benzo(a)pyrene] results in increased expression of FHL2B mRNA
      21987                                                                                                                                        Formaldehyde results in increased expression of TMEM184C mRNA
      22126                                                                                                                                          Formaldehyde results in increased expression of TSPYL2 mRNA
      25649                                                                                                                                               Ethanol results in increased expression of CYP2A4 mRNA
      12535                                                                                                                                                          Ethanol affects the expression of NEFH mRNA
      32987                                                                                                                                                Ethanol results in increased expression of ROCK1 mRNA
      12399                                                                                                              [Ethanol co-treated with Benzo(a)pyrene] results in increased expression of MYOZ3A mRNA
      35891                                                                                                                                                Ethanol results in increased expression of YWHAH mRNA
      25488                                                                                                                                              Ethanol results in decreased expression of CUBN protein
      14330                                                                                                                                                         Ethanol affects the expression of PSMA2 mRNA
      17626                                                                                                                                                           Ethanol affects the expression of VXN mRNA
      33986                                                                                                         Ethanol promotes the reaction [ADIPOQ protein results in increased expression of SOCS3 mRNA]
      8465                                                                                                                              Ethanol affects the expression of and affects the splicing of EMC10 mRNA
      6563                                                                       4-benzyl-2-methyl-1,2,4-thiadiazolidine-3,5-dione inhibits the reaction [Ethanol results in decreased expression of CCND2 mRNA]
      20205                                                                                                                                            Formaldehyde results in decreased expression of LTO1 mRNA
      22281                                                                                                                                          Formaldehyde results in increased expression of WDSUB1 mRNA
      10844                                                                                                          platycodin D inhibits the reaction [Ethanol results in increased expression of IL6 protein]
      33432                                                                                                                              Ethanol affects the expression of and affects the splicing of SFPQ mRNA
      33487                                                                                                                                                       Ethanol affects the expression of SHROOM1 mRNA
      3045                                                                                                                                             Formaldehyde results in increased expression of PRLR mRNA
      8615                                                                                                                                                 Ethanol results in increased expression of EXC-4 mRNA
      29670                                                                                                                                                Ethanol results in increased expression of MAGT1 mRNA
      9346                                                                                                                              Ethanol affects the expression of and affects the splicing of GAP43 mRNA
      13824                                                                                                                           Ethanol affects the expression of and affects the splicing of PLEKHB2 mRNA
      8696                                                                                                                                               Ethanol results in decreased expression of F32B4.2 mRNA
      7131                                                                                                                 [Ethanol co-treated with Dietary Fats] results in increased expression of COL1A1 mRNA
      32671                                                                                                                                                Ethanol results in increased expression of RABL3 mRNA
      20785                                                                                                                                            Formaldehyde results in decreased expression of OPA1 mRNA
      10816                                                                       Thalidomide inhibits the reaction [[Ethanol co-treated with Hydrochloric Acid] results in increased expression of IL6 protein]
      11114                                                                                                                                                Ethanol results in increased expression of KCND1 mRNA
      7146                                                                                                                                                Ethanol results in decreased expression of COL2A1 mRNA
      11096                                                                                                                                                         Ethanol affects the expression of KCNA5 mRNA
      12597                                                              pterostilbene inhibits the reaction [Ethanol results in increased expression of and results in increased acetylation of NFATC4 protein]
      11878                                                                                                                                               Ethanol results in increased expression of MFSD2A mRNA
      34558                                                                                                                                                        Ethanol affects the expression of TBKBP1 mRNA
      24450                                                                                                           3-nitropropionic acid affects the reaction [Ethanol affects the expression of CAT protein]
      9086                                                                                                                                                 Ethanol results in increased expression of FMO-4 mRNA
      10148                                                                  CCN1 protein inhibits the reaction [pterostilbene inhibits the reaction [Ethanol results in increased expression of HMGA1 protein]]
      14504                                                                                                                                                Ethanol results in decreased expression of PTPRO mRNA
      8613                                                                                                                                                          Ethanol affects the expression of EWSR1 mRNA
      21432                                                                                                                                            Formaldehyde results in decreased expression of SCG5 mRNA
      7793                                                                                                                                              Ethanol results in increased expression of CYP-35A5 mRNA
      6217                                                                                                                                                 Ethanol results in decreased expression of CALB2 mRNA
      30249                                                                                                                                                Ethanol results in decreased expression of MSD-2 mRNA
      26244                                                                                                                                                 Ethanol results in decreased expression of DPCD mRNA
      12669                                                                     NFE2L2 affects the reaction [tetramethylpyrazine inhibits the reaction [Ethanol results in increased expression of SREBF1 mRNA]]
      32441                                                                                                                                               Ethanol results in increased expression of PTGFRN mRNA
      23193                                                                                                                                              Ethanol results in decreased expression of ALDH1L1 mRNA
      20480                                                                                                                                            Formaldehyde results in increased expression of MMP3 mRNA
      36070                                                                                                                                               Ethanol results in increased expression of ZNF425 mRNA
      23836                                                                                                                                              Ethanol results in decreased expression of BCL2 protein
      10271                                                                                                                                             Ethanol results in decreased expression of HOTAIRM1 mRNA
                                                      interaction_actions
      24388                       decreases^reaction|increases^expression
      4050                                           increases^expression
      11571                                            affects^expression
      25173                      affects^cotreatment|increases^expression
      32618                                          decreases^expression
      13903                       decreases^reaction|increases^expression
      8229                                           increases^expression
      25305   affects^cotreatment|decreases^expression|decreases^reaction
      25061                      affects^cotreatment|decreases^expression
      22306                                          decreases^expression
      12204                                          decreases^expression
      7075                                           increases^expression
      26954                                          decreases^expression
      31276                      affects^cotreatment|increases^expression
      16044                      affects^cotreatment|decreases^expression
      6519                        decreases^reaction|increases^expression
      33990                       increases^expression|increases^reaction
      26663  affects^cotreatment|increases^abundance|increases^expression
      19242                                          increases^expression
      21784                                          increases^expression
      16910                                          increases^expression
      21875                                          increases^expression
      25559                                          increases^expression
      21323                                          decreases^expression
      13284                                          increases^expression
      7976                                           increases^expression
      9392                                           increases^expression
      3863                                           increases^expression
      26876                                          increases^expression
      23148                                          decreases^expression
      13973                       decreases^expression|decreases^reaction
      31334                                          increases^expression
      28278                       decreases^expression|decreases^reaction
      858                                            decreases^expression
      6763                                           decreases^expression
      32480   increases^abundance|increases^expression|increases^reaction
      11367   affects^cotreatment|decreases^reaction|increases^expression
      29747                                          decreases^expression
      13602                       decreases^expression|decreases^reaction
      5051                            affects^expression|affects^reaction
      34474                                          decreases^expression
      33269                                          decreases^expression
      16920                                          increases^expression
      29660                                          increases^expression
      29697                                          decreases^expression
      11854                                            affects^expression
      4934                        decreases^expression|decreases^reaction
      13940                                          decreases^expression
      27075                      affects^cotreatment|increases^expression
      21987                                          increases^expression
      22126                                          increases^expression
      25649                                          increases^expression
      12535                                            affects^expression
      32987                                          increases^expression
      12399                      affects^cotreatment|increases^expression
      35891                                          increases^expression
      25488                                          decreases^expression
      14330                                            affects^expression
      17626                                            affects^expression
      33986                       increases^expression|increases^reaction
      8465                            affects^expression|affects^splicing
      6563                        decreases^expression|decreases^reaction
      20205                                          decreases^expression
      22281                                          increases^expression
      10844                       decreases^reaction|increases^expression
      33432                           affects^expression|affects^splicing
      33487                                            affects^expression
      3045                                           increases^expression
      8615                                           increases^expression
      29670                                          increases^expression
      9346                            affects^expression|affects^splicing
      13824                           affects^expression|affects^splicing
      8696                                           decreases^expression
      7131                       affects^cotreatment|increases^expression
      32671                                          increases^expression
      20785                                          decreases^expression
      10816   affects^cotreatment|decreases^reaction|increases^expression
      11114                                          increases^expression
      7146                                           decreases^expression
      11096                                            affects^expression
      12597 decreases^reaction|increases^acetylation|increases^expression
      11878                                          increases^expression
      34558                                            affects^expression
      24450                           affects^expression|affects^reaction
      9086                                           increases^expression
      10148                       decreases^reaction|increases^expression
      14504                                          decreases^expression
      8613                                             affects^expression
      21432                                          decreases^expression
      7793                                           increases^expression
      6217                                           decreases^expression
      30249                                          decreases^expression
      26244                                          decreases^expression
      12669      affects^reaction|decreases^reaction|increases^expression
      32441                                          increases^expression
      23193                                          decreases^expression
      20480                                          increases^expression
      36070                                          increases^expression
      23836                                          decreases^expression
      10271                                          decreases^expression
                          pub_med_i_ds
      24388                   29339218
      4050                    23649840
      11571                   30319688
      25173                   30543783
      32618                   23381935
      13903                   26115886
      8229                    22298809
      25305                   27939985
      25061                   35412187
      22306                   20655997
      12204                   23381935
      7075                    36174738
      26954                   22173916
      31276                   23378141
      16044                   35412187
      6519                    34405320
      33990                   23994065
      26663                   29432896
      19242                   27905399
      21784                   23649840
      16910                   30319688
      21875                   23649840
      25559 23978445|27984176|28935932
      21323                   23649840
      13284                   29361514
      7976                    28119953
      9392                    34995708
      3863                    23649840
      26876          21955143|30319688
      23148                   15353170
      13973                   27939985
      31334                   30319688
      28278                   34346143
      858                     12679049
      6763                    29361514
      32480                   36085217
      11367                   35608386
      29747                   35181401
      13602                   17934066
      5051                    31811911
      34474                   23381935
      33269                   29361514
      16920                   30319688
      29660                   23381935
      29697                   34405320
      11854                   30319688
      4934                    24582693
      13940                   29361514
      27075                   35412187
      21987                   23649840
      22126                   17938736
      25649                   19167417
      12535                   22954530
      32987                   30319688
      12399                   35412187
      35891                   30319688
      25488                   26185205
      14330                   24355176
      17626                   30319688
      33986                   20052772
      8465                    30319688
      6563                    21878650
      20205                   23649840
      22281                   23649840
      10844                   28852734
      33432                   30319688
      33487                   30319688
      3045           27905399|28937961
      8615                    22239914
      29670                   30319688
      9346                    30319688
      13824                   30319688
      8696                    23381935
      7131                    21051528
      32671                   30319688
      20785                   23649840
      10816                   25478868
      11114                   30319688
      7146                    27112526
      11096                   30319688
      12597                   34474091
      11878                   30319688
      34558                   30319688
      24450                   31550440
      9086                    23381935
      10148                   34405320
      14504                   15353170
      8613                    30319688
      21432                   12679049
      7793                    23381935
      6217                    35227807
      30249                   23381935
      26244                   34492310
      12669                   27837167
      32441                   30319688
      23193                   17920746
      20480                   27664576
      36070                   28986285
      23836 19429258|27983966|29069573
      10271                   28986285

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
                          organism organism_id                         pub_med_ids
      5388            Mus musculus       10090                            19167417
      11564            Danio rerio        7955                            29361514
      2762            Homo sapiens        9606                            20655997
      25186            Danio rerio        7955                            35412187
      11546           Mus musculus       10090                            30319688
      17649           Homo sapiens        9606                            23649840
      11260 Caenorhabditis elegans        6239                            23381935
      24196           Homo sapiens        9606                            31059573
      14773 Caenorhabditis elegans        6239                            23381935
      4182            Mus musculus       10090                   30319688|30517762
      18649           Homo sapiens        9606                            23649840
      27416           Mus musculus       10090                            30319688
      18540           Homo sapiens        9606                            20655997
      22799      Rattus norvegicus       10116                            31039417
      5390            Mus musculus       10090                            30319688
      25327           Mus musculus       10090                            30319688
      7151            Mus musculus       10090                   19167417|30319688
      21842           Homo sapiens        9606                            28986285
      22113      Rattus norvegicus       10116                            15353170
      18144           Homo sapiens        9606                            28937961
      5704             Danio rerio        7955                            35412187
      22069           Mus musculus       10090                            30319688
      4664            Mus musculus       10090                            30319688
      13290           Homo sapiens        9606                            15963989
      13031           Homo sapiens        9606                            28986285
      28635 Caenorhabditis elegans        6239                            25713357
      4075            Homo sapiens        9606                            23649840
      28082            Danio rerio        7955                            29361514
      15104           Homo sapiens        9606                            23649840
      14537           Mus musculus       10090                            30319688
      27540           Mus musculus       10090                            30319688
      21858           Mus musculus       10090                            30319688
      23909           Homo sapiens        9606 28763032|28964808|33161052|34474091
      11613           Mus musculus       10090                            30319688
      28162           Mus musculus       10090                   30319688|33017621
      4212             Danio rerio        7955                            29361514
      10235           Homo sapiens        9606                   31059573|35713687
      15215           Homo sapiens        9606                            23649840
      15782           Homo sapiens        9606                            23649840
      19454           Homo sapiens        9606                            29432896
      21737           Mus musculus       10090                            30319688
      7439  Caenorhabditis elegans        6239                            23381935
      9655            Mus musculus       10090                            30319688
      9413            Mus musculus       10090                            30319688
      27868           Mus musculus       10090                            30319688
      462             Homo sapiens        9606                   23649840|27905399
      10149      Rattus norvegicus       10116                   15475485|17637929
      22827           Mus musculus       10090                            30319688
      10475      Rattus norvegicus       10116                            15353170
      20433            Danio rerio        7955                            29361514
      23041            Danio rerio        7955                            29361514
      9690            Mus musculus       10090                            30319688
      10413           Homo sapiens        9606                            23378141
      12129            Danio rerio        7955                            35412187
      29779 Caenorhabditis elegans        6239                            23381935
      26074            Danio rerio        7955                            29361514
      29079           Homo sapiens        9606                            29432896
      14660           Mus musculus       10090                            30319688
      24272      Rattus norvegicus       10116                            22486562
      18417           Homo sapiens        9606                            23649840
      731             Homo sapiens        9606                            20655997
      28857           Mus musculus       10090                            30319688
      23423           Homo sapiens        9606                            23378141
      16230           Homo sapiens        9606                            20655997
      19197            Danio rerio        7955                            35412187
      13492           Mus musculus       10090                            30319688
      20189 Caenorhabditis elegans        6239                            23381935
      12781           Mus musculus       10090                            30319688
      21155           Homo sapiens        9606                            31059573
      28490           Mus musculus       10090                            30319688
      966             Homo sapiens        9606                            23649840
      10684           Mus musculus       10090                            30319688
      9383            Mus musculus       10090                            30319688
      22577           Mus musculus       10090                            30319688
      26593           Homo sapiens        9606                   20621659|23378141
      5591            Mus musculus       10090                            30319688
      28350            Danio rerio        7955                            29361514
      22177            Danio rerio        7955                            29361514
      24867      Rattus norvegicus       10116                            17920746
      28555           Mus musculus       10090                            30319688
      4749            Mus musculus       10090                            30319688
      24823           Mus musculus       10090                            30319688
      2482            Homo sapiens        9606                            23649840
      6885  Caenorhabditis elegans        6239                            23381935
      19772            Danio rerio        7955                            29361514
      15706           Homo sapiens        9606                            23649840
      3418            Homo sapiens        9606                            23649840
      27560           Homo sapiens        9606                            31059573
      2722            Homo sapiens        9606                            27905399
      19268           Mus musculus       10090                            30319688
      56                                    NA                            21920416
      7193            Homo sapiens        9606                   23378141|28986285
      17318           Homo sapiens        9606                            23649840
      27729            Danio rerio        7955                   29361514|35412187
      24024           Mus musculus       10090                   29018328|30319688
      29001            Danio rerio        7955                            29361514
      8109             Danio rerio        7955                            35412187
      4590            Homo sapiens        9606                            23378141
      30011           Mus musculus       10090                            30319688
      24267           Mus musculus       10090                            30319688

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
      37891 ethanol      Ethanol     D000431    MAPK3    5595
      39571 ethanol      Ethanol     D000431      AGT     183
      10624 ethanol      Ethanol     D000431     SOX9    6662
      127   50-00-0 Formaldehyde     D005557    KMT2A    4297
      17101 ethanol      Ethanol     D000431      LEP    3952
      46913 ethanol      Ethanol     D000431     TP53    7157
      31208 ethanol      Ethanol     D000431      TNF    7124
      30206 ethanol      Ethanol     D000431    VEGFA    7422
      46698 ethanol      Ethanol     D000431    FGFR1    2260
      7715  ethanol      Ethanol     D000431    PTGS2    5743
      32629 ethanol      Ethanol     D000431     ACTB      60
      38563 ethanol      Ethanol     D000431   CHRNA7    1139
      12438 ethanol      Ethanol     D000431     NOS3    4846
      1491  50-00-0 Formaldehyde     D005557     EDN1    1906
      19199 ethanol      Ethanol     D000431     INSR    3643
      26156 ethanol      Ethanol     D000431      IL6    3569
      28445 ethanol      Ethanol     D000431    SIRT1   23411
      36319 ethanol      Ethanol     D000431    HMOX1    3162
      43127 ethanol      Ethanol     D000431   MAPK14    1432
      30949 ethanol      Ethanol     D000431      ACE    1636
      26359 ethanol      Ethanol     D000431      AGT     183
      49588 ethanol      Ethanol     D000431    GSTM2    2946
      533   50-00-0 Formaldehyde     D005557     BCL2     596
      46963 ethanol      Ethanol     D000431     FGF2    2247
      42341 ethanol      Ethanol     D000431   NFE2L2    4780
      21976 ethanol      Ethanol     D000431  ADORA2A     135
      22843 ethanol      Ethanol     D000431     ACTB      60
      25434 ethanol      Ethanol     D000431  SLC4A10   57282
      39744 ethanol      Ethanol     D000431     JAK2    3717
      22050 ethanol      Ethanol     D000431     PTEN    5728
      7681  ethanol      Ethanol     D000431     MST1    4485
      24269 ethanol      Ethanol     D000431  ALDH7A1     501
      11381 ethanol      Ethanol     D000431      PTH    5741
      26074 ethanol      Ethanol     D000431     BCL2     596
      42818 ethanol      Ethanol     D000431   ATP1A1     476
      12921 ethanol      Ethanol     D000431      NPY    4852
      36831 ethanol      Ethanol     D000431   ADIPOQ    9370
      724   50-00-0 Formaldehyde     D005557     HES1    3280
      6164  ethanol      Ethanol     D000431    BIRC2     329
      42909 ethanol      Ethanol     D000431     SOD2    6648
      22401 ethanol      Ethanol     D000431     DRD2    1813
      15833 ethanol      Ethanol     D000431    MAPK3    5595
      18400 ethanol      Ethanol     D000431     TERT    7015
      10381 ethanol      Ethanol     D000431    CCND1     595
      16516 ethanol      Ethanol     D000431  SLC12A2    6558
      43762 ethanol      Ethanol     D000431      CRH    1392
      22822 ethanol      Ethanol     D000431      DMD    1756
      42381 ethanol      Ethanol     D000431     SOD1    6647
      39089 ethanol      Ethanol     D000431    FGFR3    2261
      5040  ethanol      Ethanol     D000431      JUN    3725
      36273 ethanol      Ethanol     D000431 TNFRSF1A    7132
      31447 ethanol      Ethanol     D000431     IL1B    3553
      24896 ethanol      Ethanol     D000431      APP     351
      9666  ethanol      Ethanol     D000431     DRD2    1813
      22979 ethanol      Ethanol     D000431    PTGS2    5743
      34935 ethanol      Ethanol     D000431     APOE     348
      46840 ethanol      Ethanol     D000431     GLI2    2736
      10014 ethanol      Ethanol     D000431     CD44     960
      41069 ethanol      Ethanol     D000431     IFNG    3458
      35355 ethanol      Ethanol     D000431     IGF1    3479
      21291 ethanol      Ethanol     D000431    PPARG    5468
      16777 ethanol      Ethanol     D000431    FOXA1    3169
      31830 ethanol      Ethanol     D000431      TNF    7124
      20592 ethanol      Ethanol     D000431    MAPK1    5594
      29612 ethanol      Ethanol     D000431   COL5A2    1290
      6410  ethanol      Ethanol     D000431     IL1B    3553
      45185 ethanol      Ethanol     D000431   NFE2L2    4780
      2016  50-00-0 Formaldehyde     D005557      TNF    7124
      44900 ethanol      Ethanol     D000431     EGFR    1956
      44293 ethanol      Ethanol     D000431   UGT1A1   54658
      23718 ethanol      Ethanol     D000431     OTX2    5015
      37204 ethanol      Ethanol     D000431     NOS2    4843
      12700 ethanol      Ethanol     D000431     GGT1    2678
      49251 ethanol      Ethanol     D000431      TNF    7124
      24367 ethanol      Ethanol     D000431   PPP3CC    5533
      3822  50-00-0 Formaldehyde     D005557    TRPV1    7442
      23373 ethanol      Ethanol     D000431   CHRNB2    1141
      24189 ethanol      Ethanol     D000431    PINK1   65018
      32884 ethanol      Ethanol     D000431      IL6    3569
      23744 ethanol      Ethanol     D000431     CDH2    1000
      19541 ethanol      Ethanol     D000431      TNF    7124
      9424  ethanol      Ethanol     D000431   NOTCH2    4853
      39141 ethanol      Ethanol     D000431    TRP53   22059
      25304 ethanol      Ethanol     D000431     SOD2    6648
      771   50-00-0 Formaldehyde     D005557    HMOX1    3162
      5207  ethanol      Ethanol     D000431    FGFR1    2260
      27798 ethanol      Ethanol     D000431    ADRB2     154
      49210 ethanol      Ethanol     D000431     SOD2    6648
      42469 ethanol      Ethanol     D000431     NOS2    4843
      27759 ethanol      Ethanol     D000431     EGFR    1956
      47481 ethanol      Ethanol     D000431     SOD1    6647
      7883  ethanol      Ethanol     D000431   CTNNB1    1499
      28716 ethanol      Ethanol     D000431   AGTR1A   11607
      1803  50-00-0 Formaldehyde     D005557    ANXA1     301
      27696 ethanol      Ethanol     D000431      TNF    7124
      313   50-00-0 Formaldehyde     D005557   CDKN1B    1027
      17206 ethanol      Ethanol     D000431   MAPK14    1432
      21864 ethanol      Ethanol     D000431   SLC1A1    6505
      28363 ethanol      Ethanol     D000431     TP53    7157
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
      28445 negative regulation of transforming growth factor beta receptor signaling pathway
      36319                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      43127               regulation of cytokine production involved in inflammatory response
      30949                                          positive regulation of apoptotic process
      26359                              negative regulation of cell population proliferation
      49588                                                      xenobiotic catabolic process
      533                                                       cell population proliferation
      46963                                                           stem cell proliferation
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
      36831                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      724                                                       cell population proliferation
      6164                                                                  apoptotic process
      42909                                                      regulation of blood pressure
      22401                                                                  long-term memory
      15833                                                                   eye development
      18400                                                                 heart development
      10381                                                     cell population proliferation
      16516                                         gamma-aminobutyric acid signaling pathway
      43762                                              regulation of NMDA receptor activity
      22822                                                maintenance of blood-brain barrier
      42381                                         reactive oxygen species metabolic process
      39089                                   positive regulation of neuron apoptotic process
      5040                                                                       angiogenesis
      36273                        positive regulation of I-kappaB kinase/NF-kappaB signaling
      31447                                          positive regulation of apoptotic process
      24896                                                                     mitochondrion
      9666                                                                     cell migration
      22979                                                maintenance of blood-brain barrier
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
      23744                                                              midbrain development
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
            phenotype_id                                         disease disease_id
      3552    GO:0040018                              Nerve Degeneration    D009410
      37891   GO:0010759                                  Brain Ischemia    D002545
      39571   GO:0045429                                   Death, Sudden    D003645
      10624   GO:0008283                                  Lung Neoplasms    D008175
      127     GO:0006915                          Chromosome Aberrations    D002869
      17101   GO:0042593                                   Stomach Ulcer    D013276
      46913   GO:0072089                                  Lung Neoplasms    D008175
      31208   GO:0043065 Drug-Related Side Effects and Adverse Reactions    D064420
      30206   GO:0045766                             Acute Kidney Injury    D058186
      46698   GO:0019827                                Breast Neoplasms    D001943
      7715    GO:0030282                            Esophageal Neoplasms    D004938
      32629   GO:0008284                       Carcinoma, Hepatocellular    D006528
      38563   GO:0043410                              Nerve Degeneration    D009410
      12438   GO:0071407                                          Sepsis    D018805
      1491    GO:0007507                              Pulmonary Fibrosis    D011658
      19199   GO:0021766                                    Hyperalgesia    D006930
      26156   GO:0008285                                  Brain Ischemia    D002545
      28445   GO:0030512                                Retinal Diseases    D012164
      36319   GO:0043123                                Breast Neoplasms    D001943
      43127   GO:1900015                             Myocardial Ischemia    D017202
      30949   GO:0043065                       Carcinoma, Hepatocellular    D006528
      26359   GO:0008285                                     Cholestasis    D002779
      49588   GO:0042178          Chemical and Drug Induced Liver Injury    D056486
      533     GO:0008283                                          Asthma    D001249
      46963   GO:0072089               Prenatal Exposure Delayed Effects    D011297
      42341   GO:0072593               Non-alcoholic Fatty Liver Disease    D065626
      21976   GO:0007626               Genetic Predisposition to Disease    D020022
      22843   GO:0035633                       Carcinoma, Hepatocellular    D006528
      25434   GO:0035264                             Cognition Disorders    D003072
      39744   GO:0045429                   Liver Cirrhosis, Experimental    D008106
      22050   GO:0007626                                Long QT Syndrome    D008133
      7681    GO:0030282          Chemical and Drug Induced Liver Injury    D056486
      24269   GO:0005739                             Disease Progression    D018450
      11381   GO:0006874                                    Osteoporosis    D010024
      26074   GO:0008285                                         Adenoma    D000236
      42818   GO:0008217                             Myocardial Ischemia    D017202
      12921   GO:0007268                       Cocaine-Related Disorders    D019970
      36831   GO:0043123                                     Weight Loss    D015431
      724     GO:0008283               Neuroectodermal Tumors, Primitive    D018242
      6164    GO:0006915                                  HIV Infections    D015658
      42909   GO:0008217                              Reperfusion Injury    D015427
      22401   GO:0007616                                Memory Disorders    D008569
      15833   GO:0001654                                    Hyperalgesia    D006930
      18400   GO:0007507               Genetic Predisposition to Disease    D020022
      10381   GO:0008283                             Disease Progression    D018450
      16516   GO:0007214                             Glucose Intolerance    D018149
      43762   GO:2000310                                     Hypotension    D007022
      22822   GO:0035633                                          Ataxia    D001259
      42381   GO:0072593                                     Weight Loss    D015431
      39089   GO:0043525                                    Cleft Palate    D002972
      5040    GO:0001525                                  Brain Injuries    D001930
      36273   GO:0043123                                        Anorexia    D000855
      31447   GO:0043065                           Learning Disabilities    D007859
      24896   GO:0005739                                       Paralysis    D010243
      9666    GO:0016477   Attention Deficit Disorder with Hyperactivity    D001289
      22979   GO:0035633                       Urinary Bladder Neoplasms    D001749
      34935   GO:0045807                                   Dyslipidemias    D050171
      46840   GO:0072089                          Disease Models, Animal    D004195
      10014   GO:0016477                            Pancreatic Neoplasms    D010190
      41069   GO:0032760                                 Atherosclerosis    D050197
      35355   GO:0070374                                    Hyperalgesia    D006930
      21291   GO:0055088               Non-alcoholic Fatty Liver Disease    D065626
      16777   GO:0042593                 Cell Transformation, Neoplastic    D002471
      31830   GO:0043065                            Pancreatic Neoplasms    D010190
      20592   GO:0048009                              Nerve Degeneration    D009410
      29612   GO:0001503                                 Liver Cirrhosis    D008103
      6410    GO:0006915                               Muscular Diseases    D009135
      45185   GO:0006979               Micronuclei, Chromosome-Defective    D048629
      2016    GO:0002523          Chemical and Drug Induced Liver Injury    D056486
      44900   GO:0006979                       Diabetes Mellitus, Type 2    D003924
      44293   GO:0007584 Drug-Related Side Effects and Adverse Reactions    D064420
      23718   GO:0030901                               Jaw Abnormalities    D007569
      37204   GO:0032755                                        Necrosis    D009336
      12700   GO:0034599                           Myocardial Infarction    D009203
      49251   GO:0042311                                Retinal Diseases    D012164
      24367   GO:0005739               Genetic Predisposition to Disease    D020022
      3822    GO:0045429                                        Sneezing    D012912
      23373   GO:0007613                                Reflex, Abnormal    D012021
      24189   GO:0005739                             Cognition Disorders    D003072
      32884   GO:0008284                             Depressive Disorder    D003866
      23744   GO:0030901                               Stomach Neoplasms    D013274
      19541   GO:0006954                                     Brain Edema    D001929
      9424    GO:0030154               Prenatal Exposure Delayed Effects    D011297
      39141   GO:0043525 Drug-Related Side Effects and Adverse Reactions    D064420
      25304   GO:0007005                    Psychoses, Substance-Induced    D011605
      771     GO:0006879          Chemical and Drug Induced Liver Injury    D056486
      5207    GO:0001525                      Craniofacial Abnormalities    D019465
      27798   GO:0040015                         Cardiomyopathy, Dilated    D002311
      49210   GO:0042311                                  Osteoarthritis    D010003
      42469   GO:0008217                                  Brain Ischemia    D002545
      27759   GO:0045930                            Pancreatic Neoplasms    D010190
      47481   GO:0006801                                        Ischemia    D007511
      7883    GO:0046849                                  Lung Neoplasms    D008175
      28716   GO:0022008                             Glucose Intolerance    D018149
      1803    GO:0006954                           Neoplasm Invasiveness    D009361
      27696   GO:0045930                            Hepatitis, Alcoholic    D006519
      313     GO:0006915                               Stomach Neoplasms    D013274
      17206   GO:0006006                                     Cholestasis    D002779
      21864   GO:0007626                                         Atrophy    D001284
      28363   GO:0030512                             Disease Progression    D018450

