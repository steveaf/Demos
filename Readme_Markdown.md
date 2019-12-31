# Markdown

See the Youtube [video on Cloud Shell](https://www.youtube.com/watch?v=kinFgjq4Qok)

### Cloudshell modes
* Powershell
* Bash

### Cloudshell Entry Points
* Azure App
* [Azure portal](portal.azure.com) is portal.azure.com
* [Azure shell](shell.azure.com) is shell.azure.com
* VS Code, use "Azure Account" plugin


So how do I get an image?


![Azure Logo](/Assets/Azure.png)

![Azure Small](/Assets/Azure_50px.png)

I think github has a size limit, and images are much bigger than code, so store elsewhere.

----------------------------
Image on onedrive?

1) Share a OneDrive directory.
2) Right click image, "View Online"
3) in Browser, click `"</Embed>`"  Copy that URL.  (ughhh)

![Onedrive URL](https://128q9a.bn.files.1drv.com/y4mhus9J6cv4USIgIH9MWWI6i05iVji-_rJwnQYxgh7boaGB1fD8MrfTAGstnOtWBe0XYX4L8biGphvpASxX7li9zB69q5NDBM6oG0i7sdOFa0Yr90bV1YLFuvMolQuG5A_fp01ujwHyOCzcKePbBl8oYUCVXfuLb8uuyq1M2z6BTir0kMerXnTUQKbiu3FQxZE8u5EovhMLLw1GYUqAIVEKw?width=256&height=256&cropmode=none
)



----------------------------

Inline `code here` has backticks?

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```

I can do <b>bold text</b> like plain ole HTML. 

```Csharp 
var s = "JavaScript syntax highlighting";
string s = @"show this";
Console.Writeline("stuff:{0}",s);
```


http://www.reddit.com

foo bar.
```
Generic code here 
```


And normal text here

This|is |a|Table
- | - | - | -
a|b|c|d
foo|bar|alpha|omega
Every|very very very good|boy|does
fine||![Powershell Small](/Assets/PowerShell_5.0_icon_50px.png)|
1|2|3|4

# Heading
Normal text 123 abc.
## Heading
Normal text 123 abc.
### Heading
Normal text 123 abc.
### ***3-star Heading***
Normal text 123 abc.
### **2-star Heading**
Normal text 123 abc. **Two star** Its not ~~the same~~.
#### Heading
Normal text 123 abc.
##### Heading
Normal text 123 abc.







## Embed Image from OneDrive
1) Navigate to the OneDrive Public directory.  Make directories and create or copy image files.
2) Right click, choose "View Online".  (Make sure the browser has you logged in, otherwise you don't see <embed>... this is public)

![OneDriveEmbed](
    https://3mpmfw.bn.files.1drv.com/y4m9Npt9m-O8pRj0TtIrrNCTyt7LlG8c5TD1F4sSb6Ia9VXjQ5NKhxO4d-WEEVdsYiMEytOjdEMeHsjq8GqayZwGu2qFKg95jHnLmW_ari4M1Olhpq1_jWDiccjLYz9MLYSerOziaKo702V4scbQ2Zujr7X_QWu3oc0cW3c4Tx5F9QKRVdkeTE7X0cfL58PVEeYizacDwRF7P6wDB93A7_N-A?width=402&height=670&cropmode=none
)

3) Choose </> Embed, paste the URL

![View Online](https://3mpefw.bn.files.1drv.com/y4mK3XsElkC_I4NS1O5cMLkU0VUxW-L9cbbWppiBwD7P4xA5tyuBsCOOtcXtb_e8ag8LiJ5E047gW8LwAfX7cJgOykWntM8zC4_-tJfMEZJZXZ1K5fm8FiYZP-0h-GtXT1bVEnh84BUyt-Xc1_IX7DUzm1S05PjXqHCHqmGJZosAzh8etC8c30_MgL-sKg99A7Y?width=988&height=365&cropmode=none)


To place in markdown, put alt text in square bracks and the URL in parenthesis. 
```![]()``` 


![View Online](https://3mpefw.bn.files.1drv.com/y4mK3XsElkC_I4NS1O5cMLkU0VUxW-L9cbbWppiBwD7P4xA5tyuBsCOOtcXtb_e8ag8LiJ5E047gW8LwAfX7cJgOykWntM8zC4_-tJfMEZJZXZ1K5fm8FiYZP-0h-GtXT1bVEnh84BUyt-Xc1_IX7DUzm1S05PjXqHCHqmGJZosAzh8etC8c30_MgL-sKg99A7Y?width=480&height=480)

Note the end of the URL, resize your image.  The aspect ratio stays, so you can square out instead of doing the resize math.

?width=256&height=95&cropmode=none