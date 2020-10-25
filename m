Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 463F4298102
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414870AbgJYJhP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:14 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 314B8C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:14 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b8so8785501wrn.0
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zHm8AFgqOSAhlultGfzojl6nSuir57s+7VNjy15KpPI=;
        b=XcNZ6xoE1RH5sOn+FKhRFLgF4e8QwbK/pb0HdWkETTIcTkeHHz9eef7hKkvtHIFF+Y
         oHGTPIOW7PitpMwjQDnNMn61bV/ahVDQ82+Vlz8gh+UTKWKqQlx4/IRdkiWP/LYLXe+4
         H7tOr4cfVyfm9kLmhjZkQCRrt0CdpJcAahuxuweWudM0J5FDR52V2itq7M9LA/gTfiyI
         9Ltfh39aHrxIxL2dMhrwt0Ly5U7aIeW9MuxNJxnQ4HHh+OZaLkCaNwH6GoN/mQxI/vuI
         gbofece2G6PHLUyrKoSyvbkvbuvFX/CM1gNixUvvRdwdbCP+F1sUKYQRCBz1U0Bn8qHi
         3dGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zHm8AFgqOSAhlultGfzojl6nSuir57s+7VNjy15KpPI=;
        b=tQPEhXtunBr3O9wVmDQ/roEba2N0SwoQEH6gh5qqWQAJi8emBdO2I2xzlm+1OwshDA
         S9JMz8Uticmft3nerpEWDMzDkBudqVKQHa2eNYjNa1WCLXyfjG03FBJrDDcajWSAA1w6
         oYLNydSaH0IVujofNmPU5HORdEbMb1Nu/cMlRm3RHxQQNl419nouBNwRDWOFVYgCMnQ+
         Sy8Vr5BoD6jk6/FnYaWY8vQeEYk/EGVEwgcggtV/wXbkuEdM/MD0DqwJI7i6of41SYpZ
         P2EB1z9JYra7o9GGYPAjg+zEEg8nNuYLLOCesAbVMfxZNLn1z4GuyiNOxk3BMVi065l4
         wdvw==
X-Gm-Message-State: AOAM5328LavazIMRxg5lf9KT7Fmt7oAI5cD+EA8obf0XCCYqEzujaazp
        f0RmU8nFtrRGyBJcwyfAiK4=
X-Google-Smtp-Source: ABdhPJxa+mYlpruhy4HTdiatgxLLfn1rcKCGfO6X9/rvSpHTQ4R3sl1a8fFl31iH2Sg69HJJjsFrGg==
X-Received: by 2002:adf:e3cb:: with SMTP id k11mr11938637wrm.341.1603618632990;
        Sun, 25 Oct 2020 02:37:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/10] queue.3, tailq.3: NAME: Move code from queue.3 to tailq.3
Date:   Sun, 25 Oct 2020 10:36:44 +0100
Message-Id: <20201025093651.4616-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
References: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 24 ------------------------
 man3/tailq.3 | 24 ++++++++++++++++++++++++
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index e4fb5ae79..9b3938226 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -34,30 +34,6 @@
 .Dt QUEUE 3
 .Os
 .Sh NAME
-.Nm TAILQ_CONCAT ,
-.Nm TAILQ_EMPTY ,
-.Nm TAILQ_ENTRY ,
-.Nm TAILQ_FIRST ,
-.Nm TAILQ_FOREACH ,
-.\" .Nm TAILQ_FOREACH_FROM ,
-.\" .Nm TAILQ_FOREACH_FROM_SAFE ,
-.Nm TAILQ_FOREACH_REVERSE ,
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM ,
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE ,
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
-.\" .Nm TAILQ_FOREACH_SAFE ,
-.Nm TAILQ_HEAD ,
-.Nm TAILQ_HEAD_INITIALIZER ,
-.Nm TAILQ_INIT ,
-.Nm TAILQ_INSERT_AFTER ,
-.Nm TAILQ_INSERT_BEFORE ,
-.Nm TAILQ_INSERT_HEAD ,
-.Nm TAILQ_INSERT_TAIL ,
-.Nm TAILQ_LAST ,
-.Nm TAILQ_NEXT ,
-.Nm TAILQ_PREV ,
-.Nm TAILQ_REMOVE
-.\" .Nm TAILQ_SWAP
 .Nd implementations of singly-linked lists, singly-linked tail queues,
 lists, tail queues, and circular queues
 .Sh SYNOPSIS
diff --git a/man3/tailq.3 b/man3/tailq.3
index c53b3ca4c..eb7cec356 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -31,6 +31,30 @@
 .\"
 .TH TAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.Nm TAILQ_CONCAT ,
+.Nm TAILQ_EMPTY ,
+.Nm TAILQ_ENTRY ,
+.Nm TAILQ_FIRST ,
+.Nm TAILQ_FOREACH ,
+.\" .Nm TAILQ_FOREACH_FROM ,
+.\" .Nm TAILQ_FOREACH_FROM_SAFE ,
+.Nm TAILQ_FOREACH_REVERSE ,
+.\" .Nm TAILQ_FOREACH_REVERSE_FROM ,
+.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE ,
+.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
+.\" .Nm TAILQ_FOREACH_SAFE ,
+.Nm TAILQ_HEAD ,
+.Nm TAILQ_HEAD_INITIALIZER ,
+.Nm TAILQ_INIT ,
+.Nm TAILQ_INSERT_AFTER ,
+.Nm TAILQ_INSERT_BEFORE ,
+.Nm TAILQ_INSERT_HEAD ,
+.Nm TAILQ_INSERT_TAIL ,
+.Nm TAILQ_LAST ,
+.Nm TAILQ_NEXT ,
+.Nm TAILQ_PREV ,
+.Nm TAILQ_REMOVE
+.\" .Nm TAILQ_SWAP
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
-- 
2.28.0

