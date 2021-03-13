Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7EFE33A055
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234010AbhCMT03 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234332AbhCMTZy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:54 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 661FEC061574;
        Sat, 13 Mar 2021 11:25:54 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id g25so5728308wmh.0;
        Sat, 13 Mar 2021 11:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wl47K/xROL84A9jG0Dw06koLMYjwVaIYahNhoWpygGk=;
        b=hdWB7/VsprNaM91yk+wsaIQ8bZqati/3w4dwTk8/IdgYIdLBxTbtqmS35uUC3IXkm6
         gW1gvfV2k4DLG6FzvUvS7uRqJg1PyFrBwdbZ4jJ29g7tcbYey9AKAhih4EU+Dep+avM9
         fZrGMeOaBPvg7X+K2ZiWBGPdbQUJ7CE3SqjU3AQHEAY5z1UTCxRgU7qIa0N5K3cYaG0K
         6Ys0ifmCRh/2qZKhQ+tDWnsFPFoM490qn7ZutvyetMixHMy0+h6qTkwgN7twrHc8I34Q
         RrYLNVNPADJXGsVccqgdsnEVe5P5WJZ4/l+g0amdz/DJ6UIxafuHJiupbeETTkNxg5AT
         L94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wl47K/xROL84A9jG0Dw06koLMYjwVaIYahNhoWpygGk=;
        b=BzgkOHdvcYOnct/YTmkSze6FznLAu1s2RxN1TM2lD1PwDQxFmcVW59xx+jfF26HsIu
         RDNRXR+qiuN07MG9OB60DnI34tvsCrO3Oz7BsUllz/g7XMHzPYzaxI782e+mDDhlKub3
         6BjM/qRU5zPzPnMgbXZSRygDQzSLO97Q7YLhRedpeasxzwJ4YiCFhG97Nn23Wz/K/rln
         WeGYTRXtlJWReiuK8OBqie9iNFIGfsi84+pv5lxYU7aMM0CEAZtoufM8u8qwlncn7mns
         3WXOaQnLCoZRASG1lLRmXks3/06K4tPWruGKiPNZx95hByUTDq23HX35RbeV3rm4bVxf
         /i1A==
X-Gm-Message-State: AOAM531VqbuIRU0AqaxVoa90CSSE/dln0YhQvxpyvzxZPYT5N+0WwNDW
        CokPp1G5F2B/RwyqWpehOdI=
X-Google-Smtp-Source: ABdhPJx2BDyjt5tPfDFtWAxTa6l/hMJe0QZDF7mOnTAQLsXewIT4HgyBxFi89ZfZMkx7sih0ZdIsvg==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr19122128wme.181.1615663553104;
        Sat, 13 Mar 2021 11:25:53 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:52 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 05/17] capget.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:15 +0100
Message-Id: <20210313192526.350200-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/capget.2 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index ea504c28c..981645f90 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -18,14 +18,15 @@
 capget, capset \- set/get capabilities of thread(s)
 .SH SYNOPSIS
 .nf
-.B #include <sys/capability.h>
+.BR "#include <linux/capability.h>" " /* Definition of types and constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int capget(cap_user_header_t " hdrp ", cap_user_data_t " datap );
-.BI "int capset(cap_user_header_t " hdrp ", const cap_user_data_t " datap );
+.BI "int syscall(SYS_capget, cap_user_header_t " hdrp ,
+.BI "            cap_user_data_t " datap );
+.BI "int syscall(SYS_capset, cap_user_header_t " hdrp ,
+.BI "            const cap_user_data_t " datap );
 .fi
-.PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
 .SH DESCRIPTION
 These two system calls are the raw kernel interface for getting and
 setting thread capabilities.
@@ -40,7 +41,7 @@ The portable interfaces are
 .BR cap_set_proc (3)
 and
 .BR cap_get_proc (3);
-if possible, you should use those interfaces in applications.
+if possible, you should use those interfaces in applications; see NOTES.
 .\"
 .SS Current details
 Now that you have been warned, some current kernel details.
@@ -239,9 +240,6 @@ No such thread.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 The portable interface to the capability querying and setting
 functions is provided by the
 .I libcap
-- 
2.30.2

