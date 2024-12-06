# Valid chemical name input

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 1 x 7
        INPUT   FOUND_BY      DTXSID        PREFERRED_NAME DTXCID...5 DTXCID...6 CASRN
        <chr>   <chr>         <chr>         <chr>          <chr>      <chr>      <chr>
      1 Aspirin Approved Name DTXSID5020108 Aspirin        DTXCID501~ DTXCID501~ 50-7~
      

# Valid CASRN input

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 1 x 7
        INPUT   FOUND_BY DTXSID        PREFERRED_NAME DTXCID...5  DTXCID...6  CASRN  
        <chr>   <chr>    <chr>         <chr>          <chr>       <chr>       <chr>  
      1 50-00-0 CASRN    DTXSID7020637 Formaldehyde   DTXCID30637 DTXCID30637 50-00-0
      

# Valid inputs

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 3 x 7
        INPUT         FOUND_BY       DTXSID PREFERRED_NAME DTXCID...5 DTXCID...6 CASRN
        <chr>         <chr>          <chr>  <chr>          <chr>      <chr>      <chr>
      1 50-00-0       CASRN          DTXSI~ Formaldehyde   DTXCID306~ DTXCID306~ 50-0~
      2 Aspirin       Approved Name  DTXSI~ Aspirin        DTXCID501~ DTXCID501~ 50-7~
      3 DTXSID5020023 DSSTox_Substa~ DTXSI~ Acrolein       DTXCID8023 DTXCID8023 107-~
      

