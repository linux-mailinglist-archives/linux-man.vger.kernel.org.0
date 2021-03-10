Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC4F73346C2
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232387AbhCJScf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232948AbhCJScJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:09 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52D4AC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:09 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id u16so24429398wrt.1
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MYO3X/yjg3wkBx4QD0PRVd2tX8XIpNPx7l46JwQWDSY=;
        b=sWf4TMm5ane83TLnEghOcqFr5o9UeGsa8wVoqfidP0Lj6HHJw8KQbDdCbg5IUlR2Bo
         xZ50nDjSu7aAtwVC0u2Db9MqJcij1nUDijAus9OISkn46ZOuJEKTCl7/yZqm0uIBq+q1
         FhKNgcgSVWRhzPPAahbt/Y2BoUbxwsJu7XhJDplKThcgZxbEQIYv1OTxzpT3AkK3E9I1
         BD81sdzca2dkdjG7PU8vxrExCFcZjQzS4tZ/Ezcx1VmpcdLIufvk3dnbsp45ElOXzEz/
         KoE8XFS7FGAZ62cxfySlrGJtrnoMxlBydXabh/ZaOLbmIVLmPAlgbUDxPrTNUai75doH
         njxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MYO3X/yjg3wkBx4QD0PRVd2tX8XIpNPx7l46JwQWDSY=;
        b=gBhED8HeqM60BqUS6exaYDnvXyEXp1I2gcObvIgqfmjwLZB2TqX2xs8R5fc2H5Vcfv
         IP248Ixa/8pND4k+FV8iVn3/Mo7rMKVzw5UhSwPDwUdBJtdwAB2WSntrOhI0iSSc7v8F
         Hm7dGDS5ucxCnWZrso5twqFgpLE+k3AtQd9Csc5QJ16OvMK8zpQdFxdPErQmqVAofrTg
         JL6vsTbo0ArCVpA74/r/C+uZopy3j4wc5XElinlvEX+KDLZ6uUuVSHRn1TEkRePX6QDq
         pk63D8OAv1onrzs2HA41cYlQoIddhq3AHv//tiKOdIMH/lwpPinsDNTfkgz/ZyH1syiW
         Q9Lw==
X-Gm-Message-State: AOAM531nqGx4eXyxrDQb7LNZOaaDaGtcPMN4Z4EFR722JRQEVohXP65j
        ZYVHF1qCG9UC7hRn3JwYb38=
X-Google-Smtp-Source: ABdhPJz2reFKLc3m5cUFHhAswdT9TKX4RoB2rDx29NEdr1KkK0KUb0t3EKz047u2/O2znZrmB/8o1w==
X-Received: by 2002:adf:b355:: with SMTP id k21mr4934029wrd.156.1615401128071;
        Wed, 10 Mar 2021 10:32:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/24] sem_wait.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:28 +0100
Message-Id: <20210310183149.194717-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in sem_timedwait().
Let's use it here too.

.../glibc$ grep_glibc_prototype sem_timedwait
sysdeps/pthread/semaphore.h:62:
extern int sem_timedwait (sem_t *__restrict __sem,
			  const struct timespec *__restrict __abstime)
  __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/sem_wait.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
index d57b6f6ce..da7ae72c2 100644
--- a/man3/sem_wait.3
+++ b/man3/sem_wait.3
@@ -31,7 +31,8 @@ sem_wait, sem_timedwait, sem_trywait \- lock a semaphore
 .PP
 .BI "int sem_wait(sem_t *" sem );
 .BI "int sem_trywait(sem_t *" sem );
-.BI "int sem_timedwait(sem_t *" sem ", const struct timespec *" abs_timeout );
+.BI "int sem_timedwait(sem_t *restrict " sem ,
+.BI "                  const struct timespec *restrict " abs_timeout );
 .fi
 .PP
 Link with \fI\-pthread\fP.
-- 
2.30.1.721.g45526154a5

