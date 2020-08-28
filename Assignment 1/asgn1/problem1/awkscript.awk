
{ cnt = 0; for ( i = 1; i <= 2; i++ ) { if ( $i =/((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui\
|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)\
|(ai|ei|ao|ou|an|ang|en|eng|er)) ((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia\
|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))\
((b|p|m|f|d|t|n|l|g|k|h|j|q|x|zh|ch|sh|r|z|c|s|w|y)(a|e|i|o|u|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|an|ao|ei|en|ia|ie|in|iu|ou|ua|ue|ui|un|uo|and|eng|\
ong|ian|iao|ing|uai|uan|iang|iong|uang)|(ai|ei|ao|ou|an|ang|en|eng|er))?/) { cnt++ } }; print cnt} 