Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA72298387
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 21:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418736AbgJYUr0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 16:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418732AbgJYUr0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 16:47:26 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34CF9C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:26 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id x7so10239203wrl.3
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qHzXBKnLJ9RrEiUHhGjiTRl1JByTxDdejblLvn9WLTc=;
        b=DW+Or/pp1QAly1AMPJcrZBWdt2EVqSXrVvKxaOWJ9D0e7yn6QzLKyadfmy2jpC9Udz
         tizPm+1JUAsS/SlAgT4wmcCbucq3THNn8iCLqUwHB64eXgWIV/W/lyRKtU6cN8qUIfE1
         rvAK3i6EW02x9oc7M+T7Sw916ojzSjeCF65RVj8pfsCGMIT/XC44oKq0bk7YCeNPFCW5
         /gUn7r7KrLifERdOCatchr1LYKshMIqVvg2PXvlST/sbWj1lkgu7CJF3fC9nrvXHFNaU
         aHwbQIgV6H6XYCT2cAAbQ6e/7LAug3gT4cDzH4cC1oLwidHg25pceJP89Eo/BtM+75KL
         T6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qHzXBKnLJ9RrEiUHhGjiTRl1JByTxDdejblLvn9WLTc=;
        b=LVd1+7Kqz8VLfQBXKvXH1NKrbX2NDJSgboxPg+mqGBldUwRYvQD7bG3wj8p+mKMDc7
         tGQErdTjja+d7fUjFxG84WcfVO0dTS/kmRd0ooU6NIRqH6g1Y69K4dTN52Q6t3ld7QDV
         FzZZJA1YlILsWbd20NbA7P6CB3nuLvuOLRdqEDkpI+LRVnAh6NaxeKs873Uyg/Gc2YhP
         NFHXGELIZ9PCZUO8J4l7gnYVqRMsbdNQ1wzrdOrbiNdWG2GjCouRtudcRWuYHt1rhNDw
         H34bB/+1HBItA6znXAtPKJfT1PkUvCc6Rv6Ta+z/qHKUumpGpROlatCPsQH09Gj0/VGa
         YF0Q==
X-Gm-Message-State: AOAM530rOiIcxBeen1wY4zaJ/zJsYwP4f5TyUZ7mgs7OQx/ma73LHmmE
        /LGaL3kh8+uc1GqGm0D9yiI=
X-Google-Smtp-Source: ABdhPJzuKDRQPr9LQpWo0ozM506UHFiWGNrSRaeBV4gVcWoumfSIwQHeIV5T+1G8iFeF4Pp0zTRGLw==
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr14984342wrp.179.1603658844986;
        Sun, 25 Oct 2020 13:47:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p11sm18700339wrm.44.2020.10.25.13.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 13:47:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] circleq.3, insque.3, list.3, slist.3, tailq.3: SEE ALSO: queue(3) -> queue(7)
Date:   Sun, 25 Oct 2020 21:46:18 +0100
Message-Id: <20201025204617.6802-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
References: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

queue.3 has been moved to queue.7.

Fix SEE ALSO accordingly.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 2 +-
 man3/insque.3  | 2 +-
 man3/list.3    | 2 +-
 man3/slist.3   | 2 +-
 man3/tailq.3   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index dc74dc910..8e520e71d 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -354,4 +354,4 @@ main(void)
 .EE
 .SH SEE ALSO
 .BR insque (3),
-.BR queue (3)
+.BR queue (7)
diff --git a/man3/insque.3 b/man3/insque.3
index 153032c86..eb0237117 100644
--- a/man3/insque.3
+++ b/man3/insque.3
@@ -257,4 +257,4 @@ main(int argc, char *argv[])
 }
 .EE
 .SH SEE ALSO
-.BR queue (3)
+.BR queue (7)
diff --git a/man3/list.3 b/man3/list.3
index e70b6729b..e911da0d4 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -346,4 +346,4 @@ main(void)
 .EE
 .SH SEE ALSO
 .BR insque (3),
-.BR queue (3)
+.BR queue (7)
diff --git a/man3/slist.3 b/man3/slist.3
index 53e310f0a..af8629ea6 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -354,4 +354,4 @@ main(void)
 .EE
 .SH SEE ALSO
 .BR insque (3),
-.BR queue (3)
+.BR queue (7)
diff --git a/man3/tailq.3 b/man3/tailq.3
index a782a51e2..a58434ba6 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -437,4 +437,4 @@ main(void)
 .EE
 .SH SEE ALSO
 .BR insque (3),
-.BR queue (3)
+.BR queue (7)
-- 
2.28.0

