Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 447B83A4D90
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbhFLIbF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:31:05 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:46033 "EHLO
        mail-wr1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbhFLIbE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:31:04 -0400
Received: by mail-wr1-f44.google.com with SMTP id z8so8455990wrp.12
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A3eomUntPxZYgiX2mYecgN2th+vTx9aSg06yPvluuv0=;
        b=XF0CkEH7FHO5/eEtOfonYYAAoxuewW8rA8m1S9V9AHVyj1UsEbW457zqMnHeTkJhIe
         BAR/6vnveXmwv5EMuzF2d4IGnz15Wue8kAbYnSj4LI8wRzrbiE213ITsA2zG/dCnzTZH
         5+EKj9QzAPMIakAi3+HnMwK9rTPapmmaHgo0hGJW/W8+np64Bhj7JfzO4rCReNxeC1Oz
         ynH3yUJSFeVX/onh/SXrM25WDl2DEduF9pxnUORxwqMBMLLa0KIJdLClMds7FMyj7UwS
         +P/U7WQzYFW1Elp6y+2MkcTdc2rQyWU98Te/rf56X15QKt9G/BieQDjksknsTGSH4CoO
         d38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A3eomUntPxZYgiX2mYecgN2th+vTx9aSg06yPvluuv0=;
        b=eBWTv0yRIr2AXf4JwrIYySwl4ls6JsvyDNjUN18CAWhy43F/wey4IbkW5Rj9xwBSzP
         pkEJGWqW1LIxOG6jLCdUNNR8m6xo95CrF9qzCoVf4Sedln2aHRcd1a/8Yqnpw+E52iRP
         FP9cbKbLIGTbRL2m9m+5keMHgwSsTSxfoORTm4Zla7Q4k884FQPDy2qrpZsL49lRFf28
         OQL4CBDSwliOPd7B4x84q3eKqlm/9GIHrOXOsijxgSFck+OFqTapqNoHGWXgj2lltatr
         xgkBo6xDnuK1OkYrikrj4liYuSdXCs0vJDfMRWgtc6Wa1TgXkYrgrJAtHrM4tvDMdCIs
         6CxQ==
X-Gm-Message-State: AOAM530ZDWlzXfwfgjSgqUF4LVYo9T+iAM864ZOPuelTQvMYe6aroR0z
        roBH2mJhyY5giIl45ruI2Vg=
X-Google-Smtp-Source: ABdhPJwXJ1kv7C5zq4Mk033RYE54X+HmBhy7mHAna7RjpFofyxRz5xB5/+IeFG9v1JkKx+Gd9QZx7A==
X-Received: by 2002:adf:b648:: with SMTP id i8mr8098009wre.425.1623486469885;
        Sat, 12 Jun 2021 01:27:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g17sm9864035wrp.61.2021.06.12.01.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:27:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 1/3] getline.3: !*lineptr is sufficient
Date:   Sat, 12 Jun 2021 10:27:39 +0200
Message-Id: <20210612082741.12211-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

No implementation or spec requires *n to be 0 to allocate a new buffer:
  * musl checks for !*lineptr
    (and sets *n=0 for later allocations)
  * glibc checks for !*lineptr || !*n
    (but only because it allocates early)
  * NetBSD checks for !*lineptr
    (and sets *n=0 for later allocations)
    (but specifies *n => mlen(*lineptr) >= *n as a precondition,
     to which this appears to be an exception)
  * FreeBSD checks for !*lineptr and sets *n=0
    (and specifies !*lineptr as sufficient)
  * Lastly, POSIX.1-2017 specifies:
    > If *n is non-zero, the application shall ensure that *lineptr
    > either points to an object of size at least *n bytes,
    > or is a null pointer.

The new wording matches POSIX, even if it arrives at the point slightly
differently

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getline.3 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index a32d7e770..6641ecc35 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -59,9 +59,7 @@ one was found.
 .PP
 If
 .I "*lineptr"
-is set to NULL and
-.I *n
-is set 0 before the call, then
+is set to NULL before the call, then
 .BR getline ()
 will allocate a buffer for storing the line.
 This buffer should be freed by the user program
-- 
2.32.0

