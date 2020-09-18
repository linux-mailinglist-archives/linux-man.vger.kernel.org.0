Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1079226FB73
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 13:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726130AbgIRL3J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 07:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726434AbgIRL2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 07:28:30 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B98C061756
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:25 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y15so5191896wmi.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NVNgTzoHX/BW0UXxRHn/k3P35d6msVWbommHDyYdhV8=;
        b=EjYyw3ib3QHg83GKfvF8TWKgbEcLtiIb/d3pA97XIO693hb08FDK89oTUh9Hh0ij2Q
         QBBbGm8THGbvUDfHJYRQKDqxaxcRSckTLZvr7/FLbAQ+HPX250z4v9oWWiqlV4KootYj
         +SIoykRnm92EmeB1PaAJr78xzdYTKpUftNus8iIBriX1zRYGrhdWrtIkp9e79NulSf4E
         i6FBwTiQBa1NAZ7eVXpJe3W9PNuws1w4/P4GJaVIR23VP4fueGfeTbccnLf8E9vaASfz
         ioHe5K4Zr2TWiLoiL2Z70T1Qdx9rL8uvoUkssNb/ZNYfDAHcEvkIYCsFK5ZdVj/LAsM9
         D4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NVNgTzoHX/BW0UXxRHn/k3P35d6msVWbommHDyYdhV8=;
        b=cdeOks0YMNA0SeE7UWli9tq4oEYMUSUwLJ6nGXNFr1r+DGyTa8kzIzS4oFbsBBTjlV
         1xfaNlfDq6Yq/yv1EIowE2Xep8uda9vYyh9S6z3hKHmybbg4t0mbgshXc/Sbp2yUZiRL
         u5lPa2O3G472zQNKH0kKzKRCgHrg9EKtnRKLSnhYMPjB9Y8LIcDi5xDgjBcM6oadNCa8
         /hw1rBC7R2fUlkAPohP0bcNayUszWoUbfOOrqCNm6TzKS7NVlhIQEiLh2JFtqde70SVk
         SjTvplCkPLgGDpwvTL2HeAiYJdD7W3Az3fNejg4qp9n77BNnK/aX7wXa0i4w01k+itWz
         /sYg==
X-Gm-Message-State: AOAM533lVt3tsQ/BiQRrrEJbRQHjof5+GETRXdYNmUsSlAJ2SeLu09iw
        CxF28KhtvKmOdE6NKtEd3es=
X-Google-Smtp-Source: ABdhPJySgXr8aLpd1vmZXm5y0E1ytVOqwccMDestgF7vSwhH/TIc9x0HOxQMIqqK7gAdxr9nm5/gpg==
X-Received: by 2002:a1c:7907:: with SMTP id l7mr14885886wme.89.1600428504185;
        Fri, 18 Sep 2020 04:28:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s26sm4504962wmh.44.2020.09.18.04.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 04:28:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: Document size_t
Date:   Fri, 18 Sep 2020 13:27:55 +0200
Message-Id: <20200918112755.21428-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 99 insertions(+), 4 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 84fea85b9..041e7e243 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -92,6 +92,101 @@ See also:
 .\".I siginfo_t
 .\"type in this page.
 .TP
+.I size_t
+.IP
+Include:
+.I <stddef.h>
+or
+.IR <sys/types.h> ;
+or
+.I <aio.h>
+or
+.I <glob.h>
+or
+.I <grp.h>
+or
+.I <iconv.h>
+or
+.I <monetary.h>
+or
+.I <mqueue.h>
+or
+.I <ndbm.h>
+or
+.I <pwd.h>
+or
+.I <regex.h>
+or
+.I <search.h>
+or
+.I <signal.h>
+or
+.I <stdio.h>
+or
+.I <stdlib.h>
+or
+.I <string.h>
+or
+.I <strings.h>
+or
+.I <sys/mman.h>
+or
+.I <sys/msg.h>
+or
+.I <sys/sem.h>
+or
+.I <sys/shm.h>
+or
+.I <sys/socket.h>
+or
+.I <sys/uio.h>
+or
+.I <time.h>
+or
+.I <unistd.h>
+or
+.I <wchar.h>
+or
+.IR <wordexp.h> .
+.IP
+Used for a count of bytes.  It is the result of the
+.I sizeof
+operator.
+According to the C language standard,
+it shall be an unsigned integer type
+capable of storing values in the range [0,
+.BR SIZE_MAX ].
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+Notes:
+.IR <aio.h> ,
+.IR <glob.h> ,
+.IR <grp.h> ,
+.IR <iconv.h> ,
+.IR <mqueue.h> ,
+.IR <pwd.h> ,
+.IR <signal.h>
+and
+.IR <sys/socket.h>
+define
+.I size_t
+since POSIX.1-2008.
+.IP
+See also:
+.BR fread (3),
+.BR fwrite (3),
+.BR memcmp (3),
+.BR memcpy (3),
+.BR memset (3),
+.BR offsetof (3)
+.IP
+See also the
+.I ssize_t
+and
+.I ptrdiff_t
+types in this page.
+.TP
 .I ssize_t
 .IP
 Include:
@@ -127,10 +222,10 @@ See also:
 .BR recv (2),
 .BR send (2),
 .BR write (2)
-.\".IP	FIXME: When size_t is added, uncomment
-.\"See also the
-.\".I size_t
-.\"type in this page.
+.IP
+See also the
+.I size_t
+type in this page.
 .TP
 .I suseconds_t
 .IP
-- 
2.28.0

