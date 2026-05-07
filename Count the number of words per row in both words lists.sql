SELECT
     words1,
     words2,
     array_length(string_to_array(words1, ','), 1) AS count_1, -- Yahan comma miss ho gaya tha
     array_length(string_to_array(words2, ','), 1) AS count_2
FROM google_word_lists;
