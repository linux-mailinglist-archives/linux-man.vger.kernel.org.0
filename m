Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6565F3316AC
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbhCHSyK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231256AbhCHSyH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:07 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D75C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:06 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso4442674wmi.0
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9JVGKk0NPwYuSP8PbblaSRVdib8TBRFBEuG/t+/LYUw=;
        b=hEMy0dZOz6e5QON50I45BkDgvp2fOUmrhFhxlZ2545tChHgbCPBp6jSy2GzNoD4bu0
         0spnQ1IYhyKeZIJV87ZMZwU6iPNoLLsnXVbfFui5oizwA7Tdl82o92915bQOjGOaxryS
         pDcvTX/ogYHAqw2GVEp6sKLXlp+HfF7FXJR3PGuHiij1s91iv1n6Qd3wSiPITmhV8u0e
         BmAHYLUN5A+AbTfnJGDzt58Mw7m2266qwdOmtAyqNsZq/0+VHz6vg75t8witG9svMMPu
         U9qjRFFn5pBei54DDdmvq9dh85/K0YB3KFgpT/jPiY+Ni24zQDgc7tp/ivVy0uUrf0sI
         0Mnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9JVGKk0NPwYuSP8PbblaSRVdib8TBRFBEuG/t+/LYUw=;
        b=AYrdGqWFpVTeazgb8cEr+YsfMFrT8F/DfTxjEi+MAf3wrAeopHT5W6rpnqzJEuSZmY
         QDDJDVEAcqzXpCDlWmwQnbOHgWGqWYrdwtrWRxf0J8pcARKcpQ+pdwuRhdX0CcuMnUSF
         eguYMmVuj3q5BB9i3yeZBPNnvIxjWFw8wbi7jonZpe+YKpaRBNheJFiHc1b4v8CNqLqX
         okKImPW/AyZ6a8xEsqbpyW9lkmGEX7KnM82YuFuQWqOlH3Xc29nKDSVc0pFEYdTm3HT9
         Lzjytn1bPgB/2HwqexSWE8NMbyoUIzJ/0Ze2cZgTWOe8WaQF7jE/r2oHIBq0SkfS2DMc
         xfYA==
X-Gm-Message-State: AOAM533tUHb9tU9tTPt73pEE2ygU8riLzfaBP2I/Szez2S89osShTYDS
        yGO64nHWnMCqnfJkKxL03XA=
X-Google-Smtp-Source: ABdhPJx/dx18Es+54+ixJJNzG3FlfAMVLZKXfk+oVRktE89eBoFsYqhJhcd5pJ2stTFgnqwdXg+UdQ==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr227964wmi.60.1615229645713;
        Mon, 08 Mar 2021 10:54:05 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:05 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/23] pthread_attr_setschedpolicy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:10 +0100
Message-Id: <20210308185331.242176-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_getschedpolicy().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getschedpolicy
sysdeps/htl/pthread.h:113:
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict __attr,
					int *__restrict __policy)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:304:
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
					__attr, int *__restrict __policy)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setschedpolicy.3 | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/man3/pthread_attr_setschedpolicy.3 b/man3/pthread_attr_setschedpolicy.3
index 34fdc8631..e062fe685 100644
--- a/man3/pthread_attr_setschedpolicy.3
+++ b/man3/pthread_attr_setschedpolicy.3
@@ -31,10 +31,9 @@ scheduling policy attribute in thread attributes object
 .nf
 .B #include <pthread.h>
 .PP
-.BI "int pthread_attr_setschedpolicy(pthread_attr_t *" attr \
-", int " policy );
-.BI "int pthread_attr_getschedpolicy(const pthread_attr_t *" attr ,
-.BI "                                int " *policy );
+.BI "int pthread_attr_setschedpolicy(pthread_attr_t *" attr ", int " policy );
+.BI "int pthread_attr_getschedpolicy(const pthread_attr_t *restrict " attr ,
+.BI "                                int *restrict " policy );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

