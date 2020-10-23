# 香港政治詞庫 Hong Kong Politics Dictionary
本詞庫收錄與香港政治相關的常用關鍵字，以方便進行相關主題的文本勘探工作。

A dictionary containing commonly used keywords relating to Hong Kong politics.
Good for text mining or other automated text processing applications.

## 使用方法

本詞庫由7個文本檔案所組成，分別收錄以下各類常用詞：

* **government**: 各政府部門以及職位
* **media**: 傳媒機構
* **organisation**: 各大公營機構、政黨及政治組織
* **person**: 政府官員、議員、政治人物等著名人士
* **place**: 地名/街道/建築
* **policy**: 政策/法案
* **slang**: 政治術語/俚語及廣東話常用詞

如需合併詞庫成單一檔案（如匯入jieba作斷詞），可使用`merge.sh`自由合併檔案。

另備有適用於香港廣東話之停用詞表`stopwords.txt`，為jieba和[PyCantonese](http://pycantonese.org/)的停用詞表再加上其他香港常用停用詞所組成。

本詞庫將持續擴充，歡迎提交pull request。

## 聲明

本詞庫之收錄詞、排序及分類方法並無任何宣傳或貶低任何組織、人士或立場之意。如認為有不當之處，請在Issues提出。
