package com.ruoyi.web.controller.worker;/**
 * ClassName: WorkerPerformController <br/>
 * Description: <br/>
 * date: 2020/2/20 22:08<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.WorkerPerformHistory;
import com.ruoyi.system.domain.WorkerPerformTotal;
import com.ruoyi.system.domain.WorkerPerformanceView;
import com.ruoyi.system.service.IWorkerPerformService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-20 22:08
 **/
@Controller
@RequestMapping("/worker/performance")
public class WorkerPerformController extends BaseController {
    String prefix = "worker";
    @Autowired
    IWorkerPerformService workerPerform;

    @GetMapping()
    public String performPage() {
        return prefix + "/perform";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo performList() {
        Long userId = ShiroUtils.getUserId();
        List<WorkerPerformHistory> workerPerformHistories = workerPerform.listWorkPerform(userId);
        List<WorkerPerformTotal> workerPerformTotals = new ArrayList<>();
        Integer jbNum = 0;
        Integer ztNum = 0;
        Integer zdNum = 0;
        Integer bjNum = 0;
        for (WorkerPerformHistory workerPerformHistory : workerPerformHistories) {
            if (workerPerformHistory.getReason().contains("加班")) {
                jbNum++;
            }
        }
        WorkerPerformTotal jb = new WorkerPerformTotal();
        jb.setType("加班");
        jb.setTotal(jbNum);
        jb.setHandle("加分");
        jb.setScore(1.5f);
        workerPerformTotals.add(jb);
        for (WorkerPerformHistory workerPerformHistory : workerPerformHistories) {
            if (workerPerformHistory.getReason().contains("早退")) {
                ztNum++;
            }
        }
        WorkerPerformTotal zt = new WorkerPerformTotal();
        zt.setType("早退");
        zt.setTotal(ztNum);
        zt.setHandle("减分");
        zt.setScore(1.0f);
        workerPerformTotals.add(zt);
        for (WorkerPerformHistory workerPerformHistory : workerPerformHistories) {
            if (workerPerformHistory.getReason().contains("迟到")) {
                zdNum++;
            }
        }
        WorkerPerformTotal zd = new WorkerPerformTotal();
        zd.setType("迟到");
        zd.setTotal(zdNum);
        zd.setHandle("减分");
        zd.setScore(1.0f);
        workerPerformTotals.add(zd);
        for (WorkerPerformHistory workerPerformHistory : workerPerformHistories) {
            if (workerPerformHistory.getReason().contains("病假")) {
                bjNum++;
            }
        }
        WorkerPerformTotal bj = new WorkerPerformTotal();
        bj.setType("病假");
        bj.setTotal(bjNum);
        bj.setHandle("减分");
        bj.setScore(0.0f);
        workerPerformTotals.add(bj);
        return getDataTable(workerPerformTotals);
    }

    @PostMapping("finalGrade")
    @ResponseBody
    public Float finalGrade() {
        Long userId = ShiroUtils.getUserId();
        Float finalGrade = workerPerform.finalGrade(userId);
        return finalGrade;
    }

}
