Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2AA120DFF3
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 23:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730349AbgF2UlX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 16:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731676AbgF2TOH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 15:14:07 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53F03C0068C2
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 04:41:02 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id b15so12533739edy.7
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 04:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=DnjCYB3rf73HiVmxSO4cXKFfiNS4nfC4DaeQ/Cgcu5I=;
        b=EmnaYolPBb9Rqg80fijmOtr9QzD6NMzRZQJCuGfQKOhDQg0IYk8mZHH4h9VDG4nKt6
         0ZGQv9vPO1VV9A56IpIZUBlrYt/AfCvnLa/agnYjVqLDJA1WfZHUBdUoC6RCZoo+JZEE
         DrZzc5HaS3GsXBp5u4lNktMKF5kE2SOXNsENMGQ2lT6G8rWUEt/3w2UVm/J1GbBaKj9S
         SKQYZ1pz3kf0cUkEaJWw9khaYyZfQKaEUAnuMk5mwVE3nJ5LOEWOceIWq09UyH3zTUtN
         28aMxeXszrAfchFnwX/xFmO9wMwQC32XkiFYsBBRykvQLogCoYWIdIWpEEfrogUfXq3t
         h8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=DnjCYB3rf73HiVmxSO4cXKFfiNS4nfC4DaeQ/Cgcu5I=;
        b=QrZD8pZc39iiA833GvbpeEaxwdi2V9EG5+t6u34wIZQXi6IsPn9Py3R9gtKqxWgqev
         fMvXcDntcAvMbx44vBlur8NdeWTm0mt9berKQz17OYOJq/1ID7i48P4AHuMP6JqxKTRT
         UMAy9BlqEWBdfruOEX2oYi4MVgpDB/vpgF5kSWonndDTnaVdH7oPT/GdW3JkSsKtfT8R
         7xsX6zOkAeYZHPlggcj3teNflWyRyVSvSAw8kfPhP27icwDSLwONYXeQShKQAkuDzQN2
         r9zrAaIbnDQshhiWG/gJlLCVibrGDp7eOLeA2CdJ7JEiv65SF7cVYBUOrB3zTPXzWtcj
         0ePQ==
X-Gm-Message-State: AOAM531Otg8yCwY6MzXTGGs/5V2TGeTL6sK6W0srji5slpLmVQ4l1osp
        WAxIuiVxUfqWWJuE7vpNX6d566mZtT6fGeqUpFbLwTdV
X-Google-Smtp-Source: ABdhPJwD32rArN585VgmXO/cevxwjxIp4kH6Yi++EDExpoIAFEmU7aNZSY6iDDqsP2Pwtnj/ynHGnLZpHzYrcWY45EQ=
X-Received: by 2002:a05:6402:b4b:: with SMTP id bx11mr16664412edb.286.1593430860947;
 Mon, 29 Jun 2020 04:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200619163515.GA27524@stormbind.net>
In-Reply-To: <20200619163515.GA27524@stormbind.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 29 Jun 2020 13:40:50 +0200
Message-ID: <CAKgNAkjJDC3ejYqh8sqg7Ka_yh+=TAdvi-=suHEihjqsbvGnpA@mail.gmail.com>
Subject: Re: [patch] update kernel documentation references in cgroups(7) and cpuset(7)
To:     Sven Hoexter <sven@stormbind.net>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sven,

On Fri, 19 Jun 2020 at 18:35, Sven Hoexter <sven@stormbind.net> wrote:
>
> cgroups-v1/v2 documentation got moved to the "admin-guide" subfolder
> and converted from .txt files to .rst

Thanks for your patch and for the ping, and sorry I did not respond
earlier. I had not forgotten this patch, but I was still working out
what to do with it.

The general philosophy in man-pages is to maintain historical
information, since the man-pages that are installed on a system may
not correspond to the kernel running on that system. In the context of
your patch, what this means is that I would prefer to have text like:

[[
The kernel source file
.IR Documentation/admin\-guide/cgroup\-v2.rst
(or
.IR Documentation/admin-guide/cgroup-v2.rst in Linux x.y and earlier)
]]

Would you be willing to revise your patch to that style?

Thanks,

Michael


