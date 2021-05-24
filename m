Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3EBD38F2D9
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233482AbhEXSVX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbhEXSVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:23 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38D7C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:53 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d11so29469775wrw.8
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=fk5CXmFI7FjRHlaKEMT89D5fmf2piI3Nvt7kK6zk2r9CcHgE0GQDmkTqmmnroz6lfw
         xOAUGy68OlyNtnlD0KvVysWdVAnbreZiZm33IIgpi5IqiSHuvhRjvQQwoC8DlP6g4yTr
         ZaC/4d7rJnRJ+NBn+IyBfog5lIv7VP5mOxfhNqTQw2AzKlHxIu8V/A83wpHCIbhnoNKd
         SL09DwP+ta8n24G1TTqkZvRUojJfCuFngz/AOkvw5pk6ABS2ewBt1Zt/Gof0sC0VTL+5
         mBk5R2Pjuc8LQSwEXx3khJ4ga4OnSi8o2gCOSOhUEW6GO9xaePHxHtaMnHKPU2EA3UnW
         oN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=kaQ7cbPEc3Jhw9TEiyig852Sjh9F9mHow3tq4+YehAtM5NC659x81HWildlUr4SgLL
         +LaMDyQ1eLUJP5m3bO/pEt5kkk65dxZZObmqqo3d/fbpgHqdXkdn8twtIRLpxx2llGcF
         qcmP4CC71nW4RND7HYRTRnZ8oUc/QKL9If4DZMyzCa53k+2I5bFdgKN04eSa3Ewt9vSO
         PurXJKK+RcHbw+9AQLIVpW99u8+zfSs/Smx4kqmW+mGp1d+BV4cpBnnqxtqNYeNh0Hr9
         kKW+9AH98HrVpB57s+QIG7YBa6xnD5hy9+Gepqx3IsIvDyQmYtte5D1WjReG+p9eQgyU
         Wodw==
X-Gm-Message-State: AOAM531p5D5ot3dRQA7mBOOB155Zo0zLHwofFZUNGNJ64F7vKtFSTugt
        6ydykt2VqJi3tpVdyV1+S3k=
X-Google-Smtp-Source: ABdhPJyz03vqoA7YOQ7XMDRanfHR6BluBlm6q6emN5dz4j4HOzc9G45y+gCCI1E1fKJ+avjK9YQrig==
X-Received: by 2002:a5d:58f2:: with SMTP id f18mr23727982wrd.249.1621880392517;
        Mon, 24 May 2021 11:19:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 02/10] rt_sigqueueinfo.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:39 +0200
Message-Id: <20210524181947.459437-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/rt_sigqueueinfo.2 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man2/rt_sigqueueinfo.2 b/man2/rt_sigqueueinfo.2
index 2dd1a5877..d48ecbdcd 100644
--- a/man2/rt_sigqueueinfo.2
+++ b/man2/rt_sigqueueinfo.2
@@ -27,9 +27,14 @@
 rt_sigqueueinfo, rt_tgsigqueueinfo \- queue a signal and data
 .SH SYNOPSIS
 .nf
-.BI "int rt_sigqueueinfo(pid_t " tgid ", int " sig ", siginfo_t *" info );
-.BI "int rt_tgsigqueueinfo(pid_t " tgid ", pid_t " tid ", int " sig \
-", siginfo_t *" info );
+.BR "#include <linux/signal.h>" "     /* Definition of " SI_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_rt_sigqueueinfo, pid_t " tgid ,
+.BI "            int " sig ", siginfo_t *" info );
+.BI "int syscall(SYS_rt_tgsigqueueinfo, pid_t " tgid ", pid_t " tid ,
+.BI "            int " sig ", siginfo_t *" info );
 .fi
 .PP
 .IR Note :
-- 
2.31.1

