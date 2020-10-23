Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29315297170
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:39:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1750681AbgJWOjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1750600AbgJWOjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:39:11 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93785C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:39:10 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b8so2150222wrn.0
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bmZQsXFA4g6rgUFQL31W3Yuz9hFMjf0GhjpZZtt5Y0c=;
        b=NL8p60Snwdrz2yTlEGGgOjHK3bszroW5/x1qedC2k44wWsGKE5bz3bHB00iCVBxHjd
         VEH3dZdknWK0cRdCzKaBw+wbwLmEnbk1nXYcws9eaqWgMrNcOzJR5dXrIVNfOkf2McH+
         gr+P92YwuwHULlUM/8MP2rADD+wO7ldIXSCTfFZjSVuLawsiTY0IibfepTqnaNzI6yDY
         wW+ukKcy6zjA36SJVQMX0pv6ankyU7uy8m+bqj8mRccBJgxwGb4zW1N8yvMgRPOxENa/
         qcaRSKHXnP7ClKgj3CHUyBwPxlDv26aiB+jknzXefKiMY3S2brJMvFif2q+3pkM4fl1k
         Sk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bmZQsXFA4g6rgUFQL31W3Yuz9hFMjf0GhjpZZtt5Y0c=;
        b=B60JmXzHxAwrrPDtzOWvHC1lAOkWhvT6R9++baqjEm4Il1Vmc8YkwfSo+Wo0W8zd42
         N/bojCTdscP/z8Gh2wqXxVZoOvCg+dt6MoxFaSMt3tEjBW3NYNHcX3KfZpazED95CD/j
         Dr0lsjgoMhfwLTpTJduxLqco5dwGjEcrFG4vT6vCndcCQVEc2xPLWHO6hiO1hSd+3dcd
         wiKa/H4iAU1LkKw1Z4XHdoeKYGFUlgfvXZcmnRfpBGwG+gZxhUh3sadRTcTSly/G9JaZ
         h1FrsjRDAyg0EYGYaBMtK2WHPlsbmbhRcJPcI805xQxrvrU4U2MHYp756BiLakclYDZ3
         hlzw==
X-Gm-Message-State: AOAM530mn39PTPCJeDIDkDHR5OuMkP3S0ZlEOynr+eKbH0AkC6+zP5fy
        AgPpKwd4FtCFYnPjRIb0sI1R7A0Jt+s=
X-Google-Smtp-Source: ABdhPJzEVW3sP8mj3QYUTTKrSjvah5ct2WlSI1gSEr6RHSEmZz2YFPtDVqmv3EMozexyRFZmV/OaCQ==
X-Received: by 2002:a5d:4ac1:: with SMTP id y1mr2906800wrs.303.1603463949332;
        Fri, 23 Oct 2020 07:39:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm3980757wrr.80.2020.10.23.07.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:39:08 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] queue.3: Sort alphabetically
Date:   Fri, 23 Oct 2020 16:38:26 +0200
Message-Id: <20201023143825.101968-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index bcf5ce00a..36432718d 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -40,8 +40,8 @@
 .Nm STAILQ_FIRST ,
 .Nm STAILQ_FOREACH ,
 .\" .Nm STAILQ_FOREACH_FROM ,
-.\" .Nm STAILQ_FOREACH_SAFE ,
 .\" .Nm STAILQ_FOREACH_FROM_SAFE ,
+.\" .Nm STAILQ_FOREACH_SAFE ,
 .Nm STAILQ_HEAD ,
 .Nm STAILQ_HEAD_INITIALIZER ,
 .Nm STAILQ_INIT ,
@@ -50,9 +50,9 @@
 .Nm STAILQ_INSERT_TAIL ,
 .\" .Nm STAILQ_LAST ,
 .Nm STAILQ_NEXT ,
+.Nm STAILQ_REMOVE ,
 .\" .Nm STAILQ_REMOVE_AFTER ,
 .Nm STAILQ_REMOVE_HEAD ,
-.Nm STAILQ_REMOVE ,
 .\" .Nm STAILQ_SWAP ,
 .Nm TAILQ_CONCAT ,
 .Nm TAILQ_EMPTY ,
@@ -60,12 +60,12 @@
 .Nm TAILQ_FIRST ,
 .Nm TAILQ_FOREACH ,
 .\" .Nm TAILQ_FOREACH_FROM ,
-.\" .Nm TAILQ_FOREACH_SAFE ,
 .\" .Nm TAILQ_FOREACH_FROM_SAFE ,
 .Nm TAILQ_FOREACH_REVERSE ,
 .\" .Nm TAILQ_FOREACH_REVERSE_FROM ,
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
 .\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE ,
+.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
+.\" .Nm TAILQ_FOREACH_SAFE ,
 .Nm TAILQ_HEAD ,
 .Nm TAILQ_HEAD_INITIALIZER ,
 .Nm TAILQ_INIT ,
@@ -107,8 +107,8 @@ lists, tail queues, and circular queues
 .Fn STAILQ_FIRST "STAILQ_HEAD *head"
 .Fn STAILQ_FOREACH "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_FOREACH_FROM "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
 .\" .Fn STAILQ_FOREACH_FROM_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
 .Fn STAILQ_HEAD "HEADNAME" "TYPE"
 .Fn STAILQ_HEAD_INITIALIZER "STAILQ_HEAD head"
 .Fn STAILQ_INIT "STAILQ_HEAD *head"
@@ -117,9 +117,9 @@ lists, tail queues, and circular queues
 .Fn STAILQ_INSERT_TAIL "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_LAST "STAILQ_HEAD *head" "TYPE" "STAILQ_ENTRY NAME"
 .Fn STAILQ_NEXT "TYPE *elm" "STAILQ_ENTRY NAME"
+.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_REMOVE_AFTER "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
 .Fn STAILQ_REMOVE_HEAD "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
 .\"
 .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
@@ -128,12 +128,12 @@ lists, tail queues, and circular queues
 .Fn TAILQ_FIRST "TAILQ_HEAD *head"
 .Fn TAILQ_FOREACH "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
 .\" .Fn TAILQ_FOREACH_FROM "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
 .\" .Fn TAILQ_FOREACH_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
 .Fn TAILQ_FOREACH_REVERSE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
 .\" .Fn TAILQ_FOREACH_REVERSE_FROM "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
 .\" .Fn TAILQ_FOREACH_REVERSE_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
 .Fn TAILQ_HEAD "HEADNAME" "TYPE"
 .Fn TAILQ_HEAD_INITIALIZER "TAILQ_HEAD head"
 .Fn TAILQ_INIT "TAILQ_HEAD *head"
-- 
2.28.0

