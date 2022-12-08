Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35F4F646FE6
	for <lists+linux-man@lfdr.de>; Thu,  8 Dec 2022 13:41:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbiLHMls (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Dec 2022 07:41:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiLHMlr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Dec 2022 07:41:47 -0500
X-Greylist: delayed 392 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 08 Dec 2022 04:41:46 PST
Received: from smtp107.iad3a.emailsrvr.com (smtp107.iad3a.emailsrvr.com [173.203.187.107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D02BF55C87
        for <linux-man@vger.kernel.org>; Thu,  8 Dec 2022 04:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20190130-41we5z8j; t=1670502913;
        bh=PLR0FsgMo9j5Bs6jvVFu5I4rU8y5vfQVklJ8bs2C8rw=;
        h=From:To:Subject:Date:From;
        b=eUssOYyxl5/UqFRaQW/bilM/WXX9CkFvawvWBtWK0zy+N0oWkW2uikxSmdxan8Dpq
         BWSSzB81lIY+HQ2PguLmF+20krSrPOXqaB6x7T3Tckd637ncdy1P+DIUmlkbuQFlUP
         KEFRcKcu29tNWSGv7QHQkZnbNetjQn9uv9zQzblA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp14.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id C32B121DDD;
        Thu,  8 Dec 2022 07:35:12 -0500 (EST)
From:   Ian Abbott <abbotti@mev.co.uk>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] scanf.3: Do not mention the ERANGE error
Date:   Thu,  8 Dec 2022 12:34:54 +0000
Message-Id: <20221208123454.13132-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: 510ee3c6-6235-40bd-8b6e-ef12375a1da9-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The `scanf()` function does not intentionally set `errno` to `ERANGE`.
That is just a side effect of the code that it uses to perform
conversions.  It also does not work as reliably as indicated in the
'man' page when the target integer type is narrower than `long`.
Typically (at least in glibc) for target integer types narrower than
`long`, the number has to exceed the range of `long` (for signed
conversions) or `unsigned long` (for unsigned conversions) for `errno`
to be set to `ERANGE`.

Documenting `ERANGE` in the ERRORS section kind of implies that
`scanf()` should return `EOF` when an integer overflow is encountered,
which it doesn't (and doing so would violate the C standard).

Just remove any mention of the `ERANGE` error to avoid confusion.

Fixes: 646af540e467 ("Add an ERRORS section documenting at least some of the errors that may occur for scanf().")
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 man3/scanf.3 | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/man3/scanf.3 b/man3/scanf.3
index ba470a5c1..c5ff59f45 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -576,10 +576,6 @@ is NULL.
 .TP
 .B ENOMEM
 Out of memory.
-.TP
-.B ERANGE
-The result of an integer conversion would exceed the size
-that can be stored in the corresponding integer type.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -609,9 +605,6 @@ The functions
 and
 .BR sscanf ()
 conform to C89 and C99 and POSIX.1-2001.
-These standards do not specify the
-.B ERANGE
-error.
 .PP
 The
 .B q
-- 
2.35.1

