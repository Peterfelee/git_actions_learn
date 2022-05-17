# git_actions_learn
git actions 的初尝试

**请注意**
    一定不要修改处理json文件和ios/activity/文件夹以外的任何文件，有问题直接找研发即可！！！

 # 运营只需要修改json文件中的title名字和imagePath的名字
    其中title名字为需要显示到app内的标题
    其中imagePath这个字段为放到ios/activity文件夹内的对应的图片名字
    放到ios/activity下的对应的图片命名：
        按照home_activity_xx@3x.png来命名
    imagePath内填写的名字请把以上的home_activity_xx@3x.png中的@3x.png去掉

 ## 其中json内的文件是可以多个的：
    如下去新增
    [{
      "title": "Videos and Movies Clips Edit",
      "imagePath": "home_activity_tutorial"
    }] 
    增加一个的话为如下
    [{
      "title": "Videos and Movies Clips Edit",
      "imagePath": "home_activity_tutorial"
    },
    {
      "title": "Videos and Movies Clips Edit",
      "imagePath": "home_activity_tutorial"
    }]
# 以上事情做完以后请认真检查一下是否有误，如果确认无误就直接点击upload或者commit，等待飞书通知就可以了。