Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97B1727B0B1
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 17:18:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726801AbgI1PR7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 11:17:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726685AbgI1PRs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 11:17:48 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64ABC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 08:17:47 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e16so1809309wrm.2
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 08:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i2vzKStOPe11VmTL/E8/V1l/l5a0YpLJM75ndmNj8II=;
        b=oRD69xCRMgoVdd780USRaLW2GIMEi5cQZdvA2o0D+69YdLTT3ulrgzKLXr0oAUuYhC
         oWg6mT80YuNHXPqaOZ0rg9l70XsvbaLex7PPsOSmaxwnczvPr5yEcfJjcwaJX2/DkaP6
         piggY/48X8JIPvdBaFXTd3EeQVp3DSqU4Z74+Oq3cNjErbRiWF6+S3jJXRbvjBL9+yMP
         rdzEn0JafFOPwNiFCltF0kFw/Voc3OdKGnffKliWU3oWLIcHOvgUVuI3rk5NAwJEGnbU
         stoYG4aOdzS3XMIoo9kOAjDChyJI04x9q8xpR/noBdlQMaHp7DhbLYBCO9WQBmXz5YQk
         7HyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i2vzKStOPe11VmTL/E8/V1l/l5a0YpLJM75ndmNj8II=;
        b=TTNRf4fpjDhSjK/vbKd02kQWjQ/RJJAqZtlOCJi6MzzrJwRHltnhqnhneKWzMO4KPM
         T8YqA2WV0tl1OGE+9Fg5+8X2fHQYhsMFOVfmFCraEbufYwBMFYrglXbj/zcokKrMBUeg
         8MngOPa7iWI8HBOyks6QHJc6Kr8mQ3fPiZbJ3xKwbI7zX1VLUAA3G0x3a7CM+OXyngrb
         BPQtBCK/QjR86+CcC8jE5MEax784XxhJXBPligDJp7tjcL75etNV47RXuzcOo6P9Xp70
         gBCgDt4A+pv0qCnwMLQ33x3G7uaQPvRjhzxBJ6oISDAXeV3iSrpHlsUmHLzYxWebGMHA
         emfA==
X-Gm-Message-State: AOAM531UwJf6mcYVUGKVX1Ck/fEAUA7daKAcWvta5pp8KKUNYUzfADMf
        XI5EMobOtVLnZv/GOcWG2Las3JcHaiY=
X-Google-Smtp-Source: ABdhPJyOlrBLEWKEjvKq1BacO/gXesrdf5MI4U4x2xRtVB1i2o1ixijTYGwWc3n04Dv9/CWiG8+dwQ==
X-Received: by 2002:adf:f701:: with SMTP id r1mr2257906wrp.341.1601306266279;
        Mon, 28 Sep 2020 08:17:46 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u17sm2255509wri.45.2020.09.28.08.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 08:17:45 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com, g.branden.robinson@gmail.com,
        Dave.Martin@arm.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [RFC] system_data_types.7: wfix + ffix
Date:   Mon, 28 Sep 2020 17:16:47 +0200
Message-Id: <20200928151646.20271-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
References: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The previous format/wording for the includes wasn't very clear.
Improve it a bit following Branden's proposal.

Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi,

What do you think about this?

Would you change something?

Thanks,

Alex


 man7/system_data_types.7 | 285 ++++++++++++++++-----------------------
 1 file changed, 113 insertions(+), 172 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 16930985e..dc4a3bae4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -33,20 +33,21 @@ system_data_types \- overview of system data types
 .\"	Each entry will have the following parts:
 .\"		* Include
 .\"			The headers will be in the following order:
+.\"			"Include:"
 .\"			1) The main header that shall define the type
-.\"			   according to the C Standard,
-.\"			   and
-.\"			   the main header that shall define the type
-.\"			   according to POSIX,
-.\"			   in alphabetical order.
-.\"			;
-.\"			2) All other headers that shall define the type
+.\"			   according to the C Standard.
+.\"			["or"]
+.\"			2) The main header that shall define the type
+.\"			   according to POSIX.
+.\"			[". Alternatively,"]
+.\"			3) All other headers that shall define the type
 .\"			   as described in the previous header(s)
 .\"			   according to the C Standard or POSIX,
 .\"			   in alphabetical order.
 .\"			*) All headers that define the type
 .\"			   *if* the type is not defined by C nor POSIX,
 .\"			   in alphabetical order.
