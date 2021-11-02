Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 844AD443560
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234834AbhKBSSU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235052AbhKBSSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:17 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4005C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:41 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id c4so4686657wrd.9
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MOWGu77qp5n2dGC2PSqR6/fLGUQBOkzyUG5pNk1Ek8E=;
        b=QG+8QLWhtQiW05MhgyXWb6vm5eiwMEhrHcA4hOz1rmyA9YWut3VVWYwwx2596OXUl4
         64VjlSYFLMJW7MONrCyNwPxtxM7IcRGcVhwn4jhvbgpxosp22hulyBpRyDeI+lwlknJm
         os7odIH7mdJv3ItiM1x9zDXVp4juGGx99NrKnQT3XzepJ6SBAWZ0r+7R8zVFTrHOAHUf
         Cj35I+VcoKjw1oQHpxNb3GeXgwGCnDXFRsZjDatNwt2fYMNMYbxCOqcBsvZiwwprviZ+
         QhEsoi6Y7tpAnByEPHEzhgp9yXcQIZiE4AGJ0W1Zd2ZIJxqpOVOllZ07SRPxUWjoDzPC
         0q9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MOWGu77qp5n2dGC2PSqR6/fLGUQBOkzyUG5pNk1Ek8E=;
        b=ADaJ7vHMHYsB6lLD7QHbopPHM4mQ3oUuE4nYwRGaUgbn889xFLprAy0kXl+Ce7JzJR
         kuQLI7dSc2mm7xGIll69gWdDGaoxXvNw2mjK2Wv0bAne2JPm0FOeaaQWxFthBPDzsb3+
         34M7JaANDIWeiS8kvR5VwIdItoXhs9BlnDVRTzOCe93gZBz2JOlapaDUVM+ar8SnFOs9
         T0B/cqI6LcI40SXaor2APX7r58ani8RwJDZ/TNYn1pLzDtSU6UrehMYb6Ul4VWLb7Zf4
         CZQnW7Ib7LdTp4MIA3qRYy7tihzhpB4ix0ikuoTd805oQSfJQz71B58iTIcK0zTm0ZaN
         hotA==
X-Gm-Message-State: AOAM533jzF0tpN8ypJi60Govvzjmv2v2Pzpw4OL3qAHCopbDlYCKGe8Z
        cwRFdaYs//EylRYJU+FDIpDgqwPehxE=
X-Google-Smtp-Source: ABdhPJx80zsTUeOv9mx8w4vEfuAanYt5J3/7E4fpem9w14O5cc5/J8xHZo3d3shfR0wBeMFZl97hKQ==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr23047408wrm.79.1635876939950;
        Tue, 02 Nov 2021 11:15:39 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:39 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 35/37] div_t.3, ldiv_t.3, system_data_types.7: Move ldiv_t to div_t.3
Date:   Tue,  2 Nov 2021 19:14:52 +0100
Message-Id: <20211102181454.280919-36-alx.manpages@gmail.com>
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
 man3/div_t.3             | 14 ++++++++++----
 man3/ldiv_t.3            |  2 +-
 man7/system_data_types.7 | 23 -----------------------
 3 files changed, 11 insertions(+), 28 deletions(-)

diff --git a/man3/div_t.3 b/man3/div_t.3
index bf1687e0d..3d2697cac 100644
--- a/man3/div_t.3
+++ b/man3/div_t.3
@@ -1,6 +1,6 @@
 .TH DIV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-div_t, imaxdiv_t \- quotient and remainder of an integer division
+div_t, ldiv_t, imaxdiv_t \- quotient and remainder of an integer division
 .SH SYNOPSIS
 .nf
 .B #include <stdlib.h>
@@ -10,6 +10,11 @@ div_t, imaxdiv_t \- quotient and remainder of an integer division
 .BR "    int rem;" "  /* Remainder */"
 .B } div_t;
 .PP
+.B typedef struct {
+.BR "    long quot;" " /* Quotient */"
+.BR "    long rem;" "  /* Remainder */"
+.B } ldiv_t;
+.PP
 .B #include <inttypes.h>
 .PP
 .B typedef struct {
@@ -18,9 +23,9 @@ div_t, imaxdiv_t \- quotient and remainder of an integer division
 .B } imaxdiv_t;
 .fi
 .SH DESCRIPTION
-.I div_t
+.RI [ l ] div_t
 is the type of the value returned by the
-.BR div (3)
+.RB [ l ] div (3)
 function.
 .PP
 .I imaxdiv_t
@@ -31,4 +36,5 @@ function.
 C99 and later; POSIX.1-2001 and later.
 .SH SEE ALSO
 .BR div (3),
-.BR imaxdiv (3)
+.BR imaxdiv (3),
+.BR ldiv (3)
diff --git a/man3/ldiv_t.3 b/man3/ldiv_t.3
index db50c0f09..e29b9e797 100644
--- a/man3/ldiv_t.3
+++ b/man3/ldiv_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/div_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 25a45e318..4acce2e41 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -136,29 +136,6 @@ types in this page.
 .RE
 .\"------------------------------------- lconv ------------------------/
 .\"------------------------------------- ldiv_t -----------------------/
-.TP
-.I ldiv_t
-.RS
-.IR Include :
-.IR <stdlib.h> .
-.PP
-.EX
-typedef struct {
-    long    quot; /* Quotient */
-    long    rem;  /* Remainder */
-} ldiv_t;
-.EE
-.PP
-It is the type of the value returned by the
-.BR ldiv (3)
-function.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR ldiv (3)
-.RE
 .\"------------------------------------- lldiv_t ----------------------/
 .TP
 .I lldiv_t
-- 
2.33.1

