Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6094238F2DC
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233557AbhEXSV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232985AbhEXSV1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:27 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4E01C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:57 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so11434898wmh.4
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YJfQkdmZ+4g59dmxI1x4XoQtDvYKoXuBWqG/RKOiyIM=;
        b=J9lZaYW0a/BfoxjXarHZxBqdy/33AT9VIEOL2GwKdCnG9ft+MfjK2/Ygiy+7s16A+2
         znpUORfnv+QdBT3KZo0UVc97KItlw+psn8Fxh1Uc0iebXtPmQJ65loDyXMLhCFLjbQw1
         4ncEPycj54XrWiTCdV7z84q/dcXquHxTWMyeYLXOMcVSJ27CSW7fJlaZki2LdE832Csj
         iqeTpyXlkRBzrdbaIwUYELWlmvC/239FrIiywk7XL7/RiZ/NnZjk9Ph2DvGL7TOY2swQ
         J3Np/GYq+3y7RCqDEwvU2+ZQT5G5DKAxXlbnSTpv5RIG2bGxqghaPOjy+2HDihtY1WPP
         g5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YJfQkdmZ+4g59dmxI1x4XoQtDvYKoXuBWqG/RKOiyIM=;
        b=ugl/hJNsOhG5+wfNXLvomie1ErTjzgFOxxNn0SPKa0VEGHj5nZ9tLByqM0RooYcBdg
         epOnu1LYiufSoREahQQfZRIDPUGz7w6RbtWH5nbCHhdFyU/csmSVHwBFpZJGNULtQldd
         2ApGMz6/Ju04bdb028fFiSavQ6qap1hQWxrXM1HItG/S7TDTC9bgYiXKsRbrZcffA+Tp
         vNRzk9QZH9nMxRFxEyqacCQ16rQXPGPmH6/oDsrV9hMatO5bxqYJEqHmYSHyuA0J5E8l
         B1P5tYEZaqMJHI8BYZrXNEZms14va/IQ3Sg++NrrGizNccfkxkxxxsK6Ssl5jPjm6DWe
         AJ9A==
X-Gm-Message-State: AOAM533RNUMU+lyIuKQqqljt5kICVhxv+GEseGUVZANB2/eK4GoaP8DO
        re9NslNDbkUizbtaswWqwPw=
X-Google-Smtp-Source: ABdhPJxWch6RDoc4OzgTirFhH6RgZ9Gip32vTgW5KaaDLl8x2Gdrd7LtDW2gUMExIQ64IRUa4xuy6g==
X-Received: by 2002:a1c:2155:: with SMTP id h82mr20898583wmh.115.1621880396418;
        Mon, 24 May 2021 11:19:56 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 05/10] set_thread_area.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:42 +0200
Message-Id: <20210524181947.459437-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/set_thread_area.2 | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index 284dea390..43f3009f7 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -11,28 +11,31 @@
 get_thread_area, set_thread_area \- manipulate thread-local storage information
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
 .B #if defined __i386__ || defined __x86_64__
-.B # include <asm/ldt.h>
+.BR "# include <asm/ldt.h>" "        /* Definition of " "struct user_desc" " */"
 .PP
-.BI "int get_thread_area(struct user_desc *" u_info );
-.BI "int set_thread_area(struct user_desc *" u_info );
+.BI "int syscall(SYS_get_thread_area, struct user_desc *" u_info );
+.BI "int syscall(SYS_set_thread_area, struct user_desc *" u_info );
 .PP
 .B #elif defined __m68k__
 .PP
-.B "int get_thread_area(void);"
-.BI "int set_thread_area(unsigned long " tp );
+.B "int syscall(SYS_get_thread_area);"
+.BI "int syscall(SYS_set_thread_area, unsigned long " tp );
 .PP
 .B #elif defined __mips__
 .PP
-.BI "int set_thread_area(unsigned long " addr );
+.BI "int syscall(SYS_set_thread_area, unsigned long " addr );
 .PP
 .B #endif
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These calls provide architecture-specific support for a thread-local storage
 implementation.
@@ -172,10 +175,7 @@ and
 are Linux-specific and should not be used in programs that are intended
 to be portable.
 .SH NOTES
-Glibc does not provide wrappers for these system calls,
-since they are generally intended for use only by threading libraries.
-In the unlikely event that you want to call them directly, use
-.BR syscall (2).
+These system calls are generally intended for use only by threading libraries.
 .PP
 .BR arch_prctl (2)
 can interfere with
-- 
2.31.1