+.\"			"."
 .\"
 .\"		* Definition (no "Definition" header)
 .\"			Only struct/union types will have definition;
@@ -203,8 +204,8 @@ See also:
 .RS
 .br
 Include:
-.IR <stdio.h> ;
-or
+.IR <stdio.h> .
+Alternatively,
 .IR <wchar.h> .
 .PP
 An object type used for streams.
@@ -268,19 +269,14 @@ type in this page.
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
-.I <grp.h>
-or
-.I <pwd.h>
-or
-.I <signal.h>
-or
-.I <stropts.h>
-or
-.I <sys/ipc.h>
-or
-.I <sys/stat.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <grp.h> ,
+.IR <pwd.h> ,
+.IR <signal.h> ,
+.IR <stropts.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/stat.h> ,
 or
 .IR <unistd.h> .
 .PP
@@ -305,8 +301,8 @@ See also:
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
+.IR <sys/types.h> .
+Alternatively,
 .IR <sys/resource.h> .
 .PP
 A type used to hold a general identifier.
@@ -450,29 +446,19 @@ See also:
 .RS
 .br
 Include
-.IR <sys/types.h> ;
-or
-.I <fcntl.h>
-or
-.I <sched.h>
-or
-.I <signal.h>
-or
-.I <spawn.h>
-or
-.I <sys/msg.h>
-or
-.I <sys/sem.h>
-or
-.I <sys/shm.h>
-or
-.I <sys/wait.h>
-or
-.I <termios.h>
-or
-.I <time.h>
-or
-.I <unistd.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <fcntl.h> ,
+.IR <sched.h> ,
+.IR <signal.h> ,
+.IR <spawn.h> ,
+.IR <sys/msg.h> ,
+.IR <sys/sem.h> ,
+.IR <sys/shm.h> ,
+.IR <sys/wait.h> ,
+.IR <termios.h> ,
+.IR <time.h> ,
+.IR <unistd.h> ,
 or
 .IR <utmpx.h> .
 .PP
@@ -602,11 +588,10 @@ types in this page.
 .RS
 .br
 Include:
-.IR <signal.h> ;
-or
-.I <aio.h>
-or
-.I <mqueue.h>
+.IR <signal.h> .
+Alternatively,
+.IR <aio.h> ,
+.IR <mqueue.h> ,
 or
 .IR <time.h> .
 .PP
@@ -651,8 +636,8 @@ structure in this page.
 .RS
 .br
 Include:
-.IR <signal.h> ;
-or
+.IR <signal.h> .
+Alternatively,
 .IR <sys/wait.h> .
 .PP
 .EX
@@ -687,9 +672,9 @@ See also:
 .RS
 .br
 Include:
-.IR <signal.h> ;
-or
-.I <spawn.h>
+.IR <signal.h> .
+Alternatively,
+.IR <spawn.h> ,
 or
 .IR <sys/select.h> .
 .PP
@@ -750,55 +735,32 @@ in this page.
 Include:
 .I <stddef.h>
 or
-.IR <sys/types.h> ;
-or
-.I <aio.h>
-or
-.I <glob.h>
-or
-.I <grp.h>
-or
-.I <iconv.h>
-or
-.I <monetary.h>
-or
-.I <mqueue.h>
-or
-.I <ndbm.h>
-or
-.I <pwd.h>
-or
-.I <regex.h>
-or
-.I <search.h>
-or
-.I <signal.h>
-or
-.I <stdio.h>
-or
-.I <stdlib.h>
-or
-.I <string.h>
-or
-.I <strings.h>
-or
-.I <sys/mman.h>
-or
-.I <sys/msg.h>
-or
-.I <sys/sem.h>
-or
-.I <sys/shm.h>
-or
-.I <sys/socket.h>
-or
-.I <sys/uio.h>
-or
-.I <time.h>
-or
-.I <unistd.h>
-or
-.I <wchar.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <aio.h> ,
+.IR <glob.h> ,
+.IR <grp.h> ,
+.IR <iconv.h> ,
+.IR <monetary.h> ,
+.IR <mqueue.h> ,
+.IR <ndbm.h> ,
+.IR <pwd.h> ,
+.IR <regex.h> ,
+.IR <search.h> ,
+.IR <signal.h> ,
+.IR <stdio.h> ,
+.IR <stdlib.h> ,
+.IR <string.h> ,
+.IR <strings.h> ,
+.IR <sys/mman.h> ,
+.IR <sys/msg.h> ,
+.IR <sys/sem.h> ,
+.IR <sys/shm.h> ,
+.IR <sys/socket.h> ,
+.IR <sys/uio.h> ,
+.IR <time.h> ,
+.IR <unistd.h> ,
+.IR <wchar.h> ,
 or
 .IR <wordexp.h> .
 .PP
