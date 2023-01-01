Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8616865AA90
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 17:26:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjAAQ0w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 11:26:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjAAQ0v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 11:26:51 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DB4D21AC
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 08:26:50 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id n3so23493773wrc.5
        for <linux-man@vger.kernel.org>; Sun, 01 Jan 2023 08:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uHV8REolSd5mr2+QiH7yrJms0MPgrmKrYYY4QYfMOCQ=;
        b=ZTzdZ2FEV+8FokhVgwCsI82WtUr6cvct9btrVN9nUIPTBKM2UfSp8uM85s+XXHw7Uj
         SzJl7iReu69FOx/7J2ZiSy9FBIUqu5qLMA0TAPvCZdd1siQj6/v66ykWqykMWUiYtxGM
         bxJynHSkJ364BsQ21F/cHVsHWmRG1F8j4yyfwhhIXuRNo7AldnpG5hcRXznW8Y2rDXVm
         qdB5Slb04TcJGNu7FwhewWQGJHIAwxxuJxbFjW15EoqEWcl7LTmeDYUCrxUSFohTWaRx
         IOA3kI2gtWVFwnolVEOvJjOi17nq8lVDKD+NxYKrS3rZ8cS9B522z6wOP0c9EHFM7imv
         yufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHV8REolSd5mr2+QiH7yrJms0MPgrmKrYYY4QYfMOCQ=;
        b=XpeB62BIXIy6GrQaJeWblZGUa6wlWRdgDDGJKrV8D5fecTznHYClt/LlXAMBqP/HhW
         YvPMo4FEugq3GAe/7/prqbhyS35Gd17MNqNrHvHKEYRvXYpJ3jh/MlkeaaDqutQUVpFJ
         OShASu89PGX2ekZo3mh5pGcGjANV35+CiRm3fIUDj9FfpYJ2IbRCo9LgrAZAJCKLNi7j
         sPbwAzR2wtTa7AEYpf3RaLRrL683oU4S35fnAjLbHjm20xA6+4qvvZlvy8fmnO4wixef
         lpvmyeIjxkd59VMaCyWTk1Penng2j7x+OKZOVYHB8LAhDVsfBD/Nn0QcMd39PBJhwFII
         VLRQ==
X-Gm-Message-State: AFqh2kqNkdMgpAWGBDo8Q1D5PKR/ast7tFi2BeHsHu/nzLm79g9DB2yF
        gEEmVxOyu84hDm4KEsvI49XIeq0ZTXk=
X-Google-Smtp-Source: AMrXdXs8wBLH4yInToJ6CoPoqPSxMLAgOHItZ1gyZMTDFYVNP/sKa+uXltXJz6mMN18MUwwuTpB7Cw==
X-Received: by 2002:adf:ea4a:0:b0:27e:8d9b:bc20 with SMTP id j10-20020adfea4a000000b0027e8d9bbc20mr16885671wrn.27.1672590408201;
        Sun, 01 Jan 2023 08:26:48 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id a18-20020adfed12000000b0027cfd9463d7sm19207452wro.110.2023.01.01.08.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 08:26:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: [PATCH] arc4random.3: New page documenting the arc4random(3) family of functions
Date:   Sun,  1 Jan 2023 17:26:28 +0100
Message-Id: <20230101162627.28031-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

arc4random(3)
arc4random_uniform(3)
arc4random_buf(3)

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/arc4random.3 | 104 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 man3/arc4random.3

diff --git a/man3/arc4random.3 b/man3/arc4random.3
new file mode 100644
index 000000000..5fd292321
--- /dev/null
+++ b/man3/arc4random.3
@@ -0,0 +1,104 @@
+.\" Copyright (C) 2023 Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH arc4random 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+arc4random, arc4random_uniform, arc4random_buf
+\- cryptographically-secure pseudorandom number generator
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
+.SH SYNOPSIS
+.nf
+.B #include <stdlib.h>
+.PP
+.B uint32_t arc4random(void);
+.BI "uint32_t arc4random_uniform(uint32_t " upper_bound );
+.BI "void arc4random_buf(void " buf [. n "], size_t " n );
+.fi
+.SH DESCRIPTION
+These functions give cryptographically-secure random numbers.
+.PP
+.BR arc4random ()
+returns a uniformly-distributed value.
+.PP
+.BR arc4random_uniform ()
+returns a uniformly-distributed value less than
+.I upper_bound
+(see CAVEATS).
+.PP
+.BR arc4random_buf ()
+fills the memory pointed to by
+.IR buf ,
+with
+.I n
+bytes of random data.
+.PP
+The
+.BR rand (3)
+and
+.BR rand48 (3)
+families of functions should only be used where
+the quality of the random numbers is not a concern
+.I and
+there's a need for repeatability of the results.
+Unless you meet both of those conditions,
+use the
+.BR arc4random ()
+functions.
+.SH RETURN VALUE
+.BR arc4random ()
+returns a random number.
+.PP
+.BR arc4random_uniform ()
+returns a random number less than
+.I upper_bound
+for valid input, or
+.B 0
+when
+.I upper_bound
+is invalid.
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.ad l
+.nh
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.BR arc4random (),
+.BR arc4random_uniform (),
+.BR arc4random_buf ()
+T}	Thread safety	MT-Safe
+.TE
+.hy
+.ad
+.sp 1
+.SH STANDARDS
+These nonstandard functions are present in several Unix systems.
+.SH CAVEATS
+An
+.I upper_bound
+of
+.B 0
+doesn't make sense in a call to
+.BR arc4random_uniform ().
+Such a call will fail, and return
+.BR 0 .
+Be careful,
+since that value is
+.I not
+less than
+.IR upper_bound .
+In some cases,
+such as accessing an array,
+using that value could result in Undefined Behavior.
+.SH SEE ALSO
+.BR getrandom (3),
+.BR rand (3),
+.BR rand48 (3),
+.BR random (7)
-- 
2.39.0

