-- vraca listu apsolutnih vrednosti suma podlisti te liste

-- [[1,2,3], [1], [-2, -3]] < === > [6, 1, 5] 


sumalisti lista = map (abs . sum) lista
