Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F4EF32F6ED
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbhCEXva (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:30 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91A95C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:30 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n22so2668040wmc.2
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7iYcRtk8ePpQIgI+HpUz/1CukQcnMbfcb0xsWzo9UF8=;
        b=kLQ8WY1g9XnphV/sw1gXP6eLCe6x6YBQdYytcaBx4LAqzSNTIPrYTDZCeNbK40evUJ
         4bqH0n0fK7+W3iWDZVtnMUemE0Ei1qxriXLXL4QMi9Oq7ryVewM/p4/ZwVZQnf7QtaFu
         ztgm17cinKrqDiQv6NyRA3DRu4JHp1Ed1/MFITo73LwSukuYRA87nEVTVG3LRbbSzlyU
         BqyMXDsXQAtVSGroIgvcaejmT929tPYTjLG2ECZ/CLJlQmhANKZMRXwdlEFRuZpOt92C
         8J13wwufr77aLKW34svAsfpTB8k9oTxlBpoTq+ltROw5doddp1zsjy6bNSDUgS130CEz
         YMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7iYcRtk8ePpQIgI+HpUz/1CukQcnMbfcb0xsWzo9UF8=;
        b=fsycbrO9ikO5QjdQdhAXJz6gYeA6bzKCSOJNSJbCR2td1maKkEJEsV0c5kw5uzLrQR
         9k8NPzeXi5maoWDmR0JNSzjD59E0vpuevbjkV33cGGY5X5uQkmY3gQQXQfOtyIWn7d1P
         abb94vJKB2V/hn13AmTt0CO1DN7tWcE1LizwxGYHBNLua18j8WfivYxHmXOagnAP0Kd3
         s2kLnaiZz0pH21bTLUw940b81I4MXgR83nhXddqrwNU/h6mgvclwFyF90INej2VY/Wbc
         eSgitoMt6UgdoQbDaIO84ww8mnlMBznJjuQgD45w8VyQpik6NQOPrb0AIXVVRb4QBJgw
         0vIg==
X-Gm-Message-State: AOAM530XKgqnSXg/9Fp10xesMIZzv2/n6/7kplJd7H3o79tYrMxYcwfR
        BJb1/DvVv1xwMVJWE2+rrdg3FXl8rz/bqA==
X-Google-Smtp-Source: ABdhPJzMSluTrw5oDtWGf8lL/tB5QtTmIdAsGCi8MML7mY3FGjTI10p83ziNaZXwKbAYYFBZ4jMSkA==
X-Received: by 2002:a05:600c:2cb9:: with SMTP id h25mr11126321wmc.110.1614988289448;
        Fri, 05 Mar 2021 15:51:29 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 17/22] mq_getattr.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:01 +0100
Message-Id: <20210305235105.177359-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mq_setattr().
Let's use it here too.

.../glibc$ grep_glibc_prototype mq_setattr
rt/mqueue.h:51:
extern int mq_setattr (mqd_t __mqdes,
		       const struct mq_attr *__restrict __mqstat,
		       struct mq_attr *__restrict __omqstat)
  __THROW __nonnull ((2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mq_getattr.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/mq_getattr.3 b/man3/mq_getattr.3
index 32bfe21be..f1925fc71 100644
--- a/man3/mq_getattr.3
+++ b/man3/mq_getattr.3
@@ -30,8 +30,8 @@ mq_getattr, mq_setattr \- get/set message queue attributes
 .B #include <mqueue.h>
 .PP
 .BI "int mq_getattr(mqd_t " mqdes ", struct mq_attr *" attr );
-.BI "int mq_setattr(mqd_t " mqdes ", const struct mq_attr *" newattr ","
-.BI "               struct mq_attr *" oldattr );
+.BI "int mq_setattr(mqd_t " mqdes ", const struct mq_attr *restrict " newattr ,
+.BI "               struct mq_attr *restrict " oldattr );
 .fi
 .PP
 Link with \fI\-lrt\fP.
-- 
2.30.1.721.g45526154a5

