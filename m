Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 723653316C4
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231255AbhCHSyp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbhCHSyT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:19 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87981C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:19 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id j2so12574865wrx.9
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gk+rUfACaEZYLML+9uxiNKQV5jYDLXtogDSJKSq13kk=;
        b=vKW7kWjfObWimTQHPy5kjHZNFfK/jVihXUEMOpt77E2PDZn0aaSU/6VgzqQtQMNJjH
         tRXRdQK/+wA5m9yESrQ+xRQtUmk0M8ANuedra7MFouU3EQjwG74/aYzsonm0nKHkY+nS
         pyNvzrmFn7gL5L+qp0WcZ8+2BoVaBSU7/2isgWt8Nhu/r8vQL6oEwPAEew0nIy4kisbX
         90aRtS2+b5myKowVu61wjD15ljI5wbed3ggUN5UxTLvX2jsLSwlNhPWN9GczEewtO+vg
         qaC2KjtUSPmtVAhiRbrSzphQ7e7hrKDnKPNZBxbXArvqyIlLkVZql+0Bn1Fh5/I5d/Hy
         vHmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gk+rUfACaEZYLML+9uxiNKQV5jYDLXtogDSJKSq13kk=;
        b=VZft6ryN3Z8jzfqkowiH5DG1yhwjYg1LDuNA4CJeYcuqo71Wtp9mZuL6yumq1/xLfn
         GHYXuRQcFcjQDncsm21wPOA6ypV0m59W2MkgCbgJpP4OH1XzCRS48iapqWk3DrOE8hUW
         f/77u6/jNu1GNdoznaCHWHvsAk0LNljhhyigXm5wFiZjJEWhTU5lyNbBen0UFNpPg5lk
         aZM+SJ8FTBi5ZsGkl0uItwEsKjFhWc21nSPr2SW34sj/9hbag4K/dR+xfhOjE5CiqrMR
         1BPLF7M6tfpC71CuZ9BqUF9yGHZbaSN0VcDJS+Wmx1tpQbUcpd+GXgdhT3fUXhWiT4gb
         ukHA==
X-Gm-Message-State: AOAM530Q8SHUG/icKg/mg6OYkrp8+z0d7KRgu21r0PMOp8cLEgS8K++o
        2o02nO2M8SBGyPiu5Zm15pk=
X-Google-Smtp-Source: ABdhPJzHX2WFcNuhg/Nl89k/Ly/X/VtiYpV/nIo3LAUdtmu1MUsvdN411XQtMIAPxUAnfTQ0gyk5+g==
X-Received: by 2002:a5d:6304:: with SMTP id i4mr23842548wru.155.1615229658411;
        Mon, 08 Mar 2021 10:54:18 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/23] pthread_setschedparam.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:20 +0100
Message-Id: <20210308185331.242176-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_getschedparam().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_getschedparam
sysdeps/htl/pthread.h:882:
extern int pthread_getschedparam (pthread_t __thr, int *__restrict __policy,
				  struct sched_param *__restrict __param)
	__THROW __nonnull ((2, 3));
sysdeps/nptl/pthread.h:426:
extern int pthread_getschedparam (pthread_t __target_thread,
				  int *__restrict __policy,
				  struct sched_param *__restrict __param)
     __THROW __nonnull ((2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_setschedparam.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_setschedparam.3 b/man3/pthread_setschedparam.3
index b3ec5009c..d96d911d9 100644
--- a/man3/pthread_setschedparam.3
+++ b/man3/pthread_setschedparam.3
@@ -33,8 +33,8 @@ scheduling policy and parameters of a thread
 .PP
 .BI "int pthread_setschedparam(pthread_t " thread ", int " policy ,
 .BI "                          const struct sched_param *" param );
-.BI "int pthread_getschedparam(pthread_t " thread ", int *" policy ,
-.BI "                          struct sched_param *" param );
+.BI "int pthread_getschedparam(pthread_t " thread ", int *restrict " policy ,
+.BI "                          struct sched_param *restrict " param );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

