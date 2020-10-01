Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E17627FD10
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731884AbgJAKQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgJAKQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:34 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B469C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:34 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d4so2297844wmd.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y8MQLyY083Njte1RR4e2jfgGQU3k2gVUghtTo+d0PXo=;
        b=qk4D7MFEzj2AwRJ/ZIhM2eUCZGwSfI467cv5sgrk+bco/BfES1R5okO5LNkgvSh403
         oAO6KfursWYgDshksrnc30+4/pkUY9YaxDfWRb5WdHt87sp0hkWG8VUseMj3aKUoSr2l
         KFK8g0zkYPcsFHCJ8o0wN0cuuQBmmCyTZLPVArBnsW4wT6cbnZl7A3VjVlAVkl4IRigv
         FUYmR06NCsCw+fdV59RjNh65HZXAQ4oGKIK2N8JXrdRKvUEmEq+ca9frS6VST3NVS48n
         4+EiLUMajD3d39Km53zwWdENifaraA+gfun2AAuSmTeDTluyxeFbr4Kbdxxe7OLt/e1d
         vlVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y8MQLyY083Njte1RR4e2jfgGQU3k2gVUghtTo+d0PXo=;
        b=TuHb/g7GsIzy6sDf3E8l7AFoM2G1EMBiaSMWmSo0NwLrMDeqOXGCZ/mnZE8zwAAONR
         TNo7MSM5UpLEPB+XN6VysrC+FmwK6QkbRamf42Pp82mPV4+6lr9w99dwpB8QZRQkropv
         S9FRq7mMoNEepj9p23LxZzGg/8Aj9wiCDycg6ieQo18RDQTqNYh/FQnEwPZyX2sCQ9pH
         UEGpyOjX5ZbBO+IVec4oAve/XBy45iPbM7+Ya1U8cr1W2yG8C6xQ6DuxszXcSZRBbJoE
         6XoLd48+CfmxQ72vhni8dEdh0d1coXv776Dvn52eq8V1Esckuj6g+hO+kfKEdTsQWSbI
         FJcQ==
X-Gm-Message-State: AOAM5339KbG7ZUbtUqEowFVAsqGjsiccinkCSd9OBYyNSRi1NvrSh7tO
        q6+S3k2mMuQCGdu16gnYkttRzm4oujRtbA==
X-Google-Smtp-Source: ABdhPJzIxVkRpBowJqpHpvsiwtY0X6WrIPmOfKTelSYblq0UnP7LLizty2iOOqjHw+/TWm7lJXGcZA==
X-Received: by 2002:a1c:5602:: with SMTP id k2mr7811691wmb.25.1601547393174;
        Thu, 01 Oct 2020 03:16:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 04/16] system_data_types.7: srcfix
Date:   Thu,  1 Oct 2020 12:15:48 +0200
Message-Id: <20201001101559.77163-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

We used .br to force a simple line break (with no extra blank line)
after the tag.

Recently, we added .RS/.RS, and .RS comes just after the tag,
and I realized by accident that .RS already forces a simple line break.

Therefore, .br is completely redundant here, and can be removed.

This way we get rid of "raw" *roff requests in this page.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 34 ----------------------------------
 1 file changed, 34 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a099c0250..a301c2309 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -52,7 +52,6 @@ system_data_types \- overview of system data types
 .TP
 .I aiocb
 .RS
-.br
 Include:
 .IR <aio.h> .
 .PP
@@ -88,7 +87,6 @@ See also:
 .TP
 .I div_t
 .RS
-.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -113,7 +111,6 @@ See also:
 .TP
 .I double_t
 .RS
-.br
 Include:
 .IR <math.h> .
 .PP
@@ -156,7 +153,6 @@ type in this page.
 .TP
 .I fenv_t
 .RS
-.br
 Include:
 .IR <fenv.h> .
 .PP
@@ -174,7 +170,6 @@ See also:
 .TP
 .I fexcept_t
 .RS
-.br
 Include:
 .IR <fenv.h> .
 .PP
@@ -192,7 +187,6 @@ See also:
 .TP
 .I FILE
 .RS
-.br
 Include:
 .IR <stdio.h> .
 Alternatively,
@@ -217,7 +211,6 @@ See also:
 .TP
 .I float_t
 .RS
