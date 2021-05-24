Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB3DB38F2DE
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233728AbhEXSVa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233674AbhEXSV3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:29 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4598EC061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:00 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso11918000wmh.4
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ps54vMIeUZmfEsgXPmAphxNoO3rLyIfowTpP7pEhGu4=;
        b=mFgmL6f5zg1xXmT9ufj+bf92a74g8Ch2TRV32UbdBMFWP7g+p2rjvmyfTzREIjrjEl
         qSlmyAWRNhN6orsrpQIfe0i8xWqTXcQ1stGx9ywflHZp3+Jb7GZ6AE6N9bTNW33m6O4w
         sjn7PvO7mzntN7s1GarXCOQVe/uSmY19GAC6pPmbWsn1b/k+ELOr3Nr5Rt+D4sYZda7L
         4brlwpxkPSBEJFdbdksoA0ZS0Z4a/TvDsPZkAbY0uAl+kiAcrMkCb2AHMOkGQ3yadvgt
         Pw1ouqzmcRyPwaRmGoURx9WLvVJxFchujpiteq9rf/3J7Ua4c10cu9xK+7TSob2mRS2s
         d4kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ps54vMIeUZmfEsgXPmAphxNoO3rLyIfowTpP7pEhGu4=;
        b=Z5wG7c4DVPg9sUbroLpxwqVXpDzOif6n47PXZLZxbytLgizV5E0krowv/tM57msNzW
         Qp8ek+Q4ZsBFJC7bd0SSxFth8hCWSaXXcjiVeDo8aB/wpgpHkt7pJ54ugGyMYBqMXtKz
         ELxUeSJoGCnyda1qSYFfgFYxaIjA90qABQYXdx6SeWUoZDXKgS27bHxjmfaLNQl1HRlH
         HhxntIXLweJIfiZ/saYX7tiRM6M25tkv6SBwcp38h3Y4KmBfodObEfA7MIjIcXtUYKcM
         gFbOkGsIcKOfLxGdv+Ph4277AB7zMK27x0MN+fLzYsUp0iFRAoDgoa3VQma0AOam0Eld
         grNQ==
X-Gm-Message-State: AOAM531UZr65pY4nIul7IbK3smDZrz5S2vjD3Lc881KkzRw5v6zRZcl6
        CEA+kVOxj7mTTJvSLqFOYyiQNMoZ434=
X-Google-Smtp-Source: ABdhPJzSd458gndj4/xT2AtPORcd6wj/I5DA/1ISKtbNbORdkd5NtAjfrmmCQqsdskFMocRuajI3mg==
X-Received: by 2002:a7b:c5d3:: with SMTP id n19mr21080340wmk.68.1621880398907;
        Mon, 24 May 2021 11:19:58 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 07/10] sgetmask.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:44 +0200
Message-Id: <20210524181947.459437-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sgetmask.2 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man2/sgetmask.2 b/man2/sgetmask.2
index 7563b57ff..59b58ceaf 100644
--- a/man2/sgetmask.2
+++ b/man2/sgetmask.2
@@ -27,12 +27,17 @@
 sgetmask, ssetmask \- manipulation of signal mask (obsolete)
 .SH SYNOPSIS
 .nf
-.B "long sgetmask(void);"
-.BI "long ssetmask(long " newmask );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.B "long syscall(SYS_sgetmask, void);"
+.BI "long syscall(SYS_ssetmask, long " newmask );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these functions,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These system calls are obsolete.
 .IR "Do not use them" ;
@@ -73,10 +78,6 @@ option.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide wrappers for these obsolete system calls;
-in the unlikely event that you want to call them, use
-.BR syscall (2).
-.PP
 These system calls are unaware of signal numbers greater than 31
 (i.e., real-time signals).
 .PP
-- 
2.31.1

