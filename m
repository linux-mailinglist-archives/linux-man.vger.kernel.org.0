Return-Path: <linux-man+bounces-2551-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F5DA4AC95
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 16:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7AF03B7EF5
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 15:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD35E1DED79;
	Sat,  1 Mar 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDy9JsFz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D481CA84
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740843594; cv=none; b=pwrB7pSNS232nhpYedW0eGtoEfUTDhCrhtRqi55ZEYZ5k7LUC/DqtxoIVnSPCXj4A3Y5EFTLSP0Mt5tFNH0j5fJ50f93LsQA11H9SZknm1SX+xPhG1fK4WCES7yBJVLCgkwPd3PU0D4xKwd9CqgyWFjVruPGuT0cHQh3xCfi0EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740843594; c=relaxed/simple;
	bh=GqNF9VGX2voau96mMq3optk5JyhN3dde5KRycEkxp6Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PpgJSDksRLKRshG4WuXiLpj66vZVlecT8K1NUXqnn2iIltI8tiC/gu7YuWz9xqJvAzgYaLjC8/mPLO4MbT1nKVM3g4W66f4FgvU6085uLowlTdWZGNTbOJR7n/jai/EwGAygqhWSMvvq16nuF3+Nt1SwNpb3Z3T/RhpALebrddo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDy9JsFz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27DB6C4CEDD;
	Sat,  1 Mar 2025 15:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740843594;
	bh=GqNF9VGX2voau96mMq3optk5JyhN3dde5KRycEkxp6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lDy9JsFzvHONcqNMB3vlHGCJi405czITgq98ODirEj3jUn1ZN2YMTLwBqTPJ8iqRs
	 IqqVJwv0jbz2Q7kLw61Yb+7VQE8qIGq8caJU1blBGWlvVezULTYH0NjYAcbmI3y4Wk
	 egCkN+8Zjx806Z8K5C+Ubek2LJrzHAqT4lJPqqVrSxlSvWFF/mrB5VOUOILqbAloYE
	 LppqtlDOtwqClt/sWuQIHHNTgv2s2WVAhjUIT39d4fEQmtimmU6NiAD1OswyQBJE9x
	 WjKKqGxZVuLg6hTcpxmnBuOn59ym4MkFzn1w4ljyF7huqRkBoG+IiojObJqrwVAT40
	 OX9F+0pcuDYPg==
Date: Sat, 1 Mar 2025 16:39:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, nrk <nrk@disroot.org>,
	rahl <rahl@everwhe.re>, Jonathan Wakely <jwakely.gcc@gmail.com>,
	GCC <gcc-help@gcc.gnu.org>, glibc <libc-help@sourceware.org>
Subject: [PATCH v1] Revert "futex.2: Make the example use C11 atomics rather
 than GCC builtins"
Message-ID: <160a902995de8f13429a5f8201dad5bb69d0a2d8.1740843494.git.alx@kernel.org>
References: <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
X-Mailer: git-send-email 2.47.2

This reverts commit 915c4ba36f9f71db88e7e7913b845d046996f485.

There were several conflicts during the revert, and I decided to keep
some of the changes from that commit, but the main part, which is using
C11 atomics, is gone.

It transformed a correct program into one that had important bugs, such
as passing incorrectly qualified variables.  Since nobody here
(including gcc-help@ and glibc-help@) seems to understand C11 atomics
enough to fix the code, let's revert to a known-good state.

Fixes: 915c4ba36f9f (2018-11-17; "futex.2: Make the example use C11 atomics rather than GCC builtins")
Reported-by: nrk <nrk@disroot.org>
Reported-by: rahl <rahl@everwhe.re>
Reported-by: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: GCC <gcc-help@gcc.gnu.org>
Cc: glibc <libc-help@sourceware.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/futex.2 | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/man/man2/futex.2 b/man/man2/futex.2
index 70c3956ab..00c7febd0 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -1796,7 +1796,6 @@ .SS Program source
 #include <err.h>
 #include <errno.h>
 #include <linux/futex.h>
-#include <stdatomic.h>
 #include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -1822,13 +1821,12 @@ .SS Program source
 static void
 fwait(uint32_t *futexp)
 {
-    long            s;
-    const uint32_t  one = 1;
+    long  s;
 \&
-    /* atomic_compare_exchange_strong(ptr, oldval, newval)
-       atomically performs the equivalent of:
+    /* __sync_bool_compare_and_swap(ptr, oldval, newval) is a gcc
+       built-in function.  It atomically performs the equivalent of:
 \&
-           if (*ptr == *oldval)
+           if (*ptr == oldval)
                *ptr = newval;
 \&
        It returns true if the test yielded true and *ptr was updated. */
@@ -1836,7 +1834,7 @@ .SS Program source
     while (1) {
 \&
         /* Is the futex available? */
-        if (atomic_compare_exchange_strong(futexp, &one, 0))
+        if (__sync_bool_compare_and_swap(futexp, 1, 0))
             break;      /* Yes */
 \&
         /* Futex is not available; wait. */
@@ -1854,13 +1852,9 @@ .SS Program source
 static void
 fpost(uint32_t *futexp)
 {
-    long            s;
-    const uint32_t  zero = 0;
+    long  s;
 \&
-    /* atomic_compare_exchange_strong() was described
-       in comments above. */
-\&
-    if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
+    if (__sync_bool_compare_and_swap(futexp, 0, 1)) {
         s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
         if (s  == \-1)
             err(EXIT_FAILURE, "futex\-FUTEX_WAKE");

Range-diff against v0:
-:  --------- > 1:  160a90299 Revert "futex.2: Make the example use C11 atomics rather than GCC builtins"

base-commit: 46b7bcaae3cbd18b3022caa3ddd52e7be66bb21a
-- 
2.47.2


