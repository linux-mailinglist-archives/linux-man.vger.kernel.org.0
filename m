Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8997329448E
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409937AbgJTVbw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:52 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2A3EC0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id g12so4467827wrp.10
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UG0rXrw3CBsfE3f/zeHuA1mFbFHv3bshR6MacpsGi50=;
        b=gQD7zYJUpEa4Xmz536gNsh2lRtQ0FrpoKfzymQXTi7SEKBUf3dyXAcaZtpg74M0ZVY
         O3T9xQJWa3XThLpqEU6SeUoFG0fr+RqE2sFzqOpqijXKBPfOqClcQX93HBgHRVGtJj61
         eQ9SM1DlYrdNFaKRuMJ5inMtqsbhIF/FouLx8b07WUVuv4QSNiSuq/4Y2DSPDde5JSBk
         OrlWJBcV68rmbgSqKYE0p7GxgUgIyIlTslpcM9utBamyb9+m90X05fCIXrCIMSuDZtzx
         WHUD2G47VEtm8FhJk46+SJw1fAA/2D0QunH1Aqj6mS5DWIKH+tJEMheKnjSgQlcbJmyv
         1AzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UG0rXrw3CBsfE3f/zeHuA1mFbFHv3bshR6MacpsGi50=;
        b=XJG+Q3G4fmFnlZfZTN+lGEuNldc8MqR4kxoY7qriN4AzWjMaIcjh2r9O3B0rcHLSu9
         wRbsyrh7QWicZkChL52+4lpx9L6B6rbQDr1MtevSuZeZfAPQTEEXnfo0RIFJPkmW7h8p
         xsoByTcYwxm2PM5mdnpVTulMSXoAKrI7yoWCXBMB9u/UFbUMKDU1AjuKvd+vG5xzJvwc
         s7GVVXned93R4j6KSn0Ta6HzUO8Z5xujDqppaz+k9H4iEor7EFVRogoNydL0IPTU6Lnh
         yRfzaNZtyTSOWmOpxZ1JwKuM1TJ9aV61SqOpxPlwd5GqexWDBkWJU5XD15NG2Zb+ZFnd
         GmZg==
X-Gm-Message-State: AOAM533HhlCBQnu8ruzx0xTNBQY0+kqSX5gK9uby95Y8bojBsgmF4ZHZ
        /wTx4TCivhuh8Qu8edZxo8ufjIli0CA=
X-Google-Smtp-Source: ABdhPJxA4t1sXfkjWQA3EomL35mY15EfMsemx586dBSqmxD6RnulMV8GfriIe5hv+ZXzldaXPdzrLQ==
X-Received: by 2002:a1c:a485:: with SMTP id n127mr5650wme.44.1603229510540;
        Tue, 20 Oct 2020 14:31:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:50 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 02/10] list.3, queue.3: NAME: Move code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 23:31:00 +0200
Message-Id: <20201020213107.83837-3-colomar.6.4.3@gmail.com>
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
 man3/list.3  | 17 +++++++++++++++++
 man3/queue.3 | 17 -----------------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 127c391f1..340b24f7c 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -31,6 +31,23 @@
 .\"
 .TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.Nm LIST_EMPTY ,
+.Nm LIST_ENTRY ,
+.Nm LIST_FIRST ,
+.Nm LIST_FOREACH ,
+.\" .Nm LIST_FOREACH_FROM ,
+.\" .Nm LIST_FOREACH_SAFE ,
+.\" .Nm LIST_FOREACH_FROM_SAFE ,
+.Nm LIST_HEAD ,
+.Nm LIST_HEAD_INITIALIZER ,
+.Nm LIST_INIT ,
+.Nm LIST_INSERT_AFTER ,
+.Nm LIST_INSERT_BEFORE ,
+.Nm LIST_INSERT_HEAD ,
+.Nm LIST_NEXT ,
+.\" .Nm LIST_PREV ,
+.Nm LIST_REMOVE ,
+.\" .Nm LIST_SWAP ,
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
diff --git a/man3/queue.3 b/man3/queue.3
index c48b4ba9f..17adfcf3b 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -71,23 +71,6 @@
 .Nm STAILQ_REMOVE_HEAD ,
 .Nm STAILQ_REMOVE ,
 .\" .Nm STAILQ_SWAP ,
-.Nm LIST_EMPTY ,
-.Nm LIST_ENTRY ,
-.Nm LIST_FIRST ,
-.Nm LIST_FOREACH ,
-.\" .Nm LIST_FOREACH_FROM ,
-.\" .Nm LIST_FOREACH_SAFE ,
-.\" .Nm LIST_FOREACH_FROM_SAFE ,
-.Nm LIST_HEAD ,
-.Nm LIST_HEAD_INITIALIZER ,
-.Nm LIST_INIT ,
-.Nm LIST_INSERT_AFTER ,
-.Nm LIST_INSERT_BEFORE ,
-.Nm LIST_INSERT_HEAD ,
-.Nm LIST_NEXT ,
-.\" .Nm LIST_PREV ,
-.Nm LIST_REMOVE ,
-.\" .Nm LIST_SWAP ,
 .Nm TAILQ_CONCAT ,
 .Nm TAILQ_EMPTY ,
 .Nm TAILQ_ENTRY ,
-- 
2.28.0

