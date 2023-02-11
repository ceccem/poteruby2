
def janken
  puts "じゃんけん、、、"
  puts "0(グー), 1(チョキ), 2(パー), 3(戦わない)"
  
  select_number = gets.to_i
  random_number = rand(2)
  case_pattern = ""
  
  jankens = ["グー", "チョキ", "パー", "戦わない"]
  puts "あなた：#{jankens[select_number]}を選択しました"
  puts "あいて：#{jankens[random_number]}を選択しました"
  puts "---------------------------------------------"
  
  if select_number == random_number
    puts "あいこです。もう１度じゃんけんをします"
    return janken
    
  elsif
    (select_number == 0 && random_number == 1) || 
    (select_number == 1 && random_number == 2) ||
    (select_number == 2 && random_number == 0)
    puts "勝ちました。あっちむいて、、、"
    case_pattern = "win"
    false
    
  elsif
    (select_number == 0 && random_number == 2) || 
    (select_number == 1 && random_number == 0) ||
    (select_number == 2 && random_number == 1)
    puts "負けました。あっち向いて、、、"
    case_pattern = "lose"
    false
  
  elsif select_number == 3
    puts "ゲームを終了します"
    exit
    
  elsif select_number != (0..3)
    puts "正しい値を入力してください"
    puts "じゃんけんに戻ります"
    return janken
  end
  
  puts "0(上), 1(右), 2(下), 3(左)"
  puts "---------------------------------------------"
  
  select_number_h = gets.to_i
  random_number_h = rand(3)
  
  hand = ["上", "右", "下", "左"]
  puts "ホイ！"
  puts "あなた：#{hand[select_number_h]}を選択しました"
  puts "あいて：#{hand[random_number_h]}を選択しました"
  puts "---------------------------------------------"
  
  if 
    select_number_h != random_number_h
    puts "もう一度じゃんけんをします"
    return janken
  elsif case_pattern == "win" && select_number_h == random_number_h
    puts "ホイ！"
    puts "---------------------------------------------"
    puts "あなたの勝ちです"
    exit
    
  elsif case_pattern == "lose" && select_number_h == random_number_h
    puts "ホイ！"
    puts "---------------------------------------------"
    puts "あなたの負けです"
    exit
  end
end

p janken