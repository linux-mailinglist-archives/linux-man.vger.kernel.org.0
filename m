Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF5D176763B
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233113AbjG1TWR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbjG1TWP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:22:15 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4456619A1
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690572131;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=/EVaM2XZsvuWgmc7VSGYtSbz44/EKNT9DQAfq173L1k=;
        b=mq5cld89HkntJxbwe8gdliTX0xUFpe/m1WKkK8kAp6NeaV770hCQHVlnAhV7Rlk8glKRUT
        EcguADE2SqnVqEAFWI9joJ7i7vr9XnBW3B14eXC4xl7T9JJJjvh46TqZQzgWqs1QJaSD1e
        WBnSXsudsn9OhoS+60nxvw/2Sb2Q9Bo=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id bb973299 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Fri, 28 Jul 2023 19:22:11 +0000 (UTC)
Received: from localhost (beryllium [local])
        by beryllium (OpenSMTPD) with ESMTPA id 9bd6ed82;
        Fri, 28 Jul 2023 21:22:10 +0200 (CEST)
Date:   Fri, 28 Jul 2023 19:22:10 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Message-ID: <ZMQVYtquNN-s0IJr@beryllium>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A function can't check whether a pointer points to the start of a
string.  What it certainly can do is to keep reading until you either
find a null byte or read the secret key that lies adjacent in memory and
post it to your favorite mailing list.

strlcpy and strlcat behave the exact same way any other function
accepting a string behaves:  If you don't pass a string, the behavior is
undefined.  And that, I believe, does not deserve a special mention
here, seeing as all the other string functions don't get such a mention
either.

Signed-off-by: Lennart Jablonka <humm@ljabl.com>
---
Hey Alex!

I don't dislike string_copying(7) overall.  This is one of the parts of
the content that I dislike---it is false, after all.  Besides that:

The "definitions" at the top don't make it clear enough that they aren't
supposed to be precise definitions used in your usual C jargon; that
while string and a string's length and an object's size are defined
by C, and while you understand and sometimes use most of these terms,
there is no norm that says "When you talk about a pointer to one past
a buffer's last byte, you call it 'end'!"  That there is no norm that
says "When you say 'copy,' you write to the beginning, not to
elsewhere!"

Furthermore, the terminology around "character sequences" confused me
while reading the page.  When do you have a buffer, neither
null-terminated nor null-padded, that is defined not to contain null
bytes?  And how do functions behave that want a character sequence if
that does contain a null byte?  Do they take the null byte to signal the
character sequence's end?  Need they accept the null byte as part of the
character sequence?  Is the behavior undefined?

And lastly, the man page doesn't list the functions' standards or who
invented them.

 man7/string_copying.7 | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 04426ef77..308cada36 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -223,8 +223,7 @@ It only requires to check for truncation once after all chained calls.
 .BR strlcpy (3bsd)
 and
 .BR strlcat (3bsd)
-are designed to crash if the input string is invalid
-(doesn't contain a terminating null byte).
+are similar, but less efficient when chained.
 .IP \[bu]
 .BR stpncpy (3)
 and
@@ -410,9 +409,6 @@ isn't large enough to hold the copy,
 the resulting string is truncated
 (but it is guaranteed to be null-terminated).
 They return the length of the total string they tried to create.
-These functions force a SIGSEGV if the
-.I src
-pointer is not a string.
 .IP
 .BR stpecpy (3)
 is a simpler alternative to these functions.
-- 
2.41.0
