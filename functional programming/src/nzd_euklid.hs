-- pod pretpostavkom da je a > b
nzd a b
	| b == 0 = a
	| otherwise = nzd b (mod a b)

{- drugi nacin
 - nzd a b = if (b == 0) then a else nzd(b, (mod a b))
 -}

{- treci nacin (slicno kao drugi samo koriscenjem inline funkcije `mod`)
 
 - nzd a b = if (b == 0) then a else nzd(b, (a `mod` b))

  *obratiti paznju da mod nije pod apostrofima ' vec pod kosim apostrofima ` (nalaze se ispod esc dugmeta na engleskoj tastaturi)

 -}
