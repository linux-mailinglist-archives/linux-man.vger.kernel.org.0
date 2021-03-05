Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 122F532F6DC
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbhCEXvi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbhCEXvS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:18 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D94C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:17 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id b18so3922474wrn.6
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MXjq2DN+YJn4kUCwgg0gYtbwvNKne04W2dMax4QblGk=;
        b=WHPc0Evh+Yn+hJA4PSlSxk5/mGjj1a2ZGv21H+d3CFJ5cjxvYqEWSS0TaiK0O1OdvB
         Q9u1oM3F1vgb4x7TJrnO+IXR33awdlWWGhBf8cuBbfeFYXeVgQq6rjGs+rP9oep9t0KD
         EQtko6LQonV3AeL4ohHHNSG3WA3NRyEEp79gqwqZ/OfSUAcK/j2AAzgBFM+9UW7dQ5Xv
         iMPQ/+5ugtxoEVZCr6x/EShFdCY/yuCemZScXtYreiRCwUaqwOyjKgyg/pAVe0niwzdN
         QMOGvc1h1/r9dlYBD5F9NVj1gFEvvTN54c9Heokoxe+dMzvevxVvj6JolGkGt5vRqsPW
         QWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MXjq2DN+YJn4kUCwgg0gYtbwvNKne04W2dMax4QblGk=;
        b=dRi4rrJi6xyrrCCxSO3jyq1RkeLv4mkoh1VCRp7Tk7kksA6BnIMibWb0AJmhx4l+jl
         tkuvN7euKMypT0FewjdBchI+FsBHrO9wEjpTBndPia1IQqGcxeG2J4aJtjdTK2rwcCgF
         q5iiC2uZblxTdFDbrWziw5XAGNDIcjWsR0Nd7WWXcZXeSMGBSNgRKeny6vLLyNnHgBxh
         8x5N+KvSzAb4NDdK8WKZR4pf6AJuCG+TUmo6izSIN3Mj5Ih+0r96H2vclML5qXG9rLh1
         FATr99l+pCmBs2QjFK0X6RIsRniM6Qb+2tTVspp0ZeRg/1iUThgTrguvQmF2wbL+jM6s
         gPZQ==
X-Gm-Message-State: AOAM532zzhDVp4tXkcQK052pc4Nr7xazzji9vBSEVerT3wDvhd65TeH2
        ay8wsumVVzYlt80yflbeSs8=
X-Google-Smtp-Source: ABdhPJyt6sb/bWb/cwpPA6Y/SAoKVpA0vl4Fk06Z/SZkws8GXuuDyd2w6ctGnZn+oyNWqy83Cffm+Q==
X-Received: by 2002:adf:f584:: with SMTP id f4mr11834386wro.311.1614988276573;
        Fri, 05 Mar 2021 15:51:16 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:16 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 02/22] getsubopt.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:46 +0100
Message-Id: <20210305235105.177359-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify getsubopt() to use 'restrict'.
However, glibc uses 'restrict'.
Users might be surprised by this!  Let's use it here too!

.../glibc$ grep_glibc_prototype getsubopt
stdlib/stdlib.h:958:
extern int getsubopt (char **__restrict __optionp,
		      char *const *__restrict __tokens,
		      char **__restrict __valuep)
     __THROW __nonnull ((1, 2, 3)) __wur;
.../glibc$

Cc: glibc <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getsubopt.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
index ed6a24ed6..9bceed075 100644
--- a/man3/getsubopt.3
+++ b/man3/getsubopt.3
@@ -29,8 +29,8 @@ getsubopt \- parse suboption arguments from a string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int getsubopt(char **"optionp ", char * const *" tokens \
-", char **" valuep );
+.BI "int getsubopt(char **restrict " optionp ", char *const *restrict " tokens ,
+.BI "              char **restrict " valuep );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

