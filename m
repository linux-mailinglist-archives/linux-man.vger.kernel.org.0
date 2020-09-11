Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D826B26765D
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725871AbgIKXJa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:09:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725856AbgIKXJ1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:09:27 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45FE2C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:09:27 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t10so12954058wrv.1
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fNNWgFjzqAGY8F9K2dMDMWHx8iLUu/tWGUppFq5KsxQ=;
        b=atAqQFmtUFz4mVPVAyMDCodq16TbkZVaD1JbAp6jwx71OEDTjTioh94OxMrYbnuz2J
         tsaFJRom3INGiy/W8hn5zU8ojwwBumf9HZaFtU1UA2xIYkQVrz5aTR8VMKjpH2uNMVzT
         jFjm0QWyZYr4KLkdOuONIJ8uzgsVw0gJgkXWfSEX9Kau4J55hafTZPZu93NY9Dnm/aGO
         Z031KMGUDGxEax2a0YCfHcEsz2c6u5kKW7NpDKnVkap+h9cPdlnYp9z2O2+h/8Bbjr7O
         lPSf9sqX4QBxVPJVm4hfvPLCfwTm+4TDahubIIJANtXGc5A7qlGcW/T79sQjUT8Bk8C0
         ylcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fNNWgFjzqAGY8F9K2dMDMWHx8iLUu/tWGUppFq5KsxQ=;
        b=ZciU8XfYJcHHJkYiye7pk4TlRiHrwlEfglmsjpQ4Iud9AGoA7h/dlnIsnrmYdkTzVm
         vESRr9j7B5Im1r6LzwgbI3e7pKensAKqiGTGKxy1uKPFJva1rdvRrYmqCkDk3e2ri4Yu
         2fpcBEg6WLIr7DT5jai+cPk+UXt53XEpUbIiKL9Zk5BpY6XoD7o7F4hpvbFDiJArRed5
         sjBqPibnMtQ0tY+invMDIS+9SnEDZlbnHdURZOueFmkKUZutu0I339UIkNJ5ydfK9J/P
         l9w+++FwV/K3PQEJ+PdIoCqXY1EbnPJThM0E1rD3/qGJNdAmjdHobzM1NxfGo5s76tAG
         igYQ==
X-Gm-Message-State: AOAM532YpqG+yHnmQD07EicG2S5kLAJAbTEBxv6XoJLOoW/CDsUXqyML
        LRQgCQrtHFcwP6tlEc6x3c0=
X-Google-Smtp-Source: ABdhPJxFEK2uGKyc9au1QBKZLeD7zfEtqMMIeU6kPR2VD5n6yQ5xGzaIVSgtLcUUOKidfM9P2ZMWSw==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr4516318wrn.66.1599865765835;
        Fri, 11 Sep 2020 16:09:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f6sm9188289wme.32.2020.09.11.16.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:09:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] getaddrinfo_a.3: Use C99 style to declare loop counter variables
Date:   Sat, 12 Sep 2020 01:09:18 +0200
Message-Id: <20200911230918.28148-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getaddrinfo_a.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 3a8ddc98e..ca108df1a 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -495,7 +495,7 @@ static void
 wait_requests(void)
 {
     char *id;
-    int i, ret, n;
+    int ret, n;
     struct gaicb const **wait_reqs = calloc(nreqs, sizeof(*wait_reqs));
                 /* NULL elements are ignored by gai_suspend(). */
 
@@ -516,7 +516,7 @@ wait_requests(void)
         return;
     }
 
-    for (i = 0; i < nreqs; i++) {
+    for (int i = 0; i < nreqs; i++) {
         if (wait_reqs[i] == NULL)
             continue;
 
@@ -554,11 +554,11 @@ cancel_requests(void)
 static void
 list_requests(void)
 {
-    int i, ret;
+    int ret;
     char host[NI_MAXHOST];
     struct addrinfo *res;
 
-    for (i = 0; i < nreqs; i++) {
+    for (int i = 0; i < nreqs; i++) {
         printf("[%02d] %s: ", i, reqs[i]\->ar_name);
         ret = gai_error(reqs[i]);
 
-- 
2.28.0

