Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D0C9381A6F
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234382AbhEOSVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234189AbhEOSVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:53 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15F55C06174A
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:39 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id j14so532261wrq.5
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=EAxQ6LKXj+iA1pT7gpCQ0oFu/aZwcFhpCi59v/EcxF6xbYVPb2HKTlUhEzmCAOwIqD
         Nflu6XQhPA8r3hRxlmNIcw2lOO8IOxZxrpYm0WkLxogeGorESExXZeNmPK3MtScGNhU/
         E1kM59HPsFcLnTu+rrhtZbykyS+SKuQJsbgHMjHiG8RghXZhylKQrtrZcAmOsIMLSxVC
         wDPl6OZRsascIs/ToUSvWpgVB6dbFupxydZVA6b1qdbWhHHQJgKjoGpZgQGoAgJq1HHZ
         I+sKFzkeTomJ6LFb2AYQnNOF7TFmGwbU01hs/33JHr9zRvYsQL5eSKSZdjDxy1LN2SxB
         EMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=Dc7wiN+Oay3QJC8fBaT5HgM/jhEjdiVwGkJ6/ulrLLSyeNaCpt92nb27VbCPXO9bAW
         FmV1dhQBsQ7oxxyh2dGG+3EbGzKg723nuMyPvuePr4wZTdGJokiSEMRJhRGK9KC4BY6c
         PRMGmqdhVCJAyxH4VG4bzD7Z6DUD1Efsf7M+acXL2GAYqkt9kyF8xoIxGn/DH5711Mg5
         yF6mqjdGAL7YwiXQ4Af0UPUjBz7XRF6abLykiGvhDNngAFcy5rFPM3KE+VUmZWydUD1m
         3L7dk7CTi/Hlh3E1Ob5JxtPsVj4AcBic9eJWbmgA1BxNVTVtb1oSva0zQ1uh5caVhH1l
         cksg==
X-Gm-Message-State: AOAM531QLlnfs9LqWO7hWGDjR2kv62zk1m9huCHzZOtlJo29rITINB2Q
        yXr6oO1TAPuRFdfwAXJVUeAmF1ezYuhpmw==
X-Google-Smtp-Source: ABdhPJwyyvcMBY0YIl6d0kaMWNr5vMuitRpYYfwvTvZlq3SRIZAAMocXGc69VJQidfOxdB8aKSsqHQ==
X-Received: by 2002:a05:6000:18a9:: with SMTP id b9mr20175326wri.416.1621102837815;
        Sat, 15 May 2021 11:20:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/8] rt_sigqueueinfo.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 15 May 2021 20:20:22 +0200
Message-Id: <20210515182027.186403-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
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

