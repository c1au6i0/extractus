# extr_chem_info fetches chem data

    Code
      extr_chem_info(compounds)
    Message
      Querying Formaldehyde. 
      OK (HTTP 200).
      
      Querying Aflatoxin B1. 
      OK (HTTP 200).
      
      i Querying 712 and 186907.
    Output
           cid   iupac_name    cas_rn cid_all cas_rn_all molecular_formula
      1 186907 Aflatoxin B1 1162-65-8  186907  1162-65-8          C17H12O6
      2    712 Formaldehyde   50-00-0     712    50-00-0              CH2O
        molecular_weight                               canonical_smiles
      1           312.27 COC1=C2C3=C(C(=O)CC3)C(=O)OC2=C4C5C=COC5OC4=C1
      2           30.026                                            C=O
                                                 isomeric_smiles
      1 COC1=C2C3=C(C(=O)CC3)C(=O)OC2=C4[C@@H]5C=CO[C@@H]5OC4=C1
      2                                                      C=O
                                                                                                                               in_ch_i
      1 InChI=1S/C17H12O6/c1-20-10-6-11-14(8-4-5-21-17(8)22-11)15-13(10)7-2-3-9(18)12(7)16(19)23-15/h4-6,8,17H,2-3H2,1H3/t8-,17+/m0/s1
      2                                                                                                        InChI=1S/CH2O/c1-2/h1H2
                        in_ch_i_key
      1 OQIQSTLJSLGHID-WNWIJWBNSA-N
      2 WSFSSNUMVMOOMR-UHFFFAOYSA-N
                                                                                                            iupac_name_y
      1 (3S,7R)-11-methoxy-6,8,19-trioxapentacyclo[10.7.0.02,9.03,7.013,17]nonadeca-1,4,9,11,13(17)-pentaene-16,18-dione
      2                                                                                                     formaldehyde
        x_log_p   exact_mass monoisotopic_mass tpsa complexity charge
      1     1.6 312.06338810      312.06338810 71.1        650      0
      2     1.2 30.010564683      30.010564683 17.1          2      0
        h_bond_donor_count h_bond_acceptor_count rotatable_bond_count
      1                  0                     6                    1
      2                  0                     1                    0
        heavy_atom_count isotope_atom_count atom_stereo_count
      1               23                  0                 2
      2                2                  0                 0
        defined_atom_stereo_count undefined_atom_stereo_count bond_stereo_count
      1                         2                           0                 0
      2                         0                           0                 0
        defined_bond_stereo_count undefined_bond_stereo_count covalent_unit_count
      1                         0                           0                   1
      2                         0                           0                   1
        volume3d x_steric_quadrupole3d y_steric_quadrupole3d z_steric_quadrupole3d
      1    226.6                  8.20                  3.35                  0.83
      2     26.8                  0.93                  0.56                  0.56
        feature_count3d feature_acceptor_count3d feature_donor_count3d
      1              10                        5                     0
      2               1                        1                     0
        feature_anion_count3d feature_cation_count3d feature_ring_count3d
      1                     0                      0                    5
      2                     0                      0                    0
        feature_hydrophobe_count3d conformer_model_rmsd3d effective_rotor_count3d
      1                          0                    0.6                     1.8
      2                          0                    0.4                     0.0
        conformer_count3d
      1                 1
      2                 1
                                                                                                                                                       fingerprint2d
      1 AAADccB4OAAAAAAAAAAAAAAAAAAAASIEAAAwQAAAAAAQAEiBAAAAGgAAAAAADQSwmAMyDoAABACIAqDSCAACCAAgIAAIiAEGCMgcJzaMMRqiOiCl4BUMqQfI6PyOoAACCAAIAABAAAQQABAAAAAAAAAAAA==
      2 AAADcQAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAAAAAAAAAAIAAAAAAAAIAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==
               query
      1 Aflatoxin B1
      2 Formaldehyde

# extr_pubchem_fema works correctly

    Code
      result
    Output
        cid   casrn name result source_name source_id               other
      1 702 64-17-5   NA     NA          NA        NA FEMA info not found
      2 712 50-00-0   NA     NA          NA        NA FEMA info not found

