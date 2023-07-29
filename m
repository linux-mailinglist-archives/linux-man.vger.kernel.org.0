Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0B9D767F73
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 15:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbjG2Nlw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 09:41:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjG2Nlv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 09:41:51 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFBB83A97
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 06:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690638107;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=kPsgjxsSus1r8L+M6pVTQmgOPcgJ9dbAWijRbjKRU/Y=;
        b=x9yffme3f7smF5pfg7Cq3V5ya7lDfDXhqy7qWIs5lAemqh5uM65LeChYKnsSCBJj1RIeQ6
        vdIQY/57uHvZ3YhRUVo0xg60DZJpEGYtylQgugB/G10eVIeqW/ftTBQONOO8ia2kQPpOIC
        ErieERKXL7AqvaTxPdT17Eb5g6pR51c=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 8e0c2169 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sat, 29 Jul 2023 13:41:46 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id fae025d9;
        Sat, 29 Jul 2023 15:41:46 +0200 (CEST)
Date:   Sat, 29 Jul 2023 13:41:46 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2] string_copying.7: tfix
Message-ID: <ZMUXGiFyID8a7Qj8@fluorine.ljabl.com>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
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

On some of the commas: There are a few of instances of

	Subject verb object partclause, advphrase.

For example:

	This function catenates the input character sequence
	| subject     | verb    | object                   |

	contained in a null-padded wixed-width buffer,
	| participial clause                        |

	into a destination string.
	| adverbial phrase       |

Imagining the participial clause away, there shouldn't be a comma
preceding the restrictive adverbial phrase: The input character sequence
is really, always catenated into a destination string; that is
essential. For example:

	This function catenates the input character sequence into
	a destination string.

The participial clause, being non-restrictive---there is but one input
character sequence that could be meant---, should be enclosed by commas.
That is the existing comma's purpose and doesn't work without the added,
first comma.

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Lennart Jablonka <humm@ljabl.com>
---
 man7/string_copying.7 | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 34031ea02..78cb98940 100644
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
@@ -279,7 +279,7 @@ instead of
 In programs that make considerable use of strings or character sequences,
 and need the best performance,
 using overlapping character sequences can make a big difference.
-It allows holding subsequences of a larger character sequence.
+It allows holding subsequences of a larger character sequence,
 while not duplicating memory
 nor using time to do a copy.
 .PP
@@ -396,7 +396,7 @@ It returns a pointer suitable for chaining.
 Truncation needs to be detected only once after the last chained call.
 .IP
 This function is not provided by any library;
-See EXAMPLES for a reference implementation.
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ----/
 .TP
 .BR strlcpy (3bsd)
@@ -440,8 +440,8 @@ is a more useful alternative to this function.
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
@@ -451,12 +451,12 @@ since the size of the original character sequence is always known,
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
@@ -466,7 +466,7 @@ since the size of the original character sequence is always known,
 so it wouldn't be very useful.
 .IP
 This function is not provided by any library;
-See EXAMPLES for a reference implementation.
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: strncat(3) ----------------------/
 .TP
 .BR strncat (3)
@@ -474,8 +474,8 @@ Do not confuse this function with
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
2.40.1

