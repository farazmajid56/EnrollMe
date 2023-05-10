package com.se.enrollme.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.se.enrollme.model.TimeTable;

public interface TimeTableRepository extends JpaRepository<TimeTable, Long> {

    List<TimeTable> findByRoomIdAndDay(Long roomId, String day);
    List<TimeTable> findByTeacherIdAndDay(Long teacherId, String day);

    List<TimeTable> findByTeacher_Id(Long id);
    List<TimeTable> findByDay(String day);

    List<TimeTable> findByCourse_Id(Long id);

    List<TimeTable> findByCourse_Name(String name);

    Long countByCourse_IdAndDay(Long id, String day);

    List<TimeTable> findByCourse_NameAndCourse_Section(String name, String section);

    Long countByRoomId(Long id);

    List<TimeTable> findByTeacher_department(String teacher_department);

    List<TimeTable> findByCourse_IdAndTeacher_Id(Long c_id, Long t_id);

    List<TimeTable> findByCourse_IdAndTeacher_IdAndCourseSection(Long c_id, Long t_id,String sec);
}