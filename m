Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64941342935
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 00:58:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbhCSX6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 19:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbhCSX5q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 19:57:46 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64266C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:57:46 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v4so10718701wrp.13
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IqfzO36IlOr56YCxjyp98DjE99ujvsDT3rw9JveqG8M=;
        b=MEaghMcKOwjYSNFwcJaUriEsCjRsgPlX/K0KC0LYyp7J0+aCbXb7hGF+70pgtpoDeW
         4PNLLYM+fz0Ccj3+F9HZmcLmJPiK799qtNzsL8Oa5HXS7YB/lLbor1OaA83PkFbG8aBw
         tCjlEOTmnY4exjDvRE9LoVqD+Hubhr1a2plWABvJNqNcIWv8SxzH36mnXgpw9+ma07oF
         4gIkM1BM0eXzLoq9CM5RvIMGwSpgkhetOVZQsBqRrdIDBDSnvdQwvUaZQ9S2Te0S9FFu
         8XiARXy2IoCQ0EdzKWkvUOr81Oa9LJYzAZSLHOZ88G4qjdBYKvX2poo2gi5PpqmkopWD
         l/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IqfzO36IlOr56YCxjyp98DjE99ujvsDT3rw9JveqG8M=;
        b=RlaWHK8kFGy+e+ieZivDhdd5YASf4U64VL2BeEKv0ZcX/yKK8bhZthN/+jU7o7UM57
         lcQ/b7Nv3dTdVlcuZwR76vwh6rMkbszboL5EUuuy6loZ7IITBznsj0aY/UezlTrD1hxb
         VOJwoD3dYWy+oua7Srzh2jn6K461Dw3flCtJ2ABnRhmrkMCVOagjgGbOrV7X6GqOHBcN
         4sWq9apC2e0s3PIQ4dXNNTg1raUfkICUyYxZONX37e91kN40SlHv43IUZ308UUyZ+dOk
         jBI6zNrdLX3d0ptlXJfCHQ3gPP9ITbVnlRoXb9anSlHlB3Z7aw7xHeQ909+ham6uEErL
         wLQQ==
X-Gm-Message-State: AOAM530Ph7ginDIkoamnozfyyxbl/DAPjyLIkeWvc+vo5aB1SeMOhz5k
        Fclm+MLWlyKAafMoIIb8bUM=
X-Google-Smtp-Source: ABdhPJzEmu9pCvt+7SJXHUxaVFdDNORyaGdydtMwtMSQJTPhstiMRInav3E0ZoBXQTT9ouzO0pFUKw==
X-Received: by 2002:a5d:5250:: with SMTP id k16mr7009683wrc.309.1616198265238;
        Fri, 19 Mar 2021 16:57:45 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.16.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 16:57:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Huang Ying <ying.huang@intel.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] man2/set_mempolicy.2: Add mode flag MPOL_F_NUMA_BALANCING
Date:   Sat, 20 Mar 2021 00:57:12 +0100
Message-Id: <20210319235717.28264-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Huang Ying <ying.huang@intel.com>

In Linux kernel 5.12, a new mode flag MPOL_F_NUMA_BALANCING is added
to set_mempolicy() to optimize the page placement among the NUMA nodes
with the NUMA balancing mechanism even if the memory of the
applications are bound with MPOL_BIND.  This patch update the man page
for the new mode flag.

Related kernel commits:
bda420b985054a3badafef23807c4b4fa38a3dff

Signed-off-by: "Huang, Ying" <ying.huang@intel.com>
Cc: "Michael Kerrisk" <mtk.manpages@gmail.com>
[ alx: srcfix ]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/set_mempolicy.2 | 33 +++++++++++++++++++++++++++------
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index 6e695fb13..746858720 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -98,6 +98,27 @@ The supported
 .I "mode flags"
 are:
 .TP
+.BR MPOL_F_NUMA_BALANCING " (since Linux 5.12)"
+When
+.I mode
+is
+.BR MPOL_BIND ,
+enable the kernel NUMA balancing for the task if it is supported by the kernel.
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
+specifies node IDs that are relative to the
+set of node IDs allowed by the process's current cpuset.
+.TP
 .BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
 A nonempty
 .I nodemask
@@ -107,12 +128,6 @@ Linux will not remap the
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
@@ -293,6 +308,12 @@ argument specified both
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

