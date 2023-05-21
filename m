Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EEFF70ADBE
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 13:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbjEULrM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 07:47:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbjEUKkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 06:40:21 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054FCFD
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:31:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-307d58b3efbso3072037f8f.0
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684665101; x=1687257101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=96pmJrFhcqPLmwcJl2U62Hjc4aR0AxZXld7WLQoykv4=;
        b=lmboMgOFCO8lZ66uhQXDEhAV4rzGrUinrsDa0k5pAqD9vqn6fqqYVQj5uov6H8d3ud
         WMWtSezcOw9Pc1IrbsNj9L75lWPUDi7DbG3OCnRSrPfleCgUYt7z54cLZTMOAN8IEzs1
         ncM8CpptrWoP328/fojmYMQ/4t86ohDC/dEDOPmPchubrlJb06lSgaRtizMzsKn4rKj0
         G/5W6GUODfEQIvIRPnDPYveBrMIgXZ9vY7edxecdqegBjtexslwDzchrFyk+6Ksw069M
         xC8qhp5CxdUb8bUbZlD45/STCrwlIPuVkgXCi4HMhHDcFY1JzDbeUJCxCIWnl/jbW0n2
         DX7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684665101; x=1687257101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96pmJrFhcqPLmwcJl2U62Hjc4aR0AxZXld7WLQoykv4=;
        b=JAKyi8TCq9MYzXxAdzygujRb0Vk9eAq0fmgxp3j3GodHMFQDCG/wZT4iuFaAiR4wnc
         P1jHUVAC64EcuoY0zN4DQ6anl+q3G4fXIAL6ynigfG6Gd3OvNXEln0AtkQ0Y8wHCC5bH
         y8iKavQpE99Kv5LJsRS+/nQnt08XeX9wgE8aBbMmrcs2YrpzKNSbM/ZSZcHopR+hGS+L
         R6vKwXfeu7OsQuzjABKz6ryECA4u1hW72T+0p42Of7n/xalbonQ0qGbIisUW2+gZ29Zm
         vBpQyzYLVTCZuene0DEKKsablaRfmZjZrRBDqzK9Rle2lGnC5Iql00F98GPlLqn10Qb5
         byNw==
X-Gm-Message-State: AC+VfDzJNvTyevrBuz09zv8HfFB0+nlU0lREuaICvU/9QYULlmQBUarE
        ul9be0ROMcBwWnHgp+d3ia3v3jYdG4w=
X-Google-Smtp-Source: ACHHUZ5Dnpq/v0EjkjwXdqTkoMHkh22EgrsT29L0eMqNNOvNI6PZ0dcXX7r8fX+UUZVm8Ci8EF/tkw==
X-Received: by 2002:adf:cd10:0:b0:306:2c16:8359 with SMTP id w16-20020adfcd10000000b003062c168359mr5262759wrm.39.1684665101194;
        Sun, 21 May 2023 03:31:41 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id j11-20020a5d604b000000b003062c0ef959sm4311461wrt.69.2023.05.21.03.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 03:31:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Bruno Haible <bruno@clisp.org>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] iconv.3: Clarify the behavior when input is untranslatable
Date:   Sun, 21 May 2023 12:31:28 +0200
Message-Id: <20230521103128.8472-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Reuben Thomas <rrt@sc3d.org>

The manual page does not fully reflect the behaviour of glibc's
iconv(3).  The manual page says:

    The conversion can stop for four reasons:

    -  An invalid multibyte sequence is encountered in the input.  In
       this case, it sets errno to EILSEQ and returns (size_t) -1.
       *inbuf is left pointing to the beginning of the invalid multibyte
       sequence.

    [...]

The phrase "An invalid multibyte sequence is encountered in the input"
is confusing, because it suggests that it refers only to the validity of
the input per se (e.g. a non-UTF-8 sequence in input purporting to be
UTF-8).

However, according to the original author of the manual page, Bruno
Haible[1], it also refers to input that cannot be translated to the
desired output encoding; and indeed, glibc's iconv returns EILSEQ when
the input cannot be translated, even though it is valid.

This patch adds language that reflects the actual behavior, by adding an
explicit bullet that distinguishes this case.

Link: [1] <https://sourceware.org/bugzilla/show_bug.cgi?id=29913#c4>
Link: <https://bugzilla.kernel.org/show_bug.cgi?id=217059>
Reported-by: Reuben Thomas <rrt@sc3d.org>
Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
Cc: Bruno Haible <bruno@clisp.org>
Cc: Martin Sebor <msebor@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>

f
---
 man3/iconv.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/iconv.3 b/man3/iconv.3
index 66f59b8c3..6bb27c802 100644
--- a/man3/iconv.3
+++ b/man3/iconv.3
@@ -80,6 +80,14 @@ .SH DESCRIPTION
 \fI*inbuf\fP
 is left pointing to the beginning of the invalid multibyte sequence.
 .IP \[bu]
+An multibyte sequence is encountered in the input which
+cannot be translated to the character encoding of the output.
+In this case,
+it sets \fIerrno\fP to \fBEILSEQ\fP and returns
+.IR (size_t)\ \-1 .
+\fI*inbuf\fP
+is left pointing to the beginning of the invalid multibyte sequence.
+.IP \[bu]
 The input byte sequence has been entirely converted,
 that is, \fI*inbytesleft\fP has gone down to 0.
 In this case,
-- 
2.40.1