> ---
>  man7/cgroups.7 | 38 +++++++++++++++++++-------------------
>  man7/cpuset.7  |  2 +-
>  2 files changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index 7a7210177..4b4afbbd7 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -76,7 +76,7 @@ with the result that many inconsistencies arose between controllers
>  and management of the cgroup hierarchies became rather complex.
>  (A longer description of these problems can be found in
>  the kernel source file
> -.IR Documentation/cgroup\-v2.txt .)
> +.IR Documentation/admin\-guide/cgroup\-v2.rst .)
>  .PP
>  Because of the problems with the initial cgroups implementation
>  (cgroups version 1),
> @@ -264,7 +264,7 @@ Cgroups can be guaranteed a minimum number of "CPU shares"
>  when a system is busy.
>  This does not limit a cgroup's CPU usage if the CPUs are not busy.
>  For further information, see
> -.IR Documentation/scheduler/sched-design-CFS.txt .
> +.IR Documentation/scheduler/sched\-design\-CFS.rst .
>  .IP
>  In Linux 3.2,
>  this controller was extended to provide CPU "bandwidth" control.
> @@ -275,27 +275,27 @@ then within each scheduling period
>  an upper limit on the CPU time allocated to the processes in a cgroup.
>  This upper limit applies even if there is no other competition for the CPU.
>  Further information can be found in the kernel source file
> -.IR Documentation/scheduler/sched\-bwc.txt .
> +.IR Documentation/scheduler/sched\-bwc.rst .
>  .TP
>  .IR cpuacct " (since Linux 2.6.24; " \fBCONFIG_CGROUP_CPUACCT\fP )
>  This provides accounting for CPU usage by groups of processes.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/cpuacct.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/cpuacct.rst .
>  .TP
>  .IR cpuset " (since Linux 2.6.24; " \fBCONFIG_CPUSETS\fP )
>  This cgroup can be used to bind the processes in a cgroup to
>  a specified set of CPUs and NUMA nodes.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/cpusets.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst .
>  .TP
>  .IR memory " (since Linux 2.6.25; " \fBCONFIG_MEMCG\fP )
>  The memory controller supports reporting and limiting of process memory, kernel
>  memory, and swap used by cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup\-v1/memory.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/memory.rst .
>  .TP
>  .IR devices " (since Linux 2.6.26; " \fBCONFIG_CGROUP_DEVICE\fP )
>  This supports controlling which processes may create (mknod) devices as
> @@ -305,7 +305,7 @@ Hierarchy is enforced, so new rules must not
>  violate existing rules for the target or ancestor cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/devices.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/devices.rst .
>  .TP
>  .IR freezer " (since Linux 2.6.28; " \fBCONFIG_CGROUP_FREEZER\fP )
>  The
> @@ -318,7 +318,7 @@ also causes its children, for example, processes in
>  to be frozen.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/freezer-subsystem.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/freezer\-subsystem.rst .
>  .TP
>  .IR net_cls " (since Linux 2.6.29; " \fBCONFIG_CGROUP_NET_CLASSID\fP )
>  This places a classid, specified for the cgroup, on network packets
> @@ -330,7 +330,7 @@ This applies only to packets
>  leaving the cgroup, not to traffic arriving at the cgroup.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/net_cls.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/net_cls.rst .
>  .TP
>  .IR blkio " (since Linux 2.6.33; " \fBCONFIG_BLK_CGROUP\fP )
>  The
> @@ -347,41 +347,41 @@ The second is a throttling policy which specifies
>  upper I/O rate limits on a device.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/blkio-controller.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/blkio\-controller.rst .
>  .TP
>  .IR perf_event " (since Linux 2.6.39; " \fBCONFIG_CGROUP_PERF\fP )
>  This controller allows
>  .I perf
>  monitoring of the set of processes grouped in a cgroup.
>  .IP
> -Further information can be found in the kernel source file
> -.IR tools/perf/Documentation/perf-record.txt .
> +Further information can be found in the kernel source files in
> +.IR tools/perf/Documentation/admin\-guide/perf/ .
>  .TP
>  .IR net_prio " (since Linux 3.3; " \fBCONFIG_CGROUP_NET_PRIO\fP )
>  This allows priorities to be specified, per network interface, for cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/net_prio.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/net_prio.rst .
>  .TP
>  .IR hugetlb " (since Linux 3.5; " \fBCONFIG_CGROUP_HUGETLB\fP )
>  This supports limiting the use of huge pages by cgroups.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/hugetlb.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/hugetlb.rst .
>  .TP
>  .IR pids " (since Linux 4.3; " \fBCONFIG_CGROUP_PIDS\fP )
>  This controller permits limiting the number of process that may be created
>  in a cgroup (and its descendants).
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/pids.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/pids.rst .
>  .TP
>  .IR rdma " (since Linux 4.11; " \fBCONFIG_CGROUP_RDMA\fP )
>  The RDMA controller permits limiting the use of
>  RDMA/IB-specific resources per cgroup.
>  .IP
>  Further information can be found in the kernel source file
> -.IR Documentation/cgroup-v1/rdma.txt .
> +.IR Documentation/admin\-guide/cgroup\-v1/rdma.rst .
>  .\"
>  .SS Creating cgroups and moving processes
>  A cgroup filesystem initially contains a single root cgroup, '/',
> @@ -566,7 +566,7 @@ An improved mechanism for notification of empty cgroups is provided by the
>  file.
>  .PP
>  For more changes, see the
> -.I Documentation/cgroup-v2.txt
> +.I Documentation/admin\-guide/cgroup\-v2.rst
>  file in the kernel source.
>  .PP
>  Some of the new behaviors listed above saw subsequent modification with
> @@ -648,7 +648,7 @@ it is silently ignored in noninitial namespaces.
>  .\"
>  .SS Cgroups v2 controllers
>  The following controllers, documented in the kernel source file
> -.IR Documentation/cgroup-v2.txt ,
> +.IR Documentation/admin\-guide/cgroup\-v2.rst ,
>  are supported in cgroups version 2:
>  .TP
>  .IR cpu " (since Linux 4.15)"
> @@ -1878,4 +1878,4 @@ mount option.
>  .BR user_namespaces (7)
>  .PP
>  The kernel source file
> -.IR Documentation/admin-guide/cgroup-v2.rst .
> +.IR Documentation/admin\-guide/cgroup\-v2.rst .
> diff --git a/man7/cpuset.7 b/man7/cpuset.7
> index 44e63d64f..fdfc3b662 100644
> --- a/man7/cpuset.7
> +++ b/man7/cpuset.7
> @@ -1503,7 +1503,7 @@ syntax that works on any shell, but alas more obscurely, by using the
>  .BR migratepages (8),
>  .BR numactl (8)
>  .PP
> -.IR Documentation/cgroup\-v1/cpusets.txt
> +.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst
>  in the Linux kernel source tree
>  .\" commit 45ce80fb6b6f9594d1396d44dd7e7c02d596fef8
>  (or
> --
> 2.20.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
