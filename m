Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1547F33A05D
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234442AbhCMT0a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234386AbhCMTZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:58 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B74CCC061574;
        Sat, 13 Mar 2021 11:25:57 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so14144770wmj.2;
        Sat, 13 Mar 2021 11:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NOO1piYZB4k0TV/xxFD2hxAk7MvONuytBBkxF8kYck4=;
        b=BzvdGiNRwMyzEi0IleuhXEy5cL7KOE4Pr7ZxXr0xywSgYXfPILXOexiHFq5drVIWFr
         YR21tmHcqj/yLYiECEZ40eYBR/+EeENv20Nbb5LliXySK/bAW2Y4CI84WENc3R1BI5iv
         BIP/Gt9Kg6QzAPHc5v2apDmJPM4CLAez8TAC6LS4FjekgKIX4w+lzf84lOahZYy9WZ1s
         dtPxHZpjqH1FbbGelN/446wASztX/lh1UELJYdgbnVushZcf+hYknKlxbeSK5bjS/+9p
         FHbXzYRK4MRtAqhAUlyfu6RfyJtXeDZqLNdk8FIdZYtdMht9DprF6qfwjBhz3wFem6HC
         +tVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NOO1piYZB4k0TV/xxFD2hxAk7MvONuytBBkxF8kYck4=;
        b=JFCXNmXnVGDbBVbGv3Zg+y2AJwcuMdTqt1cYd9ln5T9tv7xwmZCAFotgqMSF2gbQpV
         j/1GiMEEA0bZeVqN8AVTQdoDlZ5EiVe66AxUXqwWkYclh3nML+svu450IzM6SZnk30AI
         q6TW4fTEJbkGXET3wgs2HCtjxlWv3WzeNTWcc7gHOkXIDqwc5RTNUIiPpt9BcmXJPV2q
         6xZZiHklF3YcucoBHMLoy7Zuo7gdodlYdngwCubBdGXIaO8KtQ9ZY1mwoXYyF8tralKj
         vDEIt53TaofALn70M5gKhOk30EyUlYIAtcgKoojsqYT9dzCiUATS16+xquWSziV2MejX
         wjHw==
X-Gm-Message-State: AOAM530iKyiIOYqrCwgRZfkytcBvSuEY0r5DNb1c/z/TFFfQXSUMX4Uw
        uUMQDZdmNBYkcvAfeq6PoRY=
X-Google-Smtp-Source: ABdhPJxq/HKudgOtfWet3oROo3nP2zKy3IWv9Mw94DLCTh9f3pueKjVhvJXPpwLA4qXrFTyaVCDnzw==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr19465206wmh.9.1615663556524;
        Sat, 13 Mar 2021 11:25:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 09/17] execveat.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:19 +0100
Message-Id: <20210313192526.350200-10-alx.manpages@gmail.com>
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
 man2/execveat.2 | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/man2/execveat.2 b/man2/execveat.2
index 499bf1b57..0d23cb39b 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -28,15 +28,13 @@
 execveat \- execute program relative to a directory file descriptor
 .SH SYNOPSIS
 .nf
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "int execveat(int " dirfd ", const char *" pathname ,
-.BI "             const char *const " argv "[], const char *const " envp [],
-.BI "             int " flags );
+.BI "int syscall(SYS_execveat, int " dirfd ", const char *" pathname ,
+.BI "            const char *const " argv "[], const char *const " envp [],
+.BI "            int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
 .SH DESCRIPTION
 .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
@@ -209,9 +207,6 @@ the natural idiom when using
 is to set the close-on-exec flag on
 .IR dirfd .
 (But see BUGS.)
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH BUGS
 The
 .B ENOENT
-- 
2.30.2

