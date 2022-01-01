Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2599B4828B8
	for <lists+linux-man@lfdr.de>; Sat,  1 Jan 2022 23:56:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231607AbiAAW4X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jan 2022 17:56:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231582AbiAAW4W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jan 2022 17:56:22 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D2FAC061574
        for <linux-man@vger.kernel.org>; Sat,  1 Jan 2022 14:56:22 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id a11-20020a17090a854b00b001b11aae38d6so28691448pjw.2
        for <linux-man@vger.kernel.org>; Sat, 01 Jan 2022 14:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ojsMgQmrZtdFHiu4tSSBgIWlRQY9nfBwqyJyh+/Tthk=;
        b=Derh88tbXdrwsmhbgm7tLy9Yr3hTibKd9I05QGT7SF4DWnQxvw9YvoxyDxFp8PvVz0
         BFZrqMuVmkR28r36Bn0en1Q8LIq6HF94RuM1LVChdaVLUPxcsx0sg8jeHJKj9+TmiWbu
         daKwpde/ZyViRjFQEcFQK7hQxpME/yyeqqTuXR80Ey2nllc7tgZSJpv3BaaZiGx2YRE/
         layRrrf1U4QSLTv2oPrM8OmWuuPVnyZcPcxJfM1g597vJ9c43kW7yNJSV8X4Dj2PfkJr
         ZMCnpfEaVArP34lw+IyJvFXdfKyXn0YwkWZejRFZLy9J/mjNz76evUyqW8EPqTGe6UV9
         fVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ojsMgQmrZtdFHiu4tSSBgIWlRQY9nfBwqyJyh+/Tthk=;
        b=Xz9E5lzdrCv2zb0bkC+jg+ID5ic+Fr969tfiSd0Tk6cD+t8G1TCsQaZIx5xF/iuWvx
         CSx1wlj2bMriQoebkautCvKfS0aUm/xUMBDvSZ2eS/YURLxw0FzDRTULGOnsj5Y678fl
         doIadNelEBxvplcqAQt2bpP3ROOIqFxqsJ2u69kRYC4HgI8KSPSF4pFBj12LJ6GB7I9l
         M3Xb6MQlbLtOJerht930x9xY0XVEwpFbHgHKNN5e6Vnfo0iM1P4lnBG7XnVNeV3oa2Ps
         o9kUXcOgP6pTMu4j44/V/p3gJeNs8EGDagvjGJK29P5MVxCWT32op7VSMLBOZRhQNro2
         EKBQ==
X-Gm-Message-State: AOAM532ToQzP9BDfw8MXYBLmwAEUR2kIgz9KFozRh2UHoHAY2/IneyWn
        3cA4tS6FdnlGxywqCI7/synPVDZEM77CgA==
X-Google-Smtp-Source: ABdhPJwIs8syi3kvx4nX7kT9V6U4KT6JjOt/Rp2JylRtgMYX5lASQPVMSvZlPEp7wUT7ds56C+hx2g==
X-Received: by 2002:a17:90b:4b0c:: with SMTP id lx12mr49945381pjb.146.1641077781024;
        Sat, 01 Jan 2022 14:56:21 -0800 (PST)
Received: from hydrogen.hsd1.wa.comcast.net ([2601:601:9d00:88a0::a247])
        by smtp.gmail.com with ESMTPSA id f7sm32246945pfc.141.2022.01.01.14.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jan 2022 14:56:20 -0800 (PST)
From:   Simon Branch <simonmbranch@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Simon Branch <simonmbranch@gmail.com>
Subject: [PATCH] termios.3: Clarify ONLRET
Date:   Sat,  1 Jan 2022 14:55:23 -0800
Message-Id: <20220101225523.11689-1-simonmbranch@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

While perusing various termios(3) and termios(4) manpages, I noticed the
following inconsistency for ONLRET.  FreeBSD and NetBSD say this:

   If ONLRET is set, the NL character is assumed to do the carriage-return
   function; the column pointer will be set to 0.

OpenBSD says this:

   If ONLRET is set, NL also performs CR on output, and reset current column
   to 0.

POSIX says this:

   NL performs CR function.

The current Linux manpage says this (!):

   Don't output CR.

Here's a snippet that demonstrates Linux's behavior (tl;dr it's just like the
other operating systems):

   $ stty -icanon -onlcr -icrnl -echo onlret onocr; cat
   this is some text			(^J pressed)
                    and some more	(^M pressed before additional text)

The first flags (-icanon -onlcr -icrnl -echo), combined with cat, ensure that
our keys are sent directly back to the terminal emulator without any translation
or buffering.  The last two (ONLRET and ONOCR) are the important ones: ONLRET
makes Linux think that the cursor is at column 0 after the ^J, and ONOCR makes
Linux ignore the following ^M.

---
 man3/termios.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c11937458..20641f14d 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -203,7 +203,9 @@ Map CR to NL on output.
 Don't output CR at column 0.
 .TP
 .B ONLRET
-Don't output CR.
+The NL character is assumed to do the carriage-return function;
+the kernel's idea of the current column is set to 0
+after both NL and CR.
 .TP
 .B OFILL
 Send fill characters for a delay, rather than using a timed delay.
-- 
2.34.0

---
 man3/termios.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c11937458..20641f14d 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -203,7 +203,9 @@ Map CR to NL on output.
 Don't output CR at column 0.
 .TP
 .B ONLRET
-Don't output CR.
+The NL character is assumed to do the carriage-return function;
+the kernel's idea of the current column is set to 0
+after both NL and CR.
 .TP
 .B OFILL
 Send fill characters for a delay, rather than using a timed delay.
-- 
2.34.1