# extr_pubchem_ghs works correctly

    Code
      result
    Output
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
      95  702 64-17-5      Ethanol
      96  702 64-17-5      Ethanol
      97  702 64-17-5      Ethanol
      98  702 64-17-5      Ethanol
      99  702 64-17-5      Ethanol
      100 702 64-17-5      Ethanol
      101 702 64-17-5      Ethanol
      102 702 64-17-5      Ethanol
      103 702 64-17-5      Ethanol
      104 702 64-17-5      Ethanol
      105 702 64-17-5      Ethanol
      106 702 64-17-5      Ethanol
      107 702 64-17-5      Ethanol
      108 702 64-17-5      Ethanol
      109 702 64-17-5      Ethanol
      110 702 64-17-5      Ethanol
      111 702 64-17-5      Ethanol
      112 702 64-17-5      Ethanol
      113 702 64-17-5      Ethanol
      114 702 64-17-5      Ethanol
      115 702 64-17-5      Ethanol
      116 702 64-17-5      Ethanol
      117 702 64-17-5      Ethanol
      118 702 64-17-5      Ethanol
      119 702 64-17-5      Ethanol
      120 702 64-17-5      Ethanol
      121 702 64-17-5      Ethanol
      122 702 64-17-5      Ethanol
      123 702 64-17-5      Ethanol
      124 702 64-17-5      Ethanol
      125 702 64-17-5      Ethanol
      126 702 64-17-5      Ethanol
      127 702 64-17-5      Ethanol
      128 702 64-17-5      Ethanol
      129 702 64-17-5      Ethanol
      130 702 64-17-5      Ethanol
      131 702 64-17-5      Ethanol
      132 702 64-17-5      Ethanol
      133 702 64-17-5      Ethanol
      134 702 64-17-5      Ethanol
      135 702 64-17-5      Ethanol
      136 702 64-17-5      Ethanol
      137 702 64-17-5      Ethanol
      138 702 64-17-5      Ethanol
      139 702 64-17-5      Ethanol
      140 702 64-17-5      Ethanol
      141 702 64-17-5      Ethanol
      142 702 64-17-5      Ethanol
      143 702 64-17-5      Ethanol
      144 702 64-17-5      Ethanol
      145 702 64-17-5      Ethanol
      146 702 64-17-5      Ethanol
      147 702 64-17-5      Ethanol
      148 702 64-17-5      Ethanol
      149 702 64-17-5      Ethanol
      150 702 64-17-5      Ethanol
      151 702 64-17-5      Ethanol
      152 702 64-17-5      Ethanol
      153 702 64-17-5      Ethanol
      154 702 64-17-5      Ethanol
      155 702 64-17-5      Ethanol
      156 702 64-17-5      Ethanol
      157 702 64-17-5      Ethanol
      158 702 64-17-5      Ethanol
      159 702 64-17-5      Ethanol
      160 702 64-17-5      Ethanol
      161 702 64-17-5      Ethanol
      162 702 64-17-5      Ethanol
      163 702 64-17-5      Ethanol
      164 702 64-17-5      Ethanol
      165 702 64-17-5      Ethanol
      166 702 64-17-5      Ethanol
      167 702 64-17-5      Ethanol
      168 702 64-17-5      Ethanol
      169 702 64-17-5      Ethanol
      170 702 64-17-5      Ethanol
      171 702 64-17-5      Ethanol
      172 702 64-17-5      Ethanol
      173 702 64-17-5      Ethanol
      174 702 64-17-5      Ethanol
      175 702 64-17-5      Ethanol
      176 702 64-17-5      Ethanol
                                                                                                                                                                                                                                                                                                                                         GHS
      1                                                                                                                                                                                                                                                                                                                               Danger
      2                                                                                                                                                                                                                                                                      H301 (83.33%): Toxic if swallowed [Danger Acute toxicity, oral]
      3                                                                                                                                                                                                                                                            H311 (83.33%): Toxic in contact with skin [Danger Acute toxicity, dermal]
      4                                                                                                                                                                                                                                            H314 (83.33%): Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      5                                                                                                                                                                                                                                                     H317 (90.59%): May cause an allergic skin reaction [Warning Sensitization, Skin]
      6                                                                                                                                                                                                                                                  H318 (48.25%): Causes serious eye damage [Danger Serious eye damage/eye irritation]
      7                                                                                                                                                                                                                                                                   H330 (13.6%): Fatal if inhaled [Danger Acute toxicity, inhalation]
      8                                                                                                                                                                                                                                                                  H331 (78.08%): Toxic if inhaled [Danger Acute toxicity, inhalation]
      9                                                                                                                                                                                                                                                 H341 (18.59%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      10                                                                                                                                                                                                                                                                            H350 (18.59%): May cause cancer [Danger Carcinogenicity]
      11                                                                                                                                                                                                                                                                H351 (64.79%): Suspected of causing cancer [Warning Carcinogenicity]
      12                                                                        P203, P260, P261, P262, P264, P264+P265, P270, P271, P272, P280, P284, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P317, P318, P320, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      13                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      14                                                                                                                                                      Aggregated GHS information provided by 6393 reports by companies from 97 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.
      15                                                                                                                                                                                       Reported as not meeting GHS hazard criteria by 3 of 6393 reports by companies. For more detailed information, please visit  ECHA C&L website.
      16                                                                                                                                                                                                                              Of the 96 notification(s) provided by 6390 of 6393 reports by companies with hazard statement code(s).
      17                                           Information may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.
      18                                                                                                                                                                                                                                                                                                                              Danger
      19                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      20                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      21                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      22                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      23                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      24                                                                                                                                                                                                                                                                      H350i: May cause cancer by inhalation [Danger Carcinogenicity]
      25                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      26                                                                                   P203, P260, P261, P262, P264, P270, P271, P272, P273, P280, P284, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P318, P320, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      27                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      28                                                                                                                                                                                                                                                                                                                              Danger
      29                                                                                                                                                                                                                                                                                H227: Combustible liquid [Warning Flammable liquids]
      30                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      31                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      32                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      33                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      34                                                                                                                                                                                                                                                          H318: Causes serious eye damage [Danger Serious eye damage/eye irritation]
      35                                                                                                                                                                                                                                                                          H331: Toxic if inhaled [Danger Acute toxicity, inhalation]
      36                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      37                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      38                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      39                                                                                                                                                                                                                                                  H402: Harmful to aquatic life [Hazardous to the aquatic environment, acute hazard]
      40                                            P203, P210, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P308+P316, P316, P317, P318, P321, P330, P333+P317, P361+P364, P362+P364, P363, P370+P378, P403, P403+P233, P405, and P501
      41                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      42                                                                                                                                                                                                                                                                                                                              Danger
      43                                                                                                                                                                                                                                                                              H220: Extremely flammable gas [Danger Flammable gases]
      44                                                                                                                                                                                                                                                                                H227: Combustible liquid [Warning Flammable liquids]
      45                                                                                                                                                                                                                                             H280: Contains gas under pressure; may explode if heated [Warning Gases under pressure]
      46                                                                                                                                                                                                                                                                           H302: Harmful if swallowed [Warning Acute toxicity, oral]
      47                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      48                                                                                                                                                                                                                                                                    H315: Causes skin irritation [Warning Skin corrosion/irritation]
      49                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      50                                                                                                                                                                                                                                                     H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      51                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      52                                                                                                                                                                                                                 H334: May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]
      53                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      54                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      55                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      56                                                                                                                                                                                                     H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      57                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      58  P203, P210, P222, P233, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P284, P301+P317, P302+P352, P304+P340, P305+P351+P338, P308+P316, P316, P318, P319, P320, P321, P330, P332+P317, P333+P317, P337+P317, P342+P316, P361+P364, P362+P364, P370+P378, P377, P381, P403, P403+P233, P405, P410+P403, and P501
      59                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      60                                                                                                                                                                                                                                                                                                                              Danger
      61                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      62                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      63                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      64                                                                                                                                                                                                                    H412: Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      65                                                                                                                                                                    P260, P261, P264, P272, P273, P280, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P321, P333+P317, P362+P364, P363, P405, and P501
      66                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      67                                                                                                                                                                                                                                                                                                                              Danger
      68                                                                                                                                                                                                                                                                              H220: Extremely flammable gas [Danger Flammable gases]
      69                                                                                                                                                                                                                                             H280: Contains gas under pressure; may explode if heated [Warning Gases under pressure]
      70                                                                                                                                                                                                                                                                           H302: Harmful if swallowed [Warning Acute toxicity, oral]
      71                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      72                                                                                                                                                                                                                                                                    H315: Causes skin irritation [Warning Skin corrosion/irritation]
      73                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      74                                                                                                                                                                                                                                                     H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      75                                                                                                                                                                                                                                                                          H330: Fatal if inhaled [Danger Acute toxicity, inhalation]
      76                                                                                                                                                                                                                 H334: May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]
      77                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      78                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      79                                                                                                                                                                                                                                              H370: Causes damage to organs [Danger Specific target organ toxicity, single exposure]
      80                                                                                                                                                                                                     H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      81                                                                                                                                                                                                                                                    H401: Toxic to aquatic life [Hazardous to the aquatic environment, acute hazard]
      82                                                                                                                                                                                                                    H412: Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      83             P203, P210, P222, P233, P260, P261, P262, P264, P264+P265, P270, P271, P272, P273, P280, P284, P301+P317, P302+P352, P304+P340, P305+P351+P338, P308+P316, P316, P318, P319, P320, P321, P330, P332+P317, P333+P317, P337+P317, P342+P316, P361+P364, P362+P364, P377, P381, P403, P403+P233, P405, P410+P403, and P501
      84                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      85                                                                                                                                                                                                                                                                                                                              Danger
      86                                                                                                                                                                                                                                                                              H301: Toxic if swallowed [Danger Acute toxicity, oral]
      87                                                                                                                                                                                                                                                                    H311: Toxic in contact with skin [Danger Acute toxicity, dermal]
      88                                                                                                                                                                                                                                                    H314: Causes severe skin burns and eye damage [Danger Skin corrosion/irritation]
      89                                                                                                                                                                                                                                                             H317: May cause an allergic skin reaction [Warning Sensitization, Skin]
      90                                                                                                                                                                                                                                                                          H331: Toxic if inhaled [Danger Acute toxicity, inhalation]
      91                                                                                                                                                                                                                                                         H341: Suspected of causing genetic defects [Warning Germ cell mutagenicity]
      92                                                                                                                                                                                                                                                                                     H350: May cause cancer [Danger Carcinogenicity]
      93                                                                                                     P203, P260, P261, P262, P264, P270, P271, P272, P280, P301+P316, P301+P330+P331, P302+P352, P302+P361+P354, P304+P340, P305+P354+P338, P316, P318, P321, P330, P333+P317, P361+P364, P362+P364, P363, P403+P233, P405, and P501
      94                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      95                                                                                                                                                                                                                                                                                                                              Danger
      96                                                                                                                                                                                                                                                         H225 (99.99%): Highly Flammable liquid and vapor [Danger Flammable liquids]
      97                                                                                                                                                                                                                                            H319 (37.63%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      98                                                                                                                                                                                                      P210, P233, P240, P241, P242, P243, P264+P265, P280, P303+P361+P353, P305+P351+P338, P337+P317, P370+P378, P403+P235, and P501
      99                                                                                                                                                                                                                                           (The corresponding statement to each P-code can be found at the GHS Classification page.)
      100                                                                                                                                                    Aggregated GHS information provided by 13839 reports by companies from 74 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.
      101                                                                                                                                                                                     Reported as not meeting GHS hazard criteria by 5 of 13839 reports by companies. For more detailed information, please visit  ECHA C&L website.
      102                                                                                                                                                                                                                           Of the 71 notification(s) provided by 13834 of 13839 reports by companies with hazard statement code(s).
      103                                          Information may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.
      104                                                                                                                                                                                                                                                                                                                            Warning
      105                                                                                                                                                                                                                                             H319 (100%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      106                                                                                                                                                                                                            H412 (100%): Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      107                                                                                                                                                                                                                                                                         P264+P265, P273, P280, P305+P351+P338, P337+P317, and P501
      108                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      109                                                                                                                                                                                                                                           The GHS information provided by 1 company from 1 notification to the ECHA C&L Inventory.
      110                                                                                                                                                                                                                                                                                                                            Warning
      111                                                                                                                                                                                                                                                            H315 (100%): Causes skin irritation [Warning Skin corrosion/irritation]
      112                                                                                                                                                                                                                                             H319 (100%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      113                                                                                                                                                                                                            H412 (100%): Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      114                                                                                                                                                                                                                            P264, P264+P265, P273, P280, P302+P352, P305+P351+P338, P321, P332+P317, P337+P317, P362+P364, and P501
      115                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      116                                                                                                                                                                                                                                           The GHS information provided by 1 company from 1 notification to the ECHA C&L Inventory.
      117                                                                                                                                                                                                                                                                                                                            Warning
      118                                                                                                                                                                                                                                                            H315 (100%): Causes skin irritation [Warning Skin corrosion/irritation]
      119                                                                                                                                                                                                                                             H319 (100%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      120                                                                                                                                                                                                            H412 (100%): Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      121                                                                                                                                                                                                                            P264, P264+P265, P273, P280, P302+P352, P305+P351+P338, P321, P332+P317, P337+P317, P362+P364, and P501
      122                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      123                                                                                                                                                                                                                                           The GHS information provided by 1 company from 1 notification to the ECHA C&L Inventory.
      124                                                                                                                                                                                                                                                                                                                            Warning
      125                                                                                                                                                                                                                                                            H315 (100%): Causes skin irritation [Warning Skin corrosion/irritation]
      126                                                                                                                                                                                                                                             H319 (100%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      127                                                                                                                                                                                                            H412 (100%): Harmful to aquatic life with long lasting effects [Hazardous to the aquatic environment, long-term hazard]
      128                                                                                                                                                                                                                            P264, P264+P265, P273, P280, P302+P352, P305+P351+P338, P321, P332+P317, P337+P317, P362+P364, and P501
      129                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      130                                                                                                                                                                                                                                           The GHS information provided by 1 company from 1 notification to the ECHA C&L Inventory.
      131                                                                                                                                                                                                                                                                                                                             Danger
      132                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      133                                                                                                                                                                                                                                                    H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      134                                                                                                                                                                                                     P210, P233, P240, P241, P242, P243, P264+P265, P280, P303+P361+P353, P305+P351+P338, P337+P317, P370+P378, P403+P235, and P501
      135                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      136                                                                                                                                                                                                                                                                                                                             Danger
      137                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      138                                                                                                                                                                                                                                                    H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      139                                                                                                                                                                                                     P210, P233, P240, P241, P242, P243, P264+P265, P280, P303+P361+P353, P305+P351+P338, P337+P317, P370+P378, P403+P235, and P501
      140                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      141                                                                                                                                                                                                                                                                                                                             Danger
      142                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      143                                                                                                                                                                                                                                                            H320: Causes eye irritation [Warning Serious eye damage/eye irritation]
      144                                                                                                                                                                                                     H335: May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]
      145                                                                                                                                                                                                                H336: May cause drowsiness or dizziness [Warning Specific target organ toxicity, single exposure; Narcotic effects]
      146                                                                                                                                                                                                                                                                                    H350: May cause cancer [Danger Carcinogenicity]
      147                                                                                                                                                                                                                                                      H360: May damage fertility or the unborn child [Danger Reproductive toxicity]
      148                                                                                                                                                                                                    H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      149                                                                                                                                                                                               H373: May causes damage to organs through prolonged or repeated exposure [Warning Specific target organ toxicity, repeated exposure]
      150                                                                                                                         P203, P210, P233, P240, P241, P242, P243, P260, P261, P264, P264+P265, P270, P271, P280, P303+P361+P353, P304+P340, P305+P351+P338, P318, P319, P337+P317, P370+P378, P403+P233, P403+P235, P405, and P501
      151                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      152                                                                                                                                                                                                                                                                                                                             Danger
      153                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      154                                                                                                                                                                                                                                                            H320: Causes eye irritation [Warning Serious eye damage/eye irritation]
      155                                                                                                                                                                                                     H335: May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]
      156                                                                                                                                                                                                                                                                    H340: May cause genetic defects [Danger Germ cell mutagenicity]
      157                                                                                                                                                                                                                                                      H360: May damage fertility or the unborn child [Danger Reproductive toxicity]
      158                                                                                                                                                                                                    H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      159                                                                                                                                                                                               H373: May causes damage to organs through prolonged or repeated exposure [Warning Specific target organ toxicity, repeated exposure]
      160                                                                                                                         P203, P210, P233, P240, P241, P242, P243, P260, P261, P264, P264+P265, P270, P271, P280, P303+P361+P353, P304+P340, P305+P351+P338, P318, P319, P337+P317, P370+P378, P403+P233, P403+P235, P405, and P501
      161                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      162                                                                                                                                                                                                                                                                                                                             Danger
      163                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      164                                                                                                                                                                                                                                                    H319: Causes serious eye irritation [Warning Serious eye damage/eye irritation]
      165                                                                                                                                                                                                     H335: May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]
      166                                                                                                                                                                                                                H336: May cause drowsiness or dizziness [Warning Specific target organ toxicity, single exposure; Narcotic effects]
      167                                                                                                                                                                                                                                                                    H340: May cause genetic defects [Danger Germ cell mutagenicity]
      168                                                                                                                                                                                                                                                      H360: May damage fertility or the unborn child [Danger Reproductive toxicity]
      169                                                                                                                                                                                                    H372: Causes damage to organs through prolonged or repeated exposure [Danger Specific target organ toxicity, repeated exposure]
      170                                                                                                                                                                                               H373: May causes damage to organs through prolonged or repeated exposure [Warning Specific target organ toxicity, repeated exposure]
      171                                                                                                                         P203, P210, P233, P240, P241, P242, P243, P260, P261, P264, P264+P265, P270, P271, P280, P303+P361+P353, P304+P340, P305+P351+P338, P318, P319, P337+P317, P370+P378, P403+P233, P403+P235, P405, and P501
      172                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
      173                                                                                                                                                                                                                                                                                                                             Danger
      174                                                                                                                                                                                                                                                                 H225: Highly Flammable liquid and vapor [Danger Flammable liquids]
      175                                                                                                                                                                                                                                           P210, P233, P240, P241, P242, P243, P280, P303+P361+P353, P370+P378, P403+P235, and P501
      176                                                                                                                                                                                                                                          (The corresponding statement to each P-code can be found at the GHS Classification page.)
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
      18           Hazardous Chemical Information System (HCIS), Safe Work Australia
      19           Hazardous Chemical Information System (HCIS), Safe Work Australia
      20           Hazardous Chemical Information System (HCIS), Safe Work Australia
      21           Hazardous Chemical Information System (HCIS), Safe Work Australia
      22           Hazardous Chemical Information System (HCIS), Safe Work Australia
      23           Hazardous Chemical Information System (HCIS), Safe Work Australia
      24           Hazardous Chemical Information System (HCIS), Safe Work Australia
      25           Hazardous Chemical Information System (HCIS), Safe Work Australia
      26           Hazardous Chemical Information System (HCIS), Safe Work Australia
      27           Hazardous Chemical Information System (HCIS), Safe Work Australia
      28                                       Hazardous Substances Data Bank (HSDB)
      29                                       Hazardous Substances Data Bank (HSDB)
      30                                       Hazardous Substances Data Bank (HSDB)
      31                                       Hazardous Substances Data Bank (HSDB)
      32                                       Hazardous Substances Data Bank (HSDB)
      33                                       Hazardous Substances Data Bank (HSDB)
      34                                       Hazardous Substances Data Bank (HSDB)
      35                                       Hazardous Substances Data Bank (HSDB)
      36                                       Hazardous Substances Data Bank (HSDB)
      37                                       Hazardous Substances Data Bank (HSDB)
      38                                       Hazardous Substances Data Bank (HSDB)
      39                                       Hazardous Substances Data Bank (HSDB)
      40                                       Hazardous Substances Data Bank (HSDB)
      41                                       Hazardous Substances Data Bank (HSDB)
      42                                                                    NITE-CMC
      43                                                                    NITE-CMC
      44                                                                    NITE-CMC
      45                                                                    NITE-CMC
      46                                                                    NITE-CMC
      47                                                                    NITE-CMC
      48                                                                    NITE-CMC
      49                                                                    NITE-CMC
      50                                                                    NITE-CMC
      51                                                                    NITE-CMC
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
      85  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      86  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      87  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      88  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      89  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      90  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      91  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      92  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      93  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      94  Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      95                                            European Chemicals Agency (ECHA)
      96                                            European Chemicals Agency (ECHA)
      97                                            European Chemicals Agency (ECHA)
      98                                            European Chemicals Agency (ECHA)
      99                                            European Chemicals Agency (ECHA)
      100                                           European Chemicals Agency (ECHA)
      101                                           European Chemicals Agency (ECHA)
      102                                           European Chemicals Agency (ECHA)
      103                                           European Chemicals Agency (ECHA)
      104                                           European Chemicals Agency (ECHA)
      105                                           European Chemicals Agency (ECHA)
      106                                           European Chemicals Agency (ECHA)
      107                                           European Chemicals Agency (ECHA)
      108                                           European Chemicals Agency (ECHA)
      109                                           European Chemicals Agency (ECHA)
      110                                           European Chemicals Agency (ECHA)
      111                                           European Chemicals Agency (ECHA)
      112                                           European Chemicals Agency (ECHA)
      113                                           European Chemicals Agency (ECHA)
      114                                           European Chemicals Agency (ECHA)
      115                                           European Chemicals Agency (ECHA)
      116                                           European Chemicals Agency (ECHA)
      117                                           European Chemicals Agency (ECHA)
      118                                           European Chemicals Agency (ECHA)
      119                                           European Chemicals Agency (ECHA)
      120                                           European Chemicals Agency (ECHA)
      121                                           European Chemicals Agency (ECHA)
      122                                           European Chemicals Agency (ECHA)
      123                                           European Chemicals Agency (ECHA)
      124                                           European Chemicals Agency (ECHA)
      125                                           European Chemicals Agency (ECHA)
      126                                           European Chemicals Agency (ECHA)
      127                                           European Chemicals Agency (ECHA)
      128                                           European Chemicals Agency (ECHA)
      129                                           European Chemicals Agency (ECHA)
      130                                           European Chemicals Agency (ECHA)
      131          Hazardous Chemical Information System (HCIS), Safe Work Australia
      132          Hazardous Chemical Information System (HCIS), Safe Work Australia
      133          Hazardous Chemical Information System (HCIS), Safe Work Australia
      134          Hazardous Chemical Information System (HCIS), Safe Work Australia
      135          Hazardous Chemical Information System (HCIS), Safe Work Australia
      136                                      Hazardous Substances Data Bank (HSDB)
      137                                      Hazardous Substances Data Bank (HSDB)
      138                                      Hazardous Substances Data Bank (HSDB)
      139                                      Hazardous Substances Data Bank (HSDB)
      140                                      Hazardous Substances Data Bank (HSDB)
      141                                                                   NITE-CMC
      142                                                                   NITE-CMC
      143                                                                   NITE-CMC
      144                                                                   NITE-CMC
      145                                                                   NITE-CMC
      146                                                                   NITE-CMC
      147                                                                   NITE-CMC
      148                                                                   NITE-CMC
      149                                                                   NITE-CMC
      150                                                                   NITE-CMC
      151                                                                   NITE-CMC
      152                                                                   NITE-CMC
      153                                                                   NITE-CMC
      154                                                                   NITE-CMC
      155                                                                   NITE-CMC
      156                                                                   NITE-CMC
      157                                                                   NITE-CMC
      158                                                                   NITE-CMC
      159                                                                   NITE-CMC
      160                                                                   NITE-CMC
      161                                                                   NITE-CMC
      162                                                                   NITE-CMC
      163                                                                   NITE-CMC
      164                                                                   NITE-CMC
      165                                                                   NITE-CMC
      166                                                                   NITE-CMC
      167                                                                   NITE-CMC
      168                                                                   NITE-CMC
      169                                                                   NITE-CMC
      170                                                                   NITE-CMC
      171                                                                   NITE-CMC
      172                                                                   NITE-CMC
      173 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      174 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      175 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
      176 Regulation (EC) No 1272/2008 of the European Parliament and of the Council
                     source_id other
      1                  55163    NA
      2                  55163    NA
      3                  55163    NA
      4                  55163    NA
      5                  55163    NA
      6                  55163    NA
      7                  55163    NA
      8                  55163    NA
      9                  55163    NA
      10                 55163    NA
      11                 55163    NA
      12                 55163    NA
      13                 55163    NA
      14                 55163    NA
      15                 55163    NA
      16                 55163    NA
      17                 55163    NA
      18                  4750    NA
      19                  4750    NA
      20                  4750    NA
      21                  4750    NA
      22                  4750    NA
      23                  4750    NA
      24                  4750    NA
      25                  4750    NA
      26                  4750    NA
      27                  4750    NA
      28                   164    NA
      29                   164    NA
      30                   164    NA
      31                   164    NA
      32                   164    NA
      33                   164    NA
      34                   164    NA
      35                   164    NA
      36                   164    NA
      37                   164    NA
      38                   164    NA
      39                   164    NA
      40                   164    NA
      41                   164    NA
      42                    69    NA
      43                    69    NA
      44                    69    NA
      45                    69    NA
      46                    69    NA
      47                    69    NA
      48                    69    NA
      49                    69    NA
      50                    69    NA
      51                    69    NA
      52                    69    NA
      53                    69    NA
      54                    69    NA
      55                    69    NA
      56                    69    NA
      57                    69    NA
      58                    69    NA
      59                    69    NA
      60  R04_C_056_JNIOSH,MOE    NA
      61  R04_C_056_JNIOSH,MOE    NA
      62  R04_C_056_JNIOSH,MOE    NA
      63  R04_C_056_JNIOSH,MOE    NA
      64  R04_C_056_JNIOSH,MOE    NA
      65  R04_C_056_JNIOSH,MOE    NA
      66  R04_C_056_JNIOSH,MOE    NA
      67             H29_B_039    NA
      68             H29_B_039    NA
      69             H29_B_039    NA
      70             H29_B_039    NA
      71             H29_B_039    NA
      72             H29_B_039    NA
      73             H29_B_039    NA
      74             H29_B_039    NA
      75             H29_B_039    NA
      76             H29_B_039    NA
      77             H29_B_039    NA
      78             H29_B_039    NA
      79             H29_B_039    NA
      80             H29_B_039    NA
      81             H29_B_039    NA
      82             H29_B_039    NA
      83             H29_B_039    NA
      84             H29_B_039    NA
      85          605-001-00-5    NA
      86          605-001-00-5    NA
      87          605-001-00-5    NA
      88          605-001-00-5    NA
      89          605-001-00-5    NA
      90          605-001-00-5    NA
      91          605-001-00-5    NA
      92          605-001-00-5    NA
      93          605-001-00-5    NA
      94          605-001-00-5    NA
      95                 49769    NA
      96                 49769    NA
      97                 49769    NA
      98                 49769    NA
      99                 49769    NA
      100                49769    NA
      101                49769    NA
      102                49769    NA
      103                49769    NA
      104               277502    NA
      105               277502    NA
      106               277502    NA
      107               277502    NA
      108               277502    NA
      109               277502    NA
      110               277529    NA
      111               277529    NA
      112               277529    NA
      113               277529    NA
      114               277529    NA
      115               277529    NA
      116               277529    NA
      117               277530    NA
      118               277530    NA
      119               277530    NA
      120               277530    NA
      121               277530    NA
      122               277530    NA
      123               277530    NA
      124               277898    NA
      125               277898    NA
      126               277898    NA
      127               277898    NA
      128               277898    NA
      129               277898    NA
      130               277898    NA
      131                 1888    NA
      132                 1888    NA
      133                 1888    NA
      134                 1888    NA
      135                 1888    NA
      136                   82    NA
      137                   82    NA
      138                   82    NA
      139                   82    NA
      140                   82    NA
      141              25B0007    NA
      142              25B0007    NA
      143              25B0007    NA
      144              25B0007    NA
      145              25B0007    NA
      146              25B0007    NA
      147              25B0007    NA
      148              25B0007    NA
      149              25B0007    NA
      150              25B0007    NA
      151              25B0007    NA
      152              21B3016    NA
      153              21B3016    NA
      154              21B3016    NA
      155              21B3016    NA
      156              21B3016    NA
      157              21B3016    NA
      158              21B3016    NA
      159              21B3016    NA
      160              21B3016    NA
      161              21B3016    NA
      162                  662    NA
      163                  662    NA
      164                  662    NA
      165                  662    NA
      166                  662    NA
      167                  662    NA
      168                  662    NA
      169                  662    NA
      170                  662    NA
      171                  662    NA
      172                  662    NA
      173         603-002-00-5    NA
      174         603-002-00-5    NA
      175         603-002-00-5    NA
      176         603-002-00-5    NA

