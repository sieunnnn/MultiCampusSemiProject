package com.mc.mvc.diary.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Diary {
    private Integer diary_idx;
    private String user_id;
    private String title;
    private String content;
    private Timestamp reg_date;
    private String is_del;
}