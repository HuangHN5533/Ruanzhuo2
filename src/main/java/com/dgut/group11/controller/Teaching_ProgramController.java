package com.dgut.group11.controller;

import com.alibaba.fastjson.JSONObject;
import com.dgut.group11.javabean.*;
import com.dgut.group11.service.JiaoXueRiLiService;
import com.dgut.group11.service.Teaching_ProgramService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/*
lgc
 */

@RestController
@CrossOrigin(origins = "*")
public class Teaching_ProgramController {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private JiaoXueRiLiService jiaoXueRiLiService;

    @Autowired
    private Teaching_ProgramService teaching_programService;

//    @RequestMapping(value="/ka_ke_ke_cheng/{page}",method = {RequestMethod.POST})
//    public String ka_ke_ke_cheng(@PathVariable("page") String page){
//        int anInt = Integer.parseInt(page);//一页10个
//
//        List<SuccessCourse> successCourses = new ArrayList<>();
//        List<SuccessCourse> allSuccessCourse = jiaoXueRiLiService.findAllSuccessCourse();
//        for(int i=(anInt-1)*10; i<(anInt-1)*10+10 && i<allSuccessCourse.size(); i++){
//            successCourses.add(allSuccessCourse.get(i));
//        }
//
//        for(SuccessCourse successCourse : successCourses){
//            Teacher teacher = jiaoXueRiLiService.getTeacherById(successCourse.getTeacher_id());
//            Course course = jiaoXueRiLiService.getCourseById(successCourse.getCourse_id());
//            successCourse.setCourse(course);
//            successCourse.setTeacher(teacher);
//        }
//        JSONObject jsonObject = new JSONObject();
//        int r = allSuccessCourse.size()%10==0?0:1;
//        jsonObject.put("totalPage",allSuccessCourse.size()/10+r);
//        jsonObject.put("curPage",anInt);
//        jsonObject.put("data",successCourses);
//
//        return jsonObject.toJSONString();
//    }

    @RequestMapping(value="/jiao_xue_da_gang/{success_id}",method = {RequestMethod.POST})
    public String jiao_xue_ri_li(@PathVariable("success_id") String coureseId){
        int success_id = Integer.parseInt(coureseId);

        SuccessCourse successCourse = jiaoXueRiLiService.findSuccessCourseById(success_id);

        Teacher teacher = jiaoXueRiLiService.getTeacherById(successCourse.getTeacher_id());
        Course course = jiaoXueRiLiService.getCourseById(successCourse.getCourse_id());
        successCourse.setCourse(course);
        successCourse.setTeacher(teacher);


        List<Teaching_program> daGangList = teaching_programService.findAllTeaching_programBySuccessCourseId(success_id);

        JiaoXueDaGang jiaoXueDaGang = new JiaoXueDaGang(successCourse,daGangList);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data",jiaoXueDaGang);

        return jsonObject.toJSONString();
    }



}
