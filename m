Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECF80379692
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbhEJR5c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbhEJR5c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:32 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E50C06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:26 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso11662445wmj.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R3yQ/6vYV/DqTQrt26JFGj8U/NpSE9wmxiu+INGL8i0=;
        b=cdi4V4oDi+jOVkdfw/CLxnZjiF+jIGmEOXUVKBtrdriMfjsuprvxsleSlCec8FBCO6
         JtGB3nK+j8OPdDDyuLGJCSN/h5na6AhFQu+o6l6AyhZ8f5eDsEUVSFt+o92IX0SRtBza
         ghQNDu1rwf7F7+lDTQywWh4WGXm8JwJAM4X35Rl+lYrlyGKLdS58van49/+eFlNOWKm0
         Axuy4qX6cKgMvlu0iRgfzaaR0P4qldHpgQrvnQ5w1QvAFifKAU1jbt6LETSXtHP23uGs
         qX8KggRWIBR7A9h0PBmsjNnpJZJu7fHQGYzGwVmqRy7WB806s0DQxK+mXwzoWcHq3Zs9
         emDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R3yQ/6vYV/DqTQrt26JFGj8U/NpSE9wmxiu+INGL8i0=;
        b=MjH8wTvOAt6Y+kn1ZOKP+8z88s9GXlb5aYfYLAHIH0jNV3fSg0H/6PiUFDYM98FtM+
         RY9dMcOlocHka/dtS8rliyp2JepI52wUcz9uDWp4EH6DHtvkMInOTB5G0kPvZN6djw7g
         zNjS3b7wadnrCzEOsqU/W8ennMinCH88mwymEfQKEuGAYvq3nwILDmHYlIA+TeOQJH3v
         or8iZjUSQnNVxJa2XCpoE68VdKNJnJTrQuHw63HIUqLGCuzo4qyDOgBw+vsZBl+dSFXV
         Bpbuumq2oPzwNI/141YlRexT7kLqRvdYY8d3hibIZ0wDz8esWE6HQmo2/yETEFJ0xLuK
         bBFA==
X-Gm-Message-State: AOAM530BsVee1HA/lJPUBhLhnWgjcvfd5XItL5mpByGhlrVEHGBm6INy
        RC4tE+Cml8Rg85D0+WYnQBQ=
X-Google-Smtp-Source: ABdhPJztXA8ckbJE60dZWFpzZ5+z9fDi25XZHmIrFUUh5qS2ACSUb430n4J8+NcEWqieIKlYMMk9Zw==
X-Received: by 2002:a7b:c195:: with SMTP id y21mr387745wmi.108.1620669385652;
        Mon, 10 May 2021 10:56:25 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/39] io_getevents.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:15 +0200
Message-Id: <20210510175546.28445-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In this case there's a wrapper provided by libaio,
but this page documents the raw syscall.

Also remove <linux/time.h> from the includes: 'struct timespec'
is already documented in system_data_types(7), where the
information is more up to date.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/io_getevents.2 | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index 87eefdd92..7c7e625bf 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -9,16 +9,20 @@
 io_getevents \- read asynchronous I/O events from the completion queue
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/aio_abi.h>" "         /* Defines needed types */"
-.BR "#include <linux/time.h>" "            /* Defines 'struct timespec' */"
+.BR "#include <linux/aio_abi.h>" "    /* Definition of " *io_* " types */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int io_getevents(aio_context_t " ctx_id ", long " min_nr ", long " nr ,
-.BI "                 struct io_event *" events \
-", struct timespec *" timeout );
+.BI "int syscall(SYS_io_getevents, aio_context_t " ctx_id ,
+.BI "            long " min_nr ", long " nr ", struct io_event *" events ,
+.BI "            struct timespec *" timeout );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR io_getevents (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .IR Note :
 this page describes the raw Linux system call interface.
@@ -94,10 +98,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in
 programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
-You could invoke it using
-.BR syscall (2).
-But instead, you probably want to use the
+You probably want to use the
 .BR io_getevents ()
 wrapper function provided by
 .\" http://git.fedorahosted.org/git/?p=libaio.git
-- 
2.31.1

