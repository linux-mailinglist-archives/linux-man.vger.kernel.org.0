Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D9D0380A62
	for <lists+linux-man@lfdr.de>; Fri, 14 May 2021 15:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbhENNaS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 May 2021 09:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230075AbhENNaS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 May 2021 09:30:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03D99C061574
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:29:05 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r12so4447837wrp.1
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c0hJKky65bfC05JCm4s1qyCNCNfM/Z3GokwGfA2X4GY=;
        b=KNav0w0wxgf07f+bk6pg6Bwj8t7ECdP8YsXbV1HZVzzi/yYwFg1I8DeEZjJzdO5mGe
         ZL/K08ywt7TwUtR6a92nvmGk2hUTEOgnsApoqxFeuSLvI+jS5MGtTq6forqmAOldpTXt
         PfkomQf1K5xgkSCebu1BBPkC0YJ4B9c8hc5IF7M+T0cldkwRjqAxx+yCjFE0Ih2TRx4F
         ErOxSnfCy2C337feGWm1KOP/aVXsV9yQ5eGFw0AmxVcCQoRhbI+tBgtefTi95i+0MQeX
         tyudg/GbFl0pK7MWfiXTy8iCTv0Y/un1r2To3pqDVtw/4aypcMHnJ3DX9fdMv/MzuYJA
         S2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c0hJKky65bfC05JCm4s1qyCNCNfM/Z3GokwGfA2X4GY=;
        b=JI0A/250U25tx8TGL57CwMyk32jEF6P1byF2tSid+7Q8QbO0H4c9dKpgy92lAYEXcv
         0mlsK9BINcbmRMeAGuO3OH++APUvndfqtQ2quWZ0iiwebyU2N2nz9VA07grWn4FrxmvH
         7P2NiBFHdhGFq0gTAidGmRzV84y4Rw+C1LLC/BQpyWuhAkC0dHOxay3KmW2nJ2vutbeC
         NbEN7aKFoyvMBbrghqWEfDseNWFmMSaQlYjMdTzpAvlzL8ILq1UORHR5Rmd+9NXbsqSr
         2Smhfg2kR4F9GCa5fVM5F1FkIjJAIqMLJJ7m2ziRQJWWuvsm+DDo9ErVWA9Hh31Ow/eu
         cmUA==
X-Gm-Message-State: AOAM5330/uLK3xrF06NoXRSrByVi6J4mEYD39UUSZbVT8LU3932JUaqS
        6kuPlf9mLMBCpKNEkS5FFzI=
X-Google-Smtp-Source: ABdhPJx/sqS4Z2t8jsNz901pCwNCvBbxHX0asa+c4Sp8mY9OOunnYKtxWaQmszS16u0gqhC04bgy5A==
X-Received: by 2002:adf:fc11:: with SMTP id i17mr58953417wrr.368.1620998944605;
        Fri, 14 May 2021 06:29:04 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h14sm3911614wmb.1.2021.05.14.06.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 06:29:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, jwakely@redhat.com
Subject: [PATCH v3] getaddrinfo.3: Fix includes
Date:   Fri, 14 May 2021 15:28:58 +0200
Message-Id: <20210514132857.18104-1-alx.manpages@gmail.com>
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

getaddrinfo_server.c should add these lines:

getaddrinfo_server.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_server.c:
 #include <netdb.h>       /* for addrinfo, gai_strerror, freeaddrinfo, ... */
 #include <stdio.h>       /* for fprintf, NULL, stderr, printf */
 #include <stdlib.h>      /* for exit, EXIT_FAILURE */
 #include <string.h>      /* for memset */
 #include <sys/socket.h>  /* for bind, recvfrom, sendto, socket, ... */
 #include <unistd.h>      /* for close, ssize_t */
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

v2: fix commit msg
v3: ffix commit msg (lines starting with # may be removed by git)

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

