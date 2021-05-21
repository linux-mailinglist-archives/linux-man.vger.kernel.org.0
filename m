Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 946F938D1EA
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbhEUX10 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhEUX10 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:26 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9882C0613ED
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:01 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d11so22477512wrw.8
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BoZEon2AAj7PSjp7+apv5r/0QHLGtWjVL9O75FD51IA=;
        b=S7aYBYVLpfN27SFcNl5RUmC9etgdK+3l3unBxFtPm77lFkXOBboZ936J/TcumhlMik
         Ek/v3NjulitWUXzE75XezY2E2WKvuQiiX4W0PKYiWoyr+GBLI7Rc9mfY+CusuplcjMq3
         zh7PNpEUFoxOgSntt36aVGmpxvGjm85yuVUeSQ2kCcPmXh/NJrQD/ZIaKSHl7zhBq2/3
         A1NJepx5knGIC6+ZCrWDkPUQDf+NgXvic1MQ2WyacwwVGt43yhkTMuYJIF5QszwKgUG9
         VefABN90CX/9aBjASjxszhgi2eoqOS6sLQNZrNYDF15YJi/yYno8Yhfxcob+5lJg14++
         89UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BoZEon2AAj7PSjp7+apv5r/0QHLGtWjVL9O75FD51IA=;
        b=osz8F1UqFAJoi5fzF4GIpelVb7AhLLn/NiWN3zjINxF59A4m9Q6vYZo0B7lHIWMoO2
         Upj7Ap39XLDcRR7ViomfLqG8Yqvc/zJ0c4fgJk3lOcfZwGexPNjlxmXgAEOu0D88CWTz
         2CXCXeKJbTXkGY31llsLMZVzTEJtBU926kComzlopeJRoh0V8jkiqUMHtORD9uC86meA
         sYq/BeZlqLyljFS/gXRYawSCAPQxFaaZXUt0mKlrQHzhr6AIRrDQzFCslnp/w07HsTw0
         T3FXTB7PgNskDqXV8AUAph3zlwEMvDmYuF7dBFyqwQN576Pyia7BHqbEioiVWCO8M19F
         pTww==
X-Gm-Message-State: AOAM530yQQo2PA6a+jScBvs9SnLmxQrBCMPnEHw/edJeOW9EwtY9IAom
        MNL0Cn8i8aLMRyFCwG938Ig=
X-Google-Smtp-Source: ABdhPJzzT3HdHCe4DB/29m7LmhQktn1Z/R736y7mqW0aA0CZEVNBz8YjyVpz9G+tna/BS181NBuQLg==
X-Received: by 2002:adf:db4e:: with SMTP id f14mr11527925wrj.48.1621639560458;
        Fri, 21 May 2021 16:26:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 04/10] seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:47 +0200
Message-Id: <20210521232553.161080-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp.2 | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 1be7d6766..476e5c2f0 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -37,13 +37,18 @@ seccomp \- operate on Secure Computing state of the process
 .BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int seccomp(unsigned int " operation ", unsigned int " flags \
-", void *" args );
+.BI "int syscall(SYS_seccomp, unsigned int " operation ", unsigned int " flags ,
+.BI "            void *" args );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR seccomp (2),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR seccomp ()
@@ -858,9 +863,6 @@ Tile (since Linux 4.3)
 PA-RISC (since Linux 4.6)
 .\" User mode Linux since Linux 4.6
 .PD
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .\"
 .SS Caveats
 There are various subtleties to consider when applying seccomp filters
-- 
2.31.1

