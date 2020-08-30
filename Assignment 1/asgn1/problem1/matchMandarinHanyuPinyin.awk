da




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

{FS= ":"; tolower($1) ~ /((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er)) ((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))?/? pos($2) : neg($2)} END {vals()}



