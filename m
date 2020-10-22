Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88D0D296622
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 22:44:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S371919AbgJVUot (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 16:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S371918AbgJVUos (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 16:44:48 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A820EC0613CE
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 13:44:48 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id h5so4929762wrv.7
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 13:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gTiD2oVSsGPtlvtY7gL8s6cnT1uh2bpvnb8pkPQtyEM=;
        b=DwujNB3kN4gQOitdzxqEtLE8F58sctQ6WoylCRzLla0t6TXQV8Vt2OqommU/X6KQv0
         IQAR0ByGwBitSrVH7b7bOTuzdP3ff2zG5qvld4r3l+PtVqdKxKFpRGIfEVdjkxB7Gj0l
         OxaVCCDEBXRCKtFazH1ksUsVvebpUWhDU5lL8JDjTA/M2FVoZR+AxxlpaOphwFaiVuhH
         azWTVK23ADe+nT+wj0GvVTLkgKd5/YiNiNZhfAOZ0myKh5o/Fju4yAnhjuhUa1/miPfr
         0CgAEhhINDBUCg5sIBXKD/cUCPBU9QZQCf23+E0USN0DcN19gZii0swm8+IWSktWoN21
         xvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gTiD2oVSsGPtlvtY7gL8s6cnT1uh2bpvnb8pkPQtyEM=;
        b=U8bzQZ9WsWQRTFTCsDYCJOJFNrNvmNCBYHhXzWcOQlDNj0aiFgiBG0bBUATfLLF5/W
         wcI3PQMjr1SBmp9Bplkdzvi8zGH2AtGysxu+WiYI9S1GTwKVGaG2BdNvHY6zo7IhrtjV
         sK1ul3JKRmpfvTqr3CZ+Ds3T63+aGAHBSv+kmb5RqAQh6LS2TVzdoaOCdZyD0BOTwJ2p
         qhEwYZ2PPQ7eJMbAan933QP1C7jrpeWPOIf80S6VtqhICL6iMFPmY8cMGHlirfhBq1k3
         tZ1UeyP8KsYipyKK7mg8DJK70F+iEOVRFh/NCaZDefjqdlcNpQZz+iLUN2gUUgu9j7/X
         Vpuw==
X-Gm-Message-State: AOAM5303Gkd+5s3211a5lxjmgDeHEYu00mV7s2xRtGpd2pCauTEA9HdI
        vqnMmMKTFqyx/ntOWs4p4XyjCxqOYJU=
X-Google-Smtp-Source: ABdhPJxIR8deI+/OR/l5rII5N14xZGpswI6YRDrhtmuC/N15QTPEqH7lvSSdd4IkWNs9eHFVn/8vaw==
X-Received: by 2002:a5d:63cb:: with SMTP id c11mr4277550wrw.243.1603399487415;
        Thu, 22 Oct 2020 13:44:47 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 14sm6043025wmf.27.2020.10.22.13.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 13:44:46 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] openat2.2, loop.4: tfix: s/non-zero/nonzero/
Date:   Thu, 22 Oct 2020 22:43:25 +0200
Message-Id: <20201022204324.45262-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I saw your tfix and found a few more instances of non-zero.

Best,

Alex

 man2/openat2.2 | 6 +++---
 man4/loop.4    | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/openat2.2 b/man2/openat2.2
index 53056ee6d..ff5204040 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -169,7 +169,7 @@ contains bits other than
 .IR 07777 .
 Similarly, an error is returned if
 .BR openat2 ()
-is called with a non-zero
+is called with a nonzero
 .IR how.mode
 and
 .IR how.flags
@@ -427,7 +427,7 @@ An unknown flag or invalid value was specified in
 .TP
 .B EINVAL
 .I mode
-is non-zero, but
+is nonzero, but
 .I how.flags
 does not contain
 .BR O_CREAT
@@ -535,7 +535,7 @@ is aware of but which the kernel does not support.
 Because any extension field must have its zero values signify a no-op,
 the kernel can
 safely ignore the unsupported extension fields if they are all-zero.
-If any unsupported extension fields are non-zero, then \-1 is returned and
+If any unsupported extension fields are nonzero, then \-1 is returned and
 .I errno
 is set to
 .BR E2BIG .
diff --git a/man4/loop.4 b/man4/loop.4
index 1b5d05666..b7f82e5d4 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -174,7 +174,7 @@ it can be used to open backing file.
 The (third)
 .BR ioctl (2)
 argument is an unsigned long value.
-A non-zero represents direct I/O mode.
+A nonzero represents direct I/O mode.
 .TP
 .BR LOOP_SET_BLOCK_SIZE " (since Linux 4.14)"
 .\" commit 89e4fdecb51cf5535867026274bc97de9480ade5
-- 
2.28.0

