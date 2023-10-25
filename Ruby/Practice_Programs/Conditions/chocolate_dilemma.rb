def test_fairness(agatha, bertha)
	area_of_agatha=1;
	area_of_bertha=1;
	for i in agatha
		area_of_agatha+= (i[0]*i[1])
	end
	for i in bertha
		area_of_bertha+= (i[0]*i[1])
	end
	if area_of_bertha==area_of_agatha
		return true
	else
		return false
	end
end

puts test_fairness([[1, 2], [2, 1]], [[2, 2]])
puts test_fairness([[1, 2], [2, 1]], [[2, 2], [4, 4]])
puts test_fairness([[2, 2], [2, 2], [2, 2], [2, 2]], [[4, 4]])
puts test_fairness([[1, 5], [6, 3], [1, 1]], [[7, 1], [2, 2], [1, 1]])