Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A00E727FD0F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731682AbgJAKQe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgJAKQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6024AC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so4988368wrn.13
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X8rsWLtq1jhJTIdFM84m0I4HjLr+vOX931//CgcGpkg=;
        b=b24j5/MNjMgmrGdRg6s2fzdUzewEJvr/NmbEkrj23j3CDwiwOVffQQRMENDwW6utO8
         lvKt3/MvAs2Ylpbz+vNw7aD3Rn2HeTcjoViA5Bo6xd5LdGrI58eerBZF3h0y9HMPwZIc
         hIzPBMbKi2Xcsk0k2FOl/Jqmk9d7poomSwPAZRKR8TTY3wMlSRBdQEsLL1er4KQFzVuX
         j05hfH7gR4PD/9ue1TnYAlMlgxznG3F0js/iRASYA83AXxnN1qz0+3NyEKO8p1Ktv4je
         9yFA+AHxR7QAhkCHOOoc72s2bh2S95zMRQSnsWUdah4DWITleyIUjELHtlctlKTUM+s7
         TJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X8rsWLtq1jhJTIdFM84m0I4HjLr+vOX931//CgcGpkg=;
        b=m+C7fhs6uoeZMh+QRaNuteM6Ry4dVDpuOvw0+jQHSPZV2UXucSnE1D2m7OF9KTSUy3
         ZopkLl3hmv7aGNnHKqgERsdCdfMyviyXTE/YOBwQ88e4iE6DHjByqNdMhSApl7bVBO0M
         es8mTbz9RO3D9DUzXFR5QbeiUrTsHMIwsto6V4sqnJnSmsjTdkql/IW82mZJ7gcPP3IT
         oQXtTBMm1zNTCEbZxJm2x1f73+h79B4H85gkjasXAvoG6w2KWfYvpXr/xVp74aNDK/8V
         bEHs02TeBQx+LtilbS7pWDAyfosKfwpUZwad9iODeaqGho0KPpp0cpNhZhsal39AUdPh
         GtgQ==
X-Gm-Message-State: AOAM530AOi8Y81x0Dt2p8i5hWdebOx5Q0UOrDEh/zXaSrl7V0egPqt61
        XgpX+O+kdCHWirbap8Wz/LIX7TpJHN6q+w==
X-Google-Smtp-Source: ABdhPJwpI4ZJaig47P2jScb2gB8XK04LwTt+u778QtKRjbraT0HdSbkI7cr7HjkRidwO9PBWWK8+ew==
X-Received: by 2002:adf:c5c3:: with SMTP id v3mr8285708wrg.205.1601547391010;
        Thu, 01 Oct 2020 03:16:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 02/16] system_data_types.7: srcfix
