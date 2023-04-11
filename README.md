# Obey-AI-Luddites

## 如何快速的清除被 [mist](https://github.com/mist-project/mist)，[glaze](https://glaze.cs.uchicago.edu/) 污染的图片

目前有一些污染 AIGC 训练原图的工具：如 [mist](https://github.com/mist-project/mist)，[glaze](https://glaze.cs.uchicago.edu/) 会让图片难以被 AIGC 工具训练。

这让普通人（不懂机器学习、不懂代码）训练自己的模型会有麻烦。

这些工具不能阻止专业人士（用机器学习的的方法能轻易去除这些水印），但却阻止了普通人，这非常的荒谬，所以本项目提供一些简单的方法去让普通人去清理污染的图片


 ![Frame 1 (2)](https://user-images.githubusercontent.com/126896234/231055742-a4384cbb-a480-4063-b34d-7addef300329.jpg)

## 方法

对于普通人而言，使用 [imagemagick](https://imagemagick.org/script/download.php) 对图片进行一些简单的处理，对于这些污染是有效果的，虽然这会损失一点画质，但针对 [mist](https://github.com/mist-project/mist) 这样在可见域上本身就有大量痕迹的水印的方式而言，这是可以接受的。



1. [安装 imagemagick](https://imagemagick.org/script/download.php)

3. 下载并解压本仓库

3. 把被污染的图片放到 mist 文件夹下

4. 在仓库根目录打开终端或者命令行运行以下命令：

```bash
magick ./mist/*.png  -resize 800x800 ./clean/%d.jpg
magick ./clean/*.jpg +noise Uniform -enhance -enhance -despeckle ./clean2/%d.jpg
magick ./clean2/*.jpg  -enhance  -resize 400x400 ./clean3/%d.jpg
magick ./clean3/*.jpg   -sharpen 4  -resize  512x512 ./cleanDone/%d.png

```
5. 清理后的图片在 cleanDone 目录中


## 这个项目的意义

### 阻止大众使用公开数据训练 AIGC 模型对所有人有害

一些人抱着“朴素”的知识产权意识的人认为使用公开数据训练 AIGC 模型是对自己有害的，需要阻止，以为通过污染阻止大众训练 AIGC 模型后能够保护创作者的技能价值。

但事实上这不仅不能阻止 AIGC 的发展，反而还会对现有的每个创建者和未来可能的新创作者到造成损害，因为 AIGC 工具厂商有技术能力去轻易去掉这些污染的水印，
而广大的普通人却没有能力去使用，这让会事实上推动大公司对 AIGC 模型的垄断、提供大众使用新技术的成本，最终不仅不能阻止 AIGC 的发展，还损害了大众，**尤其是穷人的利益**！



### 不要助长大公司垄断

但实际上大公司们比他们更加希望有严格的版权限制，最好严刑峻法禁止公开数据训练，让大众和小公司没有能力（资本）去训练自己的 AIGC 模型，
只有大公司可以凭借资金优势购买商业素材、雇佣训练集创作者，推出垄断性的 AIGC 产品，而他们的成本最终会转嫁给每个消费者，最后 AIGC 依然会冲击旧时代创作者
，但是却没有与大公司对抗的开放产品，这样的未来是最坏的。


### 不要把自己的情绪放在道德制高点上

AI 时代的鲁德分子们与工业时代初期的鲁德分子很相似，他们以为去破坏机器就能阻止工业时代的来临，但新的生产力产生后，原有生产关系必然需要改变，
不顺义新的变化反而去阻挡历史进程，这种精神没有问题的，社会并不是静止的，会有各种思想的碰撞，这很好 ，**但是请不要把这种行为放到道德制高点上去批判别人**，这很荒谬也没有意义，因为其他人也会有各种理由去用道德去批判你们，这是纯粹的情绪化。


### 如果你不想让自己的作品被大众看到，就不要公开你的作品 

担心自己的作品被抄袭就不要公开你的作品，不能被 AIGC 抄袭，依然可能被手工抄袭，如果真的是担心自己作品会被抄袭就不要公开。

--- 



