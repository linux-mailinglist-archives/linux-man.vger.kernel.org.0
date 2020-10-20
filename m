Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FB23294495
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409946AbgJTVcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409944AbgJTVcA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:32:00 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93073C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:59 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id i1so4486297wro.1
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mX+MH2xG4807IYOP98T4Bey9D7LruGYmV5RGewiStec=;
        b=U9ii1vt3XHchCQD2kRjm7DHa4qclymiKDTVq9vX4qXhxBp1izc9nzTS1+yS9wV7xcR
         +3ZsmES1AXfbTnmzAuu7/rxBySQwkOCYoeBMbyfYUSmRmnT+/SpRMIt1zzjpn8sPcwJq
         d8EEbjMDAoEWIFU599JSfdsHdTLOej0Tn5qGrbTv6OD1xu5S9IGDcmbNkRrjtTnablMT
         66aWoVyAVfk26QD6sLamHLQcLJRRZvdktEOdPg9xpr1cgjqpeYyQ4vhtqmi0kkOlL2KJ
         tHjD5YSG3Mn11pZVTCAftlpZKrU5HuqQa1R+7T5zWgB44pC0Mn4jcFdRowwbbF+UtwVh
         /zzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mX+MH2xG4807IYOP98T4Bey9D7LruGYmV5RGewiStec=;
        b=PUzXsqrVf+M+MiJb7ZtzYsYLFrUkVzIF2UdZKfsbAsZPbQcjdCmlvaw2TInZduKMBn
         jTvmqV4LhAEmazE1MalxZfTtyS57Fv+e/eJLkLiKa1PSMG7+ITVB//fUAm7C7jn0neQj
         Nn5xsb1oQLhlwSzSQr6RAdHbWxr7hLC4khZVUdVZzDqY26szKccAhglxksRZOsHCvfey
         ykYCN9rhHLbwBATTKcp05CgivuSAD5Kyq7jxrW/sVZ+z0Yfgb+8ZBEKFRG88tUoe3ctP
         XHgCVZntadVXGhVEXa9eToN+whM0m1UyYscjXn0wRNureJeyU1TY73oibJAYGuhq6/sL
         I97w==
X-Gm-Message-State: AOAM533D3Ce5DZD2Q2FoLgFsb32MGHE9OSjUYMwbumjGm2po7DOlaZTp
        T/iyaIB9O+l2wMG7nSHiKxM=
X-Google-Smtp-Source: ABdhPJye3/Bzt4pgoxQLqOBgNZte3p4haw0baa7WkK2W0+7Ywwp6gI30Ptq6LmvLZHoSSQzCgFoQvg==
X-Received: by 2002:adf:e4c4:: with SMTP id v4mr361279wrm.79.1603229518344;
        Tue, 20 Oct 2020 14:31:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 09/10] LIST_EMPTY.3, LIST_ENTRY.3, LIST_FIRST.3, LIST_FOREACH.3, LIST_HEAD.3, LIST_HEAD_INITIALIZER.3, LIST_INIT.3, LIST_INSERT_AFTER.3, LIST_INSERT_BEFORE.3, LIST_INSERT_HEAD.3, LIST_NEXT.3, LIST_REMOVE.3: Link to the new list.3 page instead of queue.3
Date:   Tue, 20 Oct 2020 23:31:07 +0200
Message-Id: <20201020213107.83837-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/LIST_EMPTY.3            | 2 +-
 man3/LIST_ENTRY.3            | 2 +-
 man3/LIST_FIRST.3            | 2 +-
 man3/LIST_FOREACH.3          | 2 +-
 man3/LIST_HEAD.3             | 2 +-
 man3/LIST_HEAD_INITIALIZER.3 | 2 +-
 man3/LIST_INIT.3             | 2 +-
 man3/LIST_INSERT_AFTER.3     | 2 +-
 man3/LIST_INSERT_BEFORE.3    | 2 +-
 man3/LIST_INSERT_HEAD.3      | 2 +-
 man3/LIST_NEXT.3             | 2 +-
 man3/LIST_REMOVE.3           | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man3/LIST_EMPTY.3 b/man3/LIST_EMPTY.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_EMPTY.3
+++ b/man3/LIST_EMPTY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_ENTRY.3 b/man3/LIST_ENTRY.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_ENTRY.3
+++ b/man3/LIST_ENTRY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_FIRST.3 b/man3/LIST_FIRST.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_FIRST.3
+++ b/man3/LIST_FIRST.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_FOREACH.3 b/man3/LIST_FOREACH.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_FOREACH.3
+++ b/man3/LIST_FOREACH.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_HEAD.3 b/man3/LIST_HEAD.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_HEAD.3
+++ b/man3/LIST_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_HEAD_INITIALIZER.3 b/man3/LIST_HEAD_INITIALIZER.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_HEAD_INITIALIZER.3
+++ b/man3/LIST_HEAD_INITIALIZER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_INIT.3 b/man3/LIST_INIT.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_INIT.3
+++ b/man3/LIST_INIT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_INSERT_AFTER.3 b/man3/LIST_INSERT_AFTER.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_INSERT_AFTER.3
+++ b/man3/LIST_INSERT_AFTER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_INSERT_BEFORE.3 b/man3/LIST_INSERT_BEFORE.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_INSERT_BEFORE.3
+++ b/man3/LIST_INSERT_BEFORE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_INSERT_HEAD.3 b/man3/LIST_INSERT_HEAD.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_INSERT_HEAD.3
+++ b/man3/LIST_INSERT_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_NEXT.3 b/man3/LIST_NEXT.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_NEXT.3
+++ b/man3/LIST_NEXT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
diff --git a/man3/LIST_REMOVE.3 b/man3/LIST_REMOVE.3
index c2956c9fc..dfafea85d 100644
--- a/man3/LIST_REMOVE.3
+++ b/man3/LIST_REMOVE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/list.3
-- 
2.28.0

