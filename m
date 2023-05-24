Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92A7D70F8CD
	for <lists+linux-man@lfdr.de>; Wed, 24 May 2023 16:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232803AbjEXOd2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 10:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbjEXOd1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 10:33:27 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6805E12F
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 07:33:26 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-ba83fed50e1so2416115276.1
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 07:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684938805; x=1687530805;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SdZ2XpmBuHwczkPJZbj2nuObNsScxoKbFgdefW39VOs=;
        b=WoKyB7bi2P/CJKXErXKdMRJVMn/c4VmVxGeF54GX4hO1JSrNNKV/eR24QE4PsLOHwm
         EHFarXT2ewekd8FDUdmuOgjGooOYlpqhewra4DgDLMshTIBc6lLkk7Z3FtaanshF/UPf
         XA9bNS948gI2a+935u0EQly2xcPUsnb+07JUwCQobFF0aT978MaZaV9wM7yXoJZL1mFH
         9Hfddr+X863aHi6lHkQoNUlI1hgwCUWj+J0tdt2uEHrCwvm2lkdEujhlUUHJVk8NVtJy
         nMDcz8i7cllYZDY6aMlVFLJvgyM3uKaGQlhdWLKSEJQsnXxpxPYEnzjXNr63Afcnfq7w
         IY6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684938805; x=1687530805;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SdZ2XpmBuHwczkPJZbj2nuObNsScxoKbFgdefW39VOs=;
        b=hwySNteY4zlD072hwEWr03aUt4v0l8dCVmyovgXVMmOoAIpYFz+Dl3OKsebwdjrb3y
         PlbRpEseQZaj0K4Qrwx0kivjTkYfkXRp8BY5/xAy+EkkmkKezPYmG/N/bFzebkPSIsJx
         MHYlH3j+GPp5Z4mjHc8svBQQ4tCl2eB4m6aXa4DcLu27WH/mPNIrKaqByWXIvqDvbQZe
         0mkjvzu0+eEUgTpAwyLxnwkqyZVaa7DdQYZhwjGwgzbi/gJ0RMmRbkryqEJsj0hPUb94
         k1k5XDJ0CqiSk7g4t4B8/06UKwMEz2yHi4/u+kN/jLyy4LTTcegnZkD/UrI23IVweLWW
         3mcg==
X-Gm-Message-State: AC+VfDyuS324rwfITZw7HVjK7BaWpZPsGSnUfeD4uoRUtt8gHg0XwJKH
        6iR3RzSGMU5gDMbfdvgGjGSV/s5xV34=
X-Google-Smtp-Source: ACHHUZ6F4Fhcpzmr962JWyk424xdtlIAx0KUjj/E8cgGedZvlRDpXJbzDtjBmWHLnWQv3LctEDeGAJtK7fE=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:6f69:3e04:98ff:dae7])
 (user=gnoack job=sendgmr) by 2002:a25:2688:0:b0:b94:6989:7fa6 with SMTP id
 m130-20020a252688000000b00b9469897fa6mr5521ybm.4.1684938805497; Wed, 24 May
 2023 07:33:25 -0700 (PDT)
Date:   Wed, 24 May 2023 16:33:07 +0200
Message-Id: <20230524143307.1076366-1-gnoack@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.1.698.g37aff9b760-goog
Subject: [PATCH] proc.5: Clarify the format of /proc/$PID/cmdline
From:   "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Matt Bobrowski <repnop@google.com>, linux-man@vger.kernel.org,
        "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It is possible to produce /proc/$PID/cmdline files which do not follow
the NUL-seperated format, by using the tricks described in the
paragraph below.

Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man5/proc.5 | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index a9bb175e8..a16479634 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -497,10 +497,21 @@ unless the process is a zombie.
 .\" In Linux 2.3.26, this also used to be true if the process was swapped =
out.
 In the latter case, there is nothing in this file:
 that is, a read on this file will return 0 characters.
-The command-line arguments appear in this file as a set of
-strings separated by null bytes (\[aq]\e0\[aq]),
+.IP
+For processes which are still running,
+the command-line arguments appear in this file
+in the same layout as they do in process memory:
+If the process is well-behaved,
+it is a set of strings separated by null bytes (\[aq]\e0\[aq]),
 with a further null byte after the last string.
 .IP
+This is the common case,
+but processes have the freedom to override
+the memory region and break assumptions
+about the contents or format of the
+.IR /proc/ pid /cmdline
+file.
+.IP
 If, after an
 .BR execve (2),
 the process modifies its

base-commit: 4ca216bacc7d185c1af3c384ab53cd1ec74830d1
--=20
2.40.1.698.g37aff9b760-goog

