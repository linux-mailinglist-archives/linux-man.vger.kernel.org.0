Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A584F44354F
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234994AbhKBSR6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSR6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:58 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B333C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id d72-20020a1c1d4b000000b00331140f3dc8so50154wmd.1
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TEfsYYPMwF4Gj2OcGed8R8x/2yGiMgT+PT6OnttrOOs=;
        b=adboRzpr/BLrodVf6Hk5Pi6dX4G18l/FOrx7vyP0/65cXQJRxB+kBATTAr2fi5A4S+
         /ignK4R9m2DTp9nOyhO9yt9B+ukmem0K2jBC818XesFX6/fo/cFhs8dxv1EBMASt2aI9
         iJ7aRNyHP2fHDkqdj6WZi65dm1C94JK8bG6ZlqJPef56ir73aL/EzVDYq8xogluEB+MW
         uDZ6xSpKB5ZUTn9wGX4kqOgCWWppw2g4Jccl6Iem69NqW3Wsu4K+Ntz81moA39Bzz/bv
         5PgL8NiSP3NRP1+2WqwJAyFehuWxReyAE6M8BK34kUbGrKnUKXG/iJuG62wEJWTN+G+j
         KeIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TEfsYYPMwF4Gj2OcGed8R8x/2yGiMgT+PT6OnttrOOs=;
        b=mbN/C/3iavqxp1gZJelhBJiGo8eUn+dV7MgHRdhx7U4ezNh9TyX5Fmstg1zh/9lK+x
         dJRGbdpkyWNlqn0jnB5ebWF/chCFR8b2GVXrdf3zVgNyi4FdxsLkNzqV+wbtWP1vMGmk
         lR/XyBWbNhg3NNmpWsqCFqKz4eD3jm0ERurPuYEfk5fFOw2rXz3j3KcAJsLo44gH7XUJ
         pTaB/W2/aAg7mCmKhb/zKc34c4tb//BWMtLFDqIJq2yF4+zKG4AWHmuURrhAeS8d+Dcy
         l/dX2r+LvJe9lhPQsjLBqpvPJ0LV3FpB94hXyqPGxnSpGv1rrRA5knR82JEryEK9sL1X
         W6ig==
X-Gm-Message-State: AOAM532G5GpP1BX5537aE6Z07i1o2f0CZ2h1Cyk3gaR2yZxGildG3yte
        t67iaoOr8rs3LXUYg7lSDCOJ8WJPynQ=
X-Google-Smtp-Source: ABdhPJyR751Zo8qPnctRHV9psKUFBrSW8MURPAW9FENs8yFiAgemH+eo3g2ZLEDQMied14+1vV41lQ==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr9106667wmb.78.1635876921631;
        Tue, 02 Nov 2021 11:15:21 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 19/37] select.2, system_data_types.7: Move fd_set to select.2
Date:   Tue,  2 Nov 2021 19:14:36 +0100
Message-Id: <20211102181454.280919-20-alx.manpages@gmail.com>
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
 man2/select.2            | 20 +++++++++++++++++++-
 man7/system_data_types.7 | 21 ---------------------
 2 files changed, 19 insertions(+), 22 deletions(-)

diff --git a/man2/select.2 b/man2/select.2
index aee25c52c..e70c7e537 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -39,12 +39,14 @@
 .\"
 .TH SELECT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
-select, pselect, FD_CLR, FD_ISSET, FD_SET, FD_ZERO \-
+select, pselect, FD_CLR, FD_ISSET, FD_SET, FD_ZERO, fd_set \-
 synchronous I/O multiplexing
 .SH SYNOPSIS
 .nf
 .B #include <sys/select.h>
 .PP
+.BR typedef " /* ... */ " fd_set;
+.PP
 .BI "int select(int " nfds ", fd_set *restrict " readfds ,
 .BI "           fd_set *restrict " writefds ", fd_set *restrict " exceptfds ,
 .BI "           struct timeval *restrict " timeout );
@@ -93,6 +95,14 @@ or a sufficiently small
 .BR write (2))
 without blocking.
 .\"
+.SS fd_set
+A structure type that can represent a set of file descriptors.
+According to POSIX,
+the maximum number of file descriptors in an
+.I fd_set
+structure is the value of the macro
+.BR FD_SETSIZE .
+.\"
 .SS File descriptor sets
 The principal arguments of
 .BR select ()
@@ -453,7 +463,15 @@ sets the timeout variable before returning, but the BSD variant does not.
 .BR pselect ()
 is defined in POSIX.1g, and in
 POSIX.1-2001 and POSIX.1-2008.
+.PP
+.B fd_set
+is defined in POSIX.1-2001 and later.
 .SH NOTES
+The following header also provides the
+.I fd_set
+type:
+.IR <sys/time.h> .
+.PP
 An
 .I fd_set
 is a fixed size buffer.
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d71a06344..f004aef0d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -60,27 +60,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- div_t ------------------------/
 .\"------------------------------------- double_t ---------------------/
 .\"------------------------------------- fd_set -----------------------/
-.TP
-.I fd_set
-.RS
-.IR Include :
-.IR <sys/select.h> .
-Alternatively,
-.IR <sys/time.h> .
-.PP
-A structure type that can represent a set of file descriptors.
-According to POSIX,
-the maximum number of file descriptors in an
-.I fd_set
-structure is the value of the macro
-.BR FD_SETSIZE .
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR select (2)
-.RE
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.33.1

