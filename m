Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE004295E9A
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898455AbgJVMjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898471AbgJVMjG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:06 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F001C0613DB
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:01 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id g12so2178118wrp.10
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F5bJx+SEZkvQ1oW88ZCrdSTI6mENaykHoICvKMIS9K8=;
        b=loEgDg53Q8tLMhtyJJ3MVfSLgsiVmK2wSl61k5gPHXQ16msn8sDU8m5EClqeymUZxM
         lbeN4h4QqM/9Ant7ayN/yvXbOBITMmEUaQspPGsmA8Kj2UIuE2tCghpe06RmMcIt6PVh
         SLgvdA9Q/C1piJByzIMAZStjng0ZLlac8OP+HJoPAmeZ54gBq4FX/z4AQGOVxAv8E+EU
         4cd0Oq6ELWI02e/rzKxW7hEHNCC4wrWSIgPnY6En93HSLoemwbEc4M5SNg/LSWPziUI6
         NEHIZJvxVBhqEqTtfP7SnVJYh+4sAtE16u46Uxd7+NuqfoBReD3L4f7WNn6sp85/l4fg
         ZhOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F5bJx+SEZkvQ1oW88ZCrdSTI6mENaykHoICvKMIS9K8=;
        b=O6m6jqMYmkYg0bHVsijDvTtJIa1mJRKPPz/GS2fH7uK5IygGf8vQA+BquQejBtOfJr
         rnUvYkUIXhPhhyNpn7m2irTQptxupB7Ff9w1Yi/YE4RGGWdrs/GXDKSGd11MPokT4WZn
         iTVY8xfIu3eKYO6Id+ig9geFZSnDRBZCSGadskxeoGoxT0tTAzZTvYUbgm4RtGzc2W6r
         2q80rIeG5zakHOi1rvmpHJAfpKHjr5iDW+/Lc+Jt+oMNrTOjy7enp1pvaX2rCVHL8xCP
         Y94vEW4BP2l3FC9NLC2eQ5sO45xL72YcUmi2L8rrwcYRY6hzdLqupMZU8Uo4B1DuGDEl
         nZjg==
X-Gm-Message-State: AOAM532pgXe0tFQ6x+PWc5ygqie0loKlaikER7dlb8apTxflIva5gOkn
        CFtY1Y9EEcBn03nd3QlsHdw=
X-Google-Smtp-Source: ABdhPJw9MTnXhQm9f3rQJ9V9FWjeWGbiu9umdlTI++xxX3DEEPVJCRRbYJcJlMZvdRvrMXm+RitQ8w==
X-Received: by 2002:a5d:684d:: with SMTP id o13mr2697834wrw.302.1603370340115;
        Thu, 22 Oct 2020 05:39:00 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:59 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/10] SLIST_EMPTY.3, SLIST_ENTRY.3, SLIST_FIRST.3, SLIST_FOREACH.3, SLIST_HEAD.3, SLIST_HEAD_INITIALIZER.3, SLIST_INIT.3, SLIST_INSERT_AFTER.3, SLIST_INSERT_HEAD.3, SLIST_NEXT.3, SLIST_REMOVE.3, SLIST_REMOVE_HEAD.3: Link to the new slist(3) page instead of queue(3)
Date:   Thu, 22 Oct 2020 14:38:21 +0200
Message-Id: <20201022123821.22602-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/SLIST_EMPTY.3            | 2 +-
 man3/SLIST_ENTRY.3            | 2 +-
 man3/SLIST_FIRST.3            | 2 +-
 man3/SLIST_FOREACH.3          | 2 +-
 man3/SLIST_HEAD.3             | 2 +-
 man3/SLIST_HEAD_INITIALIZER.3 | 2 +-
 man3/SLIST_INIT.3             | 2 +-
 man3/SLIST_INSERT_AFTER.3     | 2 +-
 man3/SLIST_INSERT_HEAD.3      | 2 +-
 man3/SLIST_NEXT.3             | 2 +-
 man3/SLIST_REMOVE.3           | 2 +-
 man3/SLIST_REMOVE_HEAD.3      | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man3/SLIST_EMPTY.3 b/man3/SLIST_EMPTY.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_EMPTY.3
+++ b/man3/SLIST_EMPTY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_ENTRY.3 b/man3/SLIST_ENTRY.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_ENTRY.3
+++ b/man3/SLIST_ENTRY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_FIRST.3 b/man3/SLIST_FIRST.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_FIRST.3
+++ b/man3/SLIST_FIRST.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_FOREACH.3 b/man3/SLIST_FOREACH.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_FOREACH.3
+++ b/man3/SLIST_FOREACH.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_HEAD.3 b/man3/SLIST_HEAD.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_HEAD.3
+++ b/man3/SLIST_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_HEAD_INITIALIZER.3 b/man3/SLIST_HEAD_INITIALIZER.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_HEAD_INITIALIZER.3
+++ b/man3/SLIST_HEAD_INITIALIZER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_INIT.3 b/man3/SLIST_INIT.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_INIT.3
+++ b/man3/SLIST_INIT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_INSERT_AFTER.3 b/man3/SLIST_INSERT_AFTER.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_INSERT_AFTER.3
+++ b/man3/SLIST_INSERT_AFTER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_INSERT_HEAD.3 b/man3/SLIST_INSERT_HEAD.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_INSERT_HEAD.3
+++ b/man3/SLIST_INSERT_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_NEXT.3 b/man3/SLIST_NEXT.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_NEXT.3
+++ b/man3/SLIST_NEXT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_REMOVE.3 b/man3/SLIST_REMOVE.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_REMOVE.3
+++ b/man3/SLIST_REMOVE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
diff --git a/man3/SLIST_REMOVE_HEAD.3 b/man3/SLIST_REMOVE_HEAD.3
index c2956c9fc..260541bcb 100644
--- a/man3/SLIST_REMOVE_HEAD.3
+++ b/man3/SLIST_REMOVE_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/slist.3
-- 
2.28.0

