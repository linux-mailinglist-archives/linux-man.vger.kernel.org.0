Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C94D933A05A
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234427AbhCMT03 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234344AbhCMTZz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:55 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 436FDC061574;
        Sat, 13 Mar 2021 11:25:55 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so17090924wmd.5;
        Sat, 13 Mar 2021 11:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vaIv3psZjL7GIAaqBtUc1l5X6QKk9mi+QSa5QAcEGL8=;
        b=Y+VhKGdFUmcIAzRZRMynpxIY6AYaPQ39bg+AoSsSnCPMITw+ZCjpx52hSLJRX+gB6r
         bys7oxg9I5difQRmBgdryBfRvqHeyecpceoJodzwVxeZHXEjgzHpFoRZp6aFtiPaJZIa
         ZY4JJjlHt5uKFQ3uXL4/BrgrV6oPNO/e6UIKFir9H8GwyJIPdX9abUWzfwdrLsqwFAVu
         Xmb/Shf/J1MTQKQzhTaPoOVF9YrbF/EUSBR9jJyuf9iO5WhCeRkpz8YgMzsl+CXK2/WH
         ahDq4GvmbxE/6i7NwgpbNbwV+bml8ZadagSOB3d6RzCgbJICEn/Q4jn3QO1N3dobrUUy
         rQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vaIv3psZjL7GIAaqBtUc1l5X6QKk9mi+QSa5QAcEGL8=;
        b=SPxFJgErD2jPnZiDikTjg7urs6T93XB8zSb199Uvi6KH+6nEIMzz0WTgnG+hGcevqs
         UcFRgoQgITA4bTO9roK2LKI9fT4l8rkrGT+84NAJJUFmobyNl1J6AzsIWbUV5b3MEl8L
         2/tXHQVwEU3+JN2TTcDLtBbeWYOV6Nc0GVKkaTWSbi71lf3Q0y7tr85mOkUDZWypWNqz
         0Z8dGWElZ91Zxg+C/FVNBMd+yVDh2+oejFe1Umbd1MTy2HGXHrsfffmo3b41E7ENn8Im
         mwENI7hkK3Icus3WR8OyfzBLA4BQxF5nXN8GOzaB2j/zpVVGfJaj1Q/u/A/m8wu5SPwZ
         SFKA==
X-Gm-Message-State: AOAM532Sy+4xT0VFAF+252E4cBzv4jpsBlpNPj1sdllqptn7hdnr4cLg
        bjPG8jz5Uk0XgtATRK7NO9Sj06cD9WyDtA==
X-Google-Smtp-Source: ABdhPJwhVIebu85kdo6+AvqSaKQ6mTQ0asUxJ7beu3O5wd/FQm2wlW1rjKDbwlKjiV015/s63tEL1A==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr19202908wml.4.1615663553968;
        Sat, 13 Mar 2021 11:25:53 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 06/17] clone.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:16 +0100
Message-Id: <20210313192526.350200-7-alx.manpages@gmail.com>
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
 man2/clone.2 | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 11eb6c622..2f5ecac42 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -56,13 +56,12 @@ clone, __clone2, clone3 \- create a child process
 .PP
 /* For the prototype of the raw clone() system call, see NOTES */
 .PP
-.BI "long clone3(struct clone_args *" cl_args ", size_t " size );
-.fi
+.BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_args" " */"
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.IR Note :
-There is no glibc wrapper for
-.BR clone3 ();
-see NOTES.
+.BI "long syscall(SYS_clone3, struct clone_args *" cl_args ", size_t " size );
+.fi
 .SH DESCRIPTION
 These system calls
 create a new ("child") process, in a manner similar to
@@ -1541,11 +1540,6 @@ One use of these systems calls
 is to implement threads: multiple flows of control in a program that
 run concurrently in a shared address space.
 .PP
-Glibc does not provide a wrapper for
-.BR clone3 ();
-call it using
-.BR syscall (2).
-.PP
 Note that the glibc
 .BR clone ()
 wrapper function makes some changes
-- 
2.30.2

