# Valid chemical name input

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 1 x 6
        INPUT   FOUND_BY      DTXSID        PREFERRED_NAME DTXCID      CASRN  
        <chr>   <chr>         <chr>         <chr>          <chr>       <chr>  
      1 Aspirin Approved Name DTXSID5020108 Aspirin        DTXCID50108 50-78-2
      

# Valid CASRN input

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 1 x 6
        INPUT   FOUND_BY DTXSID        PREFERRED_NAME DTXCID      CASRN  
        <chr>   <chr>    <chr>         <chr>          <chr>       <chr>  
      1 50-00-0 CASRN    DTXSID7020637 Formaldehyde   DTXCID30637 50-00-0
      

# Valid inputs

    Code
      result[!names(result) %in% "comptox_cover_sheet"]
    Output
      $comptox_main_data
      # A tibble: 3 x 6
        INPUT         FOUND_BY            DTXSID        PREFERRED_NAME DTXCID    CASRN
        <chr>         <chr>               <chr>         <chr>          <chr>     <chr>
      1 50-00-0       CASRN               DTXSID7020637 Formaldehyde   DTXCID30~ 50-0~
      2 Aspirin       Approved Name       DTXSID5020108 Aspirin        DTXCID50~ 50-7~
      3 DTXSID5020023 DSSTox_Substance_Id DTXSID5020023 Acrolein       DTXCID80~ 107-~
      

