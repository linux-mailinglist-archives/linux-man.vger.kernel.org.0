Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B59242A2135
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 21:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726995AbgKAUGK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 15:06:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726848AbgKAUGJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 15:06:09 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9179DC0617A6;
        Sun,  1 Nov 2020 12:06:09 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id x7so12216059wrl.3;
        Sun, 01 Nov 2020 12:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5ZOiDKXL6jldzyL1bHkfDSBXHlD1iBh+VDUQzVbWtJc=;
        b=l0n3oYFA53p53qi00TR/ViGi5f6v3Ian4juKWkj9Hk+2rRAeI3tqeqKJfroWdgHy97
         fYJaGGoEOBI5dQMmTyKkbEuJ+DbqzyOn9oC6T/mW5mA84xqsNPT1HBfoysqHucjGkWLB
         4RMuU7f5Gzz7U6sDg1r1yBOaVMapNuFlttLNIA6rlUlyP2cMdk/Ry9oTD08UYiy7vNkx
         GEzyImn4zr/R26J2Xyj0EX+JwruwH3b1+cUDTHw+hHizwlZmUX9Q4k+t5Hjjc1adgk1P
         QQA/txnzDGqh4dmKJx1/7yJchzL9xMOmGcaoY35QI1BAmTxKB5Jv5cyKKc8fpIcOkbSL
         LyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5ZOiDKXL6jldzyL1bHkfDSBXHlD1iBh+VDUQzVbWtJc=;
        b=NemYeEYu3ey5YCAPTtJe5fvpUd8fgDhmZ2vUySJ0hv9ANoZUiI4AzYyvCNb91uxYY8
         IocPwOzMFWqWV0Q7hNJR1Tz1oXwJUsQBr/TUAb3I9HWxzF4AeRwFcLWAglQMOLf6rX6e
         5Ps6VhBYNloaDM7oNEb4jYZIfkHuBI09mAgBcIng8NDhKzCLOIZUJPMKMbUM9eqJ7lAD
         Abcy4PlEZWa8jJYpgNeJ89WjciLFuB5MD4Uaxxyg7nJX3Uu67cwif1RBD60frv75ZPRY
         xJzLGcIQ6N6RScon+wfQhoViLQTL09IdvBlrVLkkqaDTdFQu1j3Pga9nLE4yVqDZnzJl
         cgqw==
X-Gm-Message-State: AOAM532NGvL/tQFCmINHO5t9uH+IEc7PwZpt6Tpc4pWE2BDiCzr5cVlV
        +mHzoJlUYzCg4W7jLMVWt+s=
X-Google-Smtp-Source: ABdhPJzKFsfaSfDq0u0DHE7gkZsPsyBclZS4+HnNwbRDwlrQfzrMknXrBQudvjNgIZ9yLllxab68OA==
X-Received: by 2002:adf:fc8b:: with SMTP id g11mr16125943wrr.300.1604261168200;
        Sun, 01 Nov 2020 12:06:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id v6sm12254933wmj.6.2020.11.01.12.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 12:06:07 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, posk@google.com, peterz@infradead.org,
        mathieu.desnoyers@efficios.com, paulmck@kernel.org,
        boqun.feng@gmail.com, linux-kernel@vger.kernel.org, pjt@google.com,
        ckennelly@google.com, shuah@kernel.org, posk@posk.io
Subject: [PATCH] membarrier.2: Update prototype
Date:   Sun,  1 Nov 2020 21:04:41 +0100
Message-Id: <20201101200440.17328-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel now uses 'flags' and added a new argument: 'cpu_id'.
These changes were introduced to the kernel
in commit 2a36ab717e8fe678d98f81c14a0b124712719840.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/membarrier.2 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 24a24ba86..42b7e2acc 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -23,6 +23,13 @@
 .\" %%%LICENSE_END
 .\"
 .TH MEMBARRIER 2 2020-06-09 "Linux" "Linux Programmer's Manual"
+.\" FIXME:
+.\" The Linux kernel now uses 'flags' and added a new argument: 'cpu_id'.
+.\" These changes were introduced to the kernel
+.\" in commit 2a36ab717e8fe678d98f81c14a0b124712719840.
+.\" The prototype has been updated,
+.\" but the new features have not yet been documented.
+.\" TODO: Document those new features.
 .SH NAME
 membarrier \- issue memory barriers on a set of threads
 .SH SYNOPSIS
@@ -30,7 +37,7 @@ membarrier \- issue memory barriers on a set of threads
 .PP
 .B #include <linux/membarrier.h>
 .PP
-.BI "int membarrier(int " cmd ", int " flags ");"
+.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
 .fi
 .PP
 .IR Note :
-- 
2.28.0

