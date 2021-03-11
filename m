Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1304338059
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbhCKWe0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbhCKWd5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:57 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5A4BC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:56 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo14049657wmq.4
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PpEOVWfqV9IDWxGDvvSQ/l5VTTpqamXdm5A+zEC/48o=;
        b=A8O2v07EUgP6LgOGgBzb/LNOwdJkMshh2++CYc7wVcK62oY80VUk0nHKuvpRO/CBd+
         2Gc+2orV6PIXgQPGflp6qijoEMW6SzIAP5xO4S8P6v+tV5W3ih1bwpf1ih9eFnYRYtu5
         +WaQ4leLF0pG2dKZNGRfQTDT/sNJxBaM3DqHbLiRsOVREwzcnlnNLGeVJL+9ZZDM2GMK
         g7lxCXPLY/0v6jsa9Wcs9ricXYAOgBJp8y6pJ7a6DvjI5UnmnwEMCozCkb0up++ZSNUh
         jzaOYhoBj+crh5Neya7TEZXnmrlml0GGaP8oAKea7YZgkBFL4XVlSByIM1zJ1BewSzGx
         f0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PpEOVWfqV9IDWxGDvvSQ/l5VTTpqamXdm5A+zEC/48o=;
        b=Hqp+9edGJ9ezAaCx7XbRF3NVC2nfXrBULPZkKutfLBxx4U3/2llUwBkl0AUgEzlS6n
         yjWZDQvRZEUJQQEYdOH4C9/z6NMV5nJhSJ5yYPj/6ucljVkYqeCEttDd2LQhQYcFhUvx
         pqjbqBRls96luiqw+J5Nt6d+UYl/17WisGH0B8YudS6qPFarj3fd3LeEtMJ2hKf0cM9l
         9Dt4UwU0Chiymj76i5t8LKznPCItKhCrsyvoeyNpRrrjh9F9Sp3OaijJh9vPws6K4M6h
         aMpzffM01RAL9fDnOeKihqH798n2aU97rm9a37teSSAe3fEBZKT5Xt8nnu0hXgD/l91X
         BGOA==
X-Gm-Message-State: AOAM533dsm9ETtUt0lqgIqWddYb2UjMXK+nl7vfqvcPYMupnMLen3GMl
        dQT+YKHTnrbq7DAanLJ9SrA=
X-Google-Smtp-Source: ABdhPJxLbIhOLeeo1Fm++454BRHAAmmArMznx+lQ2EGzQa8rvdZlEAgOIQc3Q7UZwdW2RlypfROmsQ==
X-Received: by 2002:a7b:ce06:: with SMTP id m6mr9958444wmc.38.1615502035595;
        Thu, 11 Mar 2021 14:33:55 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 17/17] wordexp.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:30 +0100
Message-Id: <20210311223330.722437-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wordexp().
Let's use it here too.

.../glibc$ grep_glibc_prototype wordexp
posix/wordexp.h:62:
extern int wordexp (const char *__restrict __words,
		    wordexp_t *__restrict __pwordexp, int __flags);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wordexp.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wordexp.3 b/man3/wordexp.3
index b1d78cf2f..a531e1eaf 100644
--- a/man3/wordexp.3
+++ b/man3/wordexp.3
@@ -28,7 +28,8 @@ wordexp, wordfree \- perform word expansion like a posix-shell
 .nf
 .B "#include <wordexp.h>"
 .PP
-.BI "int wordexp(const char *" s ", wordexp_t *" p ", int " flags );
+.BI "int wordexp(const char *restrict " s ", wordexp_t *restrict " p \
+", int " flags );
 .BI "void wordfree(wordexp_t *" p );
 .fi
 .PP
-- 
2.30.1

