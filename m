Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4611520EFC1
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2020 09:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731139AbgF3Hnc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Jun 2020 03:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731092AbgF3Hnb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Jun 2020 03:43:31 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70B53C061755
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 00:43:31 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id d18so9579527edv.6
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 00:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kcwamOe1FvRVtJSB87DhCBEdhbF1qHNrUpk4j2oq6m0=;
        b=fOPgSbvrkL18uu0elYxDt349eCHNc+4HWQtG9ezLG6OBH3MkpQa+BkNC0SyOZO+lf+
         ywjCvPNXhgsH3TV4mdn2wCFbl6zN/oGwqh9Bqtul7X5LHU/A+t+KtIqhw2OWCOkQ+Hm8
         8B1Lar+x4G+ic/yir8XYfhHkH7YorhMNi/gXZ2GMJlGPs1UZHYQ+qVVAxQPYZ0inLVRx
         VkF7bcmchyFQnMJLb0mZHXqJZiT2zUKZHJAtrLctrMmT+aTuYo7uI4kItWO1T0EhVQ9Y
         rieq/LbaxbMY3ZOXPNoKIW183rSapRvGqXqHjZyoq3uPFwCqjKZrlV/IdPI6Cw+cPBSY
         5zSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kcwamOe1FvRVtJSB87DhCBEdhbF1qHNrUpk4j2oq6m0=;
        b=oX3A2Gh1j/BVfecR7ikcNcxjWRHX3I4BSw7mAmCs2lYjeVHD6DzY1b2HOfRhy2LDUm
         ZfSiRMKc0bRB4fGhuFRprNTt6wrrwCJMlyw13PxSO5AZmF4SG59O/u8JFkcJrc+WDzvl
         qtZI9I/OKcNatQ5tLORLHPd6c1rkSZrTNWkuS0fDdf0o87sGaAZz81oKIj52YmJmBwM0
         xXIGrT9bmUSEvRWMLTCIQpI9o+qf38Zd/0HhJovlC0dKgBY54cHqL4Y+A0063rbsAdS9
         +qkz5MqnmzfkT7qeUfJ77Uuqc7qRCHHlm2aWsZqC4QVsW32MTu5MXmcTLk02uVRO5BAJ
         QKdw==
X-Gm-Message-State: AOAM530961tviaa8WwxIcEo6Ks0BYb1E9wrC5cMMaQjdbFZdVCoh4qFI
        BTNUH5UIogLKL71uxK2yB9BHOeZL
X-Google-Smtp-Source: ABdhPJxsmiIHTroKHNggrSfLm3MmSn6nc29gJreA43f1ACfZpPnJiDGbscGmP4aO5zOLhg1MvIEb9g==
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr10287648edv.65.1593503009985;
        Tue, 30 Jun 2020 00:43:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id z8sm1346896eju.106.2020.06.30.00.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 00:43:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] update kernel documentation references in cgroups(7)
 and cpuset(7)
To:     Sven Hoexter <sven@stormbind.net>
References: <20200629144110.GA1099@stormbind.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16bccbe5-8577-0bae-fc07-45d43982cf06@gmail.com>
Date:   Tue, 30 Jun 2020 09:43:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200629144110.GA1099@stormbind.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sven,

On 6/29/20 4:41 PM, Sven Hoexter wrote:
> cgroups-v1/v2 documentation got moved to the "admin-guide" subfolder
> and converted from .txt files to .rst
> 
> ---
> Since v1:
> 
> * Keep references to prior versions of the documentation with matching
>   Linux versions.
> * Removed a faulty change for the location of perf-record.txt.
> * Replaced one occurrence of the .I macro with .IR to be consistent.

(Thanks also for fixing some hyphens in the file names.)

Thanks for the revised patch! I've applied it.

Cheers,

Michael

