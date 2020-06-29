Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 820D220D74A
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 22:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730571AbgF2T2g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 15:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732744AbgF2T1n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 15:27:43 -0400
Received: from buzzer.stormbind.net (buzzer.stormbind.net [IPv6:2a01:4f8:201:5373::85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBCBC02E2FE
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 07:41:12 -0700 (PDT)
Received: from digital0638.lan (unknown [IPv6:2a02:6d40:2b51:fc01:49e5:d515:df94:338c])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by buzzer.stormbind.net (Postfix) with ESMTPSA id E718A600392;
        Mon, 29 Jun 2020 16:41:10 +0200 (CEST)
Received: from sven by digital0638.lan with local (Exim 4.92)
        (envelope-from <sven@stormbind.net>)
        id 1jpuy6-0000K7-9N; Mon, 29 Jun 2020 16:41:10 +0200
Date:   Mon, 29 Jun 2020 16:41:10 +0200
From:   Sven Hoexter <sven@stormbind.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] update kernel documentation references in cgroups(7) and
 cpuset(7)
Message-ID: <20200629144110.GA1099@stormbind.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.0 required=3.5 tests=UNPARSEABLE_RELAY
        autolearn=disabled version=3.4.2
X-Spam-Report: *  0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
        *      lines
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on buzzer.stormbind.net
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

cgroups-v1/v2 documentation got moved to the "admin-guide" subfolder
and converted from .txt files to .rst

---
Since v1:

* Keep references to prior versions of the documentation with matching
  Linux versions.
* Removed a faulty change for the location of perf-record.txt.
* Replaced one occurrence of the .I macro with .IR to be consistent.
---
 man7/cgroups.7 | 93 ++++++++++++++++++++++++++++++++++++++------------
 man7/cpuset.7  |  4 ++-
 2 files changed, 74 insertions(+), 23 deletions(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 7a7210177..3e346b8d8 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -74,9 +74,12 @@ to allow the management of various types of resources.
 However, the development of these controllers was largely uncoordinated,
 with the result that many inconsistencies arose between controllers
 and management of the cgroup hierarchies became rather complex.
-(A longer description of these problems can be found in
-the kernel source file
-.IR Documentation/cgroup\-v2.txt .)
+A longer description of these problems can be found in the kernel
+source file
+.IR Documentation/admin\-guide/cgroup\-v2.rst
+(or
+.IR Documentation/cgroup\-v2.txt
+in Linux 4.17 and earlier).
 .PP
 Because of the problems with the initial cgroups implementation
 (cgroups version 1),
@@ -264,7 +267,10 @@ Cgroups can be guaranteed a minimum number of "CPU shares"
 when a system is busy.
 This does not limit a cgroup's CPU usage if the CPUs are not busy.
 For further information, see
-.IR Documentation/scheduler/sched-design-CFS.txt .
+.IR Documentation/scheduler/sched\-design\-CFS.rst
+(or
+.IR Documentation/scheduler/sched\-design\-CFS.txt
+in Linux 5.2 and earlier).
 .IP
 In Linux 3.2,
 this controller was extended to provide CPU "bandwidth" control.
@@ -275,27 +281,40 @@ then within each scheduling period
 an upper limit on the CPU time allocated to the processes in a cgroup.
 This upper limit applies even if there is no other competition for the CPU.
 Further information can be found in the kernel source file
-.IR Documentation/scheduler/sched\-bwc.txt .
+.IR Documentation/scheduler/sched\-bwc.rst
+(or
+.IR Documentation/scheduler/sched\-bwc.txt
+in Linux 5.2 and earlier).
 .TP
 .IR cpuacct " (since Linux 2.6.24; " \fBCONFIG_CGROUP_CPUACCT\fP )
 This provides accounting for CPU usage by groups of processes.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup\-v1/cpuacct.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/cpuacct.rst
+(or
+.IR Documentation/cgroup\-v1/cpuacct.txt
+in Linux 5.2 and earlier).
 .TP
 .IR cpuset " (since Linux 2.6.24; " \fBCONFIG_CPUSETS\fP )
 This cgroup can be used to bind the processes in a cgroup to
 a specified set of CPUs and NUMA nodes.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup\-v1/cpusets.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst
+(or
+.IR Documentation/cgroup\-v1/cpusets.txt
+in Linux 5.2 and earlier).
+.
 .TP
 .IR memory " (since Linux 2.6.25; " \fBCONFIG_MEMCG\fP )
 The memory controller supports reporting and limiting of process memory, kernel
 memory, and swap used by cgroups.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup\-v1/memory.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/memory.rst
+(or
+.IR Documentation/cgroup\-v1/memory.txt
+in Linux 5.2 and earlier).
 .TP
 .IR devices " (since Linux 2.6.26; " \fBCONFIG_CGROUP_DEVICE\fP )
 This supports controlling which processes may create (mknod) devices as
@@ -305,7 +324,10 @@ Hierarchy is enforced, so new rules must not
 violate existing rules for the target or ancestor cgroups.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/devices.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/devices.rst
+(or
+.IR Documentation/cgroup\-v1/devices.txt
+in Linux 5.2 and earlier).
 .TP
 .IR freezer " (since Linux 2.6.28; " \fBCONFIG_CGROUP_FREEZER\fP )
 The
