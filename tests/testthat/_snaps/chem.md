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

