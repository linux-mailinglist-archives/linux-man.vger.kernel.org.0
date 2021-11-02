Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09EA8443554
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234655AbhKBSSF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232856AbhKBSSE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:04 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE16C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:29 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id u18so34679538wrg.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gnpYKd3vKmUwnCTyLDWCR1jPG4kgwiRQPxhQB3ofAJo=;
        b=qIqTWZYXbNwBxXWXUvD+FbCfPhbTY8EdAZTH6Elr03oLBsZw0ompCjkmTFLwjwOhq0
         f3oK/EkostNW+v2BdwI0so5Y5YHY3VtT8uXlMxM1mOYPaVW4FDJSTa1NbEf7zEts5gh0
         Kux2oxGDX6G6PzrUiZtsRRDu3O6MMTHQdMffh1+mf5tGrFG7kXMxZITTj2KYSvwsf00g
         M3dzvIOlTGX3TT67kr8D/8H48wW0nE2cDafrLmCAOhC8S/uoDO314MOXPGZ4cctJejuu
         XQ2XWzbaPNN248OehREQ0TWcgs/XKPkZfnsumyWPiedkZrnmxPZ3vbaJP/7v4BOW+1RN
         i1Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gnpYKd3vKmUwnCTyLDWCR1jPG4kgwiRQPxhQB3ofAJo=;
        b=6/9UTMles/15L57u3PCmX3b/fOrswS3LuqjtkoHNxlWRppFD4rsAujFjtZBrsJj/T3
         lvAhHOtWeKuCkNsvuGlSQvJMmAnrzTIkPCGSnm6pYt7ZBFPOh8VfGrzCZoIVkvmCBdDG
         I5aS2aSo8B6laZUyb+nouJTgxQc0OYSiHFm0NyIGqL8SqSE9mxAU54Ei3agaVhaQzqRH
         Tl1FV1KVUoOQd/XAiLcflZ1OawkX4Nkzrpk7tbdYPhF3ePaYs8JTnFzYQyJDmnORxCZc
         OtUnTJ5sJPdoIjaDTmN3hP6+5woG4l2xrYrPqUzXtb/pdKiguUkui47nEUXgZYOyn4bv
         rzNQ==
X-Gm-Message-State: AOAM533WGukuYEWdeASC+oKbNIxkSLeCzb4Un9YyheXDg1hVRvdqazUE
        +ICbnwsAY4JOrBYlNUuwm/I=
X-Google-Smtp-Source: ABdhPJwSLHzfXBsb/ISp9FnZnFEtluojSWCdcv/1q5T3l3DuMQ+T12Cxaj0F2Eg5/0KFTZh7DfLpog==
X-Received: by 2002:adf:c00d:: with SMTP id z13mr48509738wre.299.1635876928399;
        Tue, 02 Nov 2021 11:15:28 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 24/37] gid_t.3, id_t.3, system_data_types.7: Move gid_t to id_t.3
Date:   Tue,  2 Nov 2021 19:14:41 +0100
Message-Id: <20211102181454.280919-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/gid_t.3             |  2 +-
 man3/id_t.3              | 34 ++++++++++++++++++++++++++++++----
 man7/system_data_types.7 | 31 -------------------------------
 3 files changed, 31 insertions(+), 36 deletions(-)

diff --git a/man3/gid_t.3 b/man3/gid_t.3
index db50c0f09..af7be45e3 100644
--- a/man3/gid_t.3
+++ b/man3/gid_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/id_t.3
diff --git a/man3/id_t.3 b/man3/id_t.3
index 1fdfd99da..5baaeb9a6 100644
--- a/man3/id_t.3
+++ b/man3/id_t.3
@@ -1,16 +1,23 @@
 .TH ID_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-id_t \- process/user/group identifier
+gid_t, id_t \- process/user/group identifier
 .SH SYNOPSIS
 .nf
 .B #include <sys/types.h>
 .PP
+.BR typedef " /* ... */ " gid_t;
 .BR typedef " /* ... */ " id_t;
 .fi
 .SH DESCRIPTION
-A type used to hold a general identifier.
+.I gid_t
+is a type used to hold group IDs.
 According to POSIX,
-this shall be an integer type that can be used to contain a
+it shall be an integer type.
+.PP
+.I id_t
+is a type used to hold a general identifier.
+According to POSIX,
+it shall be an integer type that can be used to contain a
 .IR pid_t ,
 .IR uid_t ,
 or
@@ -18,8 +25,27 @@ or
 .SH CONFORMING TO
 POSIX.1-2001 and later.
 .SH NOTES
-The following header also provides this type:
+The following headers also provide
+.IR gid_t :
+.IR <grp.h> ,
+.IR <pwd.h> ,
+.IR <signal.h> ,
+.IR <stropts.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/stat.h> ,
+and
+.IR <unistd.h> .
+.PP
+The following header also provides
+.IR id_t :
 .IR <sys/resource.h> .
 .SH SEE ALSO
+.BR chown (2),
+.BR getgid (2),
+.BR getegid (2),
+.BR getgroups (2),
 .BR getpriority (2),
+.BR getresgid (2),
 .BR waitid (2)
+.BR getgrnam (3),
+.BR credentials (7)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 819f0a2df..4fc3c714a 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -65,37 +65,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- FILE -------------------------/
 .\"------------------------------------- float_t ----------------------/
 .\"------------------------------------- gid_t ------------------------/
-.TP
-.I gid_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <grp.h> ,
-.IR <pwd.h> ,
-.IR <signal.h> ,
-.IR <stropts.h> ,
-.IR <sys/ipc.h> ,
-.IR <sys/stat.h> ,
-or
-.IR <unistd.h> .
-.PP
-A type used to hold group IDs.
-According to POSIX,
-this shall be an integer type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR chown (2),
-.BR getgid (2),
-.BR getegid (2),
-.BR getgroups (2),
-.BR getresgid (2),
-.BR getgrnam (3),
-.BR credentials (7)
-.RE
 .\"------------------------------------- id_t -------------------------/
 .\"------------------------------------- imaxdiv_t --------------------/
 .TP
-- 
2.33.1

