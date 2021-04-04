Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEDB93537E5
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbhDDL7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbhDDL7m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:42 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94657C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x16so8597155wrn.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=05/KP7vJhvkE2Vr+ZV4ZGftwCp2ksqL5BUThcW4yjm8=;
        b=oTHfTNjCPEl4ANBJtOnge1e2MruVYzkpAEhKZ1rNGpC8fb1VsEHbt9jdA8yLwZ79za
         v0/hB7LHB9XSPQDKIKEPIJidsy3MKqTZEYvr9c8h/83IQ/pg0DHBB8272xi3YPq4DK02
         eSIAKspOaOexIgJEzYWfeJsGpEW18gTRNTC1a7l+z9eppG8gYB7sxaL5t/1tEvJXPpOJ
         AsNpYakLitYgZadcLHdXxTYyeaLXjg/+iJH9+r8h7oNz8X3AynRZshVKbpI8e+VM+iwL
         j0mXcMhFTrWvzOJ+jNup19YUKfNSU8ac1HPX0D6MvRD3YULEVcjdWGyvuYf/azbNOFCl
         aeSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05/KP7vJhvkE2Vr+ZV4ZGftwCp2ksqL5BUThcW4yjm8=;
        b=lUqr5iwjiTOlymARmTSKPkFLJKFbu0ecJz/7cDlpXKaPm/tk81C93OCTYNTjjfgeRN
         r2N/ScH9HsYxOfWCqt4lzSaGBVqcVxBDzXjqsSX7JATU7SeyFT+nlMrwildsZmWhbsC9
         Cxek92vxyBIMkyZN8x3tCHov35eNSUAGKCkBE5ubuoFNIwVoch/qZhzMY0qzbyV348Ka
         FrFpFEdo+P2p3pINQMmZ0z89DknX8aeYZC4hhDyl4HeZGTx9qQGASh22gur2JkX8I3IW
         QXbUJKhnRuAanA83Lr/5Ns9o9D4cLh3HH6Tb9POyCnMCNicKYSygESW8ADWiUxfuza7G
         cbJQ==
X-Gm-Message-State: AOAM531OdS4w/CFjOLevssd7Odz2g9MF6TTwyLRj2aEisYZ6JZB+QDkl
        TMxV2Rm1rs5k2dwAYB3diF8=
X-Google-Smtp-Source: ABdhPJxy5rISy9sztUqf6n9fU87Z4VMV+h82xLJFBoIQwRTEIu27vfg3EaDM5XwW0sFXavfbiVIbsQ==
X-Received: by 2002:a5d:6b50:: with SMTP id x16mr23941507wrw.379.1617537576460;
        Sun, 04 Apr 2021 04:59:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 05/35] access.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:18 +0200
Message-Id: <20210404115847.78166-6-alx.manpages@gmail.com>
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
 man2/access.2 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man2/access.2 b/man2/access.2
index 4a6e28db3..f24a73161 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -49,15 +49,20 @@ access, faccessat, faccessat2 \- check user's permissions for a file
 .PP
 .BI "int access(const char *" pathname ", int " mode );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int faccessat(int " dirfd ", const char *" pathname ", int " \
 mode ", int " flags );
                 /* But see C library/kernel differences, below */
 .PP
-.BI "int faccessat2(int " dirfd ", const char *" pathname ", int " \
-mode ", int " flags );
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_faccessat2,"
+.BI "            int " dirfd ", const char *" pathname ", int " mode \
+", int " flags );
 .fi
 .PP
 .RS -4
-- 
2.31.0

