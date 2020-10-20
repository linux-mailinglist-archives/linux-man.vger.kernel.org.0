Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E23729448F
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409938AbgJTVbx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVbx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:53 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05447C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:53 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s9so4468328wro.8
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a3/ILDRPOl4O79/1OT1aRKaDkEjrDlJzrhy5z8s3IKY=;
        b=ceIp5QnB3qgvZza6c9O31g2SCpzmuLZap/30brOmUF0rVv+XwlkZEW7h99F8lbTIk/
         3hd19O53/5U7OOgSIVyFFaafmhw3HkJePImZ8c78t/YeKJr1zbBlKgixqheYqzXmZVmv
         04XwyvYLEJxCSOBFwWkA8bVjTxKDbBqICJukn7i+UNcvo87Cs0XD+O0I5Vf7wfeaKZZt
         gXpNI5vPxw9GC/rqXCNHQ4gtH0PEsdzNkgu1xqXh0yKkoAZ6IUY96HLEDKRyKJu6N5gk
         0xwyj+Pmhq1BM1++iAHDbeBR9WQCcfm4HyJ4HaUol7Cn72QIprDgU2OiI8eMWOfMELlP
         9Czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a3/ILDRPOl4O79/1OT1aRKaDkEjrDlJzrhy5z8s3IKY=;
        b=ZHY6imcHUoD43ZmduvXR0hYGjTuEDOlw9m48V3qHQxc4zXuqmMUSE7aWlTHFTT7jhq
         Ylocky0+AMktJxGLjDh2WZy6LzOAV3pdrftLjeh5g+dGukA0nyH30Mnj933jAhfkPZa9
         pRCJ6lMimoFc+q5K1p8DQ3bY3EV6bc/qpuWz12rZ74C+gk0GTxHVpBPJoDoJ/+KP4FnD
         JcbVyyVU/vhwwcZLX9JtpGND51AQu41JDq6ClwKbYhkq4i0ez/fCiUzaGY6eA3jcbZlC
         F44gfdpBnlVE4WIevoJB2jtGeffxg5AZYifLaxpkD0aXUwVxdwYKvHgSP7vDPqqzcFFg
         V2OA==
X-Gm-Message-State: AOAM531tzavq9gzClLC/+2ZphyY6R+fOvjs23CcDIohBt/iD87lv6SYF
        AYiAtxflHSKIw++08NvAC8RRvcCIZuw=
X-Google-Smtp-Source: ABdhPJxWRKp8c9hW7wWq/bKyD8nchkpOpib+mYB7WKGFD9FmzGJap9Vj3kV5yVnGQM8Iz6RbHiJihQ==
X-Received: by 2002:a1c:9a93:: with SMTP id c141mr131640wme.168.1603229511613;
        Tue, 20 Oct 2020 14:31:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:51 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 03/10] list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 23:31:01 +0200
Message-Id: <20201020213107.83837-4-colomar.6.4.3@gmail.com>
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
 man3/list.3  | 18 ++++++++++++++++++
 man3/queue.3 | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 340b24f7c..020f66200 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -49,6 +49,24 @@
 .Nm LIST_REMOVE ,
 .\" .Nm LIST_SWAP ,
 .SH SYNOPSIS
+.Fn LIST_EMPTY "LIST_HEAD *head"
+.Fn LIST_ENTRY "TYPE"
+.Fn LIST_FIRST "LIST_HEAD *head"
+.Fn LIST_FOREACH "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
+.\" .Fn LIST_FOREACH_FROM "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
+.\" .Fn LIST_FOREACH_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn LIST_FOREACH_FROM_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
+.Fn LIST_HEAD "HEADNAME" "TYPE"
+.Fn LIST_HEAD_INITIALIZER "LIST_HEAD head"
+.Fn LIST_INIT "LIST_HEAD *head"
+.Fn LIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_INSERT_HEAD "LIST_HEAD *head" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
+.\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
+.Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
+.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
+.\"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
diff --git a/man3/queue.3 b/man3/queue.3
index 17adfcf3b..a3a2eb2b0 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -157,24 +157,6 @@ lists, tail queues, and circular queues
 .Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
 .\"
-.Fn LIST_EMPTY "LIST_HEAD *head"
-.Fn LIST_ENTRY "TYPE"
-.Fn LIST_FIRST "LIST_HEAD *head"
-.Fn LIST_FOREACH "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_FROM "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn LIST_FOREACH_FROM_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.Fn LIST_HEAD "HEADNAME" "TYPE"
-.Fn LIST_HEAD_INITIALIZER "LIST_HEAD head"
-.Fn LIST_INIT "LIST_HEAD *head"
-.Fn LIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_HEAD "LIST_HEAD *head" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
-.Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
-.\"
 .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
 .Fn TAILQ_EMPTY "TAILQ_HEAD *head"
 .Fn TAILQ_ENTRY "TYPE"
-- 
2.28.0

