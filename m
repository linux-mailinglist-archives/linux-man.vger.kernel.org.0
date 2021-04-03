Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E86BD353563
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236736AbhDCTmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236791AbhDCTmD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:03 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2835AC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:00 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j18so7479795wra.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PmEQnn7Rc35IBLQYixL7E97gBoLlm/QBiyhyexZdivM=;
        b=odo0rNAynkql0Di7WC1Zg+6aKhloXWnd/ZykkAWLUiwMP6Y374GBBjz/xK39gz+IxN
         cqdodlvWDjfyjK9m0lapgw0W4wkKlw95YPXQoPIzs1rxM97uhkYLYmqaqIeFOzAiVfe7
         tVsTgbsJnixrissqmRqyN8R07WMsy14D3Xz6U0o9k/rZs8H3jaFARHsOL6GelefBQeoZ
         gXZ7QqcMQm0acoY2O3nXgQJoX3i00YwRRxDCHY1OdZq9H7q3kf13fLZ9XN0BN27BTvyO
         kpjsHVS8u5PckkspdXHtZFTW+7N+20CqUZ3ChxKi8efCYhN3tPxlXd0czprUDxVO3ftV
         Oqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PmEQnn7Rc35IBLQYixL7E97gBoLlm/QBiyhyexZdivM=;
        b=P6plqVxhWWRCJPpF7IEkqfMVtjN5dT2AbCXalv/luDd/IKaXTS4fjF6WWdthkLfrz/
         t4y89WQswz/ktXTouGLgIVgag7mKK83r4WKxBGwx+J82eNE+s0Xz14AqAPxXNAHSWjnf
         rEXXSttUa6tZ2Y7XAU2dNj9XTno2SkgBOd5IYdi9Cb6sjyRyvqbv2Ua60trBJueJwNpW
         tCZepIgHI7MsPEugzRGn6PUV8I6/erUdNnw7VAi2MpLWVi69iHsQsPCy77MZCm6OFilb
         6FrSilAqfFZxyI3pTLNfXtDgHnzgXYCKyOqb266XEnNBOnFV3p95x1bqywyGb4fVmAbt
         Lx5A==
X-Gm-Message-State: AOAM532W+pKdb16qfPlJVHxRNr4fe+gCJ1w4G5iwaH8BGN4WtVjvENih
        XXxXO8U7G8YD8R4n8cBw9CiiSZZ0J9U=
X-Google-Smtp-Source: ABdhPJzIQfKM5liD2Z7nrx4axfH956SydppGl6T3p/r0phFev4wQ+tMwEl/XfPYmuVD0nah+YfMgTg==
X-Received: by 2002:adf:f40e:: with SMTP id g14mr21513354wro.174.1617478918975;
        Sat, 03 Apr 2021 12:41:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 16/35] exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:08 +0200
Message-Id: <20210403194026.102818-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<linux/unistd.h> is not needed.  We need <unistd.h> for syscall(),
and <sys/syscall.h> for SYS_exit_group.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/exit_group.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index 4fd314262..b512927d4 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -27,9 +27,10 @@
 exit_group \- exit all threads in a process
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
+.B #inlcude <unistd.h>
 .PP
-.BI "noreturn void exit_group(int " status );
+.BI "noreturn void syscall(SYS_exit_group, int " status );
 .fi
 .SH DESCRIPTION
 This system call is equivalent to
-- 
2.31.0

