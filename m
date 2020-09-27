Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE5A927A433
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 23:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726316AbgI0VOS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 17:14:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgI0VOR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 17:14:17 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91F80C0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:17 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k10so6670428wru.6
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/kv6rN41skzxvLffwK2BI/2Q9SyssGN5trU7QGtPIqU=;
        b=EE2BUe09Acp4zRYOBAB43Qg+p3cS43N7r8UBJBsFWMFi2tQPO342y/BGDpjMHVXwV3
         /TbL971JpJhRlw3ki/sMU1CLr5KtXfc7qzHOClD4MOsmKVAN8rzRFtZFXWxdf7G1VnzC
         oLU8vNaYrXLyWOOJdh7BDcHsTdIRvpK/i36dKR8oF+uSUnjyHi9Whk3ki5q4zdUfy76M
         KuEfqgo1knt2dBETuo35L5Y+UEk4CrZra3AXdds27wazvXdLGVhdPxfn4enJS8eTYacE
         y3DVLq6swkjB/0XNsnYUxykufm7LI8rEMyDzW6WEvqBcPG5wdiL9GTySR1+RVNEZ1IW8
         yxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/kv6rN41skzxvLffwK2BI/2Q9SyssGN5trU7QGtPIqU=;
        b=RPw/57lux+GfpD04cZPMlUNNXpKGwIAZ5kvvVYXJN4fbAgVi5mrR+90+n4p+KHb5AQ
         IQsEqP0bxkKejeNAxgONHod62OpfFDoTzzGlCglvE4ds9wIveJkbsMjhBjpwsS6ahO74
         yXakR0dWf++N0FPQo2kGoTj3VRBVzlbrno6Wd/VJ3PJ21y1V2Nkgix1Ag2h2+cvyXZKF
         lLyz9tAJ2MIFlD6SrrY6nqi2UZZ+tsMFdpwEMJE68gsqhrM+QbyE51IHFKDFNKU9fmwz
         964EVEsr/v35ZIO/ggpIMnWDeStEKGnylBF3Ul0NP9x8b2nTaajep/3J5Dct6ccQdLxv
         GHDw==
X-Gm-Message-State: AOAM531hHndk96dVbJ1GDuuXRsH/flr/4AC8xVNpAycS1Hf46XBL1euZ
        A7duLvdSxAeiUmMM3emxYWE=
X-Google-Smtp-Source: ABdhPJyUE36ykBYoYqanHWf0XVfZ5/3oxJWSoqjRvKPZRuHKuckFjmQWLu6mdNBiiSpxhvWnAnx/vQ==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr16638355wrn.57.1601241256240;
        Sun, 27 Sep 2020 14:14:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k8sm6817277wma.16.2020.09.27.14.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 14:14:15 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/3] system_data_types.7: ffix
Date:   Sun, 27 Sep 2020 23:13:43 +0200
Message-Id: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
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

