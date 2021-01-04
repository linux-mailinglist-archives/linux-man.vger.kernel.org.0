Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E25C2E984C
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 16:21:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727118AbhADPTg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 10:19:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726762AbhADPTg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 10:19:36 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F13C061793
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 07:18:55 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d26so32484956wrb.12
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 07:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=imPOreTynP5ZSC5LXSqjIIxgka/xFCBjfAGkgWFtyNw=;
        b=M/QCowp0Dl1MI7iBm+LbMP0xk8DkK6Pk9peEanjTJYXXoBsJ45myyIRhim0VWp1xXS
         kTJRW4AmBLtw99slZ2UD4xbpYFvl2qHSNXsbc9MGtEwFun3PgitEp6oXz7edNLQES+4w
         elKJUJT5VmunjWYHFgql8SfD55Yeboxj9nSajgJowkPqehpJV5e/68AiVVTGTXP4qTCP
         qZ4zt0VmdjmJ6bfu0FjDUdRajCTRNV/DV6A0HA0ai3cHNW57lJfn3Y5O3x/6yfM6QVD+
         bJ2WXM+hJOUzdlrsInyp59FhMIR3xxpe+nkTnaoB5TvHsRxq7gdLoeXRHYWQ7Amchmct
         K99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=imPOreTynP5ZSC5LXSqjIIxgka/xFCBjfAGkgWFtyNw=;
        b=QHKBT8gPzk8X5g0cm0yF0J5pjWbE4NcqGfSkxzP8QOe1aD5bBw8XER37MVbJRreqTv
         hNU+LkNy6HLWvM9Iw8ax1AbCmwN7IxqX0Q9CbwYoa/ZQ59t0YcvjvX5crlkalskqiUCj
         ZfVMxHG6VFDD4Ls41Na1LFwANCiyQuHbnjEYr1Vz1Q0EAeUsOCqQlOK6JagVooKnNz2a
         rl/ksJGmtYCmF6q5gM0qsFXviGhQuUQRGhND727XIPHz8jCE/JDpMu1zM43ieIyF25Pg
         yDJcZcegC+uTKikRwNxgLDmyvzncnexJjjGAvoUF9IfrD5pzeGoTKenHzvUJBpf5Cb0O
         7jQQ==
X-Gm-Message-State: AOAM531+vxcN28fgSwu0jVYfMAIdn1oIUh0VV9knmp3udTn+n9JIsUbU
        286CuVia6tTPDdvbZGigsb8=
X-Google-Smtp-Source: ABdhPJyiSdefK0ulwiO7dDlYpepWDm/k9bLYtoBlLbRl37Aqd5EMfYuPr8aIBvN8XvqQkAAt3FHeHw==
X-Received: by 2002:adf:ee4a:: with SMTP id w10mr78780748wro.81.1609773534183;
        Mon, 04 Jan 2021 07:18:54 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h5sm92680355wrp.56.2021.01.04.07.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 07:18:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [RFC] system.3: Document bug when the command name starts with a hypen
Date:   Mon,  4 Jan 2021 16:13:34 +0100
Message-Id: <20210104151333.70955-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man-pages bug: 211029
 https://bugzilla.kernel.org/show_bug.cgi?id=211029

glibc bug: 27143
 https://sourceware.org/bugzilla/show_bug.cgi?id=27143

When a command name starts with a hyphen (which is a valid one),
the shell's '-c' option interprets the command name as antoher
option.  This can be workarounded by prepending the command name
with a space, as Ciprian pointed out in his bug report.

Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
Cc: Florian Weimer <fweimer@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Ciprian,

If you report a bug to the Austin Group,
please CC linux-man@vger.kernel.org,
so that we can add the URL and update the BUGS section
if it is ever fixed.

 man3/system.3 | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/man3/system.3 b/man3/system.3
index aef40417a..5a9318dec 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -250,6 +250,39 @@ are not executed.
 Such risks are especially grave when using
 .BR system ()
 from a privileged program.
+.SH BUGS
+./" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
+./" [glibc 27143](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
+If the command name starts with a hyphen,
+.BR sh (1)
+interprets the command name as an option,
+and the behavior is undefined
+(See the
+.B \-c
+option in
+.BR sh (1).).
+This behavior is mandated by POSIX.
+To work around this problem,
+prepend the command with a space as below:
+.PP
+.RS 4
+.EX
+/* system_hyphen.c */
+
+#include <stdlib.h>
+
+int
+main(void)
+{
+    system(" -echo Hello world!");
+    exit(EXIT_SUCCESS);
+}
+.PP
+.RB "$" " sudo ln \-s \-T /usr/bin/echo /usr/bin/\-echo;"
+.RB "$" " cc \-o system_hyphen system_hyphen.c;"
+.RB "$" " ./system_hyphen;"
+Hello world!
+.EE
+.RE
 .SH SEE ALSO
 .BR sh (1),
 .BR execve (2),
-- 
2.29.2

