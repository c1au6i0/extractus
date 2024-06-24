# extr_iris_ fetches data for CASRN 50-00-0

    Code
      results
    Output
      # A tibble: 2 x 8
        `Chemical Name` CASRN   `Exposure Route` `Assessment Type`
        <chr>           <chr>   <chr>            <chr>            
      1 Formaldehyde    50-00-0 Inhalation       Cancer           
      2 Formaldehyde    50-00-0 Oral             Noncancer        
      # i 4 more variables: `Critical Effect or Tumor Type` <chr>,
      #   `WOE Characterization` <chr>, `Toxicity Value Type` <chr>,
      #   `Toxicity Value` <chr>

# extr_ice fetches data for CASRN 50-00-0

    Code
      extr_ice(casrn = "50-00-0")
    Message
      Sending request to ICE database...
      Request succeeded with status code: 200
    Output
                                                                                                                                             assay
      1                                                                                                                                      hCLAT
      2                                                                                                                      Report on Carcinogens
      3                                                                                                                                      hCLAT
      4                                                                                                                       IRIS Carcinogenicity
      5                                                                                                                        CoMPARA, AR Agonist
      6                                                                                                                                      hCLAT
      7                                                                                                                                     U-SENS
      8                                                                                                                       IARC Carcinogenicity
      9                                                                                                                                      hCLAT
      10                                                                                                                     In Vitro Genotoxicity
      11                                                                                                                                     hCLAT
      12                                                                                                                      IRIS Carcinogenicity
      13                                                                                                                                     hCLAT
      14                                                                                                                      IRIS Carcinogenicity
      15                                     OPERA, Collaborative Acute Toxicity Modeling Suite. Nontoxic. LD50 > 2000 mg/kg vs LD50  ≤ 2000 mg/kg
      16                                                                                                                                    LuSens
      17                                                                                                                    CoMPARA, AR Antagonist
      18                                                                                                                             TER Corrosion
      19                                                                                                                             TER Corrosion
      20                                                                                                                             TER Corrosion
      21                                                                                                                        CERAPP, ER Binding
      22                                                                                                                              KeratinoSens
      23                                                                                                                       CoMPARA, AR Binding
      24                                                                                                                              KeratinoSens
      25                                                                                                                        CERAPP, ER Agonist
      26                                                                                                                                    mMUSST
      27                                                                                                                                      DPRA
      28                                                                                                                                      DPRA
      29                                                                                                               CATMoS, Acute Oral Toxicity
      30                                                                                                                                      DPRA
      31                                                                                                                                      DPRA
      32                                                                                                                                      DPRA
      33                                                                                                                                      DPRA
      34                                                                                                                                      DPRA
      35                                                                                                                                      DPRA
      36                                                                                                                                    U-SENS
      37                                                                                                                                      DPRA
      38                                                                                                                                      DPRA
      39                                                                                                                                      LLNA
      40                                                                                                                                      DPRA
      41                                                                                                            Human Repeat Insult Patch Test
      42                                         OPERA, Collaborative Acute Toxicity Modeling Suite. very_toxic LD50 ≤ 50 mg/kg vs LD50 > 50 mg/kg
      43                                                                                                            Human Repeat Insult Patch Test
      44                                                                                                            Human Repeat Insult Patch Test
      45                                                                                                            Human Repeat Insult Patch Test
      46                                                                                                            Human Repeat Insult Patch Test
      47                                                                                                            Human Repeat Insult Patch Test
      48                                                                                                            Human Repeat Insult Patch Test
      49                                                                                                            Human Repeat Insult Patch Test
      50                                                                                                                                      DPRA
      51                                                                                                                   Human Maximization Test
      52                                                                                                                   Human Maximization Test
      53                                                                                                               CATMoS, Acute Oral Toxicity
      54                                                                                                                                     hCLAT
      55                                                                                                                                     hCLAT
      56                                                                                                                                     hCLAT
      57                                                                                                                     CERAPP, ER Antagonist
      58                                                                                                            Human Repeat Insult Patch Test
      59                                                                                                            Human Repeat Insult Patch Test
      60                                                                                                                   Human Maximization Test
      61                                                                                                                             TER Corrosion
      62                                                                                                                             TER Corrosion
      63                                                                                                                             TER Corrosion
      64                                                                                                            Human Repeat Insult Patch Test
      65                                                                                                            Human Repeat Insult Patch Test
      66                                                                                                                   Human Maximization Test
      67                                                                                                            Human Repeat Insult Patch Test
      68                                                                                                                                     hCLAT
      69                                                                                                                   Human Maximization Test
      70                                                                                                                   Human Maximization Test
      71                                                                                                                                     hCLAT
      72                                                                                                                   Human Maximization Test
      73                                                                                                                                     hCLAT
      74                                                                                                                   Human Maximization Test
      75                                                                                                                                    LuSens
      76                                                                                                             Rat Acute Inhalation Toxicity
      77                                                                                                      OPERA, Caco-2 permeability (logPapp)
      78                                                                                             OPERA, Octanol-Water Distribution Coefficient
      79                                                                                                            Human Repeat Insult Patch Test
      80                                                                                                                                     hCLAT
      81                                                                                                                                      LLNA
      82                                  OPERA, The whole body primary biotransformation rate (half-life) constant for organic chemicals in fish.
      83                                                                                                                                     hCLAT
      84                                                                                                            Human Repeat Insult Patch Test
      85                                                                                                                                     hCLAT
      86                                                                                                                                      LLNA
      87                                                                                                            Human Repeat Insult Patch Test
      88                                                                                                                                     hCLAT
      89                                                                                                                                      LLNA
      90                                                                                                            Human Repeat Insult Patch Test
      91                                                                                                                                      LLNA
      92                                                                                                            Human Repeat Insult Patch Test
      93                                                                                                                                      LLNA
      94                                                                                                            Human Repeat Insult Patch Test
      95                                                                                                                                      LLNA
      96                                                                                                            Human Repeat Insult Patch Test
      97                                                                                                                                      LLNA
      98                                                                                                                                      DPRA
      99                                                                                                                                    U-SENS
      100                                                                                                                                     DPRA
      101                                                                                                                                   U-SENS
      102                                                                                                                                     DPRA
      103 OPERA, OH rate constant for the atmospheric, gas-phase reaction between photochemically produced hydroxyl radicals and organic chemicals
      104                                                                                                                                     DPRA
      105                                                                                                                                     DPRA
      106                                                                                                           Human Repeat Insult Patch Test
      107                                                                                                           Human Repeat Insult Patch Test
      108                                                                                                                                     LLNA
      109                                                                                                                                   Cancer
      110                                                                                                                OPERA, Molar refractivity
      111                                                                                                           Human Repeat Insult Patch Test
      112                                                                                                           Human Repeat Insult Patch Test
      113                                                                                            OPERA, Octanol-Water Distribution Coefficient
      114                                                                                                                                     LLNA
      115                                                                                                           Human Repeat Insult Patch Test
      116                                                                                                           Human Repeat Insult Patch Test
      117                                                                                                           Human Repeat Insult Patch Test
      118                                                                                                           Human Repeat Insult Patch Test
      119                                                                                                           Human Repeat Insult Patch Test
      120                                                                                                                                     LLNA
      121                                                                                                           Human Repeat Insult Patch Test
      122                                                                                                                                     LLNA
      123                                                                                                           Human Repeat Insult Patch Test
      124                                                                                                                                     LLNA
      125                                                                                                           Human Repeat Insult Patch Test
      126                                                                                                                                     LLNA
      127                                                                                                           Human Repeat Insult Patch Test
      128                                                                                                                                     LLNA
      129                                                                                                           Human Repeat Insult Patch Test
      130                                                                                                                                     LLNA
      131                                                                                                           Human Repeat Insult Patch Test
      132                                                                                                                  OPERA, Water Solubility
      133                                                                                                                                     LLNA
      134                                                                                                           Human Repeat Insult Patch Test
      135                                                                                                                                     LLNA
      136                                                                                                                                     DPRA
      137                                                                                                                                     DPRA
      138                                                                                                                                     DPRA
      139                                                                                                                                     DPRA
      140                                                                                                                                     DPRA
      141                                                                                                                                     DPRA
      142                                                                                                                                     DPRA
      143                                                                                                                                     DPRA
      144                                                                                                                                     DPRA
      145                                                                                                                                     DPRA
      146                                                                                                                                     DPRA
      147                                                                                                                                     DPRA
      148                                                                                                                                     DPRA
      149                                                                                                                                     DPRA
      150                                                                                                                                     DPRA
      151                                                                                               OPERA, Octanol-Water Partition Coefficient
      152                                                                                                                                     DPRA
      153                                                                                                                                     DPRA
      154                                                                                                                                     DPRA
      155                                                                                                              OPERA, Henry's Law Constant
      156                                                                                                                                     DPRA
      157                                                                                                                                     DPRA
      158                                                                                                                                     DPRA
      159                                                                                                                                     DPRA
      160                                                                                                                                     DPRA
      161                                                                                                                                     DPRA
      162                                                                                                                                     DPRA
      163                                                                                                                                   LuSens
      164                                                                                                                                     DPRA
      165                                                                                                                    OPERA, Vapor Pressure
      166                                                                                                                                     DPRA
      167                                                                                                                                     DPRA
      168                                                                                                                                     DPRA
      169                                                                                                OPERA, Combined dipolarity/polarizability
      170                                                                                                            OPERA, Number of oxygen atoms
      171                                                                                                            OPERA, Number of carbon atoms
      172                                                                                                              OPERA, HPLC retention time.
      173                                                                                                                                     DPRA
      174                                                                                                                                     DPRA
      175                                                                                                                                   mMUSST
      176                                                                                        OPERA, Negative Log of Acid Dissociation Constant
      177                                                                                                 OPERA, Octanol-Air Partition Coefficient
      178                                                        OPERA, biodegradation half-life for compounds containing only carbon and hydrogen
      179                                                                  OPERA, Number of rings containing heteroatoms (N, O, P, S, or halogens)
      180                                                                                       OPERA, Number failures of the Lipinski's Rule Of 5
      181                                                                                                              CATMoS, Acute Oral Toxicity
      182                                                                                                     OPERA, Human Plasma Fraction Unbound
      183                                                                                         OPERA, Number of heavy atoms (i.e. not hydrogen)
      184                                                                                                 OPERA, Human Hepatic Intrinsic Clearance
      185                                                                                                          OPERA, Number of nitrogen atoms
      186                                                                                                                   OPERA, Number of atoms
      187                                                                                                                  Rat Acute Oral Toxicity
      188                                                                                                            Rat Acute Inhalation Toxicity
      189                                                                                                                  Rat Acute Oral Toxicity
      190                                                                                                            Rat Acute Inhalation Toxicity
      191                                                                                                                  Rat Acute Oral Toxicity
      192                                                                                                                  Rat Acute Oral Toxicity
      193                                                                                                                  Rat Acute Oral Toxicity
      194                                                                                                                                   LuSens
      195                                                                                                                  Rat Acute Oral Toxicity
      196                                                                                                          OPERA, Number of aromatic atoms
      197                                              OPERA, Number of hydrogen bond acceptors (using CDK HBondAcceptorCountDescriptor algorithm)
      198                                                                                                              SEEM3, Exposure Predictions
      199                                                                                                              SEEM3, Exposure Predictions
      200                                                                                                              SEEM3, Exposure Predictions
      201                                                                                                                   OPERA, Number of rings
      202                                                                                            OPERA, Fraction of sp3 carbons to sp2 carbons
      203                                                                                                            Rat Acute Inhalation Toxicity
      204                                                    OPERA, Number of hydrogen bond donors (using CDK HBondDonorCountDescriptor algorithm)
      205                                                                                                                             KeratinoSens
      206                                                                                                                             KeratinoSens
      207                                                                                                                             KeratinoSens
      208                                                                                                                             KeratinoSens
      209                                                                                                                                     LLNA
      210                                                                                                                             KeratinoSens
      211                                                                                                                     OPERA, Boiling Point
      212                                                                               OPERA, Number of rotatable bonds, excluding terminal bonds
      213                                                                                                            Rat Acute Inhalation Toxicity
      214                                                                                                                  Rat Acute Oral Toxicity
      215                                                                                                                  Rat Acute Oral Toxicity
      216                                                                                                            Rat Acute Inhalation Toxicity
      217                                                                                                                         Molecular Weight
      218                                                                                 OPERA, soil adsorption coefficient of organic compounds.
      219                                                                                                                     OPERA, Melting Point
      220                                                                                                      OPERA, Fish bioconcentration factor
      221                                                                                                                             KeratinoSens
      222                                                                                                                             KeratinoSens
      223                                                                                                    OPERA, Topological polar surface area
      224                                                                                                            Rat Acute Inhalation Toxicity
      225                                                                                                            Rat Acute Inhalation Toxicity
      226                                                                                                                                   U-SENS
                                                                  endpoint
      1                                                         CD54, Call
      2                                                     Listing status
      3                                                         CD86, Call
      4                                               WOE characterization
      5                                                               Call
      6                                                               Call
      7                                                               Call
      8                                                         IARC group
      9                                                         CD86, Call
      10                                            Bacterial mutagenicity
      11                                                              Call
      12                                                        Tumor type
      13                                                        CD54, Call
      14                                              Inhalation risk unit
      15                                                         CATMoS_NT
      16                                                              Call
      17                                                              Call
      18                                                              Call
      19                                                              Call
      20                                                              Call
      21                                                              Call
      22                                                              Call
      23                                                              Call
      24                                                              Call
      25                                                              Call
      26                                                              Call
      27                                                              Call
      28                                                              Call
      29                                                EPA Classification
      30                                                              Call
      31                                                              Call
      32                                                              Call
      33                                                              Call
      34                                                              Call
      35                                                              Call
      36                                                              Call
      37                                                              Call
      38                                                              Call
      39                                                              Call
      40                                                              Call
      41                                                              Call
      42                                                         CATMoS_VT
      43                                        Relative reliability score
      44                                                              Call
      45                                        Relative reliability score
      46                                                              Call
      47                                        Relative reliability score
      48                                                              Call
      49                                        Relative reliability score
      50                                                              Call
      51                                                              Call
      52                                        Relative reliability score
      53                                                GHS Classification
      54                                                        CD86, Call
      55                                                        CD54, Call
      56                                                              Call
      57                                                              Call
      58                                                              Call
      59                                        Relative reliability score
      60                                      Induction dose per skin area
      61                                                               TER
      62                                                               TER
      63                                                               TER
      64                                   Incidence of positive responses
      65                                      Induction dose per skin area
      66  Induction dose per skin area, 5% incidence of positive responses
      67                                      Induction dose per skin area
      68                                                              CV75
      69               Induction dose per skin area, one positive response
      70                 Concentration, 5% incidence of positive responses
      71                                                       CD86, EC150
      72                                   Incidence of positive responses
      73                                                       CD54, EC200
      74                              Concentration, one positive response
      75                                                             EC1.5
      76                                                              LC50
      77                                                          LogCACO2
      78                                                      LogD, ph 7.4
      79  Induction dose per skin area, 5% incidence of positive responses
      80                                                       CD54, EC200
      81                                                               EC3
      82                                                             LogKM
      83                                                              CV75
      84               Induction dose per skin area, one positive response
      85                                                              CV75
      86                                                               EC3
      87                 Concentration, 5% incidence of positive responses
      88                                                       CD86, EC150
      89                                                               EC3
      90                                   Incidence of positive responses
      91                                                               EC3
      92                              Concentration, one positive response
      93                                                               EC3
      94  Induction dose per skin area, 5% incidence of positive responses
      95                                                               EC3
      96                                      Induction dose per skin area
      97                                                               EC3
      98                                                     Depletion Lys
      99                                                       CD86, EC150
      100                                                    Depletion Cys
      101                                                             CV70
      102                                                    Depletion Cys
      103                                                           LogAOH
      104                                              Depletion Lys + Cys
      105                                                    Depletion Lys
      106                                  Incidence of positive responses
      107                             Concentration, one positive response
      108                                                              EC3
      109                                            Cancer Endpoint Count
      110                                                     MolarRefract
      111 Induction dose per skin area, 5% incidence of positive responses
      112                                     Induction dose per skin area
      113                                                     LogD, ph 5.5
      114                                                              EC3
      115              Induction dose per skin area, one positive response
      116                Concentration, 5% incidence of positive responses
      117                                  Incidence of positive responses
      118                             Concentration, one positive response
      119              Induction dose per skin area, one positive response
      120                                                              EC3
      121                Concentration, 5% incidence of positive responses
      122                                                              EC3
      123                                  Incidence of positive responses
      124                                                              EC3
      125                             Concentration, one positive response
      126                                                              EC3
      127 Induction dose per skin area, 5% incidence of positive responses
      128                                                              EC3
      129                                     Induction dose per skin area
      130                                                              EC3
      131              Induction dose per skin area, one positive response
      132                                                               WS
      133                                                              EC3
      134                Concentration, 5% incidence of positive responses
      135                                                              EC3
      136                                                    Depletion Lys
      137                                                    Depletion Cys
      138                                                    Depletion Cys
      139                                              Depletion Lys + Cys
      140                                              Depletion Lys + Cys
      141                                                    Depletion Lys
      142                                                    Depletion Lys
      143                                                    Depletion Cys
      144                                              Depletion Lys + Cys
      145                                                    Depletion Lys
      146                                                    Depletion Lys
      147                                                    Depletion Cys
      148                                                    Depletion Cys
      149                                              Depletion Lys + Cys
      150                                              Depletion Lys + Cys
      151                                                             LogP
      152                                                    Depletion Lys
      153                                              Depletion Lys + Cys
      154                                                    Depletion Lys
      155                                                               HL
      156                                                    Depletion Lys
      157                                                    Depletion Cys
      158                                                    Depletion Cys
      159                                              Depletion Lys + Cys
      160                                              Depletion Lys + Cys
      161                                                    Depletion Lys
      162                                              Depletion Lys + Cys
      163                                                             IC50
      164                                                    Depletion Lys
      165                                                               VP
      166                                                    Depletion Cys
      167                                                    Depletion Cys
      168                                              Depletion Lys + Cys
      169                                                 CombDipolPolariz
      170                                                              nbO
      171                                                              nbC
      172                                                               RT
      173                                                    Depletion Cys
      174                                              Depletion Lys + Cys
      175                                                      CD86, EC120
      176                                                 pKa, Ionizations
      177                                                              KOA
      178                                                        LogBioDeg
      179                                                     nbHeteroRing
      180                                               nbLipinskiFailures
      181                                                             LD50
      182                                                               Fu
      183                                                     nbHeavyAtoms
      184                                                            Clint
      185                                                              nbN
      186                                                          nbAtoms
      187                                                             LD50
      188                                                             LC50
      189                                                             LD50
      190                                                             LC50
      191                                                             LD50
      192                                                             LD50
      193                                                             LD50
      194                                                             Imax
      195                                                             LD50
      196                                                       nbAromAtom
      197                                                         nbHBdAcc
      198                                                  50th percentile
      199                                                   5th percentile
      200                                                  95th percentile
      201                                                           nbRing
      202                                                   Sp3Sp2HybRatio
      203                                                             LC50
      204                                                         ndHBdDon
      205                                                             IC50
      206                                                             IC50
      207                                                            EC1.5
      208                                                              EC3
      209                                                              EC3
      210                                                            EC1.5
      211                                                               BP
      212                                                          nbRotBd
      213                                                             LC50
      214                                                             LD50
      215                                                             LD50
      216                                                             LC50
      217                                                               MW
      218                                                           LogKOC
      219                                                               MP
      220                                                           LogBCF
      221                                                             Imax
      222                                                             Imax
      223                                                   TopoPolSurfAir
      224                                                             LC50
      225                                                             LC50
      226                                                      CD86, EC150
          substanceType         casrn                 qsarReadyId
      1        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      2        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      3        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      4        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      5        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      6        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      7        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      8        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      9        Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      10       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      11       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      12       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      13       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      14       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      15       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      16       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      17       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      18        Mixture ICE_660959215                            
      19        Mixture ICE_660959215                            
      20        Mixture ICE_660959215                            
      21       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      22       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      23       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      24       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      25       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      26       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      27       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      28       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      29       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      30       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      31       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      32       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      33       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      34       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      35       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      36       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      37       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      38       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      39       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      40       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      41       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      42       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      43       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      44       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      45       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      46       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      47       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      48       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      49       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      50       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      51       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      52       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      53       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      54       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      55       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      56       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      57       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      58       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      59       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      60       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      61        Mixture ICE_660959215                            
      62        Mixture ICE_660959215                            
      63        Mixture ICE_660959215                            
      64       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      65       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      66       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      67       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      68       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      69       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      70       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      71       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      72       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      73       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      74       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      75       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      76       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      77       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      78       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      79       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      80       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      81       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      82       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      83       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      84       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      85       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      86       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      87       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      88       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      89       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      90       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      91       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      92       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      93       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      94       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      95       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      96       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      97       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      98       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      99       Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      100      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      101      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      102      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      103      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      104      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      105      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      106      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      107      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      108      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      109      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      110      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      111      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      112      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      113      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      114      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      115      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      116      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      117      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      118      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      119      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      120      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      121      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      122      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      123      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      124      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      125      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      126      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      127      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      128      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      129      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      130      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      131      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      132      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      133      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      134      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      135      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      136      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      137      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      138      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      139      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      140      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      141      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      142      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      143      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      144      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      145      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      146      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      147      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      148      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      149      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      150      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      151      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      152      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      153      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      154      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      155      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      156      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      157      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      158      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      159      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      160      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      161      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      162      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      163      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      164      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      165      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      166      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      167      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      168      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      169      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      170      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      171      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      172      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      173      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      174      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      175      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      176      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      177      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      178      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      179      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      180      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      181      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      182      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      183      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      184      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      185      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      186      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      187      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      188      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      189      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      190      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      191      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      192      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      193      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      194      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      195      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      196      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      197      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      198      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      199      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      200      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      201      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      202      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      203      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      204      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      205      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      206      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      207      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      208      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      209      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      210      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      211      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      212      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      213      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      214      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      215      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      216      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      217      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      218      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      219      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      220      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      221      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      222      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      223      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      224      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      225      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      226      Chemical       50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N
                                                                                                              value
      1                                                                                                    Inactive
      2                                                                                                       Known
      3                                                                                                    Inactive
      4   B1 (Probable human carcinogen - based on limited evidence of carcinogenicity in humans) (1986 guidelines)
      5                                                                                                    Inactive
      6                                                                                                    Inactive
      7                                                                                                      Active
      8                                                                                                           1
      9                                                                                                      Active
      10     Weakly Positive; Weakly Positive; Positive; Positive; Positive; Positive; Positive; Positive; Positive
      11                                                                                                     Active
      12                                                                                    Squamous cell carcinoma
      13                                                                                                     Active
      14                                                                                      1.2999999999999999E-5
      15                                                                                                          0
      16                                                                                                     Active
      17                                                                                                   Inactive
      18                                                                                                   Inactive
      19                                                                                                   Inactive
      20                                                                                                   Inactive
      21                                                                                                   Inactive
      22                                                                                                     Active
      23                                                                                                   Inactive
      24                                                                                                     Active
      25                                                                                                   Inactive
      26                                                                                                     Active
      27                                                                                                     Active
      28                                                                                                     Active
      29                                                                                                          2
      30                                                                                                     Active
      31                                                                                                     Active
      32                                                                                                     Active
      33                                                                                                     Active
      34                                                                                                     Active
      35                                                                                                     Active
      36                                                                                                     Active
      37                                                                                                     Active
      38                                                                                                     Active
      39                                                                                                     Active
      40                                                                                                     Active
      41                                                                                                     Active
      42                                                                                                          0
      43                                                                                                          2
      44                                                                                                   Inactive
      45                                                                                                          2
      46                                                                                                     Active
      47                                                                                                          3
      48                                                                                                     Active
      49                                                                                                          2
      50                                                                                                     Active
      51                                                                                                     Active
      52                                                                                                          1
      53                                                                                                          3
      54                                                                                                     Active
      55                                                                                                     Active
      56                                                                                                     Active
      57                                                                                                   Inactive
      58                                                                                                     Active
      59                                                                                                          3
      60                                                                                                    1148.28
      61                                                                                                        6.1
      62                                                                                                        6.4
      63                                                                                                       12.3
      64                                                                                                        0.0
      65                                                                                                     286.75
      66                                                                                                      79.74
      67                                                                                                      28.68
      68                                                                                                        5.8
      69                                                                                                      63.79
      70                                                                                                       0.13
      71                                                                                                        4.3
      72                                                                                                       72.0
      73                                                                                                        5.2
      74                                                                                                        0.1
      75                                                                                                     184.38
      76                                                                                                      0.203
      77                                                                                                      -5.07
      78                                                                                                       0.35
      79                                                                                                    1828.03
      80                                                                                                       5.14
      81                                                                                                       12.3
      82                                                                                                      -0.65
      83                                                                                                        5.8
      84                                                                                                     358.44
      85                                                                                                       23.3
      86                                                                                                        5.6
      87                                                                                                       2.36
      88                                                                                                        4.3
      89                                                                                                        8.2
      90                                                                                                       7.84
      91                                                                                                        3.8
      92                                                                                                       0.46
      93                                                                                                        8.0
      94                                                                                                     931.94
      95                                                                                                        3.6
      96                                                                                                    2867.51
      97                                                                                                        4.2
      98                                                                                                       11.2
      99                                                                                                       5.74
      100                                                                                                      60.4
      101                                                                                                      5.74
      102                                                                                                      54.8
      103                                                                                                    -11.03
      104                                                                                                      28.6
      105                                                                                                       2.4
      106                                                                                                      5.68
      107                                                                                                      0.22
      108                                                                                                      0.37
      109                                                                                                       6.0
      110                                                                                                     6.307
      111                                                                                                    319.01
      112                                                                                                    860.25
      113                                                                                                      0.35
      114                                                                                                      0.61
      115                                                                                                     71.69
      116                                                                                                      0.41
      117                                                                                                      4.49
      118                                                                                                      0.09
      119                                                                                                    358.44
      120                                                                                                       0.3
      121                                                                                                       1.2
      122                                                                                                      14.5
      123                                                                                                      7.69
      124                                                                                                      0.27
      125                                                                                                      0.46
      126                                                                                                      0.11
      127                                                                                                    757.02
      128                                                                                                      0.44
      129                                                                                                   1433.75
      130                                                                                                      0.37
      131                                                                                                    172.05
      132                                                                                                      1.17
      133                                                                                                      0.99
      134                                                                                                      0.98
      135                                                                                                      0.35
      136                                                                                                       3.2
      137                                                                                                      36.6
      138                                                                                                      30.5
      139                                                                                                      15.4
      140                                                                                                      24.0
      141                                                                                                       0.3
      142                                                                                                       3.6
      143                                                                                                      44.2
      144                                                                                                     25.95
      145                                                                                                       2.5
      146                                                                                                       2.3
      147                                                                                                      49.6
      148                                                                                                      40.6
      149                                                                                                      22.2
      150                                                                                                      19.9
      151                                                                                                      0.35
      152                                                                                                       3.8
      153                                                                                                      25.3
      154                                                                                                       1.8
      155                                                                                                     -6.46
      156                                                                                                       2.0
      157                                                                                                      48.6
      158                                                                                                      44.7
      159                                                                                                     24.45
      160                                                                                                      35.8
      161                                                                                                       4.2
      162                                                                                                      19.0
      163                                                                                                   > 288.0
      164                                                                                                       1.3
      165                                                                                                      2.92
      166                                                                                                      36.7
      167                                                                                                      37.3
      168                                                                                                     19.55
      169                                                                                                     0.562
      170                                                                                                       1.0
      171                                                                                                       1.0
      172                                                                                                       0.0
      173                                                                                                      51.4
      174                                                                                                     26.95
      175                                                                                                    633.55
      176                                                                                                       0.0
      177                                                                                                      1.21
      178                                                                                                      0.91
      179                                                                                                       0.0
      180                                                                                                       0.0
      181                                                                                                     290.0
      182                                                                                                      0.73
      183                                                                                                       2.0
      184                                                                                                      6.35
      185                                                                                                       0.0
      186                                                                                                       4.0
      187                                                                                                   < 800.0
      188                                                                                                     0.578
      189                                                                                                     800.0
      190                                                                                                    0.3068
      191                                                                                                     500.0
      192                                                                                                     550.0
      193                                                                                                   > 100.0
      194                                                                                                      3.99
      195                                                                                                     100.0
      196                                                                                                       0.0
      197                                                                                                       1.0
      198                                                                                                  2.938E-5
      199                                                                                                  1.409E-9
      200                                                                                                    0.6579
      201                                                                                                       0.0
      202                                                                                                       0.0
      203                                                                                                  < 0.5682
      204                                                                                                       0.0
      205                                                                                                    201.63
      206                                                                                                     385.9
      207                                                                                                     63.21
      208                                                                                                      72.2
      209                                                                                                       0.7
      210                                                                                                     137.0
      211                                                                                                     -19.0
      212                                                                                                       0.0
      213                                                                                                    1.0002
      214                                                                                                    2020.0
      215                                                                                                  > 7000.0
      216                                                                                                    0.3068
      217                                                                                                   30.0106
      218                                                                                                      0.44
      219                                                                                                    -105.0
      220                                                                                                      0.24
      221                                                                                                     16.92
      222                                                                                                       4.1
      223                                                                                                     17.07
      224                                                                                                    1.0064
      225                                                                                                    0.5866
      226                                                                                                    1599.8
                            unit        species receptorSpecies          route
      1                                      NA                             NA
      2                          Not applicable                 Not applicable
      3                                      NA                             NA
      4                          Not applicable                     Inhalation
      5                                                                       
      6                                      NA                             NA
      7                                      NA                             NA
      8                          Not applicable                 Not applicable
      9                                      NA                             NA
      10                         Not applicable                 Not applicable
      11                                     NA                             NA
      12                         Not applicable                     Inhalation
      13                                     NA                             NA
      14                         Not applicable                     Inhalation
      15                                                                      
      16                                     NA                             NA
      17                                                                      
      18                                                                      
      19                                                                      
      20                                                                      
      21                                                                      
      22                                     NA                             NA
      23                                                                      
      24                                     NA                             NA
      25                                                                      
      26                                     NA                             NA
      27                                     NA                             NA
      28                                     NA                             NA
      29                                                                      
      30                                     NA                             NA
      31                                     NA                             NA
      32                                     NA                             NA
      33                                     NA                             NA
      34                                     NA                             NA
      35                                     NA                             NA
      36                                     NA                             NA
      37                                     NA                             NA
      38                                     NA                             NA
      39                                  Mouse                         Dermal
      40                                     NA                             NA
      41                                  Human                         Dermal
      42                                                                      
      43                                  Human                         Dermal
      44                                  Human                         Dermal
      45                                  Human                         Dermal
      46                                  Human                         Dermal
      47                                  Human                         Dermal
      48                                  Human                         Dermal
      49                                  Human                         Dermal
      50                                     NA                             NA
      51                                  Human                         Dermal
      52                                  Human                         Dermal
      53                                                                      
      54                                     NA                             NA
      55                                     NA                             NA
      56                                     NA                             NA
      57                                                                      
      58                                  Human                         Dermal
      59                                  Human                         Dermal
      60                  ug/cm2          Human                         Dermal
      61                kiloohms                                              
      62                kiloohms                                              
      63                kiloohms                                              
      64                       %          Human                         Dermal
      65                  ug/cm2          Human                         Dermal
      66                  ug/cm2          Human                         Dermal
      67                  ug/cm2          Human                         Dermal
      68                   ug/mL             NA                             NA
      69                  ug/cm2          Human                         Dermal
      70                       %          Human                         Dermal
      71                   ug/mL             NA                             NA
      72                       %          Human                         Dermal
      73                   ug/mL             NA                             NA
      74                       %          Human                         Dermal
      75                      uM             NA                             NA
      76                    mg/L                                              
      77          log(10-6 cm/s)                                              
      78                   log10                                              
      79                  ug/cm2          Human                         Dermal
      80                   ug/mL             NA                             NA
      81                       %          Mouse                         Dermal
      82              Log10 days                                              
      83                   ug/mL             NA                             NA
      84                  ug/cm2          Human                         Dermal
      85                   ug/mL             NA                             NA
      86                       %          Mouse                         Dermal
      87                       %          Human                         Dermal
      88                   ug/mL             NA                             NA
      89                       %          Mouse                         Dermal
      90                       %          Human                         Dermal
      91                       %          Mouse                         Dermal
      92                       %          Human                         Dermal
      93                       %          Mouse                         Dermal
      94                  ug/cm2          Human                         Dermal
      95                       %          Mouse                         Dermal
      96                  ug/cm2          Human                         Dermal
      97                       %          Mouse                         Dermal
      98                       %             NA                             NA
      99                   ug/mL             NA                             NA
      100                      %             NA                             NA
      101                  ug/mL             NA                             NA
      102                      %             NA                             NA
      103 Log10 cm3/molecule-sec                                              
      104                      %             NA                             NA
      105                      %             NA                             NA
      106                      %          Human                         Dermal
      107                      %          Human                         Dermal
      108                      %          Mouse                         Dermal
      109                     NA                                              
      110                 m3/mol                                              
      111                 ug/cm2          Human                         Dermal
      112                 ug/cm2          Human                         Dermal
      113                  log10                                              
      114                      %          Mouse                         Dermal
      115                 ug/cm2          Human                         Dermal
      116                      %          Human                         Dermal
      117                      %          Human                         Dermal
      118                      %          Human                         Dermal
      119                 ug/cm2          Human                         Dermal
      120                      %          Mouse                         Dermal
      121                      %          Human                         Dermal
      122                      %          Mouse                         Dermal
      123                      %          Human                         Dermal
      124                      %          Mouse                         Dermal
      125                      %          Human                         Dermal
      126                      %          Mouse                         Dermal
      127                 ug/cm2          Human                         Dermal
      128                      %          Mouse                         Dermal
      129                 ug/cm2          Human                         Dermal
      130                      %          Mouse                         Dermal
      131                 ug/cm2          Human                         Dermal
      132         log10, moles/L                                              
      133                      %          Mouse                         Dermal
      134                      %          Human                         Dermal
      135                      %          Mouse                         Dermal
      136                      %             NA                             NA
      137                      %             NA                             NA
      138                      %             NA                             NA
      139                      %             NA                             NA
      140                      %             NA                             NA
      141                      %             NA                             NA
      142                      %             NA                             NA
      143                      %             NA                             NA
      144                      %             NA                             NA
      145                      %             NA                             NA
      146                      %             NA                             NA
      147                      %             NA                             NA
      148                      %             NA                             NA
      149                      %             NA                             NA
      150                      %             NA                             NA
      151                  log10                                              
      152                      %             NA                             NA
      153                      %             NA                             NA
      154                      %             NA                             NA
      155     log10, atm-m3/mole                                              
      156                      %             NA                             NA
      157                      %             NA                             NA
      158                      %             NA                             NA
      159                      %             NA                             NA
      160                      %             NA                             NA
      161                      %             NA                             NA
      162                      %             NA                             NA
      163                     uM             NA                             NA
      164                      %             NA                             NA
      165            log10, mmHg                                              
      166                      %             NA                             NA
      167                      %             NA                             NA
      168                      %             NA                             NA
      169  dipole moment/ volume                                              
      170                  count                                              
      171                  count                                              
      172                Minutes                                              
      173                      %             NA                             NA
      174                      %             NA                             NA
      175                  ug/mL             NA                             NA
      176                     NA                                              
      177                  log10                                              
      178             Log10 days                                              
      179                  count                                              
      180                  count                                              
      181                  mg/kg                                              
      182               unitless                                              
      183                  count                                              
      184      ul/min/10^6 cells                                              
      185                  count                                              
      186                  count                                              
      187                  mg/kg            Rat                             NA
      188                   mg/L                                              
      189                  mg/kg            Rat                             NA
      190                   mg/L                                              
      191                  mg/kg            Rat                             NA
      192                  mg/kg            Rat                             NA
      193                  mg/kg            Rat                             NA
      194               Unitless             NA                             NA
      195                  mg/kg            Rat                             NA
      196                  count                                              
      197                  count                                              
      198              mg/kg/day                                              
      199              mg/kg/day                                              
      200              mg/kg/day                                              
      201                  count                                              
      202               fraction                                              
      203                   mg/L                                              
      204                  count                                              
      205                     uM             NA                             NA
      206                     uM             NA                             NA
      207                     uM             NA                             NA
      208                     uM             NA                             NA
      209                      %          Mouse                         Dermal
      210                     uM             NA                             NA
      211                      C                                              
      212                  count                                              
      213                   mg/L                                              
      214                  mg/kg            Rat                             NA
      215                  mg/kg            Rat                             NA
      216                   mg/L                                              
      217                  g/mol                                              
      218             Log10 L/Kg                                              
      219                      C                                              
      220         Log10 unitless                                              
      221               Unitless             NA                             NA
      222               Unitless             NA                             NA
      223                    A^2                                              
      224                   mg/L                                              
      225                   mg/L                                              
      226                  ug/mL             NA                             NA
                     sex         strain lifeStage tissue lesion location assaySource
      1               NA                                                            
      2   Not applicable Not applicable                                             
      3               NA                                                            
      4   Not applicable Not applicable                                             
      5                                                                             
      6               NA                                                            
      7               NA                                                            
      8   Not applicable Not applicable                                             
      9               NA                                                            
      10  Not applicable Not applicable                                             
      11              NA                                                            
      12  Not applicable Not applicable                                             
      13              NA                                                            
      14  Not applicable Not applicable                                             
      15                                                                            
      16              NA                                                            
      17                                                                            
      18                                                                            
      19                                                                            
      20                                                                            
      21                                                                            
      22              NA                                                            
      23                                                                            
      24              NA                                                            
      25                                                                            
      26              NA                                                            
      27              NA                                                            
      28              NA                                                            
      29                                                                            
      30              NA                                                            
      31              NA                                                            
      32              NA                                                            
      33              NA                                                            
      34              NA                                                            
      35              NA                                                            
      36              NA                                                            
      37              NA                                                            
      38              NA                                                            
      39              NA                                                            
      40              NA                                                            
      41              NA                                                            
      42                                                                            
      43              NA                                                            
      44              NA                                                            
      45              NA                                                            
      46              NA                                                            
      47              NA                                                            
      48              NA                                                            
      49              NA                                                            
      50              NA                                                            
      51              NA                                                            
      52              NA                                                            
      53                                                                            
      54              NA                                                            
      55              NA                                                            
      56              NA                                                            
      57                                                                            
      58              NA                                                            
      59              NA                                                            
      60              NA                                                            
      61                                                                            
      62                                                                            
      63                                                                            
      64              NA                                                            
      65              NA                                                            
      66              NA                                                            
      67              NA                                                            
      68              NA                                                            
      69              NA                                                            
      70              NA                                                            
      71              NA                                                            
      72              NA                                                            
      73              NA                                                            
      74              NA                                                            
      75              NA                                                            
      76                                                                            
      77                                                                            
      78                                                                            
      79              NA                                                            
      80              NA                                                            
      81              NA                                                            
      82                                                                            
      83              NA                                                            
      84              NA                                                            
      85              NA                                                            
      86              NA                                                            
      87              NA                                                            
      88              NA                                                            
      89              NA                                                            
      90              NA                                                            
      91              NA                                                            
      92              NA                                                            
      93              NA                                                            
      94              NA                                                            
      95              NA                                                            
      96              NA                                                            
      97              NA                                                            
      98              NA                                                            
      99              NA                                                            
      100             NA                                                            
      101             NA                                                            
      102             NA                                                            
      103                                                                           
      104             NA                                                            
      105             NA                                                            
      106             NA                                                            
      107             NA                                                            
      108             NA                                                            
      109                                                                           
      110                                                                           
      111             NA                                                            
      112             NA                                                            
      113                                                                           
      114             NA                                                            
      115             NA                                                            
      116             NA                                                            
      117             NA                                                            
      118             NA                                                            
      119             NA                                                            
      120             NA                                                            
      121             NA                                                            
      122             NA                                                            
      123             NA                                                            
      124             NA                                                            
      125             NA                                                            
      126             NA                                                            
      127             NA                                                            
      128             NA                                                            
      129             NA                                                            
      130             NA                                                            
      131             NA                                                            
      132                                                                           
      133             NA                                                            
      134             NA                                                            
      135             NA                                                            
      136             NA                                                            
      137             NA                                                            
      138             NA                                                            
      139             NA                                                            
      140             NA                                                            
      141             NA                                                            
      142             NA                                                            
      143             NA                                                            
      144             NA                                                            
      145             NA                                                            
      146             NA                                                            
      147             NA                                                            
      148             NA                                                            
      149             NA                                                            
      150             NA                                                            
      151                                                                           
      152             NA                                                            
      153             NA                                                            
      154             NA                                                            
      155                                                                           
      156             NA                                                            
      157             NA                                                            
      158             NA                                                            
      159             NA                                                            
      160             NA                                                            
      161             NA                                                            
      162             NA                                                            
      163             NA                                                            
      164             NA                                                            
      165                                                                           
      166             NA                                                            
      167             NA                                                            
      168             NA                                                            
      169                                                                           
      170                                                                           
      171                                                                           
      172                                                                           
      173             NA                                                            
      174             NA                                                            
      175             NA                                                            
      176                                                                           
      177                                                                           
      178                                                                           
      179                                                                           
      180                                                                           
      181                                                                           
      182                                                                           
      183                                                                           
      184                                                                           
      185                                                                           
      186                                                                           
      187           Male                                                            
      188                                                                           
      189           Male                                                            
      190                                                                           
      191                                                                           
      192           Male                                                            
      193                                                                           
      194             NA                                                            
      195                                                                           
      196                                                                           
      197                                                                           
      198                                                                           
      199                                                                           
      200                                                                           
      201                                                                           
      202                                                                           
      203                                                                           
      204                                                                           
      205             NA                                                            
      206             NA                                                            
      207             NA                                                            
      208             NA                                                            
      209             NA                                                            
      210             NA                                                            
      211                                                                           
      212                                                                           
      213                                                                           
      214                                                                           
      215                                                                           
      216                                                                           
      217                                                                           
      218                                                                           
      219                                                                           
      220                                                                           
      221             NA                                                            
      222             NA                                                            
      223                                                                           
      224                                                                           
      225                                                                           
      226             NA                                                            
          inVitroAssayFormat
      1                     
      2                     
      3                     
      4                     
      5                     
      6                     
      7                     
      8                     
      9                     
      10                    
      11                    
      12                    
      13                    
      14                    
      15                    
      16                    
      17                    
      18                    
      19                    
      20                    
      21                    
      22                    
      23                    
      24                    
      25                    
      26                    
      27                    
      28                    
      29                    
      30                    
      31                    
      32                    
      33                    
      34                    
      35                    
      36                    
      37                    
      38                    
      39                    
      40                    
      41                    
      42                    
      43                    
      44                    
      45                    
      46                    
      47                    
      48                    
      49                    
      50                    
      51                    
      52                    
      53                    
      54                    
      55                    
      56                    
      57                    
      58                    
      59                    
      60                    
      61                    
      62                    
      63                    
      64                    
      65                    
      66                    
      67                    
      68                    
      69                    
      70                    
      71                    
      72                    
      73                    
      74                    
      75                    
      76                    
      77                    
      78                    
      79                    
      80                    
      81                    
      82                    
      83                    
      84                    
      85                    
      86                    
      87                    
      88                    
      89                    
      90                    
      91                    
      92                    
      93                    
      94                    
      95                    
      96                    
      97                    
      98                    
      99                    
      100                   
      101                   
      102                   
      103                   
      104                   
      105                   
      106                   
      107                   
      108                   
      109                   
      110                   
      111                   
      112                   
      113                   
      114                   
      115                   
      116                   
      117                   
      118                   
      119                   
      120                   
      121                   
      122                   
      123                   
      124                   
      125                   
      126                   
      127                   
      128                   
      129                   
      130                   
      131                   
      132                   
      133                   
      134                   
      135                   
      136                   
      137                   
      138                   
      139                   
      140                   
      141                   
      142                   
      143                   
      144                   
      145                   
      146                   
      147                   
      148                   
      149                   
      150                   
      151                   
      152                   
      153                   
      154                   
      155                   
      156                   
      157                   
      158                   
      159                   
      160                   
      161                   
      162                   
      163                   
      164                   
      165                   
      166                   
      167                   
      168                   
      169                   
      170                   
      171                   
      172                   
      173                   
      174                   
      175                   
      176                   
      177                   
      178                   
      179                   
      180                   
      181                   
      182                   
      183                   
      184                   
      185                   
      186                   
      187                   
      188                   
      189                   
      190                   
      191                   
      192                   
      193                   
      194                   
      195                   
      196                   
      197                   
      198                   
      199                   
      200                   
      201                   
      202                   
      203                   
      204                   
      205                   
      206                   
      207                   
      208                   
      209                   
      210                   
      211                   
      212                   
      213                   
      214                   
      215                   
      216                   
      217                   
      218                   
      219                   
      220                   
      221                   
      222                   
      223                   
      224                   
      225                   
      226                   
                                                                                                                                             reference
      1                                                                                                                              Bauch et al. 2012
      2                                                                                                                                 Not applicable
      3                                                                                                                              Bauch et al. 2012
      4                                                                                                                                 Not applicable
      5                                                                                                                                               
      6                                                                                                                              Bauch et al. 2012
      7                                                                                                                            Piroird et al. 2015
      8                                                                                                                                 Not applicable
      9       Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      10                                                                                                                                Not applicable
      11      Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      12                                                                                                                                Not applicable
      13      Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      14                                                                                                                                Not applicable
      15                                                                                                                                              
      16                                                                                                                           Urbisch et al. 2015
      17                                                                                                                                              
      18                                                                                                                            Botham et al. 1995
      19                                                                                                                            Botham et al. 1995
      20                                                                                                                            Botham et al. 1995
      21                                                                                                                                              
      22                                                                                    Emter et al. 2010; Natsch et al. 2013; Urbisch et al. 2015
      23                                                                                                                                              
      24                                                                                                                             Bauch et al. 2012
      25                                                                                                                                              
      26                                                                                                                           Urbisch et al. 2015
      27                                                                                   Nukada et al. 2013; Nukada personal communication (undated)
      28                                                                                              Joint Research Centre of the European Union 2013
      29                                                                                                                                              
      30                                                                                              Joint Research Centre of the European Union 2013
      31                                                                                              Joint Research Centre of the European Union 2013
      32                                                                                              Joint Research Centre of the European Union 2013
      33                                                                                              Joint Research Centre of the European Union 2013
      34                                                                                              Joint Research Centre of the European Union 2013
      35                                                                                              Joint Research Centre of the European Union 2013
      36                                                                                                                           Urbisch et al. 2015
      37                                                                                              Joint Research Centre of the European Union 2013
      38                                                                                                                             Bauch et al. 2012
      39                                                                                                                           Urbisch et al. 2015
      40                                                                                                     Gerberick et al. 2007; Natsch et al. 2013
      41                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      42                                                                                                                                              
      43                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      44                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      45                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      46                                                                                                                     Marzulli and Maibach 1973
      47                                                                                                                     Marzulli and Maibach 1973
      48                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      49                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      50                                                                                              Joint Research Centre of the European Union 2013
      51  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      52  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      53                                                                                                                                              
      54                                                                                                                           Urbisch et al. 2015
      55                                                                                                                           Urbisch et al. 2015
      56                                                                                                                           Urbisch et al. 2015
      57                                                                                                                                              
      58                                                                                                                     Marzulli and Maibach 1973
      59                                                                                                                     Marzulli and Maibach 1973
      60  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      61                                                                                                                            Botham et al. 1995
      62                                                                                                                            Botham et al. 1995
      63                                                                                                                            Botham et al. 1995
      64                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      65                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      66  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      67                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      68                                                                                                                           Urbisch et al. 2015
      69  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      70  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      71                                                                                                                           Urbisch et al. 2015
      72  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      73                                                                                                                           Urbisch et al. 2015
      74  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      75                                                                                                                           Urbisch et al. 2015
      76                                                                                                                                    ChemIDplus
      77                                                                                                                                              
      78                                                                                                                                              
      79                                                                                                                     Marzulli and Maibach 1973
      80      Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      81                                                                                                         ECPA personal communication (undated)
      82                                                                                                                                              
      83      Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      84                                                                                                                     Marzulli and Maibach 1973
      85                                                                                                                             Bauch et al. 2012
      86                                                                                                         ECPA personal communication (undated)
      87                                                                                                                     Marzulli and Maibach 1973
      88      Ashikaga et al. 2010; Nukada et al. 2011; Nukada et al. 2012; Nukada personal communication (undated); Nukada et al. 2013; Not available
      89                                                                                                         ECPA personal communication (undated)
      90                                                                                                                     Marzulli and Maibach 1973
      91                                                                                                         ECPA personal communication (undated)
      92                                                                                                                     Marzulli and Maibach 1973
      93                                                                                                         ECPA personal communication (undated)
      94                                                                                                                     Marzulli and Maibach 1973
      95                                                                                                                         Basketter et al. 2003
      96                                                                                                                     Marzulli and Maibach 1973
      97                                                                                                                              Ryan et al. 2002
      98                                                                                                     Gerberick et al. 2007; Natsch et al. 2013
      99                                                                                                                           Piroird et al. 2015
      100                                                                                                    Gerberick et al. 2007; Natsch et al. 2013
      101                                                                                                                          Piroird et al. 2015
      102                                                                                                                            Bauch et al. 2012
      103                                                                                                                                             
      104                                                                                                                            Bauch et al. 2012
      105                                                                                                                            Bauch et al. 2012
      106                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      107                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      108                                                                                                                           Kimber et al. 1991
      109                                                                                                                                             
      110                                                                                                                                             
      111                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      112                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      113                                                                                                                                             
      114                                                                                                                           Hilton et al. 1998
      115                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      116                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      117                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      118                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      119                                                                                                                    Marzulli and Maibach 1973
      120                                                                                                                             Ryan et al. 2002
      121                                                                                                                    Marzulli and Maibach 1973
      122                                                                                                                             Ryan et al. 2002
      123                                                                                                                    Marzulli and Maibach 1973
      124                                                                                                                             Ryan et al. 2002
      125                                                                                                                    Marzulli and Maibach 1973
      126                                                                                                                           Hilton et al. 1996
      127                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      128                                                                                                                        Basketter et al. 2003
      129                                                                                                                    Marzulli and Maibach 1973
      130                                                                                                                           Hilton et al. 1998
      131                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      132                                                                                                                                             
      133                                                                                                                           Kimber et al. 1991
      134                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      135                                                                                                                        Basketter et al. 2001
      136                                                                                             Joint Research Centre of the European Union 2013
      137                                                                                             Joint Research Centre of the European Union 2013
      138                                                                                             Joint Research Centre of the European Union 2013
      139                                                                                             Joint Research Centre of the European Union 2013
      140                                                                                  Nukada et al. 2013; Nukada personal communication (undated)
      141                                                                                             Joint Research Centre of the European Union 2013
      142                                                                                  Nukada et al. 2013; Nukada personal communication (undated)
      143                                                                                  Nukada et al. 2013; Nukada personal communication (undated)
      144                                                                                             Joint Research Centre of the European Union 2013
      145                                                                                             Joint Research Centre of the European Union 2013
      146                                                                                             Joint Research Centre of the European Union 2013
      147                                                                                             Joint Research Centre of the European Union 2013
      148                                                                                             Joint Research Centre of the European Union 2013
      149                                                                                             Joint Research Centre of the European Union 2013
      150                                                                                             Joint Research Centre of the European Union 2013
      151                                                                                                                                             
      152                                                                                             Joint Research Centre of the European Union 2013
      153                                                                                             Joint Research Centre of the European Union 2013
      154                                                                                             Joint Research Centre of the European Union 2013
      155                                                                                                                                             
      156                                                                                             Joint Research Centre of the European Union 2013
      157                                                                                             Joint Research Centre of the European Union 2013
      158                                                                                             Joint Research Centre of the European Union 2013
      159                                                                                             Joint Research Centre of the European Union 2013
      160                                                                                                    Gerberick et al. 2007; Natsch et al. 2013
      161                                                                                             Joint Research Centre of the European Union 2013
      162                                                                                             Joint Research Centre of the European Union 2013
      163                                                                                                                          Urbisch et al. 2015
      164                                                                                             Joint Research Centre of the European Union 2013
      165                                                                                                                                             
      166                                                                                             Joint Research Centre of the European Union 2013
      167                                                                                             Joint Research Centre of the European Union 2013
      168                                                                                             Joint Research Centre of the European Union 2013
      169                                                                                                                                             
      170                                                                                                                                             
      171                                                                                                                                             
      172                                                                                                                                             
      173                                                                                             Joint Research Centre of the European Union 2013
      174                                                                                             Joint Research Centre of the European Union 2013
      175                                                                                                                          Urbisch et al. 2015
      176                                                                                                                                             
      177                                                                                                                                             
      178                                                                                                                                             
      179                                                                                                                                             
      180                                                                                                                                             
      181                                                                                                                                             
      182                                                                                                                                             
      183                                                                                                                                             
      184                                                                                                                                             
      185                                                                                                                                             
      186                                                                                                                                             
      187                                                                                                                                             
      188                                                                                                                                        NIOSH
      189                                                                                                                     JRC AcutoxBase (undated)
      190                                                                                                                                        NIOSH
      191                                                                                                                     JRC AcutoxBase (undated)
      192                                                                                                                     JRC AcutoxBase (undated)
      193                                                                                                                                             
      194                                                                                                                          Urbisch et al. 2015
      195                                                                                                 NLM Hazardous Substances Data Bank (undated)
      196                                                                                                                                             
      197                                                                                                                                             
      198                             Data retrieved by NICEATM from the Environmental Protection Agency's Human Exposure github page in November 2022
      199                             Data retrieved by NICEATM from the Environmental Protection Agency's Human Exposure github page in November 2022
      200                             Data retrieved by NICEATM from the Environmental Protection Agency's Human Exposure github page in November 2022
      201                                                                                                                                             
      202                                                                                                                                             
      203                                                                                                                                        REACH
      204                                                                                                                                             
      205                                                                                   Emter et al. 2010; Natsch et al. 2013; Urbisch et al. 2015
      206                                                                                                                            Bauch et al. 2012
      207                                                                                   Emter et al. 2010; Natsch et al. 2013; Urbisch et al. 2015
      208                                                                                   Emter et al. 2010; Natsch et al. 2013; Urbisch et al. 2015
      209                                                                                                                          Urbisch et al. 2015
      210                                                                                                                            Bauch et al. 2012
      211                                                                                                                                             
      212                                                                                                                                             
      213                                                                                                                                        NIOSH
      214                                                                                                 NLM Hazardous Substances Data Bank (undated)
      215                                                                                                                                             
      216                                                                                                                                        NIOSH
      217                                                                                                                                             
      218                                                                                                                                             
      219                                                                                                                                             
      220                                                                                                                                             
      221                                                                                   Emter et al. 2010; Natsch et al. 2013; Urbisch et al. 2015
      222                                                                                                                            Bauch et al. 2012
      223                                                                                                                                             
      224                                                                                                                                         AEGL
      225                                                                                                                                         AEGL
      226                                                                                                                          Urbisch et al. 2015
                                                                                                                                           referenceUrl
      1                                                                                                                     10.1016/j.yrtph.2012.05.013
      2                                                                             https://ntp.niehs.nih.gov/ntp/roc/content/profiles/formaldehyde.pdf
      3                                                                                                                     10.1016/j.yrtph.2012.05.013
      4                                                                 https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
      5                                                                                                                                                
      6                                                                                                                     10.1016/j.yrtph.2012.05.013
      7                                                                                                                       10.1016/j.tiv.2015.03.009
      8               http://publications.iarc.fr/139; http://publications.iarc.fr/80; http://publications.iarc.fr/106; http://publications.iarc.fr/123
      9               10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      10                                                                                https://manticore.niehs.nih.gov/cebssearch/test_article/50-00-0
      11              10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      12                                                                https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
      13              10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      14                                                                https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
      15                                                                                                                                               
      16                                                                                                                    10.1016/j.yrtph.2014.12.008
      17                                                                                                                                               
      18                                                                                                                     10.1177/026119299502300207
      19                                                                                                                     10.1177/026119299502300207
      20                                                                                                                     10.1177/026119299502300207
      21                                                                                                                                               
      22                                                                      10.1016/j.taap.2010.03.009; 10.1002/jat.2868; 10.1016/j.yrtph.2014.12.008
      23                                                                                                                                               
      24                                                                                                                    10.1016/j.yrtph.2012.05.013
      25                                                                                                                                               
      26                                                                                                                    10.1016/j.yrtph.2014.12.008
      27                                                                                                                      10.1016/j.tiv.2012.11.006
      28                                                                                                                                  Not available
      29                                                                                                                                               
      30                                                                                                                                  Not available
      31                                                                                                                                  Not available
      32                                                                                                                                  Not available
      33                                                                                                                                  Not available
      34                                                                                                                                  Not available
      35                                                                                                                                  Not available
      36                                                                                                                    10.1016/j.yrtph.2014.12.008
      37                                                                                                                                  Not available
      38                                                                                                                    10.1016/j.yrtph.2012.05.013
      39                                                                                                                    10.1016/j.yrtph.2014.12.008
      40                                                                                                        10.1093/toxsci/kfm064; 10.1002/jat.2868
      41                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      42                                                                                                                                               
      43                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      44        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      45        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      46                                                                                                                                  Not available
      47                                                                                                                                  Not available
      48                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      49                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      50                                                                                                                                  Not available
      51  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      52  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      53                                                                                                                                               
      54                                                                                                                    10.1016/j.yrtph.2014.12.008
      55                                                                                                                    10.1016/j.yrtph.2014.12.008
      56                                                                                                                    10.1016/j.yrtph.2014.12.008
      57                                                                                                                                               
      58                                                                                                                                  Not available
      59                                                                                                                                  Not available
      60  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      61                                                                                                                     10.1177/026119299502300207
      62                                                                                                                     10.1177/026119299502300207
      63                                                                                                                     10.1177/026119299502300207
      64        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      65                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      66  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      67        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      68                                                                                                                    10.1016/j.yrtph.2014.12.008
      69  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      70  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      71                                                                                                                    10.1016/j.yrtph.2014.12.008
      72  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      73                                                                                                                    10.1016/j.yrtph.2014.12.008
      74  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      75                                                                                                                    10.1016/j.yrtph.2014.12.008
      76                                                                                                                                               
      77                                                                                                                                               
      78                                                                                                                                               
      79                                                                                                                                  Not available
      80              10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      81                                                                                                                                  Not available
      82                                                                                                                                               
      83              10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      84                                                                                                                                  Not available
      85                                                                                                                    10.1016/j.yrtph.2012.05.013
      86                                                                                                                                  Not available
      87                                                                                                                                  Not available
      88              10.1177/026119291003800403; 10.1111/j.1600-0536.2011.01952.x; 10.1016/j.tiv.2012.07.001; Not available; 10.1016/j.tiv.2012.11.006
      89                                                                                                                                  Not available
      90                                                                                                                                  Not available
      91                                                                                                                                  Not available
      92                                                                                                                                  Not available
      93                                                                                                                                  Not available
      94                                                                                                                                  Not available
      95                                                                                                                          10.1081/CUS-120026299
      96                                                                                                                                  Not available
      97                                                                                                                  10.1016/s0278-6915(02)00116-3
      98                                                                                                        10.1093/toxsci/kfm064; 10.1002/jat.2868
      99                                                                                                                      10.1016/j.tiv.2015.03.009
      100                                                                                                       10.1093/toxsci/kfm064; 10.1002/jat.2868
      101                                                                                                                     10.1016/j.tiv.2015.03.009
      102                                                                                                                   10.1016/j.yrtph.2012.05.013
      103                                                                                                                                              
      104                                                                                                                   10.1016/j.yrtph.2012.05.013
      105                                                                                                                   10.1016/j.yrtph.2012.05.013
      106                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      107                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      108                                                                                                                  10.1016/0378-4274(91)90135-s
      109                                                                                                                                              
      110                                                                                                                                              
      111                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      112                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      113                                                                                                                                              
      114                                                                                                                                 Not available
      115                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      116                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      117                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      118                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      119                                                                                                                                 Not available
      120                                                                                                                 10.1016/s0278-6915(02)00116-3
      121                                                                                                                                 Not available
      122                                                                                                                 10.1016/s0278-6915(02)00116-3
      123                                                                                                                                 Not available
      124                                                                                                                 10.1016/s0278-6915(02)00116-3
      125                                                                                                                                 Not available
      126                                                                                                                  10.1016/0278-6915(96)00012-9
      127                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      128                                                                                                                         10.1081/CUS-120026299
      129                                                                                                                                 Not available
      130                                                                                                                                 Not available
      131                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      132                                                                                                                                              
      133                                                                                                                  10.1016/0378-4274(91)90135-s
      134                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      135                                                                                                          10.1034/j.1600-0536.2001.045002089.x
      136                                                                                                                                 Not available
      137                                                                                                                                 Not available
      138                                                                                                                                 Not available
      139                                                                                                                                 Not available
      140                                                                                                                     10.1016/j.tiv.2012.11.006
      141                                                                                                                                 Not available
      142                                                                                                                     10.1016/j.tiv.2012.11.006
      143                                                                                                                     10.1016/j.tiv.2012.11.006
      144                                                                                                                                 Not available
      145                                                                                                                                 Not available
      146                                                                                                                                 Not available
      147                                                                                                                                 Not available
      148                                                                                                                                 Not available
      149                                                                                                                                 Not available
      150                                                                                                                                 Not available
      151                                                                                                                                              
      152                                                                                                                                 Not available
      153                                                                                                                                 Not available
      154                                                                                                                                 Not available
      155                                                                                                                                              
      156                                                                                                                                 Not available
      157                                                                                                                                 Not available
      158                                                                                                                                 Not available
      159                                                                                                                                 Not available
      160                                                                                                       10.1093/toxsci/kfm064; 10.1002/jat.2868
      161                                                                                                                                 Not available
      162                                                                                                                                 Not available
      163                                                                                                                   10.1016/j.yrtph.2014.12.008
      164                                                                                                                                 Not available
      165                                                                                                                                              
      166                                                                                                                                 Not available
      167                                                                                                                                 Not available
      168                                                                                                                                 Not available
      169                                                                                                                                              
      170                                                                                                                                              
      171                                                                                                                                              
      172                                                                                                                                              
      173                                                                                                                                 Not available
      174                                                                                                                                 Not available
      175                                                                                                                   10.1016/j.yrtph.2014.12.008
      176                                                                                                                                              
      177                                                                                                                                              
      178                                                                                                                                              
      179                                                                                                                                              
      180                                                                                                                                              
      181                                                                                                                                              
      182                                                                                                                                              
      183                                                                                                                                              
      184                                                                                                                                              
      185                                                                                                                                              
      186                                                                                                                                              
      187                                                                                                                                              
      188                                                                                                                                              
      189                                                                                                                                              
      190                                                                                                                                              
      191                                                                                                                                              
      192                                                                                                                                              
      193                                                                                                                                              
      194                                                                                                                   10.1016/j.yrtph.2014.12.008
      195                                                                                                             https://pubchem.ncbi.nlm.nih.gov/
      196                                                                                                                                              
      197                                                                                                                                              
      198                                                                                https://github.com/HumanExposure/SEEM3RPackage/tree/main/SEEM3
      199                                                                                https://github.com/HumanExposure/SEEM3RPackage/tree/main/SEEM3
      200                                                                                https://github.com/HumanExposure/SEEM3RPackage/tree/main/SEEM3
      201                                                                                                                                              
      202                                                                                                                                              
      203               https://echa.europa.eu/registration-dossier/-/registered-dossier/15858/7/3/3/?documentUUID=d1a32765-e92b-4790-99da-6355ab1a22cc
      204                                                                                                                                              
      205                                                                     10.1016/j.taap.2010.03.009; 10.1002/jat.2868; 10.1016/j.yrtph.2014.12.008
      206                                                                                                                   10.1016/j.yrtph.2012.05.013
      207                                                                     10.1016/j.taap.2010.03.009; 10.1002/jat.2868; 10.1016/j.yrtph.2014.12.008
      208                                                                     10.1016/j.taap.2010.03.009; 10.1002/jat.2868; 10.1016/j.yrtph.2014.12.008
      209                                                                                                                   10.1016/j.yrtph.2014.12.008
      210                                                                                                                   10.1016/j.yrtph.2012.05.013
      211                                                                                                                                              
      212                                                                                                                                              
      213                                                                                                                                              
      214                                                                                                             https://pubchem.ncbi.nlm.nih.gov/
      215                                                                                                                                              
      216                                                                                                                                              
      217                                                                                                                                              
      218                                                                                                                                              
      219                                                                                                                                              
      220                                                                                                                                              
      221                                                                     10.1016/j.taap.2010.03.009; 10.1002/jat.2868; 10.1016/j.yrtph.2014.12.008
      222                                                                                                                   10.1016/j.yrtph.2012.05.013
      223                                                                                                                                              
      224                                                                                                                                              
      225                                                                                                                                              
      226                                                                                                                   10.1016/j.yrtph.2014.12.008
                 dtxsid                       substanceName
      1   DTXSID7020637                        Formaldehyde
      2   DTXSID7020637                        Formaldehyde
      3   DTXSID7020637                        Formaldehyde
      4   DTXSID7020637                        Formaldehyde
      5   DTXSID7020637                        Formaldehyde
      6   DTXSID7020637                        Formaldehyde
      7   DTXSID7020637                        Formaldehyde
      8   DTXSID7020637                        Formaldehyde
      9   DTXSID7020637                        Formaldehyde
      10  DTXSID7020637                        Formaldehyde
      11  DTXSID7020637                        Formaldehyde
      12  DTXSID7020637                        Formaldehyde
      13  DTXSID7020637                        Formaldehyde
      14  DTXSID7020637                        Formaldehyde
      15  DTXSID7020637                        Formaldehyde
      16  DTXSID7020637                        Formaldehyde
      17  DTXSID7020637                        Formaldehyde
      18                dicyanamine/formaldehyde condensate
      19                dicyanamine/formaldehyde condensate
      20                dicyanamine/formaldehyde condensate
      21  DTXSID7020637                        Formaldehyde
      22  DTXSID7020637                        Formaldehyde
      23  DTXSID7020637                        Formaldehyde
      24  DTXSID7020637                        Formaldehyde
      25  DTXSID7020637                        Formaldehyde
      26  DTXSID7020637                        Formaldehyde
      27  DTXSID7020637                        Formaldehyde
      28  DTXSID7020637                        Formaldehyde
      29  DTXSID7020637                        Formaldehyde
      30  DTXSID7020637                        Formaldehyde
      31  DTXSID7020637                        Formaldehyde
      32  DTXSID7020637                        Formaldehyde
      33  DTXSID7020637                        Formaldehyde
      34  DTXSID7020637                        Formaldehyde
      35  DTXSID7020637                        Formaldehyde
      36  DTXSID7020637                        Formaldehyde
      37  DTXSID7020637                        Formaldehyde
      38  DTXSID7020637                        Formaldehyde
      39  DTXSID7020637                        Formaldehyde
      40  DTXSID7020637                        Formaldehyde
      41  DTXSID7020637                        Formaldehyde
      42  DTXSID7020637                        Formaldehyde
      43  DTXSID7020637                        Formaldehyde
      44  DTXSID7020637                        Formaldehyde
      45  DTXSID7020637                        Formaldehyde
      46  DTXSID7020637                        Formaldehyde
      47  DTXSID7020637                        Formaldehyde
      48  DTXSID7020637                        Formaldehyde
      49  DTXSID7020637                        Formaldehyde
      50  DTXSID7020637                        Formaldehyde
      51  DTXSID7020637                        Formaldehyde
      52  DTXSID7020637                        Formaldehyde
      53  DTXSID7020637                        Formaldehyde
      54  DTXSID7020637                        Formaldehyde
      55  DTXSID7020637                        Formaldehyde
      56  DTXSID7020637                        Formaldehyde
      57  DTXSID7020637                        Formaldehyde
      58  DTXSID7020637                        Formaldehyde
      59  DTXSID7020637                        Formaldehyde
      60  DTXSID7020637                        Formaldehyde
      61                dicyanamine/formaldehyde condensate
      62                dicyanamine/formaldehyde condensate
      63                dicyanamine/formaldehyde condensate
      64  DTXSID7020637                        Formaldehyde
      65  DTXSID7020637                        Formaldehyde
      66  DTXSID7020637                        Formaldehyde
      67  DTXSID7020637                        Formaldehyde
      68  DTXSID7020637                        Formaldehyde
      69  DTXSID7020637                        Formaldehyde
      70  DTXSID7020637                        Formaldehyde
      71  DTXSID7020637                        Formaldehyde
      72  DTXSID7020637                        Formaldehyde
      73  DTXSID7020637                        Formaldehyde
      74  DTXSID7020637                        Formaldehyde
      75  DTXSID7020637                        Formaldehyde
      76  DTXSID7020637                        Formaldehyde
      77  DTXSID7020637                        Formaldehyde
      78  DTXSID7020637                        Formaldehyde
      79  DTXSID7020637                        Formaldehyde
      80  DTXSID7020637                        Formaldehyde
      81  DTXSID7020637                        Formaldehyde
      82  DTXSID7020637                        Formaldehyde
      83  DTXSID7020637                        Formaldehyde
      84  DTXSID7020637                        Formaldehyde
      85  DTXSID7020637                        Formaldehyde
      86  DTXSID7020637                        Formaldehyde
      87  DTXSID7020637                        Formaldehyde
      88  DTXSID7020637                        Formaldehyde
      89  DTXSID7020637                        Formaldehyde
      90  DTXSID7020637                        Formaldehyde
      91  DTXSID7020637                        Formaldehyde
      92  DTXSID7020637                        Formaldehyde
      93  DTXSID7020637                        Formaldehyde
      94  DTXSID7020637                        Formaldehyde
      95  DTXSID7020637                        Formaldehyde
      96  DTXSID7020637                        Formaldehyde
      97  DTXSID7020637                        Formaldehyde
      98  DTXSID7020637                        Formaldehyde
      99  DTXSID7020637                        Formaldehyde
      100 DTXSID7020637                        Formaldehyde
      101 DTXSID7020637                        Formaldehyde
      102 DTXSID7020637                        Formaldehyde
      103 DTXSID7020637                        Formaldehyde
      104 DTXSID7020637                        Formaldehyde
      105 DTXSID7020637                        Formaldehyde
      106 DTXSID7020637                        Formaldehyde
      107 DTXSID7020637                        Formaldehyde
      108 DTXSID7020637                        Formaldehyde
      109 DTXSID7020637                        Formaldehyde
      110 DTXSID7020637                        Formaldehyde
      111 DTXSID7020637                        Formaldehyde
      112 DTXSID7020637                        Formaldehyde
      113 DTXSID7020637                        Formaldehyde
      114 DTXSID7020637                        Formaldehyde
      115 DTXSID7020637                        Formaldehyde
      116 DTXSID7020637                        Formaldehyde
      117 DTXSID7020637                        Formaldehyde
      118 DTXSID7020637                        Formaldehyde
      119 DTXSID7020637                        Formaldehyde
      120 DTXSID7020637                        Formaldehyde
      121 DTXSID7020637                        Formaldehyde
      122 DTXSID7020637                        Formaldehyde
      123 DTXSID7020637                        Formaldehyde
      124 DTXSID7020637                        Formaldehyde
      125 DTXSID7020637                        Formaldehyde
      126 DTXSID7020637                        Formaldehyde
      127 DTXSID7020637                        Formaldehyde
      128 DTXSID7020637                        Formaldehyde
      129 DTXSID7020637                        Formaldehyde
      130 DTXSID7020637                        Formaldehyde
      131 DTXSID7020637                        Formaldehyde
      132 DTXSID7020637                        Formaldehyde
      133 DTXSID7020637                        Formaldehyde
      134 DTXSID7020637                        Formaldehyde
      135 DTXSID7020637                        Formaldehyde
      136 DTXSID7020637                        Formaldehyde
      137 DTXSID7020637                        Formaldehyde
      138 DTXSID7020637                        Formaldehyde
      139 DTXSID7020637                        Formaldehyde
      140 DTXSID7020637                        Formaldehyde
      141 DTXSID7020637                        Formaldehyde
      142 DTXSID7020637                        Formaldehyde
      143 DTXSID7020637                        Formaldehyde
      144 DTXSID7020637                        Formaldehyde
      145 DTXSID7020637                        Formaldehyde
      146 DTXSID7020637                        Formaldehyde
      147 DTXSID7020637                        Formaldehyde
      148 DTXSID7020637                        Formaldehyde
      149 DTXSID7020637                        Formaldehyde
      150 DTXSID7020637                        Formaldehyde
      151 DTXSID7020637                        Formaldehyde
      152 DTXSID7020637                        Formaldehyde
      153 DTXSID7020637                        Formaldehyde
      154 DTXSID7020637                        Formaldehyde
      155 DTXSID7020637                        Formaldehyde
      156 DTXSID7020637                        Formaldehyde
      157 DTXSID7020637                        Formaldehyde
      158 DTXSID7020637                        Formaldehyde
      159 DTXSID7020637                        Formaldehyde
      160 DTXSID7020637                        Formaldehyde
      161 DTXSID7020637                        Formaldehyde
      162 DTXSID7020637                        Formaldehyde
      163 DTXSID7020637                        Formaldehyde
      164 DTXSID7020637                        Formaldehyde
      165 DTXSID7020637                        Formaldehyde
      166 DTXSID7020637                        Formaldehyde
      167 DTXSID7020637                        Formaldehyde
      168 DTXSID7020637                        Formaldehyde
      169 DTXSID7020637                        Formaldehyde
      170 DTXSID7020637                        Formaldehyde
      171 DTXSID7020637                        Formaldehyde
      172 DTXSID7020637                        Formaldehyde
      173 DTXSID7020637                        Formaldehyde
      174 DTXSID7020637                        Formaldehyde
      175 DTXSID7020637                        Formaldehyde
      176 DTXSID7020637                        Formaldehyde
      177 DTXSID7020637                        Formaldehyde
      178 DTXSID7020637                        Formaldehyde
      179 DTXSID7020637                        Formaldehyde
      180 DTXSID7020637                        Formaldehyde
      181 DTXSID7020637                        Formaldehyde
      182 DTXSID7020637                        Formaldehyde
      183 DTXSID7020637                        Formaldehyde
      184 DTXSID7020637                        Formaldehyde
      185 DTXSID7020637                        Formaldehyde
      186 DTXSID7020637                        Formaldehyde
      187 DTXSID7020637                        Formaldehyde
      188 DTXSID7020637                        Formaldehyde
      189 DTXSID7020637                        Formaldehyde
      190 DTXSID7020637                        Formaldehyde
      191 DTXSID7020637                        Formaldehyde
      192 DTXSID7020637                        Formaldehyde
      193 DTXSID7020637                        Formaldehyde
      194 DTXSID7020637                        Formaldehyde
      195 DTXSID7020637                        Formaldehyde
      196 DTXSID7020637                        Formaldehyde
      197 DTXSID7020637                        Formaldehyde
      198 DTXSID7020637                        Formaldehyde
      199 DTXSID7020637                        Formaldehyde
      200 DTXSID7020637                        Formaldehyde
      201 DTXSID7020637                        Formaldehyde
      202 DTXSID7020637                        Formaldehyde
      203 DTXSID7020637                        Formaldehyde
      204 DTXSID7020637                        Formaldehyde
      205 DTXSID7020637                        Formaldehyde
      206 DTXSID7020637                        Formaldehyde
      207 DTXSID7020637                        Formaldehyde
      208 DTXSID7020637                        Formaldehyde
      209 DTXSID7020637                        Formaldehyde
      210 DTXSID7020637                        Formaldehyde
      211 DTXSID7020637                        Formaldehyde
      212 DTXSID7020637                        Formaldehyde
      213 DTXSID7020637                        Formaldehyde
      214 DTXSID7020637                        Formaldehyde
      215 DTXSID7020637                        Formaldehyde
      216 DTXSID7020637                        Formaldehyde
      217 DTXSID7020637                        Formaldehyde
      218 DTXSID7020637                        Formaldehyde
      219 DTXSID7020637                        Formaldehyde
      220 DTXSID7020637                        Formaldehyde
      221 DTXSID7020637                        Formaldehyde
      222 DTXSID7020637                        Formaldehyde
      223 DTXSID7020637                        Formaldehyde
      224 DTXSID7020637                        Formaldehyde
      225 DTXSID7020637                        Formaldehyde
      226 DTXSID7020637                        Formaldehyde
                                                              pubMedId
      1                                                       22659254
      2                                                             NA
      3                                                       22659254
      4                                                             NA
      5                                                               
      6                                                       22659254
      7                                                       25820135
      8                                                             NA
      9          20822320; 21767275; 22796097; Not available; 23149339
      10                                                            NA
      11         20822320; 21767275; 22796097; Not available; 23149339
      12                                                            NA
      13         20822320; 21767275; 22796097; Not available; 23149339
      14                                                            NA
      15                                                              
      16                                                      25541156
      17                                                              
      18                                                 Not available
      19                                                 Not available
      20                                                 Not available
      21                                                              
      22                                  20307559; 23576290; 25541156
      23                                                              
      24                                                      22659254
      25                                                              
      26                                                      25541156
      27                                                      23149339
      28                                                 Not available
      29                                                              
      30                                                 Not available
      31                                                 Not available
      32                                                 Not available
      33                                                 Not available
      34                                                 Not available
      35                                                 Not available
      36                                                      25541156
      37                                                 Not available
      38                                                      22659254
      39                                                      25541156
      40                                            17400584; 23576290
      41          4459237; 11526521; Not available; 14623479; 15135206
      42                                                              
      43          4459237; 11526521; Not available; 14623479; 15135206
      44          4459237; Not available; 14623479; 15135206; 16283904
      45          4459237; Not available; 14623479; 15135206; 16283904
      46                                                 Not available
      47                                                 Not available
      48          4459237; 11526521; Not available; 14623479; 15135206
      49          4459237; 11526521; Not available; 14623479; 15135206
      50                                                 Not available
      51  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      52  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      53                                                              
      54                                                      25541156
      55                                                      25541156
      56                                                      25541156
      57                                                              
      58                                                 Not available
      59                                                 Not available
      60  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      61                                                 Not available
      62                                                 Not available
      63                                                 Not available
      64          4459237; Not available; 14623479; 15135206; 16283904
      65          4459237; 11526521; Not available; 14623479; 15135206
      66  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      67          4459237; Not available; 14623479; 15135206; 16283904
      68                                                      25541156
      69  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      70  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      71                                                      25541156
      72  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      73                                                      25541156
      74  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      75                                                      25541156
      76                                                              
      77                                                              
      78                                                              
      79                                                 Not available
      80         20822320; 21767275; 22796097; Not available; 23149339
      81                                                 Not available
      82                                                              
      83         20822320; 21767275; 22796097; Not available; 23149339
      84                                                 Not available
      85                                                      22659254
      86                                                 Not available
      87                                                 Not available
      88         20822320; 21767275; 22796097; Not available; 23149339
      89                                                 Not available
      90                                                 Not available
      91                                                 Not available
      92                                                 Not available
      93                                                 Not available
      94                                                 Not available
      95                                                 Not available
      96                                                 Not available
      97                                                      12176099
      98                                            17400584; 23576290
      99                                                      25820135
      100                                           17400584; 23576290
      101                                                     25820135
      102                                                     22659254
      103                                                             
      104                                                     22659254
      105                                                     22659254
      106         4459237; 11526521; Not available; 14623479; 15135206
      107         4459237; 11526521; Not available; 14623479; 15135206
      108                                                      1998208
      109                                                             
      110                                                             
      111         4459237; 11526521; Not available; 14623479; 15135206
      112         4459237; 11526521; Not available; 14623479; 15135206
      113                                                             
      114                                                      9471984
      115         4459237; 11526521; Not available; 14623479; 15135206
      116         4459237; 11526521; Not available; 14623479; 15135206
      117         4459237; 11526521; Not available; 14623479; 15135206
      118         4459237; 11526521; Not available; 14623479; 15135206
      119                                                Not available
      120                                                     12176099
      121                                                Not available
      122                                                     12176099
      123                                                Not available
      124                                                     12176099
      125                                                Not available
      126                                                      8690318
      127         4459237; 11526521; Not available; 14623479; 15135206
      128                                                Not available
      129                                                Not available
      130                                                      9471984
      131         4459237; 11526521; Not available; 14623479; 15135206
      132                                                             
      133                                                      1998208
      134         4459237; 11526521; Not available; 14623479; 15135206
      135                                                     11553118
      136                                                Not available
      137                                                Not available
      138                                                Not available
      139                                                Not available
      140                                                     23149339
      141                                                Not available
      142                                                     23149339
      143                                                     23149339
      144                                                Not available
      145                                                Not available
      146                                                Not available
      147                                                Not available
      148                                                Not available
      149                                                Not available
      150                                                Not available
      151                                                             
      152                                                Not available
      153                                                Not available
      154                                                Not available
      155                                                             
      156                                                Not available
      157                                                Not available
      158                                                Not available
      159                                                Not available
      160                                           17400584; 23576290
      161                                                Not available
      162                                                Not available
      163                                                     25541156
      164                                                Not available
      165                                                             
      166                                                Not available
      167                                                Not available
      168                                                Not available
      169                                                             
      170                                                             
      171                                                             
      172                                                             
      173                                                Not available
      174                                                Not available
      175                                                     25541156
      176                                                             
      177                                                             
      178                                                             
      179                                                             
      180                                                             
      181                                                             
      182                                                             
      183                                                             
      184                                                             
      185                                                             
      186                                                             
      187                                                           NA
      188                                                             
      189                                                           NA
      190                                                             
      191                                                           NA
      192                                                           NA
      193                                                           NA
      194                                                     25541156
      195                                                           NA
      196                                                             
      197                                                             
      198                                                             
      199                                                             
      200                                                             
      201                                                             
      202                                                             
      203                                                             
      204                                                             
      205                                 20307559; 23576290; 25541156
      206                                                     22659254
      207                                 20307559; 23576290; 25541156
      208                                 20307559; 23576290; 25541156
      209                                                     25541156
      210                                                     22659254
      211                                                             
      212                                                             
      213                                                             
      214                                                           NA
      215                                                           NA
      216                                                             
      217                                                             
      218                                                             
      219                                                             
      220                                                             
      221                                 20307559; 23576290; 25541156
      222                                                     22659254
      223                                                             
      224                                                             
      225                                                             
      226                                                     25541156