Date:   Thu,  1 Oct 2020 12:15:46 +0200
Message-Id: <20201001101559.77163-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 105 ++++++++++++++++++++++++++-------------
 1 file changed, 70 insertions(+), 35 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 9cf67ee6f..a653a7b11 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -71,7 +71,8 @@ struct aiocb {
 For further information about this structure, see
 .BR aio (7).
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR aio_cancel (3),
@@ -102,7 +103,8 @@ It is the type of the value returned by the
 .BR div (3)
 function.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR div (3)
@@ -143,7 +145,8 @@ the type of
 .I double_t
 is implementation-defined.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .I float_t
@@ -161,7 +164,8 @@ This type represents the entire floating-point environment,
 including control modes and status flags; for further details, see
 .BR fenv (3).
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR fenv (3)
@@ -178,7 +182,8 @@ This type represents the floating-point status flags collectively;
 for further details see
 .BR fenv (3).
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR fenv (3)
@@ -195,7 +200,8 @@ Alternatively,
 .PP
 An object type used for streams.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR fclose (3),
@@ -243,7 +249,8 @@ the type of
 .I float_t
 is implementation-defined.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .I double_t
@@ -270,7 +277,8 @@ A type used to hold group IDs.
 According to POSIX,
 this shall be an integer type.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR chown (2),
@@ -299,7 +307,8 @@ this shall be an integer type that can be used to contain a
 or
 .IR gid_t .
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR getpriority (2),
@@ -324,7 +333,8 @@ It is the type of the value returned by the
 .BR imaxdiv (3)
 function.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR imaxdiv (3)
@@ -379,7 +389,8 @@ is defined and
 .I long long
 is less than 128 bits wide.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .I uintmax_t
@@ -453,7 +464,8 @@ for scanning
 .I int8_t
 values.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .IR __int128 ,
@@ -505,7 +517,8 @@ Contains members related to the formatting of numeric values.
 In the "C" locale, its members have the values
 shown in the comments above.
 .PP
-Conforming to: C11 and later; POSIX.1-2001 and later.
+Conforming to:
+C11 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR setlocale (3),
@@ -532,7 +545,8 @@ It is the type of the value returned by the
 .BR ldiv (3)
 function.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR ldiv (3)
@@ -556,7 +570,8 @@ It is the type of the value returned by the
 .BR lldiv (3)
 function.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR lldiv (3)
@@ -591,7 +606,8 @@ where the width of
 is no greater than the width of the type
 .IR long .
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR fork (2),
@@ -638,7 +654,8 @@ for printing
 .I ptrdiff_t
 values.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .I size_t
@@ -666,7 +683,8 @@ typedef struct {
 .PP
 This is a structure type used in regular expression matching.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR regexec (3)
@@ -686,9 +704,11 @@ type or a
 .I ssize_t
 type.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
-Notes: Prior to POSIX.1-2008, the type was capable of storing
+Notes:
+Prior to POSIX.1-2008, the type was capable of storing
 the largest value that can be stored in either an
 .I off_t
 type or a
@@ -731,7 +751,8 @@ struct sigevent {
 For further details about this type, see
 .BR sigevent (7).
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 Notes:
 .I <aio.h>
@@ -778,7 +799,8 @@ For further details on this structure
 (including additional, Linux-specific fields), see
 .BR sigaction (2).
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR pidfd_send_signal (2),
@@ -802,7 +824,8 @@ or
 This is a type that represents a set of signals.
 According to POSIX, this shall be an integer or structure type.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR epoll_pwait (2),
@@ -833,7 +856,8 @@ union sigval {
 .PP
 Data passed with a signal.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR pthread_sigqueue (3),
@@ -915,7 +939,8 @@ for printing
 .I size_t
 values.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 Notes:
 .IR <aio.h> ,
@@ -1002,7 +1027,8 @@ by converting the value to
 and using its length modifier
 .RB ( j ).
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR read (2),
@@ -1039,7 +1065,8 @@ where the width of
 is no greater than the width of the type
 .IR long .
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also the
 .I timeval
@@ -1068,7 +1095,8 @@ or
 Used for time in seconds.
 According to POSIX, it shall be an integer type.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 Notes:
 .I <sched.h>
@@ -1097,7 +1125,8 @@ Used for timer ID returned by
 According to POSIX,
 there are no defined comparison or assignment operators for this type.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR timer_create (2),
@@ -1130,7 +1159,8 @@ struct timespec {
 .PP
 Describes times in seconds and nanoseconds.
 .PP
-Conforming to: C11 and later; POSIX.1-2001 and later.
+Conforming to:
+C11 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR clock_gettime (2),
@@ -1161,7 +1191,8 @@ struct timeval {
 .PP
 Describes times in seconds and microseconds.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR gettimeofday (2),
@@ -1191,7 +1222,8 @@ A type used to hold user IDs.
 According to POSIX,
 this shall be an integer type.
 .PP
-Conforming to: POSIX.1-2001 and later.
+Conforming to:
+POSIX.1-2001 and later.
 .PP
 See also:
 .BR chown (2),
@@ -1250,7 +1282,8 @@ is defined and
 .I unsigned long long
 is less than 128 bits wide.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .I intmax_t
@@ -1327,7 +1360,8 @@ for scanning
 .I uint16_t
 values.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also the
 .IR __int128 ,
@@ -1361,7 +1395,8 @@ and
 .BR va_end (3)
 to traverse the list of arguments.
 .PP
-Conforming to: C99 and later; POSIX.1-2001 and later.
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
 .PP
 See also:
 .BR va_start (3),
-- 
2.28.0

