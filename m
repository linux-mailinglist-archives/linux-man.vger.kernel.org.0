Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E918B7169EA
	for <lists+linux-man@lfdr.de>; Tue, 30 May 2023 18:40:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232735AbjE3Qkr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 May 2023 12:40:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230096AbjE3Qkq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 May 2023 12:40:46 -0400
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72C588F
        for <linux-man@vger.kernel.org>; Tue, 30 May 2023 09:40:44 -0700 (PDT)
From:   =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas@t-8ch.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
        t=1685464842; bh=E7/WyrBEoNJe5xrLBypBNFJhgPa22Dc0c2S08euVhW0=;
        h=From:Date:Subject:To:Cc:From;
        b=G516TEsRPLGLSgDOr5YIxRVtos07GwXvUAkoCRuReZc+XTYu4iq59BCatjX3OxwOF
         Cr7oMBxyAMmjfpKpeZvXdWW1+0nJSCWI21V0yf6ZtSZPDGB3C4aFev2WGYok+hpd1z
         9+dT6uAQ/0afUvpjE4FGVc537wxtpn0oHlxhTzNk=
Date:   Tue, 30 May 2023 18:40:34 +0200
Subject: [PATCH RFC] gettimeofday.2: Don't allow "tv" to be NULL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>
X-B4-Tracking: v=1; b=H4sIAAEndmQC/x2NQQqDMBQFryJ/3UAaFUu3hR6g2+Ii0Rf9oLH8p
 NIi3r2xy2EYZqMIYUS6FhsJVo68hAznU0HdaMMAxX1mMtqUui61GpASz1h8b78qvKdJNUClK9d
 cTO0pd85GKCc2dONRzjYmyCFeAs+f/+xJj/uN2n3/AXreW96BAAAA
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Willy Tarreau <w@1wt.eu>,
        Andreas Schwab <schwab@suse.de>,
        =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas@t-8ch.de>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685464841; l=1433;
 i=thomas@t-8ch.de; s=20221212; h=from:subject:message-id;
 bh=E7/WyrBEoNJe5xrLBypBNFJhgPa22Dc0c2S08euVhW0=;
 b=0MQV+FIWUv9JhHyWeE8BcM/Md1DM3m9LN1PyJPZ7t3PbGuFn97mf5tM1kPNEYhtysTmeDvTGY
 R8KwUsFCHPtCypoMJ7RNvp9zDoH9h9qPSuR6f0sPz7dErRHE+hSHYw8
X-Developer-Key: i=thomas@t-8ch.de; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does not allow "tv" to be NULL.

On glibc and gnulib calling gettimeofday(NULL, NULL) can segfault.

For glibc see __gettimeofday() and __gettimeofday64() in
sysdeps/unix/sysv/linux/gettimeofday.c.

Note that by default glibc may use the gettimeofday() syscall or vdso
function which both support "tv" to be NULL.
The segfault can be triggered by compiling a i386 binary on a x86_64
system.

Signed-off-by: Thomas Weißschuh <thomas@t-8ch.de>
---
 man2/gettimeofday.2 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
index 9d134fa49de7..cdbec5ede23c 100644
--- a/man2/gettimeofday.2
+++ b/man2/gettimeofday.2
@@ -85,16 +85,14 @@ struct timezone {
 .EE
 .in
 .PP
-If either
-.I tv
-or
+If
 .I tz
-is NULL, the corresponding structure is not set or returned.
+is NULL, the structure is not set or returned.
 .\" FIXME . The compilation warning looks to be going away in glibc 2.17
 .\" see glibc commit 4b7634a5e03b0da6f8875de9d3f74c1cf6f2a6e8
-(However, compilation warnings will result if
+If
 .I tv
-is NULL.)
+is NULL, the behavior is unspecified.
 .\" The following is covered under EPERM below:
 .\" .PP
 .\" Only the superuser may use

---
base-commit: f0067f73941ea0e512b9018a123472508a0858db
change-id: 20230530-gettimeofday-null-7ee404b7825f

Best regards,
-- 
Thomas Weißschuh <thomas@t-8ch.de>

