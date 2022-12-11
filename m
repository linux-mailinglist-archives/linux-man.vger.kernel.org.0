Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6741B64953A
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:19:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiLKRTU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:19:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbiLKRTT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:19:19 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9319639C
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:19:18 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id h16so808514wrz.12
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rMubMSG9ntR85YxcZrXyHeXlU96vmg4lixnesXg1KhE=;
        b=ST32LEz9efQu5REHiGvA6/8UFgP6U8Zunk+3iUfuVsNLDvYKlteofdS3YFkrhsflG9
         Bjk2L9HdSn19wwH3iprde2h566wgh1tvU9WTgGiasNt5JZKM7X+Q5MUpXIhR5AeJ+L4k
         ZIINO+iaDppeeczMlu0Zq0JiFRqQBKiVDzFo+jBQmyjrZGPrNrQqWvrVh3feLf18v++i
         0mLPfbkq3XAXHFhNNPwBKn1dUuvd2AojqZuNGTWml/9Xsc8SQ2yNuDtqchlErsfqGbFb
         dvWeg2zAmy/tFUNUjT2fOEo+cRN0f7S2cNXhg3qx7k41PRLYrtATV+WiC1krCB691urG
         THeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rMubMSG9ntR85YxcZrXyHeXlU96vmg4lixnesXg1KhE=;
        b=baEem68e6A0S32zZWPU3WIxdWA7ScHyYj6zmajolNFDhUPSKIpnz2CAv13z506v0Cg
         RhXRCHMPWPYKcR8PF7mG1CerkzLubVluBaMs4rBDRgKoRM1r+qJsJ3hL+8pj3nWTK1b9
         AtXyRP3utipxDezBrA0e3qPzk6L6yNws1O5OnMJTKrIkkpJSDByKJOSVFh7TsVPC1vSH
         1nvdWHHtonXyD/aXJ9rksqNSTWjW598gvxhboi9REMHcc9fk1E+zZg9Oif99KHd/Lvrf
         aPr2v7XliJT4+GRqIUmiIimzLJ8xH/CQxZO+UbkyP4DuMJH622xSsasZvextIEFroDMX
         mRfg==
X-Gm-Message-State: ANoB5plHDNQ+LKmbhsibTmtLV1xxJM/L85vSIoBxh0q0npWMsOF92sbv
        ifObN72N5l1UwUhwFs5ujMu6Q9qxGq4=
X-Google-Smtp-Source: AA0mqf5M6fulHOSyJVyv76JbnCRWSy0UTqaTXiYtCLMwyJgytI1FxPKLDTzrXA31oIicuPuqZ+VRNQ==
X-Received: by 2002:adf:ec86:0:b0:242:31ba:1389 with SMTP id z6-20020adfec86000000b0024231ba1389mr7852011wrn.31.1670779157373;
        Sun, 11 Dec 2022 09:19:17 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id y5-20020a5d4705000000b00241f029e672sm6410207wrq.107.2022.12.11.09.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Dec 2022 09:19:16 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@openbsd.org>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH] intro.3: Document subchapters of man3
Date:   Sun, 11 Dec 2022 18:18:25 +0100
Message-Id: <20221211171824.8742-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
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

Cowritten-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@openbsd.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden,

I took your suggestion with few modifications.  Would you please review
and sign if you are okay with it?

Cheers,

Alex


 man3/intro.3 | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/man3/intro.3 b/man3/intro.3
index ce0d6e294..b08eca5ac 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -64,6 +64,37 @@ .SH DESCRIPTION
 .\" .IP (3X)
 .\" Various special libraries.  The manual pages documenting their functions
 .\" specify the library names.
+.SS Subsections
+Section 3 of this manual is organized into subsections
+that reflect the complex structure of the standard C library
+and its many implementations:
+.IP \(bu 3
+3const
+.IP \(bu
+3head
+.IP \(bu
+3type
+.PP
+This difficult history frequently makes it a poor example to follow
+in design, implementation, and presentation.
+.PP
+Ideally,
+a library for the C language
+is designed such that each header file
+presents the interface to a coherent software module.
+It provides a small number of function declarations
+and exposes only data types and constants that
+are required for use of those functions.
+Together,
+these are termed an API or
+.IR "application program interface" .
+Types and constants to be shared among multiple APIs
+shopuld be placed in header files that declare no functions.
+This organization permits a C library module
+to be documented concisely with one header file per manual page.
+Such an approach
+improves the readability and accessibility of library documentation,
+and thereby the usability of the software.
 .SH STANDARDS
 Certain terms and abbreviations are used to indicate UNIX variants
 and standards to which calls in this section conform.
-- 
2.38.1

