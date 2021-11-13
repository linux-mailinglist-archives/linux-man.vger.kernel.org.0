Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 301E344F035
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 01:16:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231618AbhKMATJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 19:19:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbhKMATI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 19:19:08 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDD1C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 16:16:16 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id t30so18277452wra.10
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 16:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CGFrCDHUPrJTfUK0sOUpMQgZE4J6kecYyofjvTXz9AM=;
        b=ocdrlxXOWKephpM3rQX/i3qWqhpeIio/eyq56iTJLvrpGsdypROSRhHgJBp4gMCKXx
         VEjQNouZmwoIRuicqZhFcILKzgvpAP3/n2Ekv5Y2yA5vmQ1HTCr9OUFhcG9dwyW0eeeq
         m87vQC9xDW8/qymZ+7HwBS0Vv4KZmCqtDyBRofM4zL+68SDfKy1o4VY9f+meQPAWYfwF
         8UMal/Ja9iXeK3LPWcAQ/77uMIUB1Rj88pwxD19+jWhzmke5nn7w6AmXwRq7zaPnVN0E
         x66pGcM14cOkztRHMC0O+HNgxNvWSjc5YMm0u1MHBjZs0tY5lQJWf97pdWg3fWUPn4BF
         Ct7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CGFrCDHUPrJTfUK0sOUpMQgZE4J6kecYyofjvTXz9AM=;
        b=wyPsLYEyzYW7P7xavR5L2hIkLwjp3iGlPW/sTklgZiUH0OzDDo092xOynJD4q0BP8S
         bIJFcI8DsMtKevXH0JVFooLCl+B4p7FnP4qx3bYTo37qqQj6g7P3V8mIyCKgFTomSdLm
         DRhPccVktp/rRyUYEAyd7WjsYI9IAzFYZgQ0VgphYOV7/KQPXHAr/lRXiAj5QuCQTSp4
         SYggkNh8f+Q3OSVtoyk9sPmtqw1SnMU9d3/vZpECHUGwOEmTuJhbUH8aLEwn9E7kqAvh
         FzYJ9dq3+f7nu1uIl+8mecGjnDBlvA0MZq3puPR6YOqUbKvXMsoJmCg9bGPmi1IiG2q5
         NpWg==
X-Gm-Message-State: AOAM531cbuy9as8HlaNPM1lZrr9W215gqdMohcYn36Sx1W7hncImw5Fl
        JOZJ17SBqL9oMX+5vBvH8Ho=
X-Google-Smtp-Source: ABdhPJxPvPJnktWD2Ch8+RSb3cOXQJJLErmN6CNf0xjbHshC/bz9p5udDEcjuCEB9wd5BkJTWz9CSw==
X-Received: by 2002:a5d:400e:: with SMTP id n14mr22651655wrp.368.1636762575031;
        Fri, 12 Nov 2021 16:16:15 -0800 (PST)
Received: from ady1.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m36sm7788050wms.25.2021.11.12.16.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 16:16:14 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Subject: [RFCv2] man-pages.7: Add phrasal semantic newlines advise
Date:   Sat, 13 Nov 2021 01:06:15 +0100
Message-Id: <20211113000614.9514-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211112225423.8361-1-alx.manpages@gmail.com>
References: <20211112225423.8361-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Brian W. Kernighan, 1974 [UNIX For Beginners]:

[
Hints for Preparing Documents

Most documents go through several versions
(always more than you expected)
before they are finally finished.
Accordingly,
you should do whatever possible
to make the job of changing them easy.

First,
when you do the purely mechanical operations of typing,
type so subsequent editing will be easy.
Start each sentence on a new line.
Make lines short,
and break lines at natural places,
such as after commas and semicolons,
rather than randomly.
Since most people change documents
by rewriting phrases and adding,
deleting and rearranging sentences,
these precautions simplify any editing you have to do later.
]

He mentioned phrases,
and they are indeed commonly the operands of patches
(see this patch's changes (the second part) as an example),
so they make for a much better breaking point than random
within a clause that is too long to fit a line.

The downside is that they are more difficult to automatically spot
than clause breaks (which tend to have associated punctuation).
But we are humans writing patches,
not machines,
and therefore we should be able to decide and detect them better.

Link: <https://rhodesmill.org/brandon/2012/one-sentence-per-line/>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 23015b00a..b52a2260a 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -640,11 +640,13 @@ makes it easier to write tools that parse man page source files.)
 .SS Use semantic newlines
 In the source of a manual page,
 new sentences should be started on new lines,
-and long sentences should be split into lines at clause breaks
-(commas, semicolons, colons, and so on).
+long sentences should be split into lines at clause breaks
+(commas, semicolons, colons, and so on),
+and long clauses should be split at phrase boundaries.
 This convention, sometimes known as "semantic newlines",
 makes it easier to see the effect of patches,
-which often operate at the level of individual sentences or sentence clauses.
+which often operate at the level of
+individual sentences, sentence clauses, or phrases.
 .\"
 .SS Formatting conventions (general)
 Paragraphs should be separated by suitable markers (usually either
-- 
2.33.1

