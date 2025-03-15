import Data.List

create_new_string :: String -> String -> String -> String 
create_new_string plan date time = unwords ["Maxim", plan, date, time]

main :: IO ()
main = do
    putStrLn "Введите дело, которое вы хотите сделать"
    plan <- getLine
    putStrLn "Введите дату в формате Год.Месяц.День"
    date_plan <- getLine
    putStrLn "Введите время в формате Часы:Минуты"
    time_plan <- getLine 

    let new_string = create_new_string plan date_plan time_plan    
    putStrLn $ new_string ++ " - Right?"
    
    answer <- getLine
    if answer == "yes"
        then do
            appendFile "data.txt" $ new_string ++ "\n"
            putStrLn "Ваш план записан"
    else do
        putStrLn "Попробуйте еще раз"
        main
