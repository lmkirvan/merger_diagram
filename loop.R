market_sequence <- seq_along(markets)

for(i in market_sequence[866:length(market_sequence)]){  
    client$navigate(market_links[i])
    1+1
    Sys.sleep(5)
    # get source code
    page <- client$getPageSource()
    readr::write_lines(page[[1]], market_file_name[i])

    client$navigate(market_hhi[i])
    # get source code
    1+1
    Sys.sleep(5)
    page <- client$getPageSource()
    readr::write_lines(page[[1]], market_hhi_file_name[i])
    cat(i, "\n")
    }
