def digital_vowel_ban(n, ban)
	arr=["zero","one","two","three","four","five","six","seven","eight","nine"]
    num=n.to_s.split("")
    res=""
    for i in num do
        x=i.to_i
        if arr[x].include?(ban)
            next
        else
            res+=i.to_s
        end
    end
    if res.length==0
        return "Banned Number"
    end
    return res.chars.drop_while{|x| x=='0'}.join('')
end

print "Enter the number:"
n=gets.chomp.to_i

print "Enter the vowel:"
ban=gets.chomp

puts digital_vowel_ban(n,ban)