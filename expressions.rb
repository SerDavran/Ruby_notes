# => nil and false => FALSE
# => Everything else => True

# => Αν το πρώτο είναι false επιστρέφ το πρώτο.
nil && 99 #=> false
'cat' && 78 #=> 79

# => Αν το πρώτο είναι true επιστρέφω το δευτερο.
nil || 56 #=> nil
'ena' || "duo" #=> ena

# Μόνο αν δεν έχει τιμή.
var ||= 'default value' #=> var = var || 'default value'
