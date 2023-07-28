Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC0A77675D0
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjG1SsQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:48:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjG1SsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:48:16 -0400
X-Greylist: delayed 399 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 28 Jul 2023 11:48:14 PDT
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 167C835A8
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690569692;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=EYl1oF0J85VmmJdLzxdDTsCybfpuVi73SP75Ecw/Wlg=;
        b=HVRaGF54Po62yxMGClrJSu9OUffXs1Fzf+ZWR95C9cT/mAi8fw5HFlnjDoAqJjS8czN282
        +d8l3MYKd5GGZbMtePenl9A8UZpkKQKubtOQUgiFOLX1TR/mzUuXBaLogLRMkp8foIGLf+
        pF/AJ38Nebj+lU5bA5O53i4+Lz5NSyo=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 054d80b5 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Fri, 28 Jul 2023 18:41:32 +0000 (UTC)
Received: from localhost (beryllium [local])
        by beryllium (OpenSMTPD) with ESMTPA id 50223b61;
        Fri, 28 Jul 2023 20:41:30 +0200 (CEST)
Date:   Fri, 28 Jul 2023 18:41:29 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] string_copying.7: tfix
Message-ID: <ZMQL2bAg5p2no9ir@beryllium>
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

Signed-off-by: Lennart Jablonka <humm@ljabl.com>
---
On some of the commas:  There are a few of instances of

	Subject verb object partclause, advphrase.

For example:

	This function catenates the input character sequence contained in a null-padded wixed-width buffer, into a destination string.
	| subject     | verb    | object                     | participial clause                           | adverbial phrase       |

Dropping the relative clause, there shouldn't be a comma preceding the
restrictive adverbial phrase: The input character sequence is really,
always catenated into a destination string; that is essential.

The participial clause, being non-restrictive---there is but one input
character sequence that could be meant---, should be enclosed by commas.
That is the existing comma's purpose and doesn't work without the added,
first comma.

 man7/string_copying.7 | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index da1fc6752..04426ef77 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -49,7 +49,7 @@ const char *restrict " src ,
 .PP
 // Zero a fixed-width buffer, and
 // copy a string into a character sequence with truncation.
-.BI "char *strncpy(char " dest "[restrict ." sz "], \
+.BI "char *strncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
 .PP
@@ -280,9 +280,9 @@ instead of
 In programs that make considerable use of strings or character sequences,
 and need the best performance,
 using overlapping character sequences can make a big difference.
-It allows holding subsequences of a larger character sequence.
+It allows holding sub-sequences of a larger character sequence,
 while not duplicating memory
-nor using time to do a copy.
+or using time to do a copy.
 .PP
 However, this is delicate,
 since it requires using character sequences.
@@ -397,7 +397,7 @@ It returns a pointer suitable for chaining.
 Truncation needs to be detected only once after the last chained call.
 .IP
 This function is not provided by any library;
-See EXAMPLES for a reference implementation.
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ----/
 .TP
 .BR strlcpy (3bsd)
@@ -427,7 +427,7 @@ isn't large enough to hold the copy,
 the resulting character sequence is truncated.
 Since it creates a character sequence,
 it doesn't need to write a terminating null byte.
-It's impossible to distinguish truncation by the result of the call,
+It's impossible to distinguish truncation by the result of the call
 from a character sequence that just fits the destination buffer;
 truncation should be detected by
 comparing the length of the input string
@@ -444,8 +444,8 @@ is a more useful alternative to this function.
 .\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) --------------------/
 .TP
 .BR zustr2ustp (3)
-This function copies the input character sequence
-contained in a null-padded wixed-width buffer,
+This function copies the input character sequence,
+contained in a null-padded fixed-width buffer,
 into a destination character sequence.
 The programmer is responsible for allocating a buffer large enough.
 It returns a pointer suitable for chaining.
@@ -455,12 +455,12 @@ since the size of the original character sequence is always known,
 so it wouldn't be very useful.
 .IP
 This function is not provided by any library;
-See EXAMPLES for a reference implementation.
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: zustr2stp(3) --------------------/
 .TP
 .BR zustr2stp (3)
-This function copies the input character sequence
-contained in a null-padded wixed-width buffer,
+This function copies the input character sequence,
+contained in a null-padded fixed-width buffer,
 into a destination string.
 The programmer is responsible for allocating a buffer large enough.
 It returns a pointer suitable for chaining.
@@ -470,7 +470,7 @@ since the size of the original character sequence is always known,
 so it wouldn't be very useful.
 .IP
 This function is not provided by any library;
-See EXAMPLES for a reference implementation.
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: strncat(3) ----------------------/
 .TP
 .BR strncat (3)
@@ -478,8 +478,8 @@ Do not confuse this function with
 .BR strncpy (3);
 they are not related at all.
 .IP
-This function catenates the input character sequence
-contained in a null-padded wixed-width buffer,
+This function catenates the input character sequence,
+contained in a null-padded fixed-width buffer,
 into a destination string.
 The programmer is responsible for allocating a buffer large enough.
 The return value is useless.
-- 
2.41.0
