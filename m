Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DACBE28231C
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 11:29:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725730AbgJCJ3J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 05:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725681AbgJCJ3I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 05:29:08 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8107EC0613D0
        for <linux-man@vger.kernel.org>; Sat,  3 Oct 2020 02:29:08 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id t17so4073525wmi.4
        for <linux-man@vger.kernel.org>; Sat, 03 Oct 2020 02:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VZ0LxTCWvi3ToTdyF9gx/7QHyaX3BBjeLBzlpoAucoA=;
        b=QBaY+6+9JOqUgVWPZluX7jCdbnn5AH2eGeQqnc94jWwmcL7UATusIPmMmZPdXlWceA
         mGpMbbYMipmqRppk6cHVXRB08pw+wau3nDgSuiAiA5OJT744vhRx2DRLTW8liPj53ZBI
         f5NqMhGSxMxF60/xV0inJj3J1+geQTvUzguOqv0lnCnhWyMAB8p0NeyQyVIQE4tg4c+1
         5MB6HISq1kL4QU4dEg2tp9+45XuLBJHYq8YPHLrtyvH3sG8h4iy7HCnKg7hPxPvdyHU8
         oHNQBMgbSmm2YHobCu17D4nbIReurimKgjE9N9HWRIUZHZxN6TNzeKwifzPK6Z1WyNCt
         5deQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VZ0LxTCWvi3ToTdyF9gx/7QHyaX3BBjeLBzlpoAucoA=;
        b=eSSeEkgEJNJIsLFSoy/z7MIXMnl7RwSNU1N95wSuoZatZwl2ahXiBQ1EcEjYkqxz3i
         APC6E4JbpnG2h0CldRsxpN0X7urIKyTNS2tjUJwun33QVrjMgqA4N3wm4PbO5Rm9CqUQ
         /viMyDmlkzhSC3kILVK+1KVpx25GEg7ECTnwbcyeWWqfQ3EYl8Cn4C2oVQDYcqThJxwT
         2BjM8ZbSfmvJp34l9n5p8AatDNV+Dk9oBdSWLQItCOOQBWqDx38dzZ9taE2yWnJTm99Y
         r/WBNqZF9MJENRAoFgPof3dRpPmFiuWllTdOemt1QVXOiaCbMcNUhs3ybao34WDQmVsM
         js1w==
X-Gm-Message-State: AOAM530/Scez+ut3k/cbAA9eFEJMZXYi40fWQDBCDUk8JDZeobFlPgJC
        1pCHLb/hW8Me0GPAsVOY7TA=
X-Google-Smtp-Source: ABdhPJzOo8niijveXwynXdcRDsOIZU4FEAN+thKHivv+R+2+W+C/AdB03eDBk2Sz22zl/3z7ofXlIQ==
X-Received: by 2002:a05:600c:10ce:: with SMTP id l14mr7360027wmd.129.1601717347122;
        Sat, 03 Oct 2020 02:29:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id x10sm4734672wmi.37.2020.10.03.02.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 02:29:06 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] system_data_types.7: Move notes about versions to "Versions"
Date:   Sat,  3 Oct 2020 11:28:48 +0200
Message-Id: <20201003092847.6644-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Yes, we were at a sync-point.

This is the only patch I had remaining, which I think I hadn't send you.

Cheers,

Alex

 man7/system_data_types.7 | 34 ++++++++++++++++++----------------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8e3dd956e..07864ad1e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -40,6 +40,8 @@ system_data_types \- overview of system data types
 .\"		* Description (no "Description" header)
 .\"			A few lines describing the type.
 .\"
+.\"		* Versions (optional)
+.\"
 .\"		* Conforming to (see NOTES)
 .\"			Format: CXY and later; POSIX.1-XXXX and later.
 .\"
@@ -902,10 +904,7 @@ type or a
 .I ssize_t
 type.
 .PP
-Conforming to:
-POSIX.1-2001 and later.
-.PP
-Notes:
+Versions:
 Prior to POSIX.1-2008, the type was capable of storing
 the largest value that can be stored in either an
 .I off_t
@@ -913,6 +912,9 @@ type or a
 .I ssize_t
 type.
 .PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
 See also the
 .I regmatch_t
 structure and the
@@ -948,10 +950,7 @@ struct sigevent {
 For further details about this type, see
 .BR sigevent (7).
 .PP
-Conforming to:
-POSIX.1-2001 and later.
-.PP
-Notes:
+Versions:
 .I <aio.h>
 and
 .I <time.h>
@@ -959,6 +958,9 @@ define
 .I sigevent
 since POSIX.1-2008.
 .PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
 See also:
 .BR timer_create (2),
 .BR getaddrinfo_a (3),
@@ -1132,10 +1134,7 @@ for printing
 .I size_t
 values.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-Notes:
+Versions:
 .IR <aio.h> ,
 .IR <glob.h> ,
 .IR <grp.h> ,
@@ -1149,6 +1148,9 @@ define
 .I size_t
 since POSIX.1-2008.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 See also:
 .BR read (2),
 .BR write (2),
@@ -1284,15 +1286,15 @@ or
 Used for time in seconds.
 According to POSIX, it shall be an integer type.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-Notes:
+Versions:
 .I <sched.h>
 defines
 .I time_t
 since POSIX.1-2008.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 See also:
 .BR stime (2),
 .BR time (2),
-- 
2.28.0

