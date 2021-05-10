Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 848483796A3
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233277AbhEJR56 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbhEJR56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:58 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB80C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:52 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x5so17513914wrv.13
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dmqohYzMvS72z6Y99XXcG7umHP0lMiI/AKNyIBd/i9M=;
        b=owsCoNrKi1HtNnn1NWQ8d06LpNKSlDZzNDEn+9/gDIDNluwixm2rhD6nvkv+7h51VU
         kz94J5Xlse+jCCd8WJ7iohQWnGhUVTK1KYtxNimklrBvrwg/hK+cLbcf6OyYrWtV0Bcq
         vYLxy2G8fk60LVakaLLw36CQgXxhbXK4e94rQRbCMaxHgOjwG9ovIHODleCVDRQ8nbvG
         HXqzZzrqyRGXy8m8VxanW8bfaKfeA1n3E0wtkHkadWHc6izdJU4iDJKQgw0ol6KgRMRb
         a67bQ3SWfU99pzBfFxkDitYs4A4+p8eDDnLemjBHX+bgSIz9fHO1NZcDd5JTfKkekzd3
         x3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dmqohYzMvS72z6Y99XXcG7umHP0lMiI/AKNyIBd/i9M=;
        b=n57gFlYrVOKcYOgBnh8RJJjFSTT1230I+YMRR+XzMSk6hlM3n51XVnEGEJz1qmG6Q0
         4hH7kFQOSWyRrywdpkQrfQHazvgOvchUftFgMi1UFvFcBpO6Adiqd1CaITc7qtaQ4+96
         owKXXqzAdWXZ4UMjK5wCM0oXI9Te21+Zb7rZBSgKlvcMMZvTKU2yO7rmZIAHZZ1fAamb
         3MLp1QmylIKyAHybibw1ZC9UDX80NqWfsS+Jw3Ozk7DuAGGvYMz9dH7Q1ZZvmzTSawAp
         vZgQVi5YOwh/Y+BAsbSFfRqwgt+thJ8+jYIAosPdkEroLau01qspDPJpI/4lqE4mnbGM
         oJeQ==
X-Gm-Message-State: AOAM533iH5WfvXEsO2Z+3d/OVWwh0D4pDD+bGeEndL1Rb1urhwjmg1Sy
        TOaJUTBVmrSP82R9DsdWchk=
X-Google-Smtp-Source: ABdhPJzmJXhuQ2+bC7lZLyzLU+ekt4IebYMEfohKC1ZLMkkRT40T28NewhprM8X6kS9BYskuVqEfVw==
X-Received: by 2002:adf:f1d2:: with SMTP id z18mr32446793wro.245.1620669411379;
        Mon, 10 May 2021 10:56:51 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 23/39] modify_ldt.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:32 +0200
Message-Id: <20210510175546.28445-24-alx.manpages@gmail.com>
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
 man2/modify_ldt.2 | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/man2/modify_ldt.2 b/man2/modify_ldt.2
index 8ce9ed252..b67a67690 100644
--- a/man2/modify_ldt.2
+++ b/man2/modify_ldt.2
@@ -27,11 +27,19 @@
 modify_ldt \- get or set a per-process LDT entry
 .SH SYNOPSIS
 .nf
-.BI "int modify_ldt(int " func ", void *" ptr ", unsigned long " bytecount );
+.BR "#include <asm/ldt.h>" "         /* Definition of " "struct user_desc" " */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_modify_ldt, int " func ", void *" ptr ,
+.BI "            unsigned long " bytecount );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR modify_ldt (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR modify_ldt ()
 reads or writes the local descriptor table (LDT) for a process.
@@ -168,9 +176,6 @@ is neither 0, 1, 2, nor 0x11.
 This call is Linux-specific and should not be used in programs intended
 to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 .BR modify_ldt ()
 should not be used for thread-local storage, as it slows down context
 switches and only supports a limited number of threads.
-- 
2.31.1

