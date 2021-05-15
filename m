Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7ACA3817C0
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 12:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233046AbhEOKt3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 06:49:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233187AbhEOKtZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 06:49:25 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25330C061756
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 03:48:12 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so956811wmq.0
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 03:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Wnuo0WLr3hYb4TciSQsuc+2fNpadD1fmSFRfzqKzkKk=;
        b=oJ2p5qHKXZf6r/miVH7qmcLV1eK3o2MAkAlZ9J9+qrSQxLWoyitEM9gBjiy2/7qc62
         lYM+M+VLmFtwp+bj1BLmjAWNBVPNbtFFjWkWUHto4XTChGd0REXXz7+kKfKuTWKDLdBy
         +alRuGsbudKI4X4o8Xwb1ja+uDAHgqYaH6JI0GrejS1xpHwHUppSFnZCsKVMycPLlWWn
         qvr/HqBPWwD8CRBz++OZ88Zc0COyyQQpTc4T2WxUyw2RdnrAouqRbfC0nhsls7vlthcN
         N4QZ4ws2x6Kq+gBV5wHK5X5g8Ihsm+L/orPfl5V+AThILdEUd7ILbLYEhaVR3YjNVlm6
         20CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Wnuo0WLr3hYb4TciSQsuc+2fNpadD1fmSFRfzqKzkKk=;
        b=uU02pRIWlfp059Yjx76naPiNZJLRMyfunl+M9mrdPlQF0YdAAB7l9OYHgHwCx+QWlZ
         xqn/fqmgQi6Y1c0amF615WUWu+IYQF/18VUqrkrgKB71IMU8aEk2p1xxvWPA45vwaq7K
         LaVyLW9aTvmOap6nB+pJaSS9FsmWooJwogHqvikri9fdjmdiLemzt/rB9MsKSm+fvnLH
         Yu032eFNalPY9HXW0YzgQjVHcQcuFEKcBIngaZglBEThtyoZ+lRJuNx1vs7FESQYAOQf
         0IbNhrzzZyvlDhdPRByUlcgjx+ZPy8NIqYGRuicKdftN9IoZSJ9YRDayC9hEExiDKeL7
         4QrQ==
X-Gm-Message-State: AOAM5312Trbco8OvXUFO/Rfdd1jzQLqOZSt0MFiJ86bDQqMnqKh+2Z21
        vdInzBk05tacFGFWUHsw6sYNVA3UklcrWQ==
X-Google-Smtp-Source: ABdhPJxYCk7ntzqaVOFDG8BxLvrvXj0ATNhbOnaUC6eELeCTm5NObUn2Gv8zneIaV3NZnENbt6GL1Q==
X-Received: by 2002:a7b:cf09:: with SMTP id l9mr11106315wmg.184.1621075690854;
        Sat, 15 May 2021 03:48:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id t11sm9220632wrz.57.2021.05.15.03.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 03:48:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, jwakely@redhat.com
Subject: [PATCH v4] getaddrinfo.3: Fix includes
Date:   Sat, 15 May 2021 12:48:08 +0200
Message-Id: <20210515104808.54337-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514132857.18104-1-alx.manpages@gmail.com>
References: <20210514132857.18104-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Remove unnecessary includes
- Add a comment about why each include is needed
- Sort alphabetically

All this has been done using iwyu(1):

......

$ iwyu getaddrinfo_server.c 2>&1 \
  | sed -e '\,^#,s, //,/*,' -e '\,^#,s,$, */,' \
  | sed '/^#/s/\w*\.\.\./.../';

getaddrinfo_server.c should add these lines:

getaddrinfo_server.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_server.c:
 #include <netdb.h>      /* for addrinfo, gai_strerror, freeaddrinfo, ... */
 #include <stdio.h>      /* for fprintf, NULL, stderr, printf */
 #include <stdlib.h>     /* for exit, EXIT_FAILURE */
 #include <string.h>     /* for memset */
 #include <sys/socket.h> /* for bind, recvfrom, sendto, socket, ... */
 #include <unistd.h>     /* for close, ssize_t */
$ iwyu getaddrinfo_client.c 2>&1 \
  | sed -e '\,^#,s,//,/*,' -e '\,^#,s,$, */,' \
  | sed '/^#/s/\w*\.\.\./.../';

getaddrinfo_client.c should add these lines:

getaddrinfo_client.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_client.c:
 #include <netdb.h>      /* for addrinfo, freeaddrinfo, gai_strerror, ... */
 #include <stdio.h>      /* for fprintf, stderr, perror, printf, NULL, size_t */
 #include <stdlib.h>     /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
 #include <string.h>     /* for memset, strlen */
 #include <sys/socket.h> /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
 #include <unistd.h>     /* for close, read, write, ssize_t */
$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: fix commit msg
v3: ffix commit msg (starting # may be removed by git)
v4: ffix (fit into 80-col right margin)

 man3/getaddrinfo.3 | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 35071b733..b51a634b3 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -660,13 +660,12 @@ The programs are an echo server and client for UDP datagrams.
 .SS Server program
 \&
 .EX
-#include <sys/types.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <string.h>
-#include <sys/socket.h>
-#include <netdb.h>
+#include <netdb.h>      /* addrinfo, gai_strerror, freeaddrinfo, ... */
+#include <stdio.h>      /* fprintf, NULL, stderr, printf */
+#include <stdlib.h>     /* exit, EXIT_FAILURE */
+#include <string.h>     /* memset */
+#include <sys/socket.h> /* bind, recvfrom, sendto, socket, ... */
+#include <unistd.h>     /* close, ssize_t */
 
 #define BUF_SIZE 500
 
@@ -755,13 +754,12 @@ main(int argc, char *argv[])
 .SS Client program
 \&
 .EX
-#include <sys/types.h>
-#include <sys/socket.h>
-#include <netdb.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <string.h>
+#include <netdb.h>      /* addrinfo, freeaddrinfo, gai_strerror, ... */
+#include <stdio.h>      /* fprintf, stderr, perror, printf, ... */
+#include <stdlib.h>     /* exit, EXIT_FAILURE, EXIT_SUCCESS */
+#include <string.h>     /* memset, strlen */
+#include <sys/socket.h> /* connect, socket, AF_UNSPEC, SOCK_DGRAM */
+#include <unistd.h>     /* close, read, write, ssize_t */
 
 #define BUF_SIZE 500
 
-- 
2.31.1

