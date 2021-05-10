Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D53023796AD
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232710AbhEJR6K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233300AbhEJR6J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:09 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F5FC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:04 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so9397112wmn.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uwK/Zj0cVBGZDcI1tSawjgTV+FzJDoJDPF1ZQ/kt+1U=;
        b=SBbE6QxUbFaAznsn/fsAGbwO3ylgsE72vdul2AHOpyP4d5GP1HgYhS2m2zJAPMfh9q
         F47uN7OgdQrYahknQp4aoL7TnVvhnPMDUTDvvbtxZBhKktzUT0DAX+aOGweWC6abKWu1
         rAKa0Y+Uod6zxOPDeoS78DbcrbX6cWO0Q4FqdJ++wTNd6kG04BKGKKNU7SeBQgb5T85R
         2wlQ6r7bwoe81UvV/XVJv1SU87jcPM2R6fMiEw8c8W9ONvZkeQutOsq3Jp8rJYvsoPzI
         vyeAiqGrJau0ixQM82mbzh715b3cL/x4vtobqSD5QkZdCcN5sX6WwjX8IP+xcb4eZ4Ec
         NbQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uwK/Zj0cVBGZDcI1tSawjgTV+FzJDoJDPF1ZQ/kt+1U=;
        b=YvFJ8J3c/5Ilt2dgDDgKcT7dlTePgf9ISpJwpQmxpIjUf93KtVwkQDwHVyV/x7163f
         A4/M1OmgB3tt2PJjxtMxOE/DGy+n/Q6pgWSJK8lSLn7Ci0+T+8GhH9fn4RVEt3e8ryfN
         tUbmHFnpZgZ46B7OfxHjWDDbeKj0n1J/6619zoKO/fqNiNU1ODgxchrzl3vXUE7Sy94A
         MWdouYYbkF+JEmnOubtik7b7ymAdtq9CB7u/OXJ0nXU53J5FQQiEOruJfTUZMRR+6xmO
         WYu2GvPCiwoZRCNGWFiumjcOwPIVBW58CMTQuZefv0KqBzZCV0RPdSU6LkMASWt781C1
         T+RA==
X-Gm-Message-State: AOAM531A3rCYCDHcaq/m0Z9THjajcYUdGVyr5ay1+KE/fK2gHuN+5kBi
        Cwec8YANz8kS/dGILSc3WNQ=
X-Google-Smtp-Source: ABdhPJwXT+/wJS3xNHC6gH723JTXhHMC/FNPZpy3IR10TyE+S7DRdzRf25dSAbcVmNZaLOklMkd/vQ==
X-Received: by 2002:a7b:c252:: with SMTP id b18mr27920836wmj.32.1620669423239;
        Mon, 10 May 2021 10:57:03 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 32/39] pipe.2: wfix
Date:   Mon, 10 May 2021 19:55:41 +0200
Message-Id: <20210510175546.28445-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For consistency with other pages.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/pipe.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/pipe.2 b/man2/pipe.2
index 9ac0341cf..93fbd36f2 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -40,10 +40,10 @@ pipe, pipe2 \- create pipe
 .nf
 .B #include <unistd.h>
 .PP
-.BI "int pipe(int " pipefd "[2]);"
+.BI "int pipe(int " pipefd [2]);
 .PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
-.BR "#include <fcntl.h>" "              /* Obtain O_* constant definitions */"
+.BR "#include <fcntl.h>" "              /* Definition of " O_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int pipe2(int " pipefd "[2], int " flags );
-- 
2.31.1

