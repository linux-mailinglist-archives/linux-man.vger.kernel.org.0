Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A611A27AA2F
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 11:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbgI1JEB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 05:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726465AbgI1JEB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 05:04:01 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97B7BC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 02:04:00 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so306408wrn.13
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 02:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nXizI+GNhC0qWG0Anurfrcca7/BrqPFj4olS2KJxL94=;
        b=JyxHACnE6s+hW0uoAkn1Bkr2GOhCWjteEDlirzqNH9OMlt52Lg3lakHhafAjqtwnNO
         cNkx1Cho6rDwvPOcCLBuJ4ob6BU8oYNT6aMD3Hg3xoUC98/ea+voDPPZi2mkNOaT9/VI
         6jUf6z97W8u4tAafImuqYMBcWeWUL7SwpHwmKzbNW8jUxb+D3LNZ+cZGosQYrZ+t91HN
         2OaemDRyBLRFw8dsJ9mcIA5x8PUsYpgHfSqO8M+oGsi+8fKRShkTqHaxiu8Oxw0aVo+9
         sk4f5Ute1oCzy3et3wf7Ml5OSfy3OgNbr/LMhwGdJ7czUeFPeGR08m32PffF/cpZgYQj
         fdFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nXizI+GNhC0qWG0Anurfrcca7/BrqPFj4olS2KJxL94=;
        b=kgD5LsJnHsOB++v3LCnW/KG0mCJADzbGgWwEum7qtmzYxzqMZb4oz29Y+cTmQ3olhg
         hfhhdpwGgsuT+M4oTioeJarFWIJAF3YgV2cW2to5Rm6qAodxdT8xuKCxazXJA9AAoAeD
         D6nUvNTh+apHtj7G48pitfXoKKnHT+WY0+pCDnGfzGUa3qg7Gc9jEYtNKbSY059I7keM
         lROT3azhUKr+9403Gc2md1O+Hm8M701uaQIvvYrywIIGatJkf/XDydjloYBkl0h/hkAy
         9sf/b7gUWjShfyRoItQTmH/2pKg6sbwYcyR8sXEK57SP6lgWffaODLuypfifxpYzVsu3
         Z/Lg==
X-Gm-Message-State: AOAM532KI69/3wtkEzT/p999BAIk3RbZvlL5CvwRXKe81NZITo1uSQau
        /AuM/KLt8DCsR2y54V2oK3c=
X-Google-Smtp-Source: ABdhPJzn7pZ49QdwtxTMVGBBH1qE+x3I1Ywz1sY3tmPo2rlhmpxlDn8w7Tp4ftbSWjv1TKKLPJmmkw==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr524529wrs.19.1601283839251;
        Mon, 28 Sep 2020 02:03:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i16sm519912wrq.73.2020.09.28.02.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 02:03:58 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        g.branden.robinson@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 1/3] system_data_types.7: ffix
Date:   Mon, 28 Sep 2020 11:03:23 +0200
Message-Id: <20200928090322.2058-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Normally, text under a section header starts in the next line after the
header, without a blank line.  Follow that pattern.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I had been using .PP because I hadn't seen .br before.

I think .br is the correct format,
following the pattern in already existing man pages.

BTW, is there any way to copy the CC list with git send-email
from the email I'm answering to?
Right now I'm manually copying all of them each time from Thunderbird.

Regards,

Alex

 man7/system_data_types.7 | 58 ++++++++++++++++++++--------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 361e8d411..ff0403df9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -66,7 +66,7 @@ system_data_types \- overview of system data types
 .TP
 .I aiocb
 .RS
-.PP
+.br
 Include:
 .IR <aio.h> .
 .PP
@@ -101,7 +101,7 @@ See also:
 .TP
 .I div_t
 .RS
-.PP
+.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -125,7 +125,7 @@ See also:
 .TP
 .I double_t
 .RS
-.PP
+.br
 Include:
 .IR <math.h> .
 .PP
