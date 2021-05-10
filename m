Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C99AC3796AE
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233304AbhEJR6M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbhEJR6L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:11 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC794C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:05 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z6so17536175wrm.4
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/4HBHw9Rc57063FYCLhInqQWq2ZCUzUI+E/e0nyfRGc=;
        b=ikMyxgMhq4WQ0dEL4EHEbC6DQGapF8X6/1/SOOhgowwiVKMQLeg4LiUIOP7dprFYGu
         QKooBE81W+PAp+Ih/GTtQnctEYY4mARC9+tg3PSwDO8dJ+r6grenAFiLFJXHEhaQUwVx
         Am9I0g/IL+VjnIm0fy0RWrSjR1n0/WPwW7xnhRRzNaz8U8MEFdgQXEH25geTO7IhFZnL
         jVT3QPVvlJm+iK7aawk94HvA3BP3pTfynkz/SuLtqwLcJ1vnJ0Uk8Yt0hTZ6nGQZofLm
         GN/f/crrIYqpy6pBCvimV2ndnLybErfi1hDvOjbnHuHkOW6QsFF6HveW/6RwY5Iysowt
         eb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/4HBHw9Rc57063FYCLhInqQWq2ZCUzUI+E/e0nyfRGc=;
        b=UhArJ8VKP1EQon8P6myzWGkq5UCKzLU1LcVX6xvcyYgqHlY76+8gbUYCuv25iHpiXC
         Hqk9w5BDPZDHjEW68GmshkyP8Z7THke6iBmRu1Uf2IUmbF08qhgSAJ5vtcCXjAg42bf0
         AaCChNKDyyFmxKiYI+oMeVxzJDfIIC40AYGBeG/vqMrz8QOoVAg0oSEnSBijneMfOf4K
         RpJJE+ZmMYtBemrBoWE27lfkFwAVnyOSRJm09RgaNlM7IsqslvZmkjDLDaRtG7R1eCl3
         QAaqmmL7Rv61Wf5tLnM6oF02KqbUMJivk0MRRhEEwY6caLliJW2wE5QtQ5MP7eN6fmYJ
         ACKQ==
X-Gm-Message-State: AOAM531m7cIM1qQqfc3xwlkX3RH4GTBX2PRbWJHxQVy31e3UZdBwyth8
        AvP10snsrJhQBkPGt5tIIovAIeM4uZ8=
X-Google-Smtp-Source: ABdhPJxawHm7tjo7zje4Z6EZ14p5XOc9J7Pd7VJH40ReiJKPOiYP+XXb1xT7O7TDocA6/EopXySfHg==
X-Received: by 2002:adf:d1e1:: with SMTP id g1mr32659973wrd.401.1620669424625;
        Mon, 10 May 2021 10:57:04 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 33/39] pivot_root.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:42 +0200
Message-Id: <20210510175546.28445-34-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/pivot_root.2 | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index e0c34c450..c301c2e4a 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -29,11 +29,18 @@
 pivot_root \- change the root mount
 .SH SYNOPSIS
 .nf
-.BI "int pivot_root(const char *" new_root ", const char *" put_old );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_pivot_root, const char *" new_root \
+", const char *" put_old );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR pivot_root (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR pivot_root ()
 changes the root mount in the mount namespace of the calling process.
@@ -168,9 +175,6 @@ was introduced in Linux 2.3.41.
 .BR pivot_root ()
 is Linux-specific and hence is not portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 A command-line interface for this system call is provided by
 .BR pivot_root (8).
 .PP
-- 
2.31.1