-.br
 Include:
 .IR <math.h> .
 .PP
@@ -260,7 +253,6 @@ type in this page.
 .TP
 .I gid_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -293,7 +285,6 @@ See also:
 .TP
 .I id_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -318,7 +309,6 @@ See also:
 .TP
 .I imaxdiv_t
 .RS
-.br
 Include:
 .IR <inttypes.h> .
 .PP
@@ -343,7 +333,6 @@ See also:
 .TP
 .I intmax_t
 .RS
-.br
 Include:
 .IR <stdint.h> .
 Alternatively,
@@ -400,7 +389,6 @@ type in this page.
 .TP
 .IR int N _t
 .RS
-.br
 Include:
 .IR <stdint.h> .
 Alternatively,
@@ -484,7 +472,6 @@ types in this page.
 .TP
 .I lconv
 .RS
-.br
 Include:
 .IR <locale.h> .
 .PP
@@ -534,7 +521,6 @@ See also:
 .TP
 .I ldiv_t
 .RS
-.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -559,7 +545,6 @@ See also:
 .TP
 .I lldiv_t
 .RS
-.br
 Include:
 .IR <stdlib.h> .
 .PP
@@ -584,7 +569,6 @@ See also:
 .TP
 .I pid_t
 .RS
-.br
 Include
 .IR <sys/types.h> .
 Alternatively,
@@ -631,7 +615,6 @@ See also:
 .TP
 .I ptrdiff_t
 .RS
-.br
 Include:
 .IR <stddef.h> .
 .PP
@@ -671,7 +654,6 @@ types in this page.
 .TP
 .I regmatch_t
 .RS
-.br
 Include:
 .IR <regex.h> .
 .PP
@@ -697,7 +679,6 @@ See also:
 .TP
 .I regoff_t
 .RS
-.br
 Include:
 .IR <regex.h> .
 .PP
@@ -731,7 +712,6 @@ types in this page.
 .TP
 .I sigevent
 .RS
-.br
 Include:
 .IR <signal.h> .
 Alternatively,
@@ -780,7 +760,6 @@ structure in this page.
 .TP
 .I siginfo_t
 .RS
-.br
 Include:
 .IR <signal.h> .
 Alternatively,
@@ -817,7 +796,6 @@ See also:
 .TP
 .I sigset_t
 .RS
-.br
 Include:
 .IR <signal.h> .
 Alternatively,
@@ -847,7 +825,6 @@ See also:
 .TP
 .I sigval
 .RS
-.br
 Include:
 .IR <signal.h> .
 .PP
@@ -880,7 +857,6 @@ in this page.
 .TP
 .I size_t
 .RS
-.br
 Include:
 .I <stddef.h>
 or
@@ -981,7 +957,6 @@ types in this page.
 .TP
 .I ssize_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -1052,7 +1027,6 @@ types in this page.
 .TP
 .I suseconds_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -1080,7 +1054,6 @@ structure in this page.
 .TP
 .I time_t
 .RS
-.br
 Include:
 .I <time.h>
 or
@@ -1118,7 +1091,6 @@ See also:
 .TP
 .I timer_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -1142,7 +1114,6 @@ See also:
 .TP
 .I timespec
 .RS
-.br
 Include:
 .IR <time.h> .
 Alternatively,
@@ -1177,7 +1148,6 @@ See also:
 .TP
 .I timeval
 .RS
-.br
 Include:
 .IR <sys/time.h> .
 Alternatively,
@@ -1210,7 +1180,6 @@ See also:
 .TP
 .I uid_t
 .RS
-.br
 Include:
 .IR <sys/types.h> .
 Alternatively,
@@ -1241,7 +1210,6 @@ See also:
 .TP
 .I uintmax_t
 .RS
-.br
 Include:
 .IR <stdint.h> .
 Alternatively,
@@ -1297,7 +1265,6 @@ type in this page.
 .TP
 .IR uint N _t
 .RS
-.br
 Include:
 .IR <stdint.h> .
 Alternatively,
@@ -1384,7 +1351,6 @@ types in this page.
 .TP
 .I va_list
 .RS
-.br
 Include:
 .IR <stdarg> .
 Alternatively,
-- 
2.28.0

