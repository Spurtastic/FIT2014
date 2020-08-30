

# Correct Val: Matches given parameters, i.e. the actual expression in question
# False Pos  : Matches based on condition,
# Negative   : Fails to meet parameters
# False neg  : Seemingly correct matches come as False



#Correct Val
#BEGIN{FS=":"}tolower($NF)~/mandarinhanyupinyin/{positive++}END{print "Positive == " positive}


# False Pos
# BEGIN{FS=":"; if (tolower($1)~/(((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er)) ((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))?)/){if tolower($2)~/mandarinhanyupinyin/){ correct++;}else{falsepos++}END{print $1, correct, falsepos}

#Negative   : Fails to meet parameters
#BEGIN{FS=":"}tolower($NF)!~/mandarinhanyupinyin/{negative+=1}END{print "Negative == " negative}

# False neg  : Seemingly correct matches come as False
# BEGIN{FS=":"}tolower($1) !~/((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er)) ((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)\
# |(ai|ei|ao|ou|an|ang|en|eng|er))((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui\
# |an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|\
# eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))?/{print $1,  allNegative+=1}END{print $1, "False Negative == "negative-allNegative}

# BEGIN{FN=":"; tolower($1)~/yoo/? yoo++ : Notyoo++}END{print yoo, Notyoo}





function pos(vals){
    if(tolower(vals) ~/mandarinhanyupinyin/){
        correct_positive++;
    }
    else{
        falsepos++;
    }
}

function neg(vals){
    if(tolower(vals) ~/mandarinhanyupin/){
        false_negative++;
    } 
    else{
        correct_non_match++;
    }
}



function vals(){
    print ("Correct Match = "  correct_positive "\n" "False Positive = " falsepos "\n" "Correct Non-Matches = " correct_non_match);
    print("False Negative = " false_negative);
}

{FS= ":"; $1 ~/(((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er)) ((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))?)/? neg($2):pos($2)}END{vals()}


