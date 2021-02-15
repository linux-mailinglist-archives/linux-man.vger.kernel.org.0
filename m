Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A172831BA25
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:18:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhBONR3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbhBONR3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:17:29 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D540FC061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:16:47 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id x4so9316099wmi.3
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/AnTKgpOpMlVNxNh85RjMs9vg0VT+TZh0+S6jG6IsI=;
        b=cmP13mxjPtVN8Hpli6L36F1vDyL1+Kd5koidpkWIg3/v10J6c8E4MfIDEEsmJhO+Te
         aEsKu8sH2BWf/k+APW6pKGEV59R+iFnIl+A5raNvM+F6dsqOCQJRVlpJRBMXq0lsIpsn
         evO0YYAzJFoEvBEPpNjv0kUe7leEDxLO1YdewAtK8uof2bSxT80BrukZX83UrmK0yqc7
         4pGCK/ZkP+UqqxrpO2mBFPK2CaIfdSWeXBnk2QgETj3oA4Lah0s92tzthV4j0Hh7yt85
         Q76UEZMlq5XzfeP49WvE6Dy1SoX+47ddpY2eTD4o+hK/NNspyIOHYRsEvqHeQoVkTR/n
         Y7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/AnTKgpOpMlVNxNh85RjMs9vg0VT+TZh0+S6jG6IsI=;
        b=aCKe2YICdTfrU/OpVcnfHOauqHDHkYysx916Hgnqjo7iGsUKI12tB/WqfkUXqbxqyl
         kAIM7CDB6/XATltKL7Bla8IfjQJqdNERBGG9o2/duQ5eE09D9aGUgAa/NJ5FDyVHreBL
         dlRhtn4+p0k6XUVfTsErQXciDaMR5w4RhPzTY1ooQEatkZNSvkccI5yG56Vj5NUP6zQB
         UARzxWCxbqnnCmHf/XXdjAU6W0idFJtVeY5LmuRsA9gy+HdSkb4qIXB8B391hsnMiHul
         j12xAZW7bcAQCKLJxEXdXQvxM7Wl+YaeYD+MHExOMOfG5RH/HnuqlR1UohMKLOcnPKsy
         MK9w==
X-Gm-Message-State: AOAM533G4UQY/EoWm3jvE4PGOspGHHk9CLTeMILTkJ/G5gZFwcoq/I18
        Kr6yCi+4Mc4N6zNTUZBWnLI=
X-Google-Smtp-Source: ABdhPJzRZ1FzGe6/DjjrSkwnzFjJA3XQ0WrpafuSeYngjlJUtzNu71A3LTQ2fuQMLTVDpZC42FIGDg==
X-Received: by 2002:a1c:f203:: with SMTP id s3mr14319448wmc.152.1613395006655;
        Mon, 15 Feb 2021 05:16:46 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:16:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] socketcall.2: Add note about missing glibc wrapper
Date:   Mon, 15 Feb 2021 14:15:14 +0100
Message-Id: <20210215131522.450666-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

......

.../glibc$ grep_glibc_prototype socketcall
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/socketcall.2 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man2/socketcall.2 b/man2/socketcall.2
index a3012d4c7..d1803d906 100644
--- a/man2/socketcall.2
+++ b/man2/socketcall.2
@@ -31,6 +31,9 @@ socketcall \- socket system calls
 .PP
 .BI "int socketcall(int " call ", unsigned long *" args );
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR socketcall ()
 is a common kernel entry point for the socket system calls.
@@ -153,6 +156,9 @@ T}
 This call is specific to Linux, and should not be used in programs
 intended to be portable.
 .SH NOTES
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
+.PP
 On a some architectures\(emfor example, x86-64 and ARM\(emthere is no
 .BR socketcall ()
 system call; instead
-- 
2.30.0

