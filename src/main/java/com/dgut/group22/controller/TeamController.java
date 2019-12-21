package com.dgut.group22.controller;

import com.alibaba.fastjson.JSONObject;
import com.dgut.group22.javaBean.Teacher;
import com.dgut.group22.javaBean.Team;
import com.dgut.group22.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

//Ning
@RestController
@Transactional
@RequestMapping("/Team")
public class TeamController {
    @Autowired
    TeamService teamService;

    @RequestMapping("/findAllTeam")
    public String findAllTeam(){
        List<Team> teams = teamService.findAll();
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data",teams);
        return jsonObject.toJSONString();
    }

    @RequestMapping("/findTeacherByTeamId/{team_id}")
    public String findTeacherByTeamId(@PathVariable("team_id")String team_id){
        List<Teacher> teachers=teamService.findTeacherByTeamId(team_id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("teachers",teachers);
        return jsonObject.toJSONString();
    }
}
