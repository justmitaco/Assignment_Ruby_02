puts "じゃんけん..."

def rps 
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    player1 = gets.to_i
    computer1 = rand(3)
    options = ["グー", "チョキ", "パー"]
    
    puts "ポイ！"
    puts "---------------"
    puts "あなた：#{options[player1]}を出しました"
    puts "相手：#{options[computer1]}を出しました"
    puts "---------------"
    
    if player1 == computer1
        puts "あいこで..."
        return true
        
    elsif (player1 == 0 && computer1 == 1) || (player1 == 1 && computer1 == 2) || (player1 == 2 && computer1 == 0)
         puts "あっちむいて〜"
         puts "0(上)1(下)2(右)3(左)"
         
         player2 = gets.to_i
         computer2 = rand(3)
         pointing1 = ["0(上)", "1(下)", "2(右)", "3(左)"]
         
         puts "ホイ！"
         puts "---------------"
         puts "あなた：#{pointing1[player2]}を出しました"
         puts "相手：#{pointing1[computer2]}を出しました"
        
        if player2 == computer2
            puts "あなたの勝ちです"
        else
            puts "相手の勝ちです"
        end
        
        return 
        
        
        
        
    elsif (player1 == 0 && computer1 == 2) || (player1 == 1 && computer1 == 0) || (player1 == 2 && computer1 == 1) 
        puts "あっちむいて〜"
        puts "0(上)1(下)2(右)3(左)"
         
        player3 = gets.to_i
        computer3 = rand(3)
        pointing2 = ["0(上)", "1(下)", "2(右)", "3(左)"]
         
        puts "ホイ！"
        puts "---------------"
        puts "あなた：#{pointing2[player3]}を出しました"
        puts "相手：#{pointing2[computer3]}を出しました"
        
        if player3 == computer3
            puts "あなたの負けです"
        else
            puts "あなたの勝ちです"
        end
        
        return
        
    end    
        
end    

next_game = true

while next_game do
    next_game = rps
end
