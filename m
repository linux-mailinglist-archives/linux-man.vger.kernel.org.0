Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA4577E6D38
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 16:20:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234475AbjKIPUq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 10:20:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231586AbjKIPUq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 10:20:46 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 226FA30DC
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 07:20:44 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172E2C433C7;
        Thu,  9 Nov 2023 15:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699543243;
        bh=YzFuP0/H5/07clwoKJrhupQ0PCXz/xmxy+i2aHumR+Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=X7QTgezANdVC16Yb/gE1RmdmmPCidqeYeV19rxZgn9Qk0y7L1Hc/S2eD3VbMKXhm+
         CqNacaOR7OHnPAspACZVTxZzmHM5bWdQZV6Q16dO0tZPmZr0zjM6UdlSSsgIw6EMtJ
         +B6UDbf/+WMxsdTw+Fe7kodckTPYW7dl4etOEtmUO99coTD7xrezAtBVSVKZ+1Ba4h
         8f3lRanhKcNx3B+E7q+OEWCbAAsvFKI+i/JX486lSoLEi8hnBvaRd76lF0xqHHD1J3
         ndaJLOZAMg/K5pWRApjakh3oOOl++W9J4LtfjX4mSE7UhhaWmGw0TJe2HQFnKgVbfL
         LrI8k6w+XW1HA==
Date:   Thu, 9 Nov 2023 16:20:39 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Jonny Grant <jg@jguk.org>, DJ Delorie <dj@redhat.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH v2 2/2] stpncpy.3, string.3, string_copying.7: Clarify that
 st[rp]ncpy() pad with null bytes
Message-ID: <20231109151947.11174-3-alx@kernel.org>
References: <20231108221638.37101-2-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231108221638.37101-2-alx@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The previous wording could be interpreted as if the nulls were already
in place.  Clarify that it's this function which pads with null bytes.

Also, it copies "characters" from the src string.  That's a bit more
specific than copying "bytes", and makes it clearer that the terminating
null byte in src is not part of the copy.

Suggested-by: Jonny Grant <jg@jguk.org>
Cc: DJ Delorie <dj@redhat.com>
Cc: Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Thorsten Kukuk <kukuk@suse.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Cc: Xi Ruoyao <xry111@xry111.site>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpncpy.3        | 10 ++++++----
 man3/string.3         | 11 ++---------
 man7/string_copying.7 |  3 ++-
 3 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index f86ff8c29..3cf4eb371 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -7,7 +7,8 @@
 .SH NAME
 stpncpy, strncpy
 \-
-fill a fixed-width null-padded buffer with bytes from a string
+fill a fixed-width buffer with characters from a string
+and pad with null bytes
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -36,10 +37,11 @@ .SH SYNOPSIS
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-These functions copy bytes from the string pointed to by
+These functions copy characters from the string pointed to by
 .I src
-into a null-padded character sequence at the fixed-width buffer pointed to by
-.IR dst .
+into a character sequence at the fixed-width buffer pointed to by
+.IR dst ,
+and pad with null bytes.
 If the destination buffer,
 limited by its size,
 isn't large enough to hold the copy,
diff --git a/man3/string.3 b/man3/string.3
index aba5efd2b..bd8b342a6 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -179,21 +179,14 @@ .SH SYNOPSIS
 .I n
 bytes to
 .IR dest .
-.SS Obsolete functions
 .TP
 .nf
 .BI "char *strncpy(char " dest "[restrict ." n "], \
 const char " src "[restrict ." n ],
 .BI "       size_t " n );
 .fi
-Copy at most
-.I n
-bytes from string
-.I src
-to
-.IR dest ,
-returning a pointer to the start of
-.IR dest .
+Fill a fixed‐width buffer with characters from a string
+and pad with null bytes.
 .SH DESCRIPTION
 The string functions perform operations on null-terminated
 strings.
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 0e179ba34..865271c6f 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -41,7 +41,8 @@ .SS Strings
 .\" ----- SYNOPSIS :: Null-padded character sequences --------/
 .SS Null-padded character sequences
 .nf
-// Fill a fixed-width null-padded buffer with bytes from a string.
+// Fill a fixed-width buffer with characters from a string
+// and pad with null bytes.
 .BI "char *strncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
-- 
2.42.0