@@ -318,7 +340,10 @@ also causes its children, for example, processes in
 to be frozen.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/freezer-subsystem.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/freezer\-subsystem.rst
+(or
+.IR Documentation/cgroup\-v1/freezer\-subsystem.txt
+in Linux 5.2 and earlier).
 .TP
 .IR net_cls " (since Linux 2.6.29; " \fBCONFIG_CGROUP_NET_CLASSID\fP )
 This places a classid, specified for the cgroup, on network packets
@@ -330,7 +355,10 @@ This applies only to packets
 leaving the cgroup, not to traffic arriving at the cgroup.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/net_cls.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/net_cls.rst
+(or
+.IR Documentation/cgroup\-v1/net_cls.txt
+in Linux 5.2 and earlier).
 .TP
 .IR blkio " (since Linux 2.6.33; " \fBCONFIG_BLK_CGROUP\fP )
 The
@@ -347,41 +375,55 @@ The second is a throttling policy which specifies
 upper I/O rate limits on a device.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/blkio-controller.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/blkio\-controller.rst
+(or
+.IR Documentation/cgroup\-v1/blkio\-controller.txt
+in Linux 5.2 and earlier).
 .TP
 .IR perf_event " (since Linux 2.6.39; " \fBCONFIG_CGROUP_PERF\fP )
 This controller allows
 .I perf
 monitoring of the set of processes grouped in a cgroup.
 .IP
-Further information can be found in the kernel source file
-.IR tools/perf/Documentation/perf-record.txt .
+Further information can be found in the kernel source files
 .TP
 .IR net_prio " (since Linux 3.3; " \fBCONFIG_CGROUP_NET_PRIO\fP )
 This allows priorities to be specified, per network interface, for cgroups.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/net_prio.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/net_prio.rst
+(or
+.IR Documentation/cgroup\-v1/net_prio.txt
+in Linux 5.2 and earlier).
 .TP
 .IR hugetlb " (since Linux 3.5; " \fBCONFIG_CGROUP_HUGETLB\fP )
 This supports limiting the use of huge pages by cgroups.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/hugetlb.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/hugetlb.rst
+(or
+.IR Documentation/cgroup\-v1/hugetlb.txt
+in Linux 5.2 and earlier).
 .TP
 .IR pids " (since Linux 4.3; " \fBCONFIG_CGROUP_PIDS\fP )
 This controller permits limiting the number of process that may be created
 in a cgroup (and its descendants).
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/pids.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/pids.rst
+(or
+.IR Documentation/cgroup\-v1/pids.txt
+in Linux 5.2 and earlier).
 .TP
 .IR rdma " (since Linux 4.11; " \fBCONFIG_CGROUP_RDMA\fP )
 The RDMA controller permits limiting the use of
 RDMA/IB-specific resources per cgroup.
 .IP
 Further information can be found in the kernel source file
-.IR Documentation/cgroup-v1/rdma.txt .
+.IR Documentation/admin\-guide/cgroup\-v1/rdma.rst
+(or
+.IR Documentation/cgroup\-v1/rdma.txt
+in Linux 5.2 and earlier).
 .\"
 .SS Creating cgroups and moving processes
 A cgroup filesystem initially contains a single root cgroup, '/',
@@ -566,8 +608,12 @@ An improved mechanism for notification of empty cgroups is provided by the
 file.
 .PP
 For more changes, see the
-.I Documentation/cgroup-v2.txt
-file in the kernel source.
+.IR Documentation/admin\-guide/cgroup\-v2.rst
+file in the kernel source
+(or
+.IR Documentation/cgroup\-v2.txt
+in Linux 4.17 and earlier).
+.
 .PP
 Some of the new behaviors listed above saw subsequent modification with
 the addition in Linux 4.14 of "thread mode" (described below).
@@ -648,7 +694,10 @@ it is silently ignored in noninitial namespaces.
 .\"
 .SS Cgroups v2 controllers
 The following controllers, documented in the kernel source file
-.IR Documentation/cgroup-v2.txt ,
+.IR Documentation/admin\-guide/cgroup\-v2.rst
+(or
+.IR Documentation/cgroup\-v2.txt
+in Linux 4.17 and earlier),
 are supported in cgroups version 2:
 .TP
 .IR cpu " (since Linux 4.15)"
@@ -1878,4 +1927,4 @@ mount option.
 .BR user_namespaces (7)
 .PP
 The kernel source file
-.IR Documentation/admin-guide/cgroup-v2.rst .
+.IR Documentation/admin\-guide/cgroup\-v2.rst .
diff --git a/man7/cpuset.7 b/man7/cpuset.7
index 44e63d64f..c1b9fda79 100644
--- a/man7/cpuset.7
+++ b/man7/cpuset.7
@@ -1503,9 +1503,11 @@ syntax that works on any shell, but alas more obscurely, by using the
 .BR migratepages (8),
 .BR numactl (8)
 .PP
-.IR Documentation/cgroup\-v1/cpusets.txt
+.IR Documentation/admin\-guide/cgroup\-v1/cpusets.rst
 in the Linux kernel source tree
 .\" commit 45ce80fb6b6f9594d1396d44dd7e7c02d596fef8
 (or
+.IR Documentation/cgroup\-v1/cpusets.txt
+before Linux 4.18, and
 .IR Documentation/cpusets.txt
 before Linux 2.6.29)
-- 
2.20.1

