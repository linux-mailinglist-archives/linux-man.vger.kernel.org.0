Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5B443778DE
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbhEIVp2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbhEIVpZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:25 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBC44C06138B
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:16 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n205so8083441wmf.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1yoyDo5N7aXPH1cAOLXOgCpLZ5adysm2yK29VgcyWMA=;
        b=OcfOi1yQ+SVppbkCmp3QiaMEoqLwNkoLKUNLnKB0ebD5pTvOOQ8wlUL/o3Kiqm6SgE
         +o8Z6oPPV/1dD0kWzzJKUfTCVti9fTt2HYPUoDlmB5rnvBmIl3iXOFsUxWkhrXc9xitb
         RSj0/U0O3LGC4GQXzt6qPYZgApKZBiR1NLUlPRoyu2S1BqKc5ilApjfZtvegSfpFN+ef
         x8DHNtypyQzZEQc5tYcc9a7WAcrM3Z0uj384JYe0gLK8Kq3fb2V2RimdVnyRHQwDghWF
         NQXq7dWW0ySJI4LyiNR86JcjZLPnSDwnkQz5uazljlBrHAmr0pucPVT8bOB7VIj9QiTl
         HfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1yoyDo5N7aXPH1cAOLXOgCpLZ5adysm2yK29VgcyWMA=;
        b=FGjL8LatR6jAJinIvzlHjYu+pdf6A7fUlU+v3ArIxDnNr+a/3vmdDzOLVxD/rFnqqJ
         ly7GnC9rOCKG5MZnTNezoo2qXmAFZGAG1cJh1Cxp2LxjYW9FTuZrlAgSX6vuzbfLTqte
         lkipLsjHOR8QKw8ix1oyzqr2lKlx59IgOh6DyefQzpe4C7bV7zQnxm0TKdZmboVd8FkJ
         ftKJT13wYNeeQz9Dk2w58Qhh7MgX3zuWNIalN0bkV18bKF6Fc3emOQhIf9/m+viGIcqg
         9ICYN6rZG+F9cdJ6MuaGgFoL/m4FsBXXInP4VR5/iypNbhh7AsTwZLYF620PMCT0Lisa
         amLw==
X-Gm-Message-State: AOAM531jmFdrcI/CLaKfcZNSeSiJiSIu1d6JThjsxTuU7sAaSq5Azk4o
        DJm9BsmBGnZmxSioyYQlnQo=
X-Google-Smtp-Source: ABdhPJwGs6sdRANGmDCPplJ5yXHuN+cg+F8KEfwqaOK3LYWcmjHmewrbePE6WJmL1G5YvIc+vKEK3Q==
X-Received: by 2002:a1c:2541:: with SMTP id l62mr22498656wml.188.1620596655592;
        Sun, 09 May 2021 14:44:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] epoll_wait.2: Move subsection to NOTES from BUGS
Date:   Sun,  9 May 2021 23:39:22 +0200
Message-Id: <20210509213930.94120-28-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'C library/kernel differences' was added to BUGS incorrectly.
Fix it

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/epoll_wait.2 | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index f9b5749df..69c79d6ec 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -285,18 +285,6 @@ instance whose interest list is currently empty
 or removed from the interest in another thread).
 The call will block until some file descriptor is later added to the
 interest list (in another thread) and that file descriptor becomes ready.
-.SH BUGS
-In kernels before 2.6.37, a
-.I timeout
-value larger than approximately
-.I LONG_MAX / HZ
-milliseconds is treated as \-1 (i.e., infinity).
-Thus, for example, on a system where
-.I sizeof(long)
-is 4 and the kernel
-.I HZ
-value is 1000,
-this means that timeouts greater than 35.79 minutes are treated as infinity.
 .SS C library/kernel differences
 The raw
 .BR epoll_pwait ()
@@ -312,6 +300,18 @@ The glibc
 wrapper function specifies this argument as a fixed value
 (equal to
 .IR sizeof(sigset_t) ).
+.SH BUGS
+In kernels before 2.6.37, a
+.I timeout
+value larger than approximately
+.I LONG_MAX / HZ
+milliseconds is treated as \-1 (i.e., infinity).
+Thus, for example, on a system where
+.I sizeof(long)
+is 4 and the kernel
+.I HZ
+value is 1000,
+this means that timeouts greater than 35.79 minutes are treated as infinity.
 .SH SEE ALSO
 .BR epoll_create (2),
 .BR epoll_ctl (2),
-- 
2.31.1

