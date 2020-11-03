Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA832A4F9F
	for <lists+linux-man@lfdr.de>; Tue,  3 Nov 2020 20:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727852AbgKCTE6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Nov 2020 14:04:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727706AbgKCTE6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Nov 2020 14:04:58 -0500
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com [IPv6:2607:f8b0:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 482DAC0613D1
        for <linux-man@vger.kernel.org>; Tue,  3 Nov 2020 11:04:58 -0800 (PST)
Received: by mail-pf1-x449.google.com with SMTP id x9so1982282pff.10
        for <linux-man@vger.kernel.org>; Tue, 03 Nov 2020 11:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=97oxEDL0+5u6kRAuvPT2fBbsOsmtcz2aYWRBJ1sXcGc=;
        b=vT0TJV8qIIidvm/Se5mv+DLnHo0P64eQxiI4Uy2eRZbHfGpUq7qmyYuDIGeo/XlClL
         bqgvm3FAw2OYG7rLu1LrMA5k6cjpMCsUMHG3aLYPMYqdwaGJGaVLd2kplY9/3QqoVNAg
         evlVgGYbAqtIHXh18krRf0/RDW6Zp5x4inRijAasXITB6+PSR5uX4GxAjwp9hAt4bncP
         6v4pieW1jmPUpdgoOD/tcvIAgLsZK2OFpfFjQLKDmc3iUd+D1YMclgiYpo5nvOTQCXTO
         8ginmpl7Yn4hGtiVoZJFQsPsTeTnjpNc2R4sAvQj5CL4COcNsEvnerfQjrHla/6A/GnQ
         50VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=97oxEDL0+5u6kRAuvPT2fBbsOsmtcz2aYWRBJ1sXcGc=;
        b=Yibh5S3FHeqmhYnemzOYv6bMmtZF50sFHTWKjfAe5oe1EMnNHxJonQMCy37lExos90
         FztP5hiQZuM2OajlDjgRNRcfLH8bqKuF52IvBKHljoZJgMNNrJ2lRKPjx8vwx6+rzaCP
         r8zicEed/f3LYiSe0gm7O/3jgRXQwJOZ21zoCaaHB/1gYu5LFRg36WAZ7WrPlDcpO/N3
         zg36wGas3GMzIcKPNTHxyjgLZqdbdJdEY3OkCnLnbTbjtqrS/iItXB/K906D2ctfP2Hi
         xRlC5zbEB6h+sNJkXtY8qg5O6+lNxaAv5+feq09QY53r0zsOYh6q7937xPTXeS7UORvn
         54Gg==
X-Gm-Message-State: AOAM532K6I0lZthuyN87qmLFdeH03QeNjJiVt9veck/XbCo1s7eN4qpp
        EWoUhFIqTxhb1/HbNnYqTHp41ErS
X-Google-Smtp-Source: ABdhPJwYZ9z6FfokB5jYc16eT4hSbAGMQeoQwheMYm0J540Z6IBMuFEIZdr6jldavj9WsNpAZdBa4Ov4
Sender: "posk via sendgmr" <posk@posk.svl.corp.google.com>
X-Received: from posk.svl.corp.google.com ([2620:15c:2cd:202:7220:84ff:fe09:7598])
 (user=posk job=sendgmr) by 2002:a17:90b:293:: with SMTP id
 az19mr139749pjb.1.1604430297543; Tue, 03 Nov 2020 11:04:57 -0800 (PST)
Date:   Tue,  3 Nov 2020 11:04:33 -0800
Message-Id: <20201103190433.373528-1-posk@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] membarrier.2: Update membarrier manpage for 5.10
From:   Peter Oskolkov <posk@google.com>
To:     mtk.manpages@gmail.com,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>, Peter Oskolkov <posk@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
(part of 5.10 release) changed sys_membarrier prototype/parameters
and added two new commands. This manpages patch reflects these
changes, by mostly copying comments from the kernel patch
into the manpage (I was also the author of the kernel change).
---
 man2/membarrier.2 | 41 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 3064b2d2e..c95e97cb6 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
 .PP
 .B #include <linux/membarrier.h>
 .PP
-.BI "int membarrier(int " cmd ", int " flags ");"
+.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );"
 .fi
 .PP
 .IR Note :
@@ -165,6 +165,29 @@ core command prior to using it.
 Register the process's intent to use
 .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
 .TP
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
+Ensure the caller thread, upon return from system call, that all its
+running thread siblings have any currently running rseq critical sections
+restarted if
+.I flags
+parameter is 0; if
+.I flags
+parameter is
+.BR MEMBARRIER_CMD_FLAG_CPU ,
+then this operation is performed only on CPU indicated by
+.I cpu_id .
+This guarantee is provided only for threads in
+the same process as the calling thread.
+.IP
+RSEQ membarrier is only available in the "private expedited" form.
+.IP
+A process must register its intent to use the private expedited rseq
+command prior to using it.
+.TP
+.BR MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
+Register the process's intent to use
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ .
+.TP
 .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
 This is an alias for
 .BR MEMBARRIER_CMD_GLOBAL
@@ -172,7 +195,21 @@ that exists for header backward compatibility.
 .PP
 The
 .I flags
-argument is currently unused and must be specified as 0.
+argument must be specified as 0 unless the command is
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ ,
+in which case
+.I flags
+can be either 0 or
+.BR MEMBARRIER_CMD_FLAG_CPU .
+.PP
+The
+.I cpu_id
+argument is ignored unless
+.I flags
+is
+.BR MEMBARRIER_CMD_FLAG_CPU ,
+in which case it must specify the CPU targeted by this membarrier
+command.
 .PP
 All memory accesses performed in program order from each targeted thread
 are guaranteed to be ordered with respect to
-- 
2.29.1.341.ge80a0c044ae-goog

