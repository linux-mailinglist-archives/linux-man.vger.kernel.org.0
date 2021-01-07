Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 659AA2ED4D8
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 17:56:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726294AbhAGQ4T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 11:56:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726165AbhAGQ4S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 11:56:18 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01914C0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 08:55:38 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id w5so6285842wrm.11
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 08:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dPyG9hGfmVKM/zhtxj3nnZdSQROE5ybhNNCdaRCFP4o=;
        b=PiSwHSoYCew0Ybgp3V3ReDNEBh99NlQJgedB5oJyHUpYdrFcDFYqlTc/EoPILJCncw
         +qTlsMTrSFbciWi+mIHSefRRmByABf2z2w8WuA7yk2j+BGz/bOXbyAtZDf9ESepq4U/7
         jOit1CpxzIxyn/fT/knmVGPyZeIsuBmxr2hx/EZ9WBQ4N5KoLnlsP/Acb0/+Mmyvwf76
         IL+3Zh+XSordZ4h4DVV5j+EhMxtIRBjtKgsIBLzcArvl+bZ/2BfXI8PN/L2Pm+z34CcD
         GdxcbBEvAVYpC/HD5S2O4rIFTGcQzwmWykUXpkr7p3yzDhWOnoweciqKN4NVWcNk7WJG
         0ZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dPyG9hGfmVKM/zhtxj3nnZdSQROE5ybhNNCdaRCFP4o=;
        b=hh62XcGWfexZ7OZPzsWTTaPUYtXmR0tfK9sXM3V/9M3O0pY0tG2BmokgfOLGITCYAW
         mwkwM3QXJCay54SraTAtLhkNUlQJqASonbknxGBtiREdWF3RgO8IltuRfQ4+4EPuJuyt
         gJvaYyYUej8H/QZCCb6CJ8hK+skuuFOLId4p6CtOODr72NdaFXOIwlalytFvhepuf+tn
         jO1SEe9WucK16+mMs8N4VjlKcFFTphVgA/7lX9ktU1zycNOjB/n/2ZkvvPznO47bfHkC
         yyAx5kIpbnyRKAQLpy9ZgnXEOAOl/SLDp+teHtzXciKgaVd9InUb6Pni9CQOQWUoBA85
         4XfA==
X-Gm-Message-State: AOAM533tU6socETXt8YxTdnsGmsjkZENyu7vjZD9jXGDgH1YJ5yOIlzN
        aieqATdoptAno97j3bzYUvM=
X-Google-Smtp-Source: ABdhPJzdHKCOSZGecZxoVWDg3h9a811rwKnexxK9J+VlXyEEJtPMz8cUqFwilq5+IfbUZYg5+Rzk3w==
X-Received: by 2002:a5d:60c1:: with SMTP id x1mr9833649wrt.271.1610038536813;
        Thu, 07 Jan 2021 08:55:36 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n11sm10236298wra.9.2021.01.07.08.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 08:55:36 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] netlink.7, tcp.7: tfix: s/acknowledgment/acknowledgement
Date:   Thu,  7 Jan 2021 17:55:19 +0100
Message-Id: <20210107165518.36629-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/netlink.7 |  8 ++++----
 man7/tcp.7     | 10 +++++-----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index 6559d4d96..f10582d79 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -221,7 +221,7 @@ The message is part of a multipart message terminated by
 .BR NLMSG_DONE .
 T}
 NLM_F_ACK:T{
-Request for an acknowledgment on success.
+Request for an acknowledgement on success.
 T}
 NLM_F_ECHO:T{
 Echo this request.
@@ -315,7 +315,7 @@ For reliable transfer the sender can request an
 acknowledgement from the receiver by setting the
 .B NLM_F_ACK
 flag.
-An acknowledgment is an
+An acknowledgement is an
 .B NLMSG_ERROR
 packet with the error field set to 0.
 The application must generate acknowledgements for
@@ -494,11 +494,11 @@ is sent to user space via an ancillary data.
 .BR NETLINK_CAP_ACK " (since Linux 4.2)"
 .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
 .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
-The kernel may fail to allocate the necessary room for the acknowledgment
+The kernel may fail to allocate the necessary room for the acknowledgement
 message back to user space.
 This option trims off the payload of the original netlink message.
 The netlink message header is still included, so the user can guess from the
-sequence number which message triggered the acknowledgment.
+sequence number which message triggered the acknowledgement.
 .SH VERSIONS
 The socket interface to netlink first appeared Linux 2.2.
 .PP
diff --git a/man7/tcp.7 b/man7/tcp.7
index d6836f3a8..8b78cb6e1 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -264,22 +264,22 @@ meaning that the option is disabled.
 Control the Appropriate Byte Count (ABC), defined in RFC 3465.
 ABC is a way of increasing the congestion window
 .RI ( cwnd )
-more slowly in response to partial acknowledgments.
+more slowly in response to partial acknowledgements.
 Possible values are:
 .RS
 .IP 0 3
 increase
 .I cwnd
-once per acknowledgment (no ABC)
+once per acknowledgement (no ABC)
 .IP 1
 increase
 .I cwnd
-once per acknowledgment of full sized segment
+once per acknowledgement of full sized segment
 .IP 2
 allow increase
 .I cwnd
-by two if acknowledgment is
-of two segments to compensate for delayed acknowledgments.
+by two if acknowledgement is
+of two segments to compensate for delayed acknowledgements.
 .RE
 .TP
 .IR tcp_abort_on_overflow " (Boolean; default: disabled; since Linux 2.4)"
-- 
2.29.2

