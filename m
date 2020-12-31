Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4522E8039
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 14:37:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbgLaNgo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 08:36:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726071AbgLaNgo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 08:36:44 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8106CC061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 05:36:03 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id a6so7340166wmc.2
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 05:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eZjEipxMeZnR8En+teSVEbrh8bU7qVScU/4ELS55/LQ=;
        b=MdiUmbmCnGPRPggtxn2vmBNlKhs4z0vX7WcFgupqynnf4ClcdhfIa9jSbCx/iPwN+u
         4ojxahz2FHjPaYtQ5Ji82Aq8wdxzQizvlPEEs8jkijPZts50jTqsYutJnR7hBaYGWOnY
         Nf4VZWBAdi5+u40FvsrT/KxHw6/b7DKBul5eQhyVHuyMcC+KBp9w6dVLUpsxfnYprUwN
         1qrEBe6U5eL4v3/D1mZHd20PcSZSRdu2v4PiZESSpJx0kTbQMW2xR02MxSEjFUrWLU5K
         lvTZ754lALQxadYF6kR3eNbmXlyGSTyW0qUAuzStXdVrZ2R7OIlrccH8yTAIDl/pw5W5
         E/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eZjEipxMeZnR8En+teSVEbrh8bU7qVScU/4ELS55/LQ=;
        b=eMyQWFR6E2mP/hQHVJkp1Z+V38lyaQjtMiEtH/HMYFvaxRo364Pqe0I+4Ncfm2O5+C
         4fic/GFkNu926rVCOL3SvMev018QDXlpRSYfaIOd4Z+7JE/1eLhvl2TQqQUD6XIwUaVm
         U1cetKKEKyTEyeylGGSWFpuY+ZugyVdIQEQN1CfHYdLZtqPWh8s8vJHV4c+Utw8soPT8
         G4nY3vLID3B4eNIyK+v9CEwUQ3XyF5Tw7PTGyZ+lQ1597vYrmwQL1OiHV75A3XM9X35J
         WT9WrYEZAIGja30q4lUn1qWIipj9MdyqQWpim6gEOeGKEJ8HXb4erSZSeZ9NESEzuul9
         eDxg==
X-Gm-Message-State: AOAM530ZwK5qyVUrb2x0Ry2/USFH4zWdjHRZtaZQ/nYuqyRweDb2Z5tD
        HrUT9D7kGhcfiVH1JEKM7vgX2B7My8w=
X-Google-Smtp-Source: ABdhPJw3M72cMaf/BJV9NFA31+NHnc9wi6jJebBleRQiWgaZQSrJ7Rt/k1U/Y8Ot/SX5e2ATUKtq2Q==
X-Received: by 2002:a7b:ce0f:: with SMTP id m15mr11763080wmc.56.1609421762185;
        Thu, 31 Dec 2020 05:36:02 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id u26sm12533233wmm.24.2020.12.31.05.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 05:36:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] copy_file_range.2: Document glibc wrapper instead of kernel syscall
Date:   Thu, 31 Dec 2020 14:24:08 +0100
Message-Id: <20201231132407.160590-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
References: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'off64_t' instead of 'loff_t'.

......

Glibc prototype:

$ syscall='copy_file_range';
$ ret='ssize_t';
$ find glibc/ -type f -name '*.h' \
  |xargs pcregrep -Mn "(?s)^[\w\s]*${ret}\s*${syscall}\s*\(.*?;";
glibc/posix/unistd.h:1121:
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
			 int __outfd, __off64_t *__poutoff,
			 size_t __length, unsigned int __flags);

......

Testing example:

$ man ./man2/copy_file_range.2 \
  |sed -n '/^EXAMPLES/,/^SEE ALSO/p' \
  |head -n -1 \
  |tail -n +2 \
  >copy_file_range.c
$ gcc -Wall -Wextra -Werror -pedantic
copy_file_range.c -o copy_file_range
$ ./copy_file_range 
Usage: ./copy_file_range <source> <destination>
$ tee a >/dev/null
asdf
$ tee b >/dev/null
qwerty
zxcvbn
$ ./copy_file_range a b
$ cat a
asdf
$ cat b
asdf


Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/copy_file_range.2 | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index 1692aa44a..611a39b80 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -30,8 +30,8 @@ copy_file_range \- Copy a range of data from one file to another
 .B #define _GNU_SOURCE
 .B #include <unistd.h>
 .PP
-.BI "ssize_t copy_file_range(int " fd_in ", loff_t *" off_in ,
-.BI "                        int " fd_out ", loff_t *" off_out ,
+.BI "ssize_t copy_file_range(int " fd_in ", off64_t *" off_in ,
+.BI "                        int " fd_out ", off64_t *" off_out ,
 .BI "                        size_t " len ", unsigned int " flags );
 .fi
 .SH DESCRIPTION
@@ -233,26 +233,14 @@ or server-side-copy (in the case of NFS).
 #include <stdio.h>
 #include <stdlib.h>
 #include <sys/stat.h>
-#include <sys/syscall.h>
 #include <unistd.h>
 
-/* On versions of glibc before 2.27, we must invoke copy_file_range()
-   using syscall(2) */
-
-static loff_t
-copy_file_range(int fd_in, loff_t *off_in, int fd_out,
-                loff_t *off_out, size_t len, unsigned int flags)
-{
-    return syscall(__NR_copy_file_range, fd_in, off_in, fd_out,
-                   off_out, len, flags);
-}
-
 int
 main(int argc, char **argv)
 {
     int fd_in, fd_out;
     struct stat stat;
-    loff_t len, ret;
+    off64_t len, ret;
 
     if (argc != 3) {
         fprintf(stderr, "Usage: %s <source> <destination>\en", argv[0]);
-- 
2.29.2

