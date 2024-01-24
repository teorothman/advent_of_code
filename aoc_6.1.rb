fakeInput = "
Time:      7  15   30
Distance:  9  40  200
"

realData= "
Time:        48     93     84     66
Distance:   261   1192   1019   1063
"

races = [[48938466, 261119210191063]]

def checkRecord(total_time, hold, record)
    distance = (total_time - hold) * hold
    distance > record 
    
end

p checkRecord(7, 2, 9)

p races.map {|n| 
    (0..n[0]).to_a.count{|t| checkRecord(n[0], t, n[1])}
    
}.inject(:*)
