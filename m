Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A315A5F859B
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 16:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbiJHOcG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Oct 2022 10:32:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbiJHOcG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Oct 2022 10:32:06 -0400
Received: from mail.smrk.net (mail.smrk.net [IPv6:2001:19f0:6c01:2788:5400:4ff:fe27:adaa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6F5B4A802
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 07:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
        t=1665237919;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=pQY92pnJtuiOU0QGROqziux7qeN0PbiL56j7JEtbcVs=;
        b=QYb+P0NtUVlM9YAP+Fn5J9RZbUcvm5bL4lnWLKP+fzu0wIYKm5xlMV8M609o/976wbSaT9
        hSuQGHBF4b169CZFTfLq+IALYntRKBwQstrYPi9ozreeOBrGgWI8lRMwYv7kPrN27HCNPE
        z5oo0lYqzF7QWbAs9zAWkB+xWat92otxV6g70oqtztrGvNY4mTAGgqPcwJ9dxGZacR2gFW
        fCgXc4ZwfMOIW9MZYM4Hv/8V3hL1VH+F871VMOOQOveT0ko4Nj4NKcNouqaCbaQRQJPCXw
        neCIno7N/DnOf1V/jSS7Ul4g0MPBmxu5ch1mF2BnJnJWDjcPfAKuqnz+Zn7McQ==
Received: from localhost (internet-185-112-167-59.cznet.cz [185.112.167.59])
        by smrk.net (OpenSMTPD) with ESMTPSA id 3496267c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sat, 8 Oct 2022 16:05:19 +0200 (CEST)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v1 2/2] pivot_root.2: Fix a typo/thinko
Date:   Sat,  8 Oct 2022 16:05:14 +0200
Message-Id: <20221008140514.501942-3-stepnem@smrk.net>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221008140514.501942-1-stepnem@smrk.net>
References: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
 <20221008140514.501942-1-stepnem@smrk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM14,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

(To obtain a prefix of a given pathname, we have to append (suffix)
'/..' at its end.)

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
v1: split out from <20220921154602.446336-1-stepnem@gmail.com> per
    Alejandro's preference; added explanation to commit message; no
    diff changes

 man2/pivot_root.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index f2df25d127b0..ecb92c103a2c 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -60,7 +60,7 @@ must not be on the same mount as the current root.
 .IP \-
 \fIput_old\fP must be at or underneath \fInew_root\fP;
 that is, adding some nonnegative
-number of "\fI/..\fP" prefixes to the pathname pointed to by
+number of "\fI/..\fP" suffixes to the pathname pointed to by
 .I put_old
 must yield the same directory as \fInew_root\fP.
 .IP \-
-- 
2.38.0

