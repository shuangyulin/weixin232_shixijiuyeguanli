package com.entity.vo;

import com.entity.ToudiEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 申请实习
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("toudi")
public class ToudiVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 学生
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 招聘
     */

    @TableField(value = "zhaopin_id")
    private Integer zhaopinId;


    /**
     * 简历
     */

    @TableField(value = "zhaopin_file")
    private String zhaopinFile;


    /**
     * 审核结果
     */

    @TableField(value = "toudi_yesno_types")
    private Integer toudiYesnoTypes;


    /**
     * 审核原因
     */

    @TableField(value = "toudi_yesno_text")
    private String toudiYesnoText;


    /**
     * 投递时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：学生
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：学生
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：招聘
	 */
    public Integer getZhaopinId() {
        return zhaopinId;
    }


    /**
	 * 获取：招聘
	 */

    public void setZhaopinId(Integer zhaopinId) {
        this.zhaopinId = zhaopinId;
    }
    /**
	 * 设置：简历
	 */
    public String getZhaopinFile() {
        return zhaopinFile;
    }


    /**
	 * 获取：简历
	 */

    public void setZhaopinFile(String zhaopinFile) {
        this.zhaopinFile = zhaopinFile;
    }
    /**
	 * 设置：审核结果
	 */
    public Integer getToudiYesnoTypes() {
        return toudiYesnoTypes;
    }


    /**
	 * 获取：审核结果
	 */

    public void setToudiYesnoTypes(Integer toudiYesnoTypes) {
        this.toudiYesnoTypes = toudiYesnoTypes;
    }
    /**
	 * 设置：审核原因
	 */
    public String getToudiYesnoText() {
        return toudiYesnoText;
    }


    /**
	 * 获取：审核原因
	 */

    public void setToudiYesnoText(String toudiYesnoText) {
        this.toudiYesnoText = toudiYesnoText;
    }
    /**
	 * 设置：投递时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：投递时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
