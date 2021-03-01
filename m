Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B201B327628
	for <lists+linux-man@lfdr.de>; Mon,  1 Mar 2021 03:48:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231833AbhCACrv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Feb 2021 21:47:51 -0500
Received: from mga14.intel.com ([192.55.52.115]:24732 "EHLO mga14.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231364AbhCACrv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 28 Feb 2021 21:47:51 -0500
IronPort-SDR: a8tNXEmXNjfA4iPLaFPq5tfAoXGli0QJ0Kje7gM6zQXtxLN7Rk2cI+cTNMu1XC9XBBqcMwclOd
 etup6r8DoKEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="185660094"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="scan'208";a="185660094"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 18:47:10 -0800
IronPort-SDR: BnnCvYEbVmZj8CmhvryJCjUF4SmG39CXu76Ytz0/GUv84N2XYh3EnrfRTlXZjGxaZX46dleP2M
 G6JTuzjYxCzQ==
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="scan'208";a="397264449"
Received: from yhuang6-mobl1.sh.intel.com ([10.238.6.89])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 18:47:08 -0800
From:   Huang Ying <ying.huang@intel.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mel Gorman <mgorman@suse.de>,
        Huang Ying <ying.huang@intel.com>
Subject: [PATCH] man2/set_mempolicy.2: Add mode flag MPOL_F_NUMA_BALANCING
Date:   Mon,  1 Mar 2021 10:45:55 +0800
Message-Id: <20210301024555.85484-1-ying.huang@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In Linux kernel 5.12, a new mode flag MPOL_F_NUMA_BALANCING is added
to set_mempolicy() to optimize the page placement among the NUMA nodes
with the NUMA balancing mechanism even if the memory of the
applications are bound with MPOL_BIND.  This patch update the man page
for the new mode flag.

Related kernel commits:
bda420b985054a3badafef23807c4b4fa38a3dff

Signed-off-by: "Huang, Ying" <ying.huang@intel.com>
Cc: "Alejandro Colomar" <alx.manpages@gmail.com>
Cc: "Michael Kerrisk" <mtk.manpages@gmail.com>
---
 man2/set_mempolicy.2 | 34 ++++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index 6e695fb13..cd543667f 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -98,6 +98,28 @@ The supported
 .I "mode flags"
 are:
 .TP
+.BR MPOL_F_NUMA_BALANCING " (since Linux 5.12)"
+When
+.I mode
+is
+.BR MPOL_BIND ,
+enable the kernel NUMA balancing for the task if it is supported by
+the kernel.
+If the flag isn't supported by the kernel, or is used with
+.I mode
+other than
+.BR MPOL_BIND ,
+\-1 is returned and
+.I errno
+is set to
+.BR EINVAL .
+.TP
+.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
+A nonempty
+.I nodemask
+specifies node IDs that are relative to the set of
+node IDs allowed by the process's current cpuset.
+.TP
 .BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
 A nonempty
 .I nodemask
@@ -107,12 +129,6 @@ Linux will not remap the
 when the process moves to a different cpuset context,
 nor when the set of nodes allowed by the process's
 current cpuset context changes.
-.TP
-.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
-A nonempty
-.I nodemask
-specifies node IDs that are relative to the set of
-node IDs allowed by the process's current cpuset.
 .PP
 .I nodemask
 points to a bit mask of node IDs that contains up to
@@ -293,6 +309,12 @@ argument specified both
 .B MPOL_F_STATIC_NODES
 and
 .BR MPOL_F_RELATIVE_NODES .
+Or, the
+.B MPOL_F_NUMA_BALANCING
+isn't supported by the kernel, or is used with
+.I mode
+other than
+.BR MPOL_BIND .
 .TP
 .B ENOMEM
 Insufficient kernel memory was available.
-- 
2.30.1

