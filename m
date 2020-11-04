Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE30F2A69C4
	for <lists+linux-man@lfdr.de>; Wed,  4 Nov 2020 17:30:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727389AbgKDQa3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Nov 2020 11:30:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727285AbgKDQa2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Nov 2020 11:30:28 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3696C0613D3
        for <linux-man@vger.kernel.org>; Wed,  4 Nov 2020 08:30:26 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id p1so3562603wrf.12
        for <linux-man@vger.kernel.org>; Wed, 04 Nov 2020 08:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/Ogs9VygWYjNWvgCIx3Uvb4kbgw9nU5UsRsitLTR6Jo=;
        b=o2vGqPTIPt6+gRG/U3NCieIiyl3SdaEyOy4bgs1XjY+6OYk+rVaAdXlXC1UTpo849+
         mfT7E2ahyjW7PStAbSvFehZDEgna7L/Sbnlco2dzO/mxk6CKeFNiigKR6NOddiNaFDol
         K4mw8diTQg1dtZsxp9d/Em2WiX8e9fmDPcrNFEbg3E6uiU4P9F3me7SO7IfQA9VRcBvI
         5hoaMRJ7XpgAwBq07l3xuC9LiE2uCDMT0i7V6umBmknD8bhSVPpAdpC02fy4jnZ+L/9M
         uyhDec1z/zrs1kp1ArUy9g/ERMvmHrSwPNw0yEqQwcaXD3sQmFy5pDo80dS4xIV+6opF
         aZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/Ogs9VygWYjNWvgCIx3Uvb4kbgw9nU5UsRsitLTR6Jo=;
        b=stcFG269scNL+cl8keaPuhLFGWbka5+U3fGm0/8ftDRIn9eUzXdIHik4U7YO/nNmvF
         n8V4iKiNsvnYhCHPiwWfpXLf3n/z7G1FfrQS37B0o0MaDMHL61mY+A7qojaqpn2AJnuI
         XBt+t61lyAwT78SGkq7DsxyxrZcHem8B6oQSth0gZqomkXXen7qp6ONpSIC6oB8ZALwg
         qWVR7TEqqxlrwvMmEaVj2whKRJK4/eQPRS2/Ng2ZLw5vjYbCNvaooEq95N2gD8ayEn8m
         cUJrcxZlUKGpvwve0hQky8tSUDhbIov2iwSrH+JVgZi8pmTUJPQhWMkhAqBeftwjAEot
         eq2g==
X-Gm-Message-State: AOAM533o3H2wreBRa/wzxGHGS9wDV1TDuuJeBqdmn/C7YcdOXcAoyFIp
        7mNaULmtBYD4QJJbxb1fLl8=
X-Google-Smtp-Source: ABdhPJwmubyMZ6YFEdZe9dEFLvI0cAW/PGfg6rd+ou3Ax+JGoDG+q2NUb408RgfBS5+v8hWCJNBipQ==
X-Received: by 2002:adf:e4c8:: with SMTP id v8mr32679418wrm.72.1604507425686;
        Wed, 04 Nov 2020 08:30:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f15sm3024534wrj.12.2020.11.04.08.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 08:30:24 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Oskolkov <posk@google.com>
Cc:     linux-man@vger.kernel.org,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v3] membarrier.2: Update membarrier manual page for 5.10
Date:   Wed,  4 Nov 2020 17:29:44 +0100
Message-Id: <20201104162943.4823-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
References: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Oskolkov <posk@google.com>

Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
(part of 5.10 release) changed sys_membarrier prototype/parameters
and added two new commands. This manpages patch reflects these
changes, by mostly copying comments from the kernel patch
into the manpage (I was also the author of the kernel change).

Signed-off-by: Peter Oskolkov <posk@google.com>
Co-developed-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---


On 2020-11-04 17:01, Peter Oskolkov wrote:
> On Wed, Nov 4, 2020 at 1:39 AM Alejandro Colomar
> <colomar.6.4.3@gmail.com> wrote:
>>
>> Maybe I'd also add a paragraph in VERSIONS, saying there was an old
>> version with a different prototype (and maybe show it there).
>>
>> What do you think about it?
>
> Hi Alex,
>
> I don't mind your re-doing my patch with the typo fix, updated
> examples, and the addition to versions. Please
> let me know if you would like to do that. If not, I'll send a new
> patch with these changes.
>
> Thanks,
> Peter

Hi Peter,

I added those changes to the patch,
and added a signed-off-by on your behalf.
I think it's ready right now.

Cheers,

Alex


 man2/membarrier.2 | 60 +++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 53 insertions(+), 7 deletions(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 3064b2d2e..775a399b0 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
 .PP
 .B #include <linux/membarrier.h>
 .PP
-.BI "int membarrier(int " cmd ", int " flags ");"
+.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
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
@@ -251,7 +288,16 @@ commands.
 The
 .BR membarrier ()
 system call was added in Linux 4.3.
-.\"
+.PP
+Before Linux 5.10, the prototype for
+.BR membarrier ()
+was:
+.PP
+.in +4n
+.EX
+.BI "int membarrier(int " cmd ", int " flags );
+.EE
+.in
 .SH CONFORMING TO
 .BR membarrier ()
 is Linux-specific.
@@ -350,9 +396,9 @@ becomes:
 static volatile int a, b;
 
 static int
-membarrier(int cmd, int flags)
+membarrier(int cmd, unsigned int flags, int cpu_id)
 {
-    return syscall(__NR_membarrier, cmd, flags);
+    return syscall(__NR_membarrier, cmd, flags, cpu_id);
 }
 
 static int
@@ -362,7 +408,7 @@ init_membarrier(void)
 
     /* Check that membarrier() is supported. */
 
-    ret = membarrier(MEMBARRIER_CMD_QUERY, 0);
+    ret = membarrier(MEMBARRIER_CMD_QUERY, 0, 0);
     if (ret < 0) {
         perror("membarrier");
         return \-1;
@@ -389,7 +435,7 @@ static void
 slow_path(int *read_a)
 {
     b = 1;
-    membarrier(MEMBARRIER_CMD_GLOBAL, 0);
+    membarrier(MEMBARRIER_CMD_GLOBAL, 0, 0);
     *read_a = a;
 }
 
-- 
2.28.0