> ---
>  man7/cgroups.7 | 93 ++++++++++++++++++++++++++++++++++++++------------
>  man7/cpuset.7  |  4 ++-
>  2 files changed, 74 insertions(+), 23 deletions(-)
> 
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index 7a7210177..3e346b8d8 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -74,9 +74,12 @@ to allow the management of various types of resources.
>  However, the development of these controllers was largely uncoordinated,
>  with the result that many inconsistencies arose between controllers
>  and management of the cgroup hierarchies became rather complex.
> -(A longer description of these problems can be found in
> -the kernel source file
> -.IR Documentation/cgroup\-v2.txt .)
> +A longer description of these problems can be found in the kernel
> +source file
> +.IR Documentation/admin\-guide/cgroup\-v2.rst
> +(or
> +.IR Documentation/cgroup\-v2.txt
> +in Linux 4.17 and earlier).
>  .PP
>  Because of the problems with the initial cgroups implementation
>  (cgroups version 1),
> @@ -264,7 +267,10 @@ Cgroups can be guaranteed a minimum number of "CPU shares"
>  when a system is busy.
>  This does not limit a cgroup's CPU usage if the CPUs are not busy.
>  For further information, see
> -.IR Documentation/scheduler/sched-design-CFS.txt .
> +.IR Documentation/scheduler/sched\-design\-CFS.rst
> +(or
> +.IR Documentation/scheduler/sched\-design\-CFS.txt
> +in Linux 5.2 and earlier).
>  .IP
>  In Linux 3.2,
>  this controller was extended to provide CPU "bandwidth" control.
> @@ -275,27 +281,40 @@ then within each scheduling period
>  an upper limit on the CPU time allocated to the processes in a cgroup.
>  This upper limit applies even if there is no other competition for the CPU.
>  Further information can be found in the kernel source file
> -.IR Documentation/scheduler/sched\-bwc.txt .
> +.IR Documentation/scheduler/sched\-bwc.rst
> +(or
> +.IR Documentation/scheduler/sched\-bwc.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR cpuacct " (since Linux 2.6.24; " \fBCONFIG_CGROUP_CPUACCT\fP )
>  This provides accounting for CPU usage by groups of processes.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/cpuacct.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/cpuacct.rst
> +(or
> +.IR Documentation/cgroup\-v1/cpuacct.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR cpuset " (since Linux 2.6.24; " \fBCONFIG_CPUSETS\fP )
>  This cgroup can be used to bind the processes in a cgroup to
>  a specified set of CPUs and NUMA nodes.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/cpusets.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst
> +(or
> +.IR Documentation/cgroup\-v1/cpusets.txt
> +in Linux 5.2 and earlier).
> +.
>  .TP
>  .IR memory " (since Linux 2.6.25; " \fBCONFIG_MEMCG\fP )
>  The memory controller supports reporting and limiting of process memory, kernel
>  memory, and swap used by cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/memory.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/memory.rst
> +(or
> +.IR Documentation/cgroup\-v1/memory.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR devices " (since Linux 2.6.26; " \fBCONFIG_CGROUP_DEVICE\fP )
>  This supports controlling which processes may create (mknod) devices as
> @@ -305,7 +324,10 @@ Hierarchy is enforced, so new rules must not
>  violate existing rules for the target or ancestor cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/devices.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/devices.rst
> +(or
> +.IR Documentation/cgroup\-v1/devices.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR freezer " (since Linux 2.6.28; " \fBCONFIG_CGROUP_FREEZER\fP )
>  The
> @@ -318,7 +340,10 @@ also causes its children, for example, processes in
>  to be frozen.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/freezer-subsystem.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/freezer\-subsystem.rst
> +(or
> +.IR Documentation/cgroup\-v1/freezer\-subsystem.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR net_cls " (since Linux 2.6.29; " \fBCONFIG_CGROUP_NET_CLASSID\fP )
>  This places a classid, specified for the cgroup, on network packets
> @@ -330,7 +355,10 @@ This applies only to packets
>  leaving the cgroup, not to traffic arriving at the cgroup.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/net_cls.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/net_cls.rst
> +(or
> +.IR Documentation/cgroup\-v1/net_cls.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR blkio " (since Linux 2.6.33; " \fBCONFIG_BLK_CGROUP\fP )
>  The
> @@ -347,41 +375,55 @@ The second is a throttling policy which specifies
>  upper I/O rate limits on a device.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/blkio-controller.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/blkio\-controller.rst
> +(or
> +.IR Documentation/cgroup\-v1/blkio\-controller.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR perf_event " (since Linux 2.6.39; " \fBCONFIG_CGROUP_PERF\fP )
>  This controller allows
>  .I perf
>  monitoring of the set of processes grouped in a cgroup.
>  .IP
> -Further information can be found in the kernel source file
> -.IR tools/perf/Documentation/perf-record.txt .
> +Further information can be found in the kernel source files
>  .TP
>  .IR net_prio " (since Linux 3.3; " \fBCONFIG_CGROUP_NET_PRIO\fP )
>  This allows priorities to be specified, per network interface, for cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/net_prio.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/net_prio.rst
> +(or
> +.IR Documentation/cgroup\-v1/net_prio.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR hugetlb " (since Linux 3.5; " \fBCONFIG_CGROUP_HUGETLB\fP )
>  This supports limiting the use of huge pages by cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/hugetlb.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/hugetlb.rst
> +(or
> +.IR Documentation/cgroup\-v1/hugetlb.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR pids " (since Linux 4.3; " \fBCONFIG_CGROUP_PIDS\fP )
>  This controller permits limiting the number of process that may be created
>  in a cgroup (and its descendants).
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/pids.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/pids.rst
> +(or
> +.IR Documentation/cgroup\-v1/pids.txt
> +in Linux 5.2 and earlier).
>  .TP
>  .IR rdma " (since Linux 4.11; " \fBCONFIG_CGROUP_RDMA\fP )
>  The RDMA controller permits limiting the use of
>  RDMA/IB-specific resources per cgroup.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/rdma.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/rdma.rst
> +(or
> +.IR Documentation/cgroup\-v1/rdma.txt
> +in Linux 5.2 and earlier).
>  .\"
>  .SS Creating cgroups and moving processes
>  A cgroup filesystem initially contains a single root cgroup, '/',
> @@ -566,8 +608,12 @@ An improved mechanism for notification of empty cgroups is provided by the
>  file.
>  .PP
>  For more changes, see the
> -.I Documentation/cgroup-v2.txt
> -file in the kernel source.
> +.IR Documentation/admin\-guide/cgroup\-v2.rst
> +file in the kernel source
> +(or
> +.IR Documentation/cgroup\-v2.txt
> +in Linux 4.17 and earlier).
> +.
>  .PP
>  Some of the new behaviors listed above saw subsequent modification with
>  the addition in Linux 4.14 of "thread mode" (described below).
> @@ -648,7 +694,10 @@ it is silently ignored in noninitial namespaces.
>  .\"
>  .SS Cgroups v2 controllers
>  The following controllers, documented in the kernel source file
> -.IR Documentation/cgroup-v2.txt ,
> +.IR Documentation/admin\-guide/cgroup\-v2.rst
> +(or
> +.IR Documentation/cgroup\-v2.txt
> +in Linux 4.17 and earlier),
>  are supported in cgroups version 2:
>  .TP
>  .IR cpu " (since Linux 4.15)"
> @@ -1878,4 +1927,4 @@ mount option.
>  .BR user_namespaces (7)
>  .PP
>  The kernel source file
> -.IR Documentation/admin-guide/cgroup-v2.rst .
> +.IR Documentation/admin\-guide/cgroup\-v2.rst .
> diff --git a/man7/cpuset.7 b/man7/cpuset.7
> index 44e63d64f..c1b9fda79 100644
> --- a/man7/cpuset.7
> +++ b/man7/cpuset.7
> @@ -1503,9 +1503,11 @@ syntax that works on any shell, but alas more obscurely, by using the
>  .BR migratepages (8),
>  .BR numactl (8)
>  .PP
> -.IR Documentation/cgroup\-v1/cpusets.txt
> +.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst
>  in the Linux kernel source tree
>  .\" commit 45ce80fb6b6f9594d1396d44dd7e7c02d596fef8
>  (or
> +.IR Documentation/cgroup\-v1/cpusets.txt
> +before Linux 4.18, and
>  .IR Documentation/cpusets.txt
>  before Linux 2.6.29)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
