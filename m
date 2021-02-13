Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DCCB31AE70
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbhBMXMG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbhBMXMD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:03 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 904CCC061797
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:46 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id n6so4238831wrv.8
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6gpjJvw17Y7j+oRv83WTTZ4zKdoQqZ/FRva06sLNXtg=;
        b=rDOB5BIsY3pGsXKPQCaLFJFv+7SQAoT1CuKlc72VZ7w+oicUbAKEiSmZtvA+ljpdjL
         +o1pHJzOnNNI/MDDOpKGSPwCxDhhUUglpvW348PKKSjyWbTEGWDMWxPXc8klqbaWJnbj
         duml6g60yRcBNZivxBwaXdUXeW6cqsW4cW7X8py8+qrKR8jGoq/tDkV+JJm2eD9TUJ5t
         TS0UVc+xgatbqGlJtSoP2HQ+5xJGttE3u8e8Qou+qOx0p0dDtIEgLCUKh0um8WZfAcJr
         qhC5N6966SKuOopoj4G/s0ipDymTjPOooPMxEV26YaGiNlG4fNMPzO1p1ZfrU/+3DBW2
         Lljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6gpjJvw17Y7j+oRv83WTTZ4zKdoQqZ/FRva06sLNXtg=;
        b=TviA5IVC6gMUVU3+sCiry6WJB88tonYDgvF2sXwhpTWi/bVpbDcVL3XKmJt/4Nqgpc
         29zV5cmEzJCmGrVrqnedIXyurMmZcUjAgNRM7RXGGIvKXWobhTojYjJzJZFHTQqZ+P8E
         sxEEHHGb1/lz4mZpsEYncumQ2zlDrgvSglX+75BszDeyfz4vzWnQxZC25xBQP1jH+GMd
         cNt22Iw+f4nAKkF1aq1PaONI7MTR7wlxkut0GFT2hCvHmHm+fpT7ZrZjz6uRTZvrfxw5
         uiEs2iZMpLLxcpu+8QHAEYEWoEKQho8T1Cnf9WMeHXjTNdf/eCjPaMz4LSLGApX4yz2D
         6DTQ==
X-Gm-Message-State: AOAM530kxOSiJI2bb7go+pIRTe6JZ4L/+8UTvNjR68GgCCJHqjvsNQUY
        xKByLIRshN09bAGeRIXNAiI=
X-Google-Smtp-Source: ABdhPJxH7PzgkjRwAFFz1he4YsIreYwadKbS5N0CWaqvXp9PqqP8DpmDl9lzTLAI/CiFZi7Md4Exkw==
X-Received: by 2002:a5d:58db:: with SMTP id o27mr10757851wrf.397.1613257845434;
        Sat, 13 Feb 2021 15:10:45 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 10/14] sigwaitinfo.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:20 +0100
Message-Id: <20210213231024.440020-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of sigwaitinfo()
and sigtimedwait() shall be 'restrict'.
Glibc uses 'restrict' too.  Let's use it here too.

......

.../glibc$ grep_glibc_prototype sigwaitinfo
signal/signal.h:264:
extern int sigwaitinfo (const sigset_t *__restrict __set,
			siginfo_t *__restrict __info) __nonnull ((1));
.../glibc$ grep_glibc_prototype sigtimedwait
signal/signal.h:272:
extern int sigtimedwait (const sigset_t *__restrict __set,
			 siginfo_t *__restrict __info,
			 const struct timespec *__restrict __timeout)
     __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigwaitinfo.2 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 703b9b177..450e5f439 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -30,9 +30,11 @@ for queued signals
 .nf
 .B #include <signal.h>
 .PP
-.BI "int sigwaitinfo(const sigset_t *" set ", siginfo_t *" info ");"
-.BI "int sigtimedwait(const sigset_t *" set ", siginfo_t *" info ,
-.BI "                 const struct timespec *" timeout ");"
+.BI "int sigwaitinfo(const sigset_t *restrict " set ,
+.BI "                siginfo_t *restrict " info );
+.BI "int sigtimedwait(const sigset_t *restrict " set ,
+.BI "                siginfo_t *restrict " info ,
+.BI "                const struct timespec *restrict " timeout );
 .fi
 .PP
 .RS -4
-- 
2.30.0

