Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 567F17E6D36
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 16:20:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231624AbjKIPUm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 10:20:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231586AbjKIPUl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 10:20:41 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C3C230DC
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 07:20:39 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FEE9C433C7;
        Thu,  9 Nov 2023 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699543239;
        bh=Cz5yLL/KZDRFwBI7XXp+cRnzHEn71BxpFjPK1oN8QY4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O8YnmXeGCul3rJkEKRMsS43QRukXys47vbDoP7IFe6e7uQx/10rWd46603a8s2GtG
         8D47M5N8hHzV4R33zuMdx82T7Ed9/84JDbjHaVhNBEfebyRxAe2ZPLWmzTzsp5b7mG
         iSiB9dMXSf7NaHKwWhsMADUUoq3/u3RCe7fYq71oUnzCB+sai8DByF1Mrcl9nkaGeK
         +mjo130DdHh1Yar2PYGIfpamotN2nVisKmJmaPlZzO+07WcfsiZIruGTRyqzJi/6qC
         X/YBGIrIst7A1OzUh8Ob4BFhI7Q5dBbr988htn4/thF4B4ynUU5fbRuB3LBKy07mU3
         nzi/a7HoM4K2A==
Date:   Thu, 9 Nov 2023 16:20:34 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH v2 1/2] stpncpy.3, string_copying.7: Clarify that
 st[rp]ncpy() do NOT produce a string
Message-ID: <20231109151947.11174-2-alx@kernel.org>
References: <20231108221638.37101-2-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231108221638.37101-2-alx@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These copy *from* a string.  But the destination is a simple character
sequence within an array; not a string.

Suggested-by: DJ Delorie <dj@redhat.com>
Acked-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>
Cc: Thorsten Kukuk <kukuk@suse.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Cc: Xi Ruoyao <xry111@xry111.site>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Patch 1/2 is just a resend, with more CCs.
Patch 2/2 is a new one further clarifying the wording, after Jonny's
suggestions.

 man3/stpncpy.3        | 17 +++++++++++++----
 man7/string_copying.7 | 20 ++++++++++----------
 2 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index b6bbfd0a3..f86ff8c29 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -6,9 +6,8 @@
 .TH stpncpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 stpncpy, strncpy
-\- zero a fixed-width buffer and
-copy a string into a character sequence with truncation
-and zero the rest of it
+\-
+fill a fixed-width null-padded buffer with bytes from a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -37,7 +36,7 @@ .SH SYNOPSIS
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-These functions copy the string pointed to by
+These functions copy bytes from the string pointed to by
 .I src
 into a null-padded character sequence at the fixed-width buffer pointed to by
 .IR dst .
@@ -110,6 +109,16 @@ .SH CAVEATS
 These functions produce a null-padded character sequence,
 not a string (see
 .BR string_copying (7)).
+For example:
+.P
+.in +4n
+.EX
+strncpy(buf, "1", 5);       // { \[aq]1\[aq],   0,   0,   0,   0 }
+strncpy(buf, "1234", 5);    // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[aq]4\[aq],   0 }
+strncpy(buf, "12345", 5);   // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[aq]4\[aq], \[aq]5\[aq] }
+strncpy(buf, "123456", 5);  // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], \[aq]4\[aq], \[aq]5\[aq] }
+.EE
+.in
 .P
 It's impossible to distinguish truncation by the result of the call,
 from a character sequence that just fits the destination buffer;
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index cadf1c539..0e179ba34 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -41,15 +41,11 @@ .SS Strings
 .\" ----- SYNOPSIS :: Null-padded character sequences --------/
 .SS Null-padded character sequences
 .nf
-// Zero a fixed-width buffer, and
-// copy a string into a character sequence with truncation.
-.BI "char *stpncpy(char " dst "[restrict ." sz "], \
+// Fill a fixed-width null-padded buffer with bytes from a string.
+.BI "char *strncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
-.P
-// Zero a fixed-width buffer, and
-// copy a string into a character sequence with truncation.
-.BI "char *strncpy(char " dst "[restrict ." sz "], \
+.BI "char *stpncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
 .P
@@ -240,14 +236,18 @@ .SS Truncate or not?
 .\" ----- DESCRIPTION :: Null-padded character sequences --------------/
 .SS Null-padded character sequences
 For historic reasons,
-some standard APIs,
+some standard APIs and file formats,
 such as
-.BR utmpx (5),
+.BR utmpx (5)
+and
+.BR tar (1),
 use null-padded character sequences in fixed-width buffers.
 To interface with them,
 specialized functions need to be used.
 .P
-To copy strings into them, use
+To copy bytes from strings into these buffers, use
+.BR strncpy (3)
+or
 .BR stpncpy (3).
 .P
 To copy from an unterminated string within a fixed-width buffer into a string,
-- 
2.42.0

