const base = {
    get() {
        return {
            url : "http://localhost:8080/xueshengshixiyujiuye/",
            name: "xueshengshixiyujiuye",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xueshengshixiyujiuye/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "学生实习与就业管理系统"
        } 
    }
}
export default base
