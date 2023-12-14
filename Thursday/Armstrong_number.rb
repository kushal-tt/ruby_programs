# Program for armstrong number without using any pre-defined
# 1^3+ 5^3+ 3^3= 1+125+27=153. armstrong number
# 8^2 +9^2 =64+81 != 145, not a armstrong

def armstrong(num)
    count = 0
    num2 = num

    while num2 > 0
        num2 /= 10
        count += 1
    end

    sum = 0
    num2 = num

    while num2 > 0
        digit = num2 % 10
        sum += digit**count
        num2 /= 10
    end

    num == sum ? "#{num} is Armstrong number" : "#{num} is not a Armstrong number"
end

p armstrong(153)
p armstrong(459)