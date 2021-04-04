Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E274E3537EA
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230377AbhDDL7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230378AbhDDL7q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:46 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F813C0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:41 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j18so8597935wra.2
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=95FmrA4H8nqvZ9OQeG4Dh0kLkA1VLnSc6nqAgxvFvvI=;
        b=EoUJpT8Ga4avxDBGtLG/lczbeZ6TDZWiJZvhwqIBR3X4yrmdezip7jue2pnntjgHP6
         KTMHRkLFLIwq8UI8n87IZrSW9Vtl+i8w+xt66m8rd2fA18WhnmFFUGFtRG4K/EqxODdz
         IfoZ7gqjrjnuC7aBSHB6fqf7ErxYrLIXqhS3CQzKyRFOlzOOMemybm02rND40EmlzkHl
         D2rYyct5ZQl94ZKgoJ0HbComLY6kxeWMKrFsdeCPX5UrIvDLlwO3I0ITJmZjjEGxJ8nG
         gSvSifPiASpRP9DAlUAD4P9mQha9avjH1uMqee77AfZm74Y326LVYT33/FuFlvUXfJea
         JHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=95FmrA4H8nqvZ9OQeG4Dh0kLkA1VLnSc6nqAgxvFvvI=;
        b=udUbHe9rhATlmrO7fEho0vdkvEzJ7A8ifM49a00LlFxRdoJWEmW/UmfW6SXYxWLgJG
         sl1eBMhcn0ENS7S2gEXkl2JgsnpdO3fCts+6OuR3HkLJxrDZ/vtAyWFjcEmYzh5a9qbO
         /GYjHcncL8gJnT3RDIfDHnvOrdaIDdWaMZUC9MtpYrJo0FW5biqTkObNXPx8kafn18cT
         Cvof+8EwUXGqXAbx+MQFBEmqZfa9gPR1c43ToB0c3xgGJn6V2sNbRRmDpeirTL/3ruvH
         cIj20PNCFKRSrEOwdZwVWd7si4seiyDx8Lzz28s5uLnsbPzsA26kox0Ms84wY5Xvvlqb
         kgIg==
X-Gm-Message-State: AOAM532D/L6Pv4qy6zBigTy9z20GNmLYO3IHmYMDhVoa86j8ly4ovBmb
        +P9cL+ePFzz5KmLv8De/Jdn6olq73FU=
X-Google-Smtp-Source: ABdhPJyvbO4yONKoyUpdS704mo0DFIqui10+fZomkO4SKovukKKeLVQmdbdpBDQcrMjtIvAKc6DZtg==
X-Received: by 2002:a5d:58e8:: with SMTP id f8mr24534317wrd.102.1617537579970;
        Sun, 04 Apr 2021 04:59:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:39 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 10/35] capget.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:23 +0200
Message-Id: <20210404115847.78166-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/capget.2 | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 6de51b72c..a2d897cc7 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -18,14 +18,17 @@
 capget, capset \- set/get capabilities of thread(s)
 .SH SYNOPSIS
 .nf
-.B #include <sys/capability.h>
+.RB "         /* Definition of " CAP_* " and " \
+_LINUX_CAPABILITY_* " constants */"
+.B #include <linux/capability.h>
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
@@ -40,7 +43,7 @@ The portable interfaces are
 .BR cap_set_proc (3)
 and
 .BR cap_get_proc (3);
-if possible, you should use those interfaces in applications.
+if possible, you should use those interfaces in applications; see NOTES.
 .\"
 .SS Current details
 Now that you have been warned, some current kernel details.
@@ -239,9 +242,6 @@ No such thread.
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
2.31.0