# extr_tox fetches data for CASRN 50-00-0

    Code
      extr_tox(casrn = "50-00-0")
    Message
      i Getting PubChem IDS...
      Querying 50-00-0. 
      OK (HTTP 200).
      
    Output
      
    Message
      i Getting GHS from PubChem...
      Querying 712. 
      OK (HTTP 200).
      
    Output
      
    Message
      i Getting CompTox info.
    Output
      
    Message
      Sending request to ICE database...
      Request succeeded with status code: 200
      Quering 50-00-0 to EPA IRIS database...
    Output
      $ghs_dat
          cid   casrn         name
      1   712 50-00-0 Formaldehyde
      2   712 50-00-0 Formaldehyde
      3   712 50-00-0 Formaldehyde
      4   712 50-00-0 Formaldehyde
      5   712 50-00-0 Formaldehyde
      6   712 50-00-0 Formaldehyde
      7   712 50-00-0 Formaldehyde
      8   712 50-00-0 Formaldehyde
      9   712 50-00-0 Formaldehyde
      10  712 50-00-0 Formaldehyde
      11  712 50-00-0 Formaldehyde
      12  712 50-00-0 Formaldehyde
      13  712 50-00-0 Formaldehyde
      14  712 50-00-0 Formaldehyde
      15  712 50-00-0 Formaldehyde
      16  712 50-00-0 Formaldehyde
      17  712 50-00-0 Formaldehyde
      18  712 50-00-0 Formaldehyde
      19  712 50-00-0 Formaldehyde
      20  712 50-00-0 Formaldehyde
      21  712 50-00-0 Formaldehyde
      22  712 50-00-0 Formaldehyde
      23  712 50-00-0 Formaldehyde
      24  712 50-00-0 Formaldehyde
      25  712 50-00-0 Formaldehyde
      26  712 50-00-0 Formaldehyde
      27  712 50-00-0 Formaldehyde
      28  712 50-00-0 Formaldehyde
      29  712 50-00-0 Formaldehyde
      30  712 50-00-0 Formaldehyde
      31  712 50-00-0 Formaldehyde
      32  712 50-00-0 Formaldehyde
      33  712 50-00-0 Formaldehyde
      34  712 50-00-0 Formaldehyde
      35  712 50-00-0 Formaldehyde
      36  712 50-00-0 Formaldehyde
      37  712 50-00-0 Formaldehyde
      38  712 50-00-0 Formaldehyde
      39  712 50-00-0 Formaldehyde
      40  712 50-00-0 Formaldehyde
      41  712 50-00-0 Formaldehyde
      42  712 50-00-0 Formaldehyde
      43  712 50-00-0 Formaldehyde
      44  712 50-00-0 Formaldehyde
      45  712 50-00-0 Formaldehyde
      46  712 50-00-0 Formaldehyde
      47  712 50-00-0 Formaldehyde
      48  712 50-00-0 Formaldehyde
      49  712 50-00-0 Formaldehyde
      50  712 50-00-0 Formaldehyde
      51  712 50-00-0 Formaldehyde
      52  712 50-00-0 Formaldehyde
      53  712 50-00-0 Formaldehyde
      54  712 50-00-0 Formaldehyde
      55  712 50-00-0 Formaldehyde
      56  712 50-00-0 Formaldehyde
      57  712 50-00-0 Formaldehyde
      58  712 50-00-0 Formaldehyde
      59  712 50-00-0 Formaldehyde
      60  712 50-00-0 Formaldehyde
      61  712 50-00-0 Formaldehyde
      62  712 50-00-0 Formaldehyde
      63  712 50-00-0 Formaldehyde
      64  712 50-00-0 Formaldehyde
      65  712 50-00-0 Formaldehyde
      66  712 50-00-0 Formaldehyde
      67  712 50-00-0 Formaldehyde
      68  712 50-00-0 Formaldehyde
      69  712 50-00-0 Formaldehyde
      70  712 50-00-0 Formaldehyde
      71  712 50-00-0 Formaldehyde
      72  712 50-00-0 Formaldehyde
      73  712 50-00-0 Formaldehyde
      74  712 50-00-0 Formaldehyde
      75  712 50-00-0 Formaldehyde
      76  712 50-00-0 Formaldehyde
      77  712 50-00-0 Formaldehyde
      78  712 50-00-0 Formaldehyde
      79  712 50-00-0 Formaldehyde
      80  712 50-00-0 Formaldehyde
      81  712 50-00-0 Formaldehyde
      82  712 50-00-0 Formaldehyde
      83  712 50-00-0 Formaldehyde
      84  712 50-00-0 Formaldehyde
      85  712 50-00-0 Formaldehyde
      86  712 50-00-0 Formaldehyde
      87  712 50-00-0 Formaldehyde
      88  712 50-00-0 Formaldehyde
      89  712 50-00-0 Formaldehyde
      90  712 50-00-0 Formaldehyde
      91  712 50-00-0 Formaldehyde
      92  712 50-00-0 Formaldehyde
      93  712 50-00-0 Formaldehyde
      94  712 50-00-0 Formaldehyde
      95  712 50-00-0 Formaldehyde
      96  712 50-00-0 Formaldehyde
      97  712 50-00-0 Formaldehyde
      98  712 50-00-0 Formaldehyde
      99  712 50-00-0 Formaldehyde
      100 712 50-00-0 Formaldehyde
      101 712 50-00-0 Formaldehyde
      102 712 50-00-0 Formaldehyde
      103 712 50-00-0 Formaldehyde
      104 712 50-00-0 Formaldehyde
                                                                                                                                                                                                                                                                                                                                         GHS
      1                                                                                                                                                                                                                                                                                                                               Danger
      2                                                                                                                                                                                                                                                                      H301 (83.48%): Toxic if swallowed [Danger Acute toxicity, oral]
      3                                                                                                                                                                                                                                                            H311 (83.48%): Toxic in contact with skin [Danger Acute toxicity, dermal]
      4                                                                                                                                                                                                                                            H314 (83.48%): Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      5                                                                                                                                                                                                                                                     H317 (90.66%): May cause an allergic skin reaction [Warning Sensitization, Skin]
      6                                                                                                                                                                                                                                                  H318 (47.65%): Causes serious eye damage [Danger Serious eye damage/eye irritation]
      7                                                                                                                                                                                                                                                                   H330 (12.9%): Fatal if inhaled [Danger Acute toxicity, inhalation]
      8                                                                                                                                                                                                                                                                  H331 (78.85%): Toxic if inhaled [Danger Acute toxicity, inhalation]
      9                                                                                                                                                                                                                                                 H341 (18.33%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      10                                                                                                                                                                                                                                                                            H350 (18.33%): May cause cancer [Danger Carcinogenicity]
      11                                                                                                                                                                                                                                                                 H351 (65.2%): Suspected of causing cancer [Warning Carcinogenicity]
      12                                                                        P203, P260, P261, P262, P264, P264+P265, P270, P271, P272, P280, P284, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P317, P318, P320, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      13                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      14                                                                                                                                                      Aggregated GHS information provided by 6354 reports by companies from 94 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.
      15                                                                                                                                                                                       Reported as not meeting GHS hazard criteria by 3 of 6354 reports by companies. For more detailed information, please visit  ECHA C&L website.
      16                                                                                                                                                                                                                              Of the 93 notification(s) provided by 6351 of 6354 reports by companies with hazard statement code(s).
      17                                           Information may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 40% are shown.
      18                                                                                                                                                                                                                                                                                                                              Danger
      19                                                                                                                                                                                                                                                                       H220 (100%): Extremely flammable gas [Danger Flammable gases]
      20                                                                                                                                                                                                                                      H280 (100%): Contains gas under pressure; may explode if heated [Warning Gases under pressure]
      21                                                                                                                                                                                                                                                                   H331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]
      22                                                                                                                                                                                                                                                H360 (100%): May damage fertility or the unborn child [Danger Reproductive toxicity]
      23                                                                                                                                                                                              H372 (100%): Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      24                                                                                                                                                                                     P203, P210, P222, P260, P261, P264, P270, P271, P280, P304+P340, P316, P318, P319, P321, P377, P381, P403, P403+P233, P405, P410+P403, and P501
      25                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      26                                                                                                                                                         Aggregated GHS information provided by 38 reports by companies from 1 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.
      27                                           Information may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 40% are shown.
      28                                                                                                                                                                                                                                                                                                                              Danger
      29                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      30                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      31                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      32                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      33                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      34                                                                                                                                                                                                                                                                      H350i: May cause cancer by inhalation [Danger Carcinogenicity]
      35                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      36                                                                                   P203, P260, P261, P262, P264, P270, P271, P272, P273, P280, P284, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P318, P320, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      37                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      38                                                                                                                                                                                                                                                                                                                              Danger
      39                                                                                                                                                                                                                                                                                H227: Combustible liquid [Warning Flammable liquids]
      40                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      41                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      42                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      43                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      44                                                                                                                                                                                                                                                          H318: Causes serious eye damage [Danger Serious eye damage/eye irritation]
      45                                                                                                                                                                                                                                                                          H331: Toxic if inhaled [Danger Acute toxicity, inhalation]
      46                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      47                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      48                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      49                                                                                                                                                                                                                                                  H402: Harmful to aquatic life [Hazardous to the aquatic environment, acute hazard]
      50                                            P203, P210, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P308+P316, P316, P317, P318, P321, P330, P333+P317, P361+P364, P362+P364, P363, P370+P378, P403, P403+P233, P405, and P501
      51                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      52                                                                                                                                                                                                                                                                                                                              Danger
      53                                                                                                                                                                                                                                                                              H220: Extremely flammable gas [Danger Flammable gases]
      54                                                                                                                                                                                                                                                                                H227: Combustible liquid [Warning Flammable liquids]
      55                                                                                                                                                                                                                                             H280: Contains gas under pressure; may explode if heated [Warning Gases under pressure]
      56                                                                                                                                                                                                                                                                           H302: Harmful if swallowed [Warning Acute toxicity, oral]
      57                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      58                                                                                                                                                                                                                                                                    H315: Causes skin irritation [Warning Skin corrosion/irritation]
      59                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      60                                                                                                                                                                                                                                                     H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      61                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      62                                                                                                                                                                                                                 H334: May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]
      63                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      64                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      65                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      66                                                                                                                                                                                                     H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      67                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      68  P203, P210, P222, P233, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P284, P301+P317, P302+P352, P304+P340, P305+P351+P338, P308+P316, P316, P318, P319, P320, P321, P330, P332+P317, P333+P317, P337+P317, P342+P316, P361+P364, P362+P364, P370+P378, P377, P381, P403, P403+P233, P405, P410+P403, and P501
      69                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      70                                                                                                                                                                                                                                                                                                                              Danger
      71                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      72                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      73                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      74                                                                                                                                                                                                                    H412: Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      75                                                                                                                                                                    P260, P261, P264, P272, P273, P280, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P321, P333+P317, P362+P364, P363, P405, and P501
      76                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      77                                                                                                                                                                                                                                                                                                                              Danger
      78                                                                                                                                                                                                                                                                              H220: Extremely flammable gas [Danger Flammable gases]
      79                                                                                                                                                                                                                                             H280: Contains gas under pressure; may explode if heated [Warning Gases under pressure]
      80                                                                                                                                                                                                                                                                           H302: Harmful if swallowed [Warning Acute toxicity, oral]
      81                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      82                                                                                                                                                                                                                                                                    H315: Causes skin irritation [Warning Skin corrosion/irritation]
      83                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      84                                                                                                                                                                                                                                                     H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      85                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      86                                                                                                                                                                                                                 H334: May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]
      87                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      88                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      89                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      90                                                                                                                                                                                                     H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      91                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      92                                                                                                                                                                                                                    H412: Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      93             P203, P210, P222, P233, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P284, P301+P317, P302+P352, P304+P340, P305+P351+P338, P308+P316, P316, P318, P319, P320, P321, P330, P332+P317, P333+P317, P337+P317, P342+P316, P361+P364, P362+P364, P377, P381, P403, P403+P233, P405, P410+P403, and P501
      94                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      95                                                                                                                                                                                                                                                                                                                              Danger
      96                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      97                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      98                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      99                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      100                                                                                                                                                                                                                                                                         H331: Toxic if inhaled [Danger Acute toxicity, inhalation]
      101                                                                                                                                                                                                                                                        H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      102                                                                                                                                                                                                                                                                                    H350: May cause cancer [Danger Carcinogenicity]
      103                                                                                                    P203, P260, P261, P262, P264, P270, P271, P272, P280, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P318, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      104                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
                                                                         source_name
      1                                             European Chemicals Agency (ECHA)
      2                                             European Chemicals Agency (ECHA)
      3                                             European Chemicals Agency (ECHA)
      4                                             European Chemicals Agency (ECHA)
      5                                             European Chemicals Agency (ECHA)
      6                                             European Chemicals Agency (ECHA)
      7                                             European Chemicals Agency (ECHA)
      8                                             European Chemicals Agency (ECHA)
      9                                             European Chemicals Agency (ECHA)
      10                                            European Chemicals Agency (ECHA)
      11                                            European Chemicals Agency (ECHA)
      12                                            European Chemicals Agency (ECHA)
      13                                            European Chemicals Agency (ECHA)
      14                                            European Chemicals Agency (ECHA)
      15                                            European Chemicals Agency (ECHA)
      16                                            European Chemicals Agency (ECHA)
      17                                            European Chemicals Agency (ECHA)
      18                                            European Chemicals Agency (ECHA)
      19                                            European Chemicals Agency (ECHA)
      20                                            European Chemicals Agency (ECHA)
      21                                            European Chemicals Agency (ECHA)
      22                                            European Chemicals Agency (ECHA)
      23                                            European Chemicals Agency (ECHA)
      24                                            European Chemicals Agency (ECHA)
      25                                            European Chemicals Agency (ECHA)
      26                                            European Chemicals Agency (ECHA)
      27                                            European Chemicals Agency (ECHA)
      28           Hazardous Chemical Information System (HCIS), Safe Work Australia
      29           Hazardous Chemical Information System (HCIS), Safe Work Australia
      30           Hazardous Chemical Information System (HCIS), Safe Work Australia
      31           Hazardous Chemical Information System (HCIS), Safe Work Australia
      32           Hazardous Chemical Information System (HCIS), Safe Work Australia
      33           Hazardous Chemical Information System (HCIS), Safe Work Australia
      34           Hazardous Chemical Information System (HCIS), Safe Work Australia
      35           Hazardous Chemical Information System (HCIS), Safe Work Australia
      36           Hazardous Chemical Information System (HCIS), Safe Work Australia
      37           Hazardous Chemical Information System (HCIS), Safe Work Australia
      38                                       Hazardous Substances Data Bank (HSDB)
      39                                       Hazardous Substances Data Bank (HSDB)
      40                                       Hazardous Substances Data Bank (HSDB)
      41                                       Hazardous Substances Data Bank (HSDB)
      42                                       Hazardous Substances Data Bank (HSDB)
      43                                       Hazardous Substances Data Bank (HSDB)
      44                                       Hazardous Substances Data Bank (HSDB)
      45                                       Hazardous Substances Data Bank (HSDB)
      46                                       Hazardous Substances Data Bank (HSDB)
      47                                       Hazardous Substances Data Bank (HSDB)
      48                                       Hazardous Substances Data Bank (HSDB)
      49                                       Hazardous Substances Data Bank (HSDB)
      50                                       Hazardous Substances Data Bank (HSDB)
      51                                       Hazardous Substances Data Bank (HSDB)
      52                                                                    NITE-CMC
      53                                                                    NITE-CMC
      54                                                                    NITE-CMC
      55                                                                    NITE-CMC
      56                                                                    NITE-CMC
      57                                                                    NITE-CMC
      58                                                                    NITE-CMC
      59                                                                    NITE-CMC
      60                                                                    NITE-CMC
      61                                                                    NITE-CMC
      62                                                                    NITE-CMC
      63                                                                    NITE-CMC
      64                                                                    NITE-CMC
      65                                                                    NITE-CMC
      66                                                                    NITE-CMC
      67                                                                    NITE-CMC
      68                                                                    NITE-CMC
      69                                                                    NITE-CMC
      70                                                                    NITE-CMC
      71                                                                    NITE-CMC
      72                                                                    NITE-CMC
      73                                                                    NITE-CMC
      74                                                                    NITE-CMC
      75                                                                    NITE-CMC
      76                                                                    NITE-CMC
      77                                                                    NITE-CMC
      78                                                                    NITE-CMC
      79                                                                    NITE-CMC
      80                                                                    NITE-CMC
      81                                                                    NITE-CMC
      82                                                                    NITE-CMC
      83                                                                    NITE-CMC
      84                                                                    NITE-CMC
      85                                                                    NITE-CMC
      86                                                                    NITE-CMC
      87                                                                    NITE-CMC
      88                                                                    NITE-CMC
      89                                                                    NITE-CMC
      90                                                                    NITE-CMC
      91                                                                    NITE-CMC
      92                                                                    NITE-CMC
      93                                                                    NITE-CMC
      94                                                                    NITE-CMC
      95  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      96  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      97  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      98  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      99  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      100 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      101 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      102 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      103 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      104 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
                     source_id
      1                  55163
      2                  55163
      3                  55163
      4                  55163
      5                  55163
      6                  55163
      7                  55163
      8                  55163
      9                  55163
      10                 55163
      11                 55163
      12                 55163
      13                 55163
      14                 55163
      15                 55163
      16                 55163
      17                 55163
      18                215773
      19                215773
      20                215773
      21                215773
      22                215773
      23                215773
      24                215773
      25                215773
      26                215773
      27                215773
      28                  4750
      29                  4750
      30                  4750
      31                  4750
      32                  4750
      33                  4750
      34                  4750
      35                  4750
      36                  4750
      37                  4750
      38                   164
      39                   164
      40                   164
      41                   164
      42                   164
      43                   164
      44                   164
      45                   164
      46                   164
      47                   164
      48                   164
      49                   164
      50                   164
      51                   164
      52                    69
      53                    69
      54                    69
      55                    69
      56                    69
      57                    69
      58                    69
      59                    69
      60                    69
      61                    69
      62                    69
      63                    69
      64                    69
      65                    69
      66                    69
      67                    69
      68                    69
      69                    69
      70  R04_C_056_JNIOSH,MOE
      71  R04_C_056_JNIOSH,MOE
      72  R04_C_056_JNIOSH,MOE
      73  R04_C_056_JNIOSH,MOE
      74  R04_C_056_JNIOSH,MOE
      75  R04_C_056_JNIOSH,MOE
      76  R04_C_056_JNIOSH,MOE
      77             H29_B_039
      78             H29_B_039
      79             H29_B_039
      80             H29_B_039
      81             H29_B_039
      82             H29_B_039
      83             H29_B_039
      84             H29_B_039
      85             H29_B_039
      86             H29_B_039
      87             H29_B_039
      88             H29_B_039
      89             H29_B_039
      90             H29_B_039
      91             H29_B_039
      92             H29_B_039
      93             H29_B_039
      94             H29_B_039
      95          605-001-00-5
      96          605-001-00-5
      97          605-001-00-5
      98          605-001-00-5
      99          605-001-00-5
      100         605-001-00-5
      101         605-001-00-5
      102         605-001-00-5
      103         605-001-00-5
      104         605-001-00-5
      
      $iris
      # A tibble: 2 x 8
        chemical_name casrn   exposure_route assessment_type critical_effect_or_tumo~1
        <chr>         <chr>   <chr>          <chr>           <chr>                    
      1 Formaldehyde  50-00-0 Inhalation     Cancer          Squamous cell carcinoma  
      2 Formaldehyde  50-00-0 Oral           Noncancer       Reduced weight gain, his~
      # i abbreviated name: 1: critical_effect_or_tumor_type
      # i 3 more variables: woe_characterization <chr>, toxicity_value_type <chr>,
      #   toxicity_value <chr>
      
      $opera_pred
      # A tibble: 1 x 37
        INPUT   FOUND_BY DTXSID PREFERRED_NAME DTXCID CASRN INCHIKEY IUPAC_NAME SMILES
        <chr>   <chr>    <chr>  <chr>          <chr>  <chr> <chr>    <chr>      <chr> 
      1 50-00-0 CASRN    DTXSI~ Formaldehyde   DTXCI~ 50-0~ WSFSSNU~ Formaldeh~ C=O   
      # i 28 more variables: INCHI_STRING <chr>, MOLECULAR_FORMULA <chr>,
      #   SAFETY_DATA <chr>, TOXVAL_DATA <chr>, NUMBER_OF_PUBMED_ARTICLES <dbl>,
      #   PUBCHEM_DATA_SOURCES <dbl>, CPDAT_COUNT <dbl>, IRIS_LINK <chr>,
      #   PPRTV_LINK <lgl>, BIOCONCENTRATION_FACTOR_TEST_PRED <lgl>,
      #   `48HR_DAPHNIA_LC50_MOL/L_TEST_PRED` <lgl>, DEVTOX_TEST_PRED <lgl>,
      #   `96HR_FATHEAD_MINNOW_MOL/L_TEST_PRED` <lgl>,
      #   AMES_MUTAGENICITY_TEST_PRED <dbl>, ...
      
      $tox_val
      # A tibble: 1,124 x 68
         SEARCHED_CHEMICAL DTXSID        CASRN   NAME    SOURCE SUB_SOURCE TOXVAL_TYPE
         <chr>             <chr>         <chr>   <chr>   <chr>  <chr>      <chr>      
       1 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        MRL        
       2 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        MRL        
       3 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        MRL        
       4 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        MRL        
       5 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        MRL        
       6 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        NOAEL      
       7 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        NOAEL      
       8 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        NOAEL      
       9 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        NOAEL      
      10 Formaldehyde      DTXSID7020637 50-00-0 Formal~ ATSDR~ CDC        NOAEL      
      # i 1,114 more rows
      # i 61 more variables: TOXVAL_TYPE_ORIGINAL <chr>, TOXVAL_SUBTYPE <chr>,
      #   TOXVAL_TYPE_SUPERCATEGORY <chr>, TOXVAL_TYPE_CATEGORY <chr>,
      #   QUALIFIER <chr>, TOXVAL_NUMERIC <dbl>, TOXVAL_NUMERIC_ORIGINAL <chr>,
      #   TOXVAL_UNITS <chr>, TOXVAL_UNITS_ORIGINAL <chr>,
      #   RISK_ASSESSMENT_CLASS <chr>, STUDY_TYPE <chr>, STUDY_TYPE_ORIGINAL <chr>,
      #   STUDY_DURATION_CLASS <chr>, STUDY_DURATION_CLASS_ORIGINAL <chr>, ...
      
      $ice_carc_woe
                         assay             endpoint substanceType   casrn
      2  Report on Carcinogens       Listing status      Chemical 50-00-0
      4   IRIS Carcinogenicity WOE characterization      Chemical 50-00-0
      8   IARC Carcinogenicity           IARC group      Chemical 50-00-0
      12  IRIS Carcinogenicity           Tumor type      Chemical 50-00-0
      14  IRIS Carcinogenicity Inhalation risk unit      Chemical 50-00-0
                         qsarReadyId
      2  WSFSSNUMVMOOMR-UHFFFAOYSA-N
      4  WSFSSNUMVMOOMR-UHFFFAOYSA-N
      8  WSFSSNUMVMOOMR-UHFFFAOYSA-N
      12 WSFSSNUMVMOOMR-UHFFFAOYSA-N
      14 WSFSSNUMVMOOMR-UHFFFAOYSA-N
                                                                                                             value
      2                                                                                                      Known
      4  B1 (Probable human carcinogen - based on limited evidence of carcinogenicity in humans) (1986 guidelines)
      8                                                                                                          1
      12                                                                                   Squamous cell carcinoma
      14                                                                                     1.2999999999999999E-5
         unit        species receptorSpecies          route            sex
      2       Not applicable                 Not applicable Not applicable
      4       Not applicable                     Inhalation Not applicable
      8       Not applicable                 Not applicable Not applicable
      12      Not applicable                     Inhalation Not applicable
      14      Not applicable                     Inhalation Not applicable
                 strain lifeStage tissue lesion location assaySource
      2  Not applicable                                             
      4  Not applicable                                             
      8  Not applicable                                             
      12 Not applicable                                             
      14 Not applicable                                             
         inVitroAssayFormat      reference
      2                     Not applicable
      4                     Not applicable
      8                     Not applicable
      12                    Not applicable
      14                    Not applicable
                                                                                                                              referenceUrl
      2                                                                https://ntp.niehs.nih.gov/ntp/roc/content/profiles/formaldehyde.pdf
      4                                                    https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
      8  http://publications.iarc.fr/139; http://publications.iarc.fr/80; http://publications.iarc.fr/106; http://publications.iarc.fr/123
      12                                                   https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
      14                                                   https://cfpub.epa.gov/ncea/iris/iris_documents/documents/subst/0419_summary.pdf
                dtxsid substanceName pubMedId
      2  DTXSID7020637  Formaldehyde       NA
      4  DTXSID7020637  Formaldehyde       NA
      8  DTXSID7020637  Formaldehyde       NA
      12 DTXSID7020637  Formaldehyde       NA
      14 DTXSID7020637  Formaldehyde       NA
      
      $ice_invivo_acute_tox
                                  assay endpoint substanceType   casrn
      76  Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      187       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      188 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      189       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      190 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      191       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      192       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      193       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      195       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      203 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      213 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      214       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      215       Rat Acute Oral Toxicity     LD50      Chemical 50-00-0
      216 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      224 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
      225 Rat Acute Inhalation Toxicity     LC50      Chemical 50-00-0
                          qsarReadyId    value  unit species receptorSpecies route
      76  WSFSSNUMVMOOMR-UHFFFAOYSA-N    0.203  mg/L                              
      187 WSFSSNUMVMOOMR-UHFFFAOYSA-N  < 800.0 mg/kg     Rat                    NA
      188 WSFSSNUMVMOOMR-UHFFFAOYSA-N    0.578  mg/L                              
      189 WSFSSNUMVMOOMR-UHFFFAOYSA-N    800.0 mg/kg     Rat                    NA
      190 WSFSSNUMVMOOMR-UHFFFAOYSA-N   0.3068  mg/L                              
      191 WSFSSNUMVMOOMR-UHFFFAOYSA-N    500.0 mg/kg     Rat                    NA
      192 WSFSSNUMVMOOMR-UHFFFAOYSA-N    550.0 mg/kg     Rat                    NA
      193 WSFSSNUMVMOOMR-UHFFFAOYSA-N  > 100.0 mg/kg     Rat                    NA
      195 WSFSSNUMVMOOMR-UHFFFAOYSA-N    100.0 mg/kg     Rat                    NA
      203 WSFSSNUMVMOOMR-UHFFFAOYSA-N < 0.5682  mg/L                              
      213 WSFSSNUMVMOOMR-UHFFFAOYSA-N   1.0002  mg/L                              
      214 WSFSSNUMVMOOMR-UHFFFAOYSA-N   2020.0 mg/kg     Rat                    NA
      215 WSFSSNUMVMOOMR-UHFFFAOYSA-N > 7000.0 mg/kg     Rat                    NA
      216 WSFSSNUMVMOOMR-UHFFFAOYSA-N   0.3068  mg/L                              
      224 WSFSSNUMVMOOMR-UHFFFAOYSA-N   1.0064  mg/L                              
      225 WSFSSNUMVMOOMR-UHFFFAOYSA-N   0.5866  mg/L                              
           sex strain lifeStage tissue lesion location assaySource inVitroAssayFormat
      76                                                                             
      187 Male                                                                       
      188                                                                            
      189 Male                                                                       
      190                                                                            
      191                                                                            
      192 Male                                                                       
      193                                                                            
      195                                                                            
      203                                                                            
      213                                                                            
      214                                                                            
      215                                                                            
      216                                                                            
      224                                                                            
      225                                                                            
                                             reference
      76                                    ChemIDplus
      187                                             
      188                                        NIOSH
      189                     JRC AcutoxBase (undated)
      190                                        NIOSH
      191                     JRC AcutoxBase (undated)
      192                     JRC AcutoxBase (undated)
      193                                             
      195 NLM Hazardous Substances Data Bank (undated)
      203                                        REACH
      213                                        NIOSH
      214 NLM Hazardous Substances Data Bank (undated)
      215                                             
      216                                        NIOSH
      224                                         AEGL
      225                                         AEGL
                                                                                                                             referenceUrl
      76                                                                                                                                 
      187                                                                                                                                
      188                                                                                                                                
      189                                                                                                                                
      190                                                                                                                                
      191                                                                                                                                
      192                                                                                                                                
      193                                                                                                                                
      195                                                                                               https://pubchem.ncbi.nlm.nih.gov/
      203 https://echa.europa.eu/registration-dossier/-/registered-dossier/15858/7/3/3/?documentUUID=d1a32765-e92b-4790-99da-6355ab1a22cc
      213                                                                                                                                
      214                                                                                               https://pubchem.ncbi.nlm.nih.gov/
      215                                                                                                                                
      216                                                                                                                                
      224                                                                                                                                
      225                                                                                                                                
                 dtxsid substanceName pubMedId
      76  DTXSID7020637  Formaldehyde         
      187 DTXSID7020637  Formaldehyde       NA
      188 DTXSID7020637  Formaldehyde         
      189 DTXSID7020637  Formaldehyde       NA
      190 DTXSID7020637  Formaldehyde         
      191 DTXSID7020637  Formaldehyde       NA
      192 DTXSID7020637  Formaldehyde       NA
      193 DTXSID7020637  Formaldehyde       NA
      195 DTXSID7020637  Formaldehyde       NA
      203 DTXSID7020637  Formaldehyde         
      213 DTXSID7020637  Formaldehyde         
      214 DTXSID7020637  Formaldehyde       NA
      215 DTXSID7020637  Formaldehyde       NA
      216 DTXSID7020637  Formaldehyde         
      224 DTXSID7020637  Formaldehyde         
      225 DTXSID7020637  Formaldehyde         
      
      $ice_invivo_sensitization
                                   assay
      39                            LLNA
      41  Human Repeat Insult Patch Test
      43  Human Repeat Insult Patch Test
      44  Human Repeat Insult Patch Test
      45  Human Repeat Insult Patch Test
      46  Human Repeat Insult Patch Test
      47  Human Repeat Insult Patch Test
      48  Human Repeat Insult Patch Test
      49  Human Repeat Insult Patch Test
      51         Human Maximization Test
      52         Human Maximization Test
      58  Human Repeat Insult Patch Test
      59  Human Repeat Insult Patch Test
      60         Human Maximization Test
      64  Human Repeat Insult Patch Test
      65  Human Repeat Insult Patch Test
      66         Human Maximization Test
      67  Human Repeat Insult Patch Test
      69         Human Maximization Test
      70         Human Maximization Test
      72         Human Maximization Test
      74         Human Maximization Test
      79  Human Repeat Insult Patch Test
      81                            LLNA
      84  Human Repeat Insult Patch Test
      86                            LLNA
      87  Human Repeat Insult Patch Test
      89                            LLNA
      90  Human Repeat Insult Patch Test
      91                            LLNA
      92  Human Repeat Insult Patch Test
      93                            LLNA
      94  Human Repeat Insult Patch Test
      95                            LLNA
      96  Human Repeat Insult Patch Test
      97                            LLNA
      106 Human Repeat Insult Patch Test
      107 Human Repeat Insult Patch Test
      108                           LLNA
      111 Human Repeat Insult Patch Test
      112 Human Repeat Insult Patch Test
      114                           LLNA
      115 Human Repeat Insult Patch Test
      116 Human Repeat Insult Patch Test
      117 Human Repeat Insult Patch Test
      118 Human Repeat Insult Patch Test
      119 Human Repeat Insult Patch Test
      120                           LLNA
      121 Human Repeat Insult Patch Test
      122                           LLNA
      123 Human Repeat Insult Patch Test
      124                           LLNA
      125 Human Repeat Insult Patch Test
      126                           LLNA
      127 Human Repeat Insult Patch Test
      128                           LLNA
      129 Human Repeat Insult Patch Test
      130                           LLNA
      131 Human Repeat Insult Patch Test
      133                           LLNA
      134 Human Repeat Insult Patch Test
      135                           LLNA
      209                           LLNA
                                                                  endpoint
      39                                                              Call
      41                                                              Call
      43                                        Relative reliability score
      44                                                              Call
      45                                        Relative reliability score
      46                                                              Call
      47                                        Relative reliability score
      48                                                              Call
      49                                        Relative reliability score
      51                                                              Call
      52                                        Relative reliability score
      58                                                              Call
      59                                        Relative reliability score
      60                                      Induction dose per skin area
      64                                   Incidence of positive responses
      65                                      Induction dose per skin area
      66  Induction dose per skin area, 5% incidence of positive responses
      67                                      Induction dose per skin area
      69               Induction dose per skin area, one positive response
      70                 Concentration, 5% incidence of positive responses
      72                                   Incidence of positive responses
      74                              Concentration, one positive response
      79  Induction dose per skin area, 5% incidence of positive responses
      81                                                               EC3
      84               Induction dose per skin area, one positive response
      86                                                               EC3
      87                 Concentration, 5% incidence of positive responses
      89                                                               EC3
      90                                   Incidence of positive responses
      91                                                               EC3
      92                              Concentration, one positive response
      93                                                               EC3
      94  Induction dose per skin area, 5% incidence of positive responses
      95                                                               EC3
      96                                      Induction dose per skin area
      97                                                               EC3
      106                                  Incidence of positive responses
      107                             Concentration, one positive response
      108                                                              EC3
      111 Induction dose per skin area, 5% incidence of positive responses
      112                                     Induction dose per skin area
      114                                                              EC3
      115              Induction dose per skin area, one positive response
      116                Concentration, 5% incidence of positive responses
      117                                  Incidence of positive responses
      118                             Concentration, one positive response
      119              Induction dose per skin area, one positive response
      120                                                              EC3
      121                Concentration, 5% incidence of positive responses
      122                                                              EC3
      123                                  Incidence of positive responses
      124                                                              EC3
      125                             Concentration, one positive response
      126                                                              EC3
      127 Induction dose per skin area, 5% incidence of positive responses
      128                                                              EC3
      129                                     Induction dose per skin area
      130                                                              EC3
      131              Induction dose per skin area, one positive response
      133                                                              EC3
      134                Concentration, 5% incidence of positive responses
      135                                                              EC3
      209                                                              EC3
          substanceType   casrn                 qsarReadyId    value   unit species
      39       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Mouse
      41       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Human
      43       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        2          Human
      44       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N Inactive          Human
      45       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        2          Human
      46       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Human
      47       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        3          Human
      48       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Human
      49       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        2          Human
      51       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Human
      52       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        1          Human
      58       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   Active          Human
      59       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N        3          Human
      60       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N  1148.28 ug/cm2   Human
      64       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      0.0      %   Human
      65       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   286.75 ug/cm2   Human
      66       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N    79.74 ug/cm2   Human
      67       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N    28.68 ug/cm2   Human
      69       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N    63.79 ug/cm2   Human
      70       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.13      %   Human
      72       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     72.0      %   Human
      74       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      0.1      %   Human
      79       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N  1828.03 ug/cm2   Human
      81       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     12.3      %   Mouse
      84       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   358.44 ug/cm2   Human
      86       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      5.6      %   Mouse
      87       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     2.36      %   Human
      89       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      8.2      %   Mouse
      90       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     7.84      %   Human
      91       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      3.8      %   Mouse
      92       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.46      %   Human
      93       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      8.0      %   Mouse
      94       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   931.94 ug/cm2   Human
      95       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      3.6      %   Mouse
      96       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N  2867.51 ug/cm2   Human
      97       Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      4.2      %   Mouse
      106      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     5.68      %   Human
      107      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.22      %   Human
      108      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.37      %   Mouse
      111      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   319.01 ug/cm2   Human
      112      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   860.25 ug/cm2   Human
      114      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.61      %   Mouse
      115      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N    71.69 ug/cm2   Human
      116      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.41      %   Human
      117      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     4.49      %   Human
      118      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.09      %   Human
      119      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   358.44 ug/cm2   Human
      120      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      0.3      %   Mouse
      121      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      1.2      %   Human
      122      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     14.5      %   Mouse
      123      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     7.69      %   Human
      124      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.27      %   Mouse
      125      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.46      %   Human
      126      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.11      %   Mouse
      127      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   757.02 ug/cm2   Human
      128      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.44      %   Mouse
      129      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N  1433.75 ug/cm2   Human
      130      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.37      %   Mouse
      131      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N   172.05 ug/cm2   Human
      133      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.99      %   Mouse
      134      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.98      %   Human
      135      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N     0.35      %   Mouse
      209      Chemical 50-00-0 WSFSSNUMVMOOMR-UHFFFAOYSA-N      0.7      %   Mouse
          receptorSpecies  route sex strain lifeStage tissue lesion location
      39                  Dermal  NA                                        
      41                  Dermal  NA                                        
      43                  Dermal  NA                                        
      44                  Dermal  NA                                        
      45                  Dermal  NA                                        
      46                  Dermal  NA                                        
      47                  Dermal  NA                                        
      48                  Dermal  NA                                        
      49                  Dermal  NA                                        
      51                  Dermal  NA                                        
      52                  Dermal  NA                                        
      58                  Dermal  NA                                        
      59                  Dermal  NA                                        
      60                  Dermal  NA                                        
      64                  Dermal  NA                                        
      65                  Dermal  NA                                        
      66                  Dermal  NA                                        
      67                  Dermal  NA                                        
      69                  Dermal  NA                                        
      70                  Dermal  NA                                        
      72                  Dermal  NA                                        
      74                  Dermal  NA                                        
      79                  Dermal  NA                                        
      81                  Dermal  NA                                        
      84                  Dermal  NA                                        
      86                  Dermal  NA                                        
      87                  Dermal  NA                                        
      89                  Dermal  NA                                        
      90                  Dermal  NA                                        
      91                  Dermal  NA                                        
      92                  Dermal  NA                                        
      93                  Dermal  NA                                        
      94                  Dermal  NA                                        
      95                  Dermal  NA                                        
      96                  Dermal  NA                                        
      97                  Dermal  NA                                        
      106                 Dermal  NA                                        
      107                 Dermal  NA                                        
      108                 Dermal  NA                                        
      111                 Dermal  NA                                        
      112                 Dermal  NA                                        
      114                 Dermal  NA                                        
      115                 Dermal  NA                                        
      116                 Dermal  NA                                        
      117                 Dermal  NA                                        
      118                 Dermal  NA                                        
      119                 Dermal  NA                                        
      120                 Dermal  NA                                        
      121                 Dermal  NA                                        
      122                 Dermal  NA                                        
      123                 Dermal  NA                                        
      124                 Dermal  NA                                        
      125                 Dermal  NA                                        
      126                 Dermal  NA                                        
      127                 Dermal  NA                                        
      128                 Dermal  NA                                        
      129                 Dermal  NA                                        
      130                 Dermal  NA                                        
      131                 Dermal  NA                                        
      133                 Dermal  NA                                        
      134                 Dermal  NA                                        
      135                 Dermal  NA                                        
      209                 Dermal  NA                                        
          assaySource inVitroAssayFormat
      39                                
      41                                
      43                                
      44                                
      45                                
      46                                
      47                                
      48                                
      49                                
      51                                
      52                                
      58                                
      59                                
      60                                
      64                                
      65                                
      66                                
      67                                
      69                                
      70                                
      72                                
      74                                
      79                                
      81                                
      84                                
      86                                
      87                                
      89                                
      90                                
      91                                
      92                                
      93                                
      94                                
      95                                
      96                                
      97                                
      106                               
      107                               
      108                               
      111                               
      112                               
      114                               
      115                               
      116                               
      117                               
      118                               
      119                               
      120                               
      121                               
      122                               
      123                               
      124                               
      125                               
      126                               
      127                               
      128                               
      129                               
      130                               
      131                               
      133                               
      134                               
      135                               
      209                               
                                                                                                                                             reference
      39                                                                                                                           Urbisch et al. 2015
      41                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      43                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      44                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      45                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      46                                                                                                                     Marzulli and Maibach 1973
      47                                                                                                                     Marzulli and Maibach 1973
      48                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      49                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      51  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      52  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      58                                                                                                                     Marzulli and Maibach 1973
      59                                                                                                                     Marzulli and Maibach 1973
      60  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      64                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      65                              Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      66  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      67                              Marzulli and Maibach 1974; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004; Basketter et al. 2005
      69  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      70  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      72  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      74  Kligman 1966; Greif 1967; Magnusson and Kligman 1969; Basketter et al. 1994; Basketter et al. 1999; Gerberick et al. 2000; Akkan et al. 2003
      79                                                                                                                     Marzulli and Maibach 1973
      81                                                                                                         ECPA personal communication (undated)
      84                                                                                                                     Marzulli and Maibach 1973
      86                                                                                                         ECPA personal communication (undated)
      87                                                                                                                     Marzulli and Maibach 1973
      89                                                                                                         ECPA personal communication (undated)
      90                                                                                                                     Marzulli and Maibach 1973
      91                                                                                                         ECPA personal communication (undated)
      92                                                                                                                     Marzulli and Maibach 1973
      93                                                                                                         ECPA personal communication (undated)
      94                                                                                                                     Marzulli and Maibach 1973
      95                                                                                                                         Basketter et al. 2003
      96                                                                                                                     Marzulli and Maibach 1973
      97                                                                                                                              Ryan et al. 2002
      106                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      107                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      108                                                                                                                           Kimber et al. 1991
      111                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      112                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      114                                                                                                                           Hilton et al. 1998
      115                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      116                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      117                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      118                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      119                                                                                                                    Marzulli and Maibach 1973
      120                                                                                                                             Ryan et al. 2002
      121                                                                                                                    Marzulli and Maibach 1973
      122                                                                                                                             Ryan et al. 2002
      123                                                                                                                    Marzulli and Maibach 1973
      124                                                                                                                             Ryan et al. 2002
      125                                                                                                                    Marzulli and Maibach 1973
      126                                                                                                                           Hilton et al. 1996
      127                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      128                                                                                                                        Basketter et al. 2003
      129                                                                                                                    Marzulli and Maibach 1973
      130                                                                                                                           Hilton et al. 1998
      131                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      133                                                                                                                           Kimber et al. 1991
      134                             Marzulli and Maibach 1974; Gerberick et al. 2001; Akkan et al. 2003; Griem et al. 2003; Schneider and Akkan 2004
      135                                                                                                                        Basketter et al. 2001
      209                                                                                                                          Urbisch et al. 2015
                                                                                                                                           referenceUrl
      39                                                                                                                    10.1016/j.yrtph.2014.12.008
      41                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      43                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      44        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      45        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      46                                                                                                                                  Not available
      47                                                                                                                                  Not available
      48                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      49                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      51  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      52  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      58                                                                                                                                  Not available
      59                                                                                                                                  Not available
      60  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      64        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      65                 10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      66  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      67        10.1016/0015-6264(74)90367-8; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002; 10.1111/j.0105-1873.2005.00707.x
      69  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      70  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      72  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      74  10.1038/jid.1966.160; Not available; 10.1038/jid.1969.42; 10.1016/0278-6915(94)90112-0; 10.1016/S0278-6915(99)00112-x; 10.1053/ajcd.2000.0003
      79                                                                                                                                  Not available
      81                                                                                                                                  Not available
      84                                                                                                                                  Not available
      86                                                                                                                                  Not available
      87                                                                                                                                  Not available
      89                                                                                                                                  Not available
      90                                                                                                                                  Not available
      91                                                                                                                                  Not available
      92                                                                                                                                  Not available
      93                                                                                                                                  Not available
      94                                                                                                                                  Not available
      95                                                                                                                          10.1081/CUS-120026299
      96                                                                                                                                  Not available
      97                                                                                                                  10.1016/s0278-6915(02)00116-3
      106                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      107                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      108                                                                                                                  10.1016/0378-4274(91)90135-s
      111                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      112                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      114                                                                                                                                 Not available
      115                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      116                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      117                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      118                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      119                                                                                                                                 Not available
      120                                                                                                                 10.1016/s0278-6915(02)00116-3
      121                                                                                                                                 Not available
      122                                                                                                                 10.1016/s0278-6915(02)00116-3
      123                                                                                                                                 Not available
      124                                                                                                                 10.1016/s0278-6915(02)00116-3
      125                                                                                                                                 Not available
      126                                                                                                                  10.1016/0278-6915(96)00012-9
      127                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      128                                                                                                                         10.1081/CUS-120026299
      129                                                                                                                                 Not available
      130                                                                                                                                 Not available
      131                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      133                                                                                                                  10.1016/0378-4274(91)90135-s
      134                10.1016/0015-6264(74)90367-8; 10.1053/ajcd.2001.23926; Not available; 10.1016/j.yrtph.2003.07.001; 10.1016/j.yrtph.2004.02.002
      135                                                                                                          10.1034/j.1600-0536.2001.045002089.x
      209                                                                                                                   10.1016/j.yrtph.2014.12.008
                 dtxsid substanceName
      39  DTXSID7020637  Formaldehyde
      41  DTXSID7020637  Formaldehyde
      43  DTXSID7020637  Formaldehyde
      44  DTXSID7020637  Formaldehyde
      45  DTXSID7020637  Formaldehyde
      46  DTXSID7020637  Formaldehyde
      47  DTXSID7020637  Formaldehyde
      48  DTXSID7020637  Formaldehyde
      49  DTXSID7020637  Formaldehyde
      51  DTXSID7020637  Formaldehyde
      52  DTXSID7020637  Formaldehyde
      58  DTXSID7020637  Formaldehyde
      59  DTXSID7020637  Formaldehyde
      60  DTXSID7020637  Formaldehyde
      64  DTXSID7020637  Formaldehyde
      65  DTXSID7020637  Formaldehyde
      66  DTXSID7020637  Formaldehyde
      67  DTXSID7020637  Formaldehyde
      69  DTXSID7020637  Formaldehyde
      70  DTXSID7020637  Formaldehyde
      72  DTXSID7020637  Formaldehyde
      74  DTXSID7020637  Formaldehyde
      79  DTXSID7020637  Formaldehyde
      81  DTXSID7020637  Formaldehyde
      84  DTXSID7020637  Formaldehyde
      86  DTXSID7020637  Formaldehyde
      87  DTXSID7020637  Formaldehyde
      89  DTXSID7020637  Formaldehyde
      90  DTXSID7020637  Formaldehyde
      91  DTXSID7020637  Formaldehyde
      92  DTXSID7020637  Formaldehyde
      93  DTXSID7020637  Formaldehyde
      94  DTXSID7020637  Formaldehyde
      95  DTXSID7020637  Formaldehyde
      96  DTXSID7020637  Formaldehyde
      97  DTXSID7020637  Formaldehyde
      106 DTXSID7020637  Formaldehyde
      107 DTXSID7020637  Formaldehyde
      108 DTXSID7020637  Formaldehyde
      111 DTXSID7020637  Formaldehyde
      112 DTXSID7020637  Formaldehyde
      114 DTXSID7020637  Formaldehyde
      115 DTXSID7020637  Formaldehyde
      116 DTXSID7020637  Formaldehyde
      117 DTXSID7020637  Formaldehyde
      118 DTXSID7020637  Formaldehyde
      119 DTXSID7020637  Formaldehyde
      120 DTXSID7020637  Formaldehyde
      121 DTXSID7020637  Formaldehyde
      122 DTXSID7020637  Formaldehyde
      123 DTXSID7020637  Formaldehyde
      124 DTXSID7020637  Formaldehyde
      125 DTXSID7020637  Formaldehyde
      126 DTXSID7020637  Formaldehyde
      127 DTXSID7020637  Formaldehyde
      128 DTXSID7020637  Formaldehyde
      129 DTXSID7020637  Formaldehyde
      130 DTXSID7020637  Formaldehyde
      131 DTXSID7020637  Formaldehyde
      133 DTXSID7020637  Formaldehyde
      134 DTXSID7020637  Formaldehyde
      135 DTXSID7020637  Formaldehyde
      209 DTXSID7020637  Formaldehyde
                                                              pubMedId
      39                                                      25541156
      41          4459237; 11526521; Not available; 14623479; 15135206
      43          4459237; 11526521; Not available; 14623479; 15135206
      44          4459237; Not available; 14623479; 15135206; 16283904
      45          4459237; Not available; 14623479; 15135206; 16283904
      46                                                 Not available
      47                                                 Not available
      48          4459237; 11526521; Not available; 14623479; 15135206
      49          4459237; 11526521; Not available; 14623479; 15135206
      51  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      52  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      58                                                 Not available
      59                                                 Not available
      60  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      64          4459237; Not available; 14623479; 15135206; 16283904
      65          4459237; 11526521; Not available; 14623479; 15135206
      66  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      67          4459237; Not available; 14623479; 15135206; 16283904
      69  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      70  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      72  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      74  5924294; Not available; 5774356; 8045461; 10654593; 10684384
      79                                                 Not available
      81                                                 Not available
      84                                                 Not available
      86                                                 Not available
      87                                                 Not available
      89                                                 Not available
      90                                                 Not available
      91                                                 Not available
      92                                                 Not available
      93                                                 Not available
      94                                                 Not available
      95                                                 Not available
      96                                                 Not available
      97                                                      12176099
      106         4459237; 11526521; Not available; 14623479; 15135206
      107         4459237; 11526521; Not available; 14623479; 15135206
      108                                                      1998208
      111         4459237; 11526521; Not available; 14623479; 15135206
      112         4459237; 11526521; Not available; 14623479; 15135206
      114                                                      9471984
      115         4459237; 11526521; Not available; 14623479; 15135206
      116         4459237; 11526521; Not available; 14623479; 15135206
      117         4459237; 11526521; Not available; 14623479; 15135206
      118         4459237; 11526521; Not available; 14623479; 15135206
      119                                                Not available
      120                                                     12176099
      121                                                Not available
      122                                                     12176099
      123                                                Not available
      124                                                     12176099
      125                                                Not available
      126                                                      8690318
      127         4459237; 11526521; Not available; 14623479; 15135206
      128                                                Not available
      129                                                Not available
      130                                                      9471984
      131         4459237; 11526521; Not available; 14623479; 15135206
      133                                                      1998208
      134         4459237; 11526521; Not available; 14623479; 15135206
      135                                                     11553118
      209                                                     25541156
      
      $ice_invivo_irritation
       [1] assay              endpoint           substanceType      casrn             
       [5] qsarReadyId        value              unit               species           
       [9] receptorSpecies    route              sex                strain            
      [13] lifeStage          tissue             lesion             location          
      [17] assaySource        inVitroAssayFormat reference          referenceUrl      
      [21] dtxsid             substanceName      pubMedId          
      <0 rows> (or 0-length row.names)
      
      $ice_invivo_endocrine
       [1] assay              endpoint           substanceType      casrn             
       [5] qsarReadyId        value              unit               species           
       [9] receptorSpecies    route              sex                strain            
      [13] lifeStage          tissue             lesion             location          
      [17] assaySource        inVitroAssayFormat reference          referenceUrl      
      [21] dtxsid             substanceName      pubMedId          
      <0 rows> (or 0-length row.names)
      
      $ice_cancer
                         assay               endpoint substanceType   casrn
      10 In Vitro Genotoxicity Bacterial mutagenicity      Chemical 50-00-0
                         qsarReadyId
      10 WSFSSNUMVMOOMR-UHFFFAOYSA-N
                                                                                                          value
      10 Weakly Positive; Weakly Positive; Positive; Positive; Positive; Positive; Positive; Positive; Positive
         unit        species receptorSpecies          route            sex
      10      Not applicable                 Not applicable Not applicable
                 strain lifeStage tissue lesion location assaySource
      10 Not applicable                                             
         inVitroAssayFormat      reference
      10                    Not applicable
                                                            referenceUrl
      10 https://manticore.niehs.nih.gov/cebssearch/test_article/50-00-0
                dtxsid substanceName pubMedId
      10 DTXSID7020637  Formaldehyde       NA
      
      $ice_dart
       [1] assay              endpoint           substanceType      casrn             
       [5] qsarReadyId        value              unit               species           
       [9] receptorSpecies    route              sex                strain            
      [13] lifeStage          tissue             lesion             location          
      [17] assaySource        inVitroAssayFormat reference          referenceUrl      
      [21] dtxsid             substanceName      pubMedId          
      <0 rows> (or 0-length row.names)
      

