Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC22531AE78
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbhBMXMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229731AbhBMXMD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:03 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDD8C061794
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:45 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o24so3698984wmh.5
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AiKAm7Y2teKnwBZV7+Cwz2sg1GgIWLzainqgH7tIMkg=;
        b=GN8jC4GgUKAjf/eDZ/8YHpSld34C3kxIREkq6kmE0GDGGl/2DzwSZ4ti3RrqD1Ptpu
         TLeqKsrRb7+6Xw6aAgd0QXOwY2avlPPbDgcb7hp0u3I7YmmDphwSApgZOsoLA3SiH8rN
         3Z0/fX1Mnm20c7Lr5tpVZCRaMLGTwZ5GCTpv2lbHbe5tpkmvknfr98OU1IM+NX03EEbt
         vGoeCi9tzyaT2jt3cys9MX4ziqAR/qahH2Udj7nqeYIQwx+5719IWkNg+SNfWB6LRSZV
         yUTALseLjzPWQcN6pxkmfeUw9liYked/SmOzh69yjW1p41IFyrtv+LKe9X6bnPuEEPFN
         gb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AiKAm7Y2teKnwBZV7+Cwz2sg1GgIWLzainqgH7tIMkg=;
        b=KYVd02zOvazKm9b9E0nxd/C+P/ESnZxTSFyTONgH09UfzvjYvNRbRXC3F5kVPCfscQ
         G3rinUL6bOUyoNx+Lc16WmcVos4mBFBufhclvjDWUrgWcfkYqCR+fezlgf+pHpAWfV8B
         Kd7QDeZtcZWwki/IkFpBXZVvNdxUnXQw7xnB41jzP6gdrekp3TAza9WRtoAbb/3s0Y1I
         tojR08LLkjcw9Zgk5vaKmMJvfk9CPrGqSDeuphFbkvtzJ5jk6osNAUmuZs3RgnzUhKa6
         JDSYCcx3C+Pvf+nZIfKd7tN/r1pjfKLzmdmJWcPLtfkfGoFPIRNfkYPc6T/j9XQBlrnU
         JlLw==
X-Gm-Message-State: AOAM532M8sRWiYgP7N2EFXI6MKf54zRNo8VbbyeZTy1ry8IEcnVV65ng
        2igwJkihGE2WfEc6QHU0sL8=
X-Google-Smtp-Source: ABdhPJw1ronte0eKT3y06vOodat9bKreyHNHJF2moJgg65S+VGaEp6KRKLzcTg5FfbBugVB3xlkvPQ==
X-Received: by 2002:a1c:e402:: with SMTP id b2mr8190126wmh.122.1613257844789;
        Sat, 13 Feb 2021 15:10:44 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:44 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 09/14] sigprocmask.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:19 +0100
Message-Id: <20210213231024.440020-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of sigprocmask()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype sigprocmask
signal/signal.h:232:
extern int sigprocmask (int __how, const sigset_t *__restrict __set,
			sigset_t *__restrict __oset) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigprocmask.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/sigprocmask.2 b/man2/sigprocmask.2
index b4899ff8a..ba78ccffd 100644
--- a/man2/sigprocmask.2
+++ b/man2/sigprocmask.2
@@ -34,7 +34,8 @@ sigprocmask, rt_sigprocmask \- examine and change blocked signals
 .PP
 .nf
 /* Prototype for the glibc wrapper function */
-.BI "int sigprocmask(int " how ", const sigset_t *" set ", sigset_t *" oldset );
+.BI "int sigprocmask(int " how ", const sigset_t *restrict " set ,
+.BI "                sigset_t *restrict " oldset );
 .PP
 /* Prototype for the underlying system call */
 .BI "int rt_sigprocmask(int " how ", const kernel_sigset_t *" set ,
-- 
2.30.0

