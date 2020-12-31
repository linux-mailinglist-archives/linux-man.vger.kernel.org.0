Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 194792E81BD
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 20:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbgLaTPw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 14:15:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgLaTPv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 14:15:51 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602AEC061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 11:15:11 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id i9so20759596wrc.4
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 11:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OqlDi/KPja5RAm/MozWiy72Yd1oPYPqg7NFfR5bz9vU=;
        b=G4Yx1fajUZ8L0GdlX9fC/YsunTu9ZHndM3bTQOFA+CfNHY5lE24HrwvlCe0pvDz7nc
         8mMy+xsB58hNHPj4JwRW3P/AJM2eNi6pkaSyz5aI8beefAoPinsp88iXWLcKFUOSSZNa
         YeQ7zBpYIPLu/2/1oLGp+Laq8iycSyFqEi6fB3+3aotXoHk5mopDbGF2WDhI22W6R688
         6yR8loMCCjUFtcG492ulu/9gL7ARKYJZ5UQ+StmpoERf5wHhIdvQkfhGa/djf87H3DPB
         8Wp0sp1NoSvp+5r741YPc0qwqE1L9u8fcAMupsCaI8GTXhlFCzPbL2E/k18cSjAuvT+j
         dXlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OqlDi/KPja5RAm/MozWiy72Yd1oPYPqg7NFfR5bz9vU=;
        b=FlHDVjW6OHx+VxjGPQk3fXkuqGFE7I1Jq0pP3d44AsdkrKfAKFpoAgcjgudsij239o
         tkK7C+FSAaecQusxqZywLueuiOCg75/1WYXiZMIejqZAeiEs5OcWgMnsVZEGF7Lmu79r
         njje7ydH2KhCH7aUI/wCsxl2tOB43rfuMqmyz1ihm2cUpSx2msqkXG7MYYfFdrMJSGCh
         ZuI/rPqrDZchJVtKxFDa05SsHv8rnUhrt5KgAeyizUK5NfeNW+Wlwyp3oEy3CuQxQZkG
         b/rjcIYmw3kxcIDB5iDwgFbEe8+MNnSvGbPdOyTx5KgTg7NbYbTcBIQZtUvic3d+ncFx
         AnZQ==
X-Gm-Message-State: AOAM533hJ4h6v/tmsjMtV1ucH1g5xMGo6k1GkE+/4YlErRaC38BJtwQO
        wI/SOqrcgw89YT/nkuqBTOBKT+AvhHA=
X-Google-Smtp-Source: ABdhPJwq5FMWKlMIzTLY1F/Rk08SKbNSGxmAi4n168h+z5Z+PLq1ZYbDEtc0spKkZv/c3gC7OKe5eA==
X-Received: by 2002:adf:a441:: with SMTP id e1mr64949455wra.385.1609442110186;
        Thu, 31 Dec 2020 11:15:10 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id a62sm14801294wmh.40.2020.12.31.11.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 11:15:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/2] system_data_types.7: Add off64_t to system_data_types(7)
Date:   Thu, 31 Dec 2020 20:14:57 +0100
Message-Id: <20201231191457.672921-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 44 ++++++++++++++++++++++++++++++++++------
 1 file changed, 38 insertions(+), 6 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d2a271a3b..7f3309517 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -726,6 +726,38 @@ C99 and later; POSIX.1-2001 and later.
 .IR "See also" :
 .BR lldiv (3)
 .RE
+.\"------------------------------------- off64_t ----------------------/
+.TP
+.I off64_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+.PP
+Used for file sizes.
+It is a 64-bit signed integer type.
+.PP
+.IR "Conforming to" :
+Present in glibc.
+It is not standardized by the C language standard nor POSIX.
+.PP
+.IR Notes :
+The feature test macro
+.B _LARGEFILE64_SOURCE
+has to be defined for this type to be available.
+.PP
+.IR "See also" :
+.BR copy_file_range (2),
+.BR readahead (2),
+.BR sync_file_range (2),
+.BR lseek64 (3),
+.BR feature_test_macros (7)
+.PP
+See also the
+.\" .I loff_t
+.\" and
+.I off_t
+type in this page.
+.RE
 .\"------------------------------------- off_t ------------------------/
 .TP
 .I off_t
@@ -775,12 +807,12 @@ the width of this type can be controlled with the feature test macro
 .BR lockf (3),
 .BR posix_fallocate (3),
 .BR feature_test_macros (7)
-.\".PP		TODO: loff_t, off64_t
-.\"See also the
-.\".I loff_t
-.\"and
-.\".I off64_t
-.\"types in this page.
+.PP
+See also the
+.\" .I loff_t
+.\" and
+.I off64_t
+type in this page.
 .RE
 .\"------------------------------------- pid_t ------------------------/
 .TP
-- 
2.29.2

