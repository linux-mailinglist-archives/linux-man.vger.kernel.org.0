Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E840B33A050
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234181AbhCMT0Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234010AbhCMTZx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:53 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C78C061764;
        Sat, 13 Mar 2021 11:25:52 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so17104416wmj.1;
        Sat, 13 Mar 2021 11:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z3NNryk1ci9eYbs78Jt/UvIKKs9jNRVOVbWS8ChqMqc=;
        b=POcK3lgqwMu0sbFfmztkXz639fflSScfGSLs364lwOUa7vg2+C0fnchRbGvX0RDVfY
         GUG07nOLUxeYSWxqWG/mjdXLWnoK/exyRfmSRNAefiHHs34OnTZI9orfeClRGSFWmYtm
         2tMQ7aT8evjuZqbAzgNTQPz8WNHyT8e0Ze7z+bfXfJaltXJtWuXlj23Kmm1lR+UPPA0V
         6EVZ8R9o7iD5vqUoSejMZWAN2pGiO9KavVx84Cy77F2YXKd5z2aNhh8m756qtxL8Oyhu
         4Xkm92CGWr8qzuyC9xZ2q9mKZFBybU1HSLVAZlOH5Ov3tdzIpas5i3Z9qMe0rzQi4i1q
         QPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z3NNryk1ci9eYbs78Jt/UvIKKs9jNRVOVbWS8ChqMqc=;
        b=U6Tih8ojAlziKX5ljl/XfSqtgBLIt5fpCQv6IghgCKX5TzITI/NN8I7dUI7PJnVNw0
         0EhMANOlBBGnwyFvKeyIVBlueEBuVORsougsLdOAv8LAmxfT/Vtv7zbaIoSjaCtp4N7E
         trc2WQZJSdACP7pdiuSftSWIfUElOrV8tTHQqGZZL5VxRboVmSMa7OyRGYeJ2iMwhGF9
         v05fHttrweLqEQT89A8DIPpERinZ0xgg9dSQj79l0Pv6HcdCVRZ876pfsiDYk9aTIVL/
         BsgaPbGh8fRIQ/A8xWoS/ouqY4WZeR9PQExzTsRe8vNMhKY70XAaq1bUGh01FRmh+ctn
         Qgkg==
X-Gm-Message-State: AOAM532NpwmS73XFoewK5IWInvS+XxH/tMZ3vE7M/aTB8dCMIHXGcB2u
        E2hQ+qV6NWpDRFUd0u3v+k0=
X-Google-Smtp-Source: ABdhPJx8XH+GI14ambLJs44HFKtFSLjhMYB43uahxuH3zsK3nJ3aAR44vwc7rLp3W9uyMvAta7r7PA==
X-Received: by 2002:a1c:1bc7:: with SMTP id b190mr19148407wmb.115.1615663551362;
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 03/17] arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:13 +0100
Message-Id: <20210313192526.350200-4-alx.manpages@gmail.com>
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
 man2/arch_prctl.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index f9a9dc39d..8706cd1ec 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -27,15 +27,14 @@
 arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
-.B #include <asm/prctl.h>
+.BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
 .B #include <sys/prctl.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int arch_prctl(int " code ", unsigned long " addr );
-.BI "int arch_prctl(int " code ", unsigned long *" addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
+.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR arch_prctl ()
 sets architecture-specific process or thread state.
@@ -177,9 +176,6 @@ and
 in the same thread is dangerous, as they may overwrite each other's
 TLS entries.
 .PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 .I FS
 may be already used by the threading library.
 Programs that use
-- 
2.30.2

