Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00FB731BA31
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbhBONTn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:19:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230188AbhBONTm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:19:42 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4862FC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:19:01 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id v14so8833623wro.7
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MovIfO2wc4E9X/D/UXAG0I2YAc/IREKXAPP2t4uhwRc=;
        b=P7ZuU2ebBhn7TT/B7GgpBV1TkM35y15gAulyiUhknyoW49hOHaoe4drkuJ46iqJYA2
         FSWlqJiEGcTIpKIm54tb4hP0Vmvo8xo94qeWRw0+lajVOnwgDYxUq4AtgoRO4+QlSDOk
         3hVRgkIPjqVV6cz4yHuozvpTuspoWpe+9H3VykR1oevcSuMe8JBSvs+WQQfOPefvOOKm
         6txt7HK0R/YnBkJbfCF5sP2P0uuwlk4pjbZwWY2KfJUmFwREJZEyJDqxFVmjnY8O9jhh
         5imWrnl/U64kKeS1zSU2htaYvU0Fxtfoe/Vmvdv9NBqFyVQOs3RMNoBpBJpk7YeqXEN5
         qVBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MovIfO2wc4E9X/D/UXAG0I2YAc/IREKXAPP2t4uhwRc=;
        b=pUEqLStOkrdwkJMXVHkAnZiva0gqlyyHhKdti6NBcHQ3rhyKKlHfgPqP0J5Wi1ZuCV
         fWPCcUowN71xBZecfG8CBm/wql15WBXUE8/VvU4WVKcehJzGsg/MdGEoSCtRaCokwDZR
         FX+ZAYIMVCawJ37EFlzJJNUo0HRlqyQ0eFbHrKoe6dWdun+ul1ad5as/iAWQpHqxSUaS
         gYxj15HUcRl6FL6f7+hPJ8N3nAvFKo1KdtL7D1lT9q66VenXpiBY4TtrvCHZvceSCB+8
         ei10y6rTH2KxHb3IHpxrfXfltdK537jo/QR7D+qC41aWXcaeTPFk6WfvvwM2nVTR3ovr
         IoIw==
X-Gm-Message-State: AOAM532pHk1dugLLSY7tdME6Qqe7McmWzVMaLwIyB7D2sWQg/xVhqQ8/
        gH6DQzWgvfMSdBrMVjL/LGQ=
X-Google-Smtp-Source: ABdhPJwCChPase/nlFKAyAQ0ATI2G3Go1sGN9qeIGkI0KtVw0oqdD3vxNXtAjgtLNllXz7QAilZuaA==
X-Received: by 2002:adf:bc45:: with SMTP id a5mr18856449wrh.290.1613395140085;
        Mon, 15 Feb 2021 05:19:00 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:18:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] vmsplice.2: SYNOPSIS: Fix prototype parameter type
Date:   Mon, 15 Feb 2021 14:15:26 +0100
Message-Id: <20210215131522.450666-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The 3rd parameter of vmsplice() uses 'size_t' in glibc.  Fix it.

......

.../gnu/glibc$ grep_glibc_prototype vmsplice
sysdeps/unix/sysv/linux/bits/fcntl-linux.h:391:
extern __ssize_t vmsplice (int __fdout, const struct iovec *__iov,
			   size_t __count, unsigned int __flags);
.../gnu/glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/vmsplice.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 649fe0ca7..714ad565f 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -33,7 +33,7 @@ vmsplice \- splice user pages to/from a pipe
 .B #include <sys/uio.h>
 .PP
 .BI "ssize_t vmsplice(int " fd ", const struct iovec *" iov ,
-.BI "                 unsigned long " nr_segs ", unsigned int " flags );
+.BI "                 size_t " nr_segs ", unsigned int " flags );
 .fi
 .\" Return type was long before glibc 2.7
 .SH DESCRIPTION
-- 
2.30.0