@@ -167,7 +167,7 @@ type in this page.
 .TP
 .I fenv_t
 .RS
-.PP
+.br
 Include:
 .IR <fenv.h> .
 .PP
@@ -184,7 +184,7 @@ See also:
 .TP
 .I fexcept_t
 .RS
-.PP
+.br
 Include:
 .IR <fenv.h> .
 .PP
@@ -201,7 +201,7 @@ See also:
 .TP
 .I float_t
 .RS
-.PP
+.br
 Include:
 .IR <math.h> .
 .PP
@@ -243,7 +243,7 @@ type in this page.
 .TP
 .I gid_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -280,7 +280,7 @@ See also:
 .TP
 .I id_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -304,7 +304,7 @@ See also:
 .TP
 .I imaxdiv_t
 .RS
-.PP
+.br
 Include:
 .IR <inttypes.h> .
 .PP
@@ -328,7 +328,7 @@ See also:
 .TP
 .I lconv
 .RS
-.PP
+.br
 Include:
 .IR <locale.h> .
 .PP
@@ -377,7 +377,7 @@ See also:
 .TP
 .I ldiv_t
 .RS
-.PP
+.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -401,7 +401,7 @@ See also:
 .TP
 .I lldiv_t
 .RS
-.PP
+.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -425,7 +425,7 @@ See also:
 .TP
 .I pid_t
 .RS
-.PP
+.br
 Include
 .IR <sys/types.h> ;
 or
@@ -481,7 +481,7 @@ See also:
 .TP
 .I ptrdiff_t
 .RS
-.PP
+.br
 Include:
 .IR <stddef.h> .
 .PP
@@ -520,7 +520,7 @@ types in this page.
 .TP
 .I regmatch_t
 .RS
-.PP
+.br
 Include:
 .IR <regex.h> .
 .PP
@@ -545,7 +545,7 @@ See also:
 .TP
 .I regoff_t
 .RS
-.PP
+.br
 Include:
 .IR <regex.h> .
 .PP
@@ -577,7 +577,7 @@ types in this page.
 .TP
 .I sigevent
 .RS
-.PP
+.br
 Include:
 .IR <signal.h> ;
 or
@@ -626,7 +626,7 @@ structure in this page.
 .TP
 .I siginfo_t
 .RS
-.PP
+.br
 Include:
 .IR <signal.h> ;
 or
@@ -662,7 +662,7 @@ See also:
 .TP
 .I sigset_t
 .RS
-.PP
+.br
 Include:
 .IR <signal.h> ;
 or
@@ -691,7 +691,7 @@ See also:
 .TP
 .I sigval
 .RS
-.PP
+.br
 Include:
 .IR <signal.h> .
 .PP
@@ -723,7 +723,7 @@ in this page.
 .TP
 .I size_t
 .RS
-.PP
+.br
 Include:
 .I <stddef.h>
 or
@@ -846,7 +846,7 @@ types in this page.
 .TP
 .I ssize_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -922,7 +922,7 @@ types in this page.
 .TP
 .I suseconds_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -949,7 +949,7 @@ structure in this page.
 .TP
 .I time_t
 .RS
-.PP
+.br
 Include:
 .I <sys/types.h>
 or
@@ -992,7 +992,7 @@ See also:
 .TP
 .I timer_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -1015,7 +1015,7 @@ See also:
 .TP
 .I timespec
 .RS
-.PP
+.br
 Include:
 .IR <time.h> ;
 or
@@ -1053,7 +1053,7 @@ See also:
 .TP
 .I timeval
 .RS
-.PP
+.br
 Include:
 .IR <sys/time.h> ;
 or
@@ -1086,7 +1086,7 @@ See also:
 .TP
 .I uid_t
 .RS
-.PP
+.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -1120,7 +1120,7 @@ See also:
 .TP
 .I va_list
 .RS
-.PP
+.br
 Include:
 .IR <stdarg> ;
 or
-- 
2.28.0