@@ -871,21 +833,15 @@ types in this page.
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
-.I <aio.h>
-or
-.I <monetary.h>
-or
-.I <mqueue.h>
-or
-.I <stdio.h>
-or
-.I <sys/msg.h>
-or
-.I <sys/socket.h>
-or
-.I <sys/uio.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <aio.h> ,
+.IR <monetary.h> ,
+.IR <mqueue.h> ,
+.IR <stdio.h> ,
+.IR <sys/msg.h> ,
+.IR <sys/socket.h> ,
+.IR <sys/uio.h> ,
 or
 .IR <unistd.h> .
 .PP
@@ -947,9 +903,9 @@ types in this page.
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
-.I <sys/select.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <sys/select.h> ,
 or
 .IR <sys/time.h> .
 .PP
@@ -974,23 +930,17 @@ structure in this page.
 .RS
 .br
 Include:
-.I <sys/types.h>
-or
-.IR <time.h> ;
-or
-.I <sched.h>
-or
-.I <sys/msg.h>
-or
-.I <sys/select.h>
-or
-.I <sys/sem.h>
-or
-.I <sys/shm.h>
-or
-.I <sys/stat.h>
+.I <time.h>
 or
-.I <sys/time.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <sched.h> ,
+.IR <sys/msg.h> ,
+.IR <sys/select.h> ,
+.IR <sys/sem.h> ,
+.IR <sys/shm.h> ,
+.IR <sys/stat.h> ,
+.IR <sys/time.h> ,
 or
 .IR <utime.h> .
 .PP
@@ -1017,8 +967,8 @@ See also:
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
+.IR <sys/types.h> .
+Alternatively,
 .IR <time.h> .
 .PP
 Used for timer ID returned by
@@ -1040,17 +990,13 @@ See also:
 .RS
 .br
 Include:
-.IR <time.h> ;
-or
-.I <aio.h>
-or
-.I <mqueue.h>
-or
-.I <sched.h>
-or
-.I <signal.h>
-or
-.I <sys/select.h>
+.IR <time.h> .
+Alternatively,
+.IR <aio.h> ,
+.IR <mqueue.h> ,
+.IR <sched.h> ,
+.IR <signal.h> ,
+.IR <sys/select.h> ,
 or
 .IR <sys/stat.h> .
 .PP
@@ -1078,11 +1024,10 @@ See also:
 .RS
 .br
 Include:
-.IR <sys/time.h> ;
-or
-.I <sys/resource.h>
-or
-.I <sys/select.h>
+.IR <sys/time.h> .
+Alternatively,
+.IR <sys/resource.h> ,
+.IR <sys/select.h> ,
 or
 .IR <utmpx.h> .
 .PP
@@ -1111,17 +1056,13 @@ See also:
 .RS
 .br
 Include:
-.IR <sys/types.h> ;
-or
-.I <pwd.h>
-or
-.I <signal.h>
-or
-.I <stropts.h>
-or
-.I <sys/ipc.h>
-or
-.I <sys/stat.h>
+.IR <sys/types.h> .
+Alternatively,
+.IR <pwd.h> ,
+.IR <signal.h> ,
+.IR <stropts.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/stat.h> ,
 or
 .IR <unistd.h> .
 .PP
@@ -1145,9 +1086,9 @@ See also:
 .RS
 .br
 Include:
-.IR <stdarg> ;
-or
-.I <stdio.h>
+.IR <stdarg> .
+Alternatively,
+.IR <stdio.h> ,
 or
 .IR <wchar.h> .
 .PP
-- 
2.28.0

