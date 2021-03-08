Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 161503316C6
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbhCHSyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231295AbhCHSy1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:27 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48278C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:27 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id a18so12544071wrc.13
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cTbgI/mKzXnnU4suyGViSoEsHY7al/8n38ZpLDJEsyo=;
        b=RUPoIfIxilIgQXpAUyQznLUY69cpUpv/K6r7jTzsusHo2sma2jl/gjVhwsrJJxXYRK
         wzsTPlh4FYEFS7odXsEOH84/f2wAcpakaDwv2Z59ZDG37zYD/JiMGHPwxXA104cVB4PJ
         cFiqemIW5zSK5yM6r42Il+2QKn93eFXFd+E39FNm5H8BmutlUg9IKJisAlZQI1g9mLsw
         YvwRGjjjFNacKw3pP26B7gFsXhe9zhMZ7+js34i2nW4T49XyLzdftoIKz/br+U/xoD+m
         chqZvLevs03OvyDWWmTEKUIahDIJBaSD7nk5+SBaMRmvInvkjH1JsKLfusVPbW6wpwTx
         q6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cTbgI/mKzXnnU4suyGViSoEsHY7al/8n38ZpLDJEsyo=;
        b=Bu+hGwWrdkpwRgE/w/FDRHUcHlJuaIamESwIxrQ/okjZOJrxLKzwL2zpCXsooegf3/
         LerRuW7lEcfZn1xdHLtBgca0ZpCmRabLQFkkerm5mdL5+/UkBQgdvoAzFYmwVG7FxOiK
         KViqtnzRzJqGOcjnHlR7YczchcuX2Qwg1TwszfUBXN63lUOabnTt1H1Pi2h87WctpLT6
         CiEyBGjvje4blSYY6Vjaepb/SqOKpKXAynJ7f+v5OrAivnrStWMGKLsUSyN72vujFNhW
         LcuevWbReCkIrBwJh3BYa03gJBht6J/Wss9ogCuBmVHHu7DmhI5N+xOWBzX/kThPgaAB
         /RfA==
X-Gm-Message-State: AOAM532sDs6dPdc9KDDrPwx9uXDp5XjUnnrHO7tscrM8k/2GakxgvpdW
        wj+rU0BfYkxqWCE5/sA+M8o=
X-Google-Smtp-Source: ABdhPJwZrKkrbXPVWfC0WjXl7VfjuRtjdSylsLd2YEXLhPr0RvN5Xrg2UAhCsvPMrcYz46PYDYp0og==
X-Received: by 2002:a5d:6412:: with SMTP id z18mr24548004wru.214.1615229666130;
        Mon, 08 Mar 2021 10:54:26 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 18/23] readdir_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:27 +0100
Message-Id: <20210308185331.242176-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in readdir_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype readdir_r
dirent/dirent.h:183:
extern int readdir_r (DIR *__restrict __dirp,
		      struct dirent *__restrict __entry,
		      struct dirent **__restrict __result)
     __nonnull ((1, 2, 3)) __attribute_deprecated__;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/readdir_r.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/readdir_r.3 b/man3/readdir_r.3
index f330adb35..ad8f405f8 100644
--- a/man3/readdir_r.3
+++ b/man3/readdir_r.3
@@ -30,8 +30,8 @@ readdir_r \- read a directory
 .nf
 .B #include <dirent.h>
 .PP
-.BI "int readdir_r(DIR *" dirp ", struct dirent *" entry \
-", struct dirent **" result );
+.BI "int readdir_r(DIR *restrict " dirp ", struct dirent *restrict " entry ,
+.BI "              struct dirent **restrict " result );
 .fi
 .PP
 .RS -4
-- 
2.30.1

