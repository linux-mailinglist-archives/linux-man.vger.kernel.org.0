Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1EC12702DF
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726306AbgIRRFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726250AbgIRRFK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:10 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6405C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:09 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so6279923wmj.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+kBK4Z4G82hnx6cp99PHW4FFs5idd6MPIKftRGfW7Zo=;
        b=HGm0izWZWcXebRsLznAzZRQF78iKFjVw38wnHXvF+j7+9J37xEQsdtYDgsnNeQGN4M
         eTKchiclgUUl4bgnNYXf3Vl6A15QdNXym0FjfvXMnHX6jS1UmbujMj1KL+hbmtvDIBxH
         Nmk8WyGBJolwA0cSm89SQpgC0nQUjp5AaChzrUhlGJsBDOZa4mcQzhrDJaNXnY75iaX5
         nSGHGgQoKtGwkyarb/A02dXY/F9qZeXcdt0fJfYVmhglnD25rOeKL14j6Ig8FEkuUbWO
         wV4iZcSpZu0p2h+FArb97cV6WUkeXmgmSJVkAHFmRm6m63f7RxPvGUMBh1L47jb21Nn0
         BRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+kBK4Z4G82hnx6cp99PHW4FFs5idd6MPIKftRGfW7Zo=;
        b=thI6BWS6ZCpG4pJQSxJZB+5twy1xBwupySSHlpxkpEf0Jia6iblev9+Z0ZLt409mWe
         2nD3Gvuq74RBWG3zQbeI9K/8f0GYyqVijnTTJ7akpwuDUTUL4VmLr6nAntxp2Pf/2Dbm
         4mcmraA+9F710RsWu3LHb0ge3sm9HN0n6Q2IEBY1kLSdlTB5gwZzU5OdXhN8SBm/EKHU
         eZhm1fEf5esNOyHx6IYfRrGkcnX7l849hgwfHq5H7NpnOCBfXh7wgR/xrUq7i66CfAXh
         jytDjqt0hI/c9sfM1rlSRLWAZbMOMaGeCcNjUVHylfFZGlx3dnD9UGsstwlGkJxnlUcX
         gk/g==
X-Gm-Message-State: AOAM530i2ffpy5jOjlKO8+zLHVHc6J4906ZjrnVJrDSw4OxZiHAwuKJ5
        ihfo2w89STMKoEfB3qT/KTM=
X-Google-Smtp-Source: ABdhPJxdcKfcC9jrXFS9MaMyag+wYVaDTPgMc4nbE9uoQiQn9XThm0wZRIXZeRZ9gkgiCMojBwUW+A==
X-Received: by 2002:a1c:81c9:: with SMTP id c192mr15916203wmd.2.1600448708580;
        Fri, 18 Sep 2020 10:05:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:05:08 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 8/9] system_data_types.7: Document siginfo_t
Date:   Fri, 18 Sep 2020 19:04:42 +0200
Message-Id: <20200918170442.94920-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Note: There are a few members off this structure that are
not required by POSIX (XSI extensions, and such).

I simply chose to not document them at all.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 35 ++++++++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f7d25bec9..b705ed5ae 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -213,6 +213,35 @@ See also:
 See also the
 .I aiocb
 structure in this page.
+.\"------------------------------------- siginfo_t --------------------/
+.TP
+.I siginfo_t
+.IP
+Include:
+.IR <signal.h> ;
+or
+.IR <sys/wait.h> .
+.IP
+.EX
+typedef struct {
+    int             si_signo; /* Signal number */
+    int             si_code; /* Signal code */
+
+    pid_t           si_pid; /* Sending process ID */
+    uid_t           si_uid; /* Real user ID of sending process */
+    void           *si_addr; /* Address of faulting instruction */
+    int             si_status; /* Exit value or signal */
+
+    union sigval    si_value; /* Signal value */
+} siginfo_t;
+.EE
+.\".IP
+.\" FIXME: Add a description?
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR regexec (3)
 .\"------------------------------------- sigval -----------------------/
 .TP
 .I sigval
@@ -239,9 +268,9 @@ See also:
 See also the
 .I sigevent
 structure
-.\"and the
-.\".I siginfo_t	FIXME
-.\"type
+and the
+.I siginfo_t
+type
 in this page.
 .\"------------------------------------- size_t -----------------------/
 .TP
-- 
2.28.0

