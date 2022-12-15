Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC2264D6CB
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 07:58:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiLOG6t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 01:58:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229888AbiLOG4s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 01:56:48 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 626775D68F
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 22:56:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F2F17617DE
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 06:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ACF0C433A8
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 06:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671087398;
        bh=3JwuSXpnNXs64wAAbTJSvrkKnhEINNHapGjtMko11Lo=;
        h=From:To:Subject:Date:From;
        b=Abm8oBT0QtRZ6mOfWyzsoFYJapo8+3GV/ZrP44Xj/2DPzmZwhtLz/GuFcVCTICerz
         Fc7fcI7DPJ8bfKmvmP7PPUQCrsjhNnHsN2MfhiNq5CQE3DgfDUHtsytMBZeAnfeerd
         XnvQWSCKvZyM/IzMJeTH7KR05j5bdhZ/BjibGaZYvICcqVxYepm5SyCbR381tw3p5J
         6Tx5lgAL8LwlWGa0oDz3yToTleAsJ1PGRCP6RD8rnlMiTEEVPewrwxpbBlTVyycU2R
         4Tc1E55m0r+V9Mfk/8+JwzOyecJ5WKA2EVh4HgzhBRncpahZ+zAubsd2rI0PsS0at2
         4fKi1syl7ejDg==
From:   Eric Biggers <ebiggers@kernel.org>
To:     linux-man@vger.kernel.org
Subject: [PATCH] man-pages.7: tfix
Date:   Wed, 14 Dec 2022 22:56:30 -0800
Message-Id: <20221215065630.65388-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Eric Biggers <ebiggers@google.com>

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 man7/man-pages.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 0d58f81d5..a21f88d86 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -634,14 +634,14 @@ macro.
 An example is this "Tagged paragraphs" subsection is itself.
 .TP
 Ordered lists
-Elements are preceeded by a number in parentheses (1), (2).
+Elements are preceded by a number in parentheses (1), (2).
 These represent a set of steps that have an order.
 .IP
 When there are substeps,
 they will be numbered like (4.2).
 .TP
 Positional lists
-Elements are preceeded by a number (index) in square brackets [4], [5].
+Elements are preceded by a number (index) in square brackets [4], [5].
 These represent fields in a set.
 The first index will be:
 .IP
@@ -660,11 +660,11 @@ to be consistent with tools like
 .RE
 .TP
 Alternatives list
-Elements are preceeded by a letter in parentheses (a), (b).
+Elements are preceded by a letter in parentheses (a), (b).
 These represent a set of (normally) exclusive alternatives.
 .TP
 Bullet lists
-Elements are preceeded by bullet symbols
+Elements are preceded by bullet symbols
 .RB ( \e(bu ).
 Anything that doesn't fit elsewhere is
 usually covered by this type of list.
-- 
2.38.1

