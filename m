Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C013C443558
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235006AbhKBSSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235004AbhKBSSI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:08 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF29C061203
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:32 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d3so34627307wrh.8
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8osU0cjf70pnXvp/HekBN2krlzwSwHsZ6bQ8O1otWCs=;
        b=S/OQtoCEIUMNH/ieJk97h7nb3bA4SodVrHTkSBXnIQd6pjXqSBt2zQeHBZlsPKYX5t
         IIj2yHZ1dvTh7vSqDReXB6FWtmcjSrdewwWLvUytAfypMyXY64hcDCE39gb8wX85Ax0q
         pdOAPxo3bINcFurLjzegFaToL5z1lS1A4B+zfjBV+xPvBZcQuaTK+YBebLQr6i2aMUnb
         M2hRgYELeE32rdt6morjDPw50/I6EkNbPU+Rpt9abPX8s0dX38MnNaSvIYXC76GyxA/G
         CgCpGxDBmgbyIndwNZ8w543TLCDgYfRhkWbhnJQU9y2iPl9VSTJQ+UxR4J+LvCCVUAc0
         voJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8osU0cjf70pnXvp/HekBN2krlzwSwHsZ6bQ8O1otWCs=;
        b=0JsPvnd8JzyJHbRvBOmABDaqDnbG85Ztuyf5yc0f8xqlRnE+NKlbdxSbcjgMAhaH6i
         9AsJMEIZMyyVJA80vBHmloV0cZOgs5auhEUOiPwUTBfdvjf/9/nAkSVBYV+U+VySEjW0
         l3pqgNJnxzD0J4RYSnN++GTOARMcvCpyZAgan8Cq1zdjDJWn4sLy3ABC5uxSoK2mzf2T
         dh3KS7dnJWvogHRDVWrVNwXgfplcs7uCBnwMteqjo3NFr6IaqUJ7wORJovs+Jgp8ZcY+
         9p8oKrSpDhY/SijinxBxMv9VwIxziL0AB8mwaq9Os7XDoWlzA93Zov4ka2ysSnIkL1ml
         JQ7A==
X-Gm-Message-State: AOAM531rw4VDv4isFgtZsH6eFbfPnhn2ZDsIV8BjF7fb4W8wE3iDnjHQ
        Cb+TGcEGHhIP+VD5yinxgCH1cr2PpHQ=
X-Google-Smtp-Source: ABdhPJxBfS8JuuDynyW8o2fOf2TckOr8bwdJJ1fbKs4jL/qdKjOLldz+GrDHHD4v5+JcOioboEGNFQ==
X-Received: by 2002:a05:6000:1a86:: with SMTP id f6mr96658wry.230.1635876931538;
        Tue, 02 Nov 2021 11:15:31 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:31 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 27/37] div_t.3, imaxdiv_t.3, system_data_types.7: Move imaxdiv_t to div_t.3
Date:   Tue,  2 Nov 2021 19:14:44 +0100
Message-Id: <20211102181454.280919-28-alx.manpages@gmail.com>
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
 man3/div_t.3             | 21 ++++++++++++++++++---
 man3/imaxdiv_t.3         |  2 +-
 man7/system_data_types.7 | 23 -----------------------
 3 files changed, 19 insertions(+), 27 deletions(-)

diff --git a/man3/div_t.3 b/man3/div_t.3
index 2b83a002d..bf1687e0d 100644
--- a/man3/div_t.3
+++ b/man3/div_t.3
@@ -1,6 +1,6 @@
 .TH DIV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-div_t \- quotient and remainder of an integer division
+div_t, imaxdiv_t \- quotient and remainder of an integer division
 .SH SYNOPSIS
 .nf
 .B #include <stdlib.h>
@@ -9,11 +9,26 @@ div_t \- quotient and remainder of an integer division
 .BR "    int quot;" " /* Quotient */"
 .BR "    int rem;" "  /* Remainder */"
 .B } div_t;
+.PP
+.B #include <inttypes.h>
+.PP
+.B typedef struct {
+.BR "    intmax_t quot;" " /* Quotient */"
+.BR "    intmax_t rem;" "  /* Remainder */"
+.B } imaxdiv_t;
+.fi
 .SH DESCRIPTION
-It is the type of the value returned by the
+.I div_t
+is the type of the value returned by the
 .BR div (3)
 function.
+.PP
+.I imaxdiv_t
+is the type of the value returned by the
+.BR imaxdiv (3)
+function.
 .SH CONFORMING TO
 C99 and later; POSIX.1-2001 and later.
 .SH SEE ALSO
-.BR div (3)
+.BR div (3),
+.BR imaxdiv (3)
diff --git a/man3/imaxdiv_t.3 b/man3/imaxdiv_t.3
index db50c0f09..e29b9e797 100644
--- a/man3/imaxdiv_t.3
+++ b/man3/imaxdiv_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/div_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 54bef15a4..3bdaff8a4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -67,29 +67,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- gid_t ------------------------/
 .\"------------------------------------- id_t -------------------------/
 .\"------------------------------------- imaxdiv_t --------------------/
-.TP
-.I imaxdiv_t
-.RS
-.IR Include :
-.IR <inttypes.h> .
-.PP
-.EX
-typedef struct {
-    intmax_t    quot; /* Quotient */
-    intmax_t    rem;  /* Remainder */
-} imaxdiv_t;
-.EE
-.PP
-It is the type of the value returned by the
-.BR imaxdiv (3)
-function.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR imaxdiv (3)
-.RE
 .\"------------------------------------- intmax_t ---------------------/
 .TP
 .I intmax_t
-- 
2.33.1

