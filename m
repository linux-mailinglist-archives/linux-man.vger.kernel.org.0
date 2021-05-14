Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B116380A52
	for <lists+linux-man@lfdr.de>; Fri, 14 May 2021 15:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231264AbhENNVU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 May 2021 09:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230075AbhENNVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 May 2021 09:21:19 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76CD6C061574
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:20:07 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so1440796wmq.5
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x+gj6nynLK8poKhjnpYNwfx28wZPfMuaJf4J8Awezoo=;
        b=KYo6jBvwRffuHfp+ihVMwDl4Q9txL1yls7BDkloXU4p4dawr2AfJhJbFFmQFmoogXN
         Mki9XWmK+qckbfhpV97FO93JaFn9zmIYByXa4rNTUfQ4dqMTElwuvqEGQN6D8OoSVR31
         pei46khHiKIvMoVdVO/x2LOsuNhaof1ttJVtyyM4G9tytd2107m/bpLKPd/T6Mc01jh2
         3GUqjAH277F+dGPJF0sWOsY7CYiMtlA/8WjeYHlfGzeuL5e59Rc7EE+dSox0rIEi+nN/
         NzSYPhraccwHDPPA4xCGGFMB0Gnkjpsmk8Sfcg0yfKEoPOYK4VP3Ka3xmeldqcG89gMe
         /Amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x+gj6nynLK8poKhjnpYNwfx28wZPfMuaJf4J8Awezoo=;
        b=F4eLMTA14zQatHCwJuzcOBx/9aLtSfHnGwag+SSlHSBRRgmsN8MseAb4M5BqtwICOk
         wHkLS19jo6RV7zBOG5/+BJQSuCS09FTrxEX+3wANVLxkZIV7esJBeMR3a/kCcp+joW0h
         vw1mFCCL1BYIpdkNPoAmz4MbLO8tugkWdbjoskWkHZyGWFyKTtSbxvZtnoYhbOcuWZbk
         l7qzdD8XWRWAn/0dGt6wunEfhdZREAMuUgryKIfKVFI51UlfqNEt9eI6FWZhdpj+2XzU
         ljABQE3rQI4IECYabodPjrB7y5tbv6qV+DCeCWa8UvN3MaQRvYxLYO7NogkMFWekX3h3
         jLXg==
X-Gm-Message-State: AOAM5333JhjM/n+xbTeTixK+NICY/GI+224fEV6yj91XxeQvA5mYrlUP
        c1FLWtiSTkA1sB6A98OonPQ=
X-Google-Smtp-Source: ABdhPJwfoAy58B/NxPFE6ICnJU8ZU5Q1gFSqp2D8/632wgbesmyj+wiT78/mif0ro6UbcrbWGXmIqw==
X-Received: by 2002:a1c:7711:: with SMTP id t17mr50524798wmi.6.1620998406222;
        Fri, 14 May 2021 06:20:06 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id w25sm5311336wmk.25.2021.05.14.06.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 06:20:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, jwakely@redhat.com
Subject: [PATCH] getaddrinfo.3: Fix includes
Date:   Fri, 14 May 2021 15:11:58 +0200
Message-Id: <20210514131158.16904-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Remove unnecessary includes
- Add a comment about why each include is needed
- Sort alphabetically

All this has been done using iwyu(1):

$ iwyu getaddrinfo_server.c 2>&1 \
  | sed -e '\,^#,s,//,/*,' -e '\,^#,s,$, */,' \
  | sed '/^#/s/\w*\.\.\./.../';

getaddrinfo_client.c should add these lines:

getaddrinfo_client.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_client.c:
 #include <netdb.h>       /* for addrinfo, freeaddrinfo, gai_strerror, ... */
 #include <stdio.h>       /* for fprintf, stderr, perror, printf, NULL, size_t */
 #include <stdlib.h>      /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
 #include <string.h>      /* for memset, strlen */
 #include <sys/socket.h>  /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
 #include <unistd.h>      /* for close, read, write, ssize_t */
$ iwyu getaddrinfo_client.c 2>&1 \
  | sed -e '\,^#,s,//,/*,' -e '\,^#,s,$, */,' \
  | sed '/^#/s/\w*\.\.\./.../';

getaddrinfo_client.c should add these lines:

getaddrinfo_client.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_client.c:
 #include <netdb.h>       /* for addrinfo, freeaddrinfo, gai_strerror, ... */
 #include <stdio.h>       /* for fprintf, stderr, perror, printf, NULL, size_t */
 #include <stdlib.h>      /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
 #include <string.h>      /* for memset, strlen */
 #include <sys/socket.h>  /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
 #include <unistd.h>      /* for close, read, write, ssize_t */
$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Today I met this tool for checking the includes.  I like its output very
much, so I used it directly (with a few tweaks) to update the includes
in our EXAMPLES.  I kept the comments about why each one is needed,
because I think that info might be useful, but id you prefer, we can
remove it and keep it only in the commit msg.

When we update an example, it will be easier to see if we should remove
an include or add a new one (ideally we would rerun iwyu(1)).

Hi Jonathan,

I CCd you because of the recent discussion in
<https://lore.kernel.org/linux-man/cb10752b-3036-67d3-41c5-b9ef0954f7f9@gmail.com/T/>.
You might find this tool useful :)


Cheers,

Alex


 man3/getaddrinfo.3 | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 35071b733..aa3b81165 100644
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
+#include <netdb.h>       /* for addrinfo, gai_strerror, freeaddrinfo, ... */
+#include <stdio.h>       /* for fprintf, NULL, stderr, printf */
+#include <stdlib.h>      /* for exit, EXIT_FAILURE */
+#include <string.h>      /* for memset */
+#include <sys/socket.h>  /* for bind, recvfrom, sendto, socket, ... */
+#include <unistd.h>      /* for close, ssize_t */
 
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
+#include <netdb.h>       /* for addrinfo, freeaddrinfo, gai_strerror, ... */
+#include <stdio.h>       /* for fprintf, stderr, perror, printf, NULL, size_t */
+#include <stdlib.h>      /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
+#include <string.h>      /* for memset, strlen */
+#include <sys/socket.h>  /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
+#include <unistd.h>      /* for close, read, write, ssize_t */
 
 #define BUF_SIZE 500
 
-- 
2.31.1

