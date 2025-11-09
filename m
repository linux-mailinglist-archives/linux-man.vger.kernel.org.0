Return-Path: <linux-man+bounces-4260-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5C1C43753
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 03:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2678188BEFA
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 02:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5001E1A23B6;
	Sun,  9 Nov 2025 02:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="chaQN1aG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6843B134AB
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 02:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762655841; cv=none; b=PWXrAMHlwPIpEGwTqKVxYzZTT3ukihPW85Xv7l2vfobQQkduwWMJ/4O519Rt43y2/GBMFx39VXY7Wy5yE7nxg59XXoIkEfy+ZLKD/oTGgxK+Hl7ryoQDWOdbC7nYX+CBFfALKQpPd0bJggf1XCPFjb5i1IV/OWugHFyWJWjbOXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762655841; c=relaxed/simple;
	bh=Ld1QiAETu1WHH/KFSQMgForgc64+A9vqyXi/NXOIeIg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZZRfsqiTy8pHHNuwbQRFQ9y9XwW6RPOZfSrCqdYzc/tfEog3AD/Wb4dQoYERMSEE8ftJgeYArXXmthHsEZp/dW0Ba37UsXW7KssTKjxgymAj2kMqR0rPQUDFOlachuADaTLRoDmLjEGCfal90HX2wuIHoOpP78iWj+5JuF53qAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=chaQN1aG; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso1613687b3a.3
        for <linux-man@vger.kernel.org>; Sat, 08 Nov 2025 18:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762655838; x=1763260638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U+IF/U/3VmDuwlqFn4HR99eZm5Nmx9YcG1mmKz6klok=;
        b=chaQN1aGuWlDzrd16cprYYjwk64ZmmgO5syUnAF1msOoMB+WUULLeGIYILS/MvNb5y
         d2fu33J3ePQB59BHglhhIvTvwIbwPnPfxiADF2wZygdBiBJml/Nwi3CWJ8x30y3M+V8l
         L/Gmre/SxGdcpI/O1tWkuNI7rwP6tFNZ0/HfrYLgqwyvLEYI/SV8/v/6iYN5cm/EeUPP
         mivGSiePW0Q8H2+aTRAYWNw3/RfQofOdYLym0+v5w3JijQITu4rX+R9yGprAbbLXM8sI
         rkTL+p1t4RHW9WDYJDCMxoKxy6y5HA7U+75ozBSawg3ppdcxZwCDbe4AYIzZSNRoTRAJ
         cQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762655838; x=1763260638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U+IF/U/3VmDuwlqFn4HR99eZm5Nmx9YcG1mmKz6klok=;
        b=jowIsfPP9OXqQwtNOw27jjs83mZspx0sh4wyYBAmF+80Ns/90AKSiYazIMWxH9a9u/
         spj0yuFF59aLjDKpMMuO79yX9pOFBCqbvAWOPRs/IbSvLzUqNHZgjTrTseYO5J4zxJkD
         ITteafIAlfTk7jcja6ffuMzbRDavvsnPryyaVXBXv+glaYvtCWlAZ7EvSLFEVs0l0CWC
         Z6nX5ohWD49+xQnd08CIWE8LcyR/AlNFd8vQ4/wg+OaqVhQFw7JGtue478Js07tqCinN
         ImQ1pVOHM27yEsf8UYHIs+oejylSYS2W71CexlckkcvR5omlpE/b3V/OurnK4EI8UnAD
         WlgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGGZpXSIr9WY8ppX6AKlcx8PVGS4w1wL8Pn7pQfM9OV9aSF51XZG3+50YupN489XGk85CctEhGrUo=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc8muxTZhi37+6GFyeD2LtaYqaNKH1vk1R9PC2/a7VNiDTx0CK
	yyc7J+1XzF5hklHZABkZWCH1eoKzgWf1qvhVjlYv/HcX2N/VkfGkEi1MLB57TG+p
X-Gm-Gg: ASbGnctvm2mpT03KLzl3SnBV2T8iQShvAobL/JlhwZFcqdwD9d5gaQ8jZZw0jhu/mfO
	qT/tbbqiq9IU2xCEKZ4ZXaBIxq2Po94BjPsihiRvfjDLct9s4LGswq/0je1tIabV1aSMHH7BEoG
	itfOey7vPjtbnPIoh8bGd6XKcsT+gh1qwrLdUyEd4+ImozPNFCfYLoWp8/HjXSJU0ZSpMebRVoP
	PlY8SvSxbN0maX0zCqi9I1yf+L+HXMNbq06p7fxr6bDSSHw2xqeW6R+CMsLBH+SjIIx0o9CTLYu
	TE4eJ3sdw6/ULxktOUWVgAeJApu3cxBkC+2DXiRBCXz9PyuR43Pc+5wc0sWSgYYJ8S4k8TKHgBm
	IkQqLRwfsWsQ6aeteRqYlQZSUhcRrkXsSzqFASRiGMwp16F5/K1QsitLPUaWgVGto11NL5Xuh69
	EMMma+8TV1Ck69WeoyPtdy+EJJYjBZvonRfm51hjkviglJdSKt8p0JUhynt3r33lU3bKvccmsZt
	DL/0ZTJqEM=
X-Google-Smtp-Source: AGHT+IEP/WBXtK9NtPbUGtzXq0xYIRisKiNT1xg4NmHrEm/K35uuzy4D1Ciq/b45N7jcpn7MXfuflw==
X-Received: by 2002:a05:6a20:a11f:b0:34f:c83b:b3e6 with SMTP id adf61e73a8af0-353a3147fbcmr5393694637.32.1762655838260;
        Sat, 08 Nov 2025 18:37:18 -0800 (PST)
Received: from Arisu.localdomain ([116.232.39.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bb0b958af47sm2667663a12.22.2025.11.08.18.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 18:37:17 -0800 (PST)
From: Mingye Wang <arthur200126@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mingye Wang <arthur200126@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: [PATCH 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
Date: Sun,  9 Nov 2025 10:36:00 +0800
Message-ID: <20251109023632.8515-2-arthur200126@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux kernel 5.6 no longer has a blocking random pool.  This commit
updates all relevant references to reflect this change.

* random.7: Remove references to the blocking pool in the table.  Add a
  note about the blocking pool.
* random.7: Revise "choice of random source" to remove any recommendation
  of the blocking pool.  Stop suggesting that the blocking pool is
  safer (it's not after initialization).
* random.7: Add table entry for GRND_INSECURE.
* getrandom.2: Add flag entry for GRND_INSECURE.
* getrandom.2: Add removal note to GRND_RANDOM.
* random.4: Split DESCRIPTION paragraph on /dev/random into two, one
  for the new behavior and the other for the old.
* random.4: Adjust size limits and /proc list for 5.6.
* random.4: Mention blocking resolution by high-precision timer entropy.

Closes: https://bugzilla.kernel.org/show_bug.cgi?id=214885
Signed-Off-By: Mingye Wang <arthur200126@gmail.com>
---
 man/man2/getrandom.2 |  9 ++++++
 man/man4/random.4    | 30 ++++++++++++++-----
 man/man7/random.7    | 70 ++++++++++++++++++++++++++------------------
 3 files changed, 72 insertions(+), 37 deletions(-)

diff --git a/man/man2/getrandom.2 b/man/man2/getrandom.2
index 9e782e6..5f0a2da 100644
--- a/man/man2/getrandom.2
+++ b/man/man2/getrandom.2
@@ -62,6 +62,8 @@ argument is a bit mask that can contain zero or more of the following values
 ORed together:
 .TP
 .B GRND_RANDOM
+.\" commit 48446f198f9adcb499b30332488dfd5bc3f176f6
+Ignored since Linux 5.6.
 If this bit is set, then random bytes are drawn from the
 .I random
 source
@@ -103,6 +105,13 @@ does not block in these cases, but instead immediately returns \-1 with
 .I errno
 set to
 .BR EAGAIN .
+.TP GRND_INSECURE
+.\" commit 75551dbf112c992bc6c99a972990b3f272247e23
+Added in Linux 5.6.
+Request best-effort, non-cryptographic-quality random bytes.
+If this bit is set, then
+.BR getrandom ()
+will never block or fail due to a lack of entropy.
 .SH RETURN VALUE
 On success,
 .BR getrandom ()
diff --git a/man/man4/random.4 b/man/man4/random.4
index 0a651b0..95200bc 100644
--- a/man/man4/random.4
+++ b/man/man4/random.4
@@ -56,17 +56,29 @@ or
 .I /dev/random
 instead.
 .P
-The
+.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
+As of Linux 5.6,
+.I /dev/random
+is identical to
+.I /dev/urandom
+except that it blocks during early boot.
+A jitter-based seeding technique added in Linux 5.4 should help reduce
+block time.
+.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
+.P
+The pre-Linux 5.6
 .I /dev/random
-device is a legacy interface which dates back to
+device was a legacy interface which dates back to
 a time where the cryptographic primitives used in the implementation
 of
 .I /dev/urandom
 were not widely trusted.
-It will return random bytes only within the estimated number of
-bits of fresh noise in the entropy pool, blocking if necessary.
+It would return random bytes only within the estimated number of bits of fresh
+noise in the entropy pool, blocking until additional environmental noise is
+gathered.
+This old
 .I /dev/random
-is suitable for applications that need
+was suitable for applications that need
 high quality randomness, and can afford indeterminate delays.
 .P
 When the entropy pool is empty, reads from
@@ -121,7 +133,8 @@ A
 .BR read (2)
 from
 .I /dev/random
-will return at most 512 bytes
+has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,
+the maximum size was 512 bytes. (340 bytes before Linux 2.6.12)
 .\" SEC_XFER_SIZE in drivers/char/random.c
 (340 bytes before Linux 2.6.12).
 .P
@@ -133,7 +146,7 @@ will update the
 entropy pool with the data written, but this will not result in a
 higher entropy count.
 This means that it will impact the contents
-read from both files, but it will not make reads from
+read from both files, but it will not make reads from a pre-Linux 5.6
 .I /dev/random
 faster.
 .SS Usage
@@ -158,7 +171,7 @@ soon as it is reloaded in the boot sequence, and perfectly adequate for
 network encryption session keys.
 (All major Linux distributions have saved the seed file across reboots
 since 2000 at least.)
-Since reads from
+Since reads from a pre-Linux 5.6
 .I /dev/random
 may block, users will usually want to open it in nonblocking mode
 (or perform a read with timeout),
@@ -262,6 +275,7 @@ It contains the value 4096.
 .RE
 .TP
 .I read_wakeup_threshold
+Removed in Linux 5.6.
 This file
 contains the number of bits of entropy required for waking up processes
 that sleep waiting for entropy from
diff --git a/man/man7/random.7 b/man/man7/random.7
index fda408d..c5e959f 100644
--- a/man/man7/random.7
+++ b/man/man7/random.7
@@ -54,17 +54,16 @@ The kernel collects bits of entropy from the environment.
 When a sufficient number of random bits has been collected, the
 entropy pool is considered to be initialized.
 .SS Choice of random source
-Unless you are doing long-term key generation (and most likely not even
-then), you probably shouldn't be reading from the
+Unless your program may run at early-boot, before the entropy pool
+is initialized, there is no longer any palpable difference between
 .I /dev/random
-device or employing
-.BR getrandom (2)
-with the
-.B GRND_RANDOM
-flag.
-Instead, either read from the
+and
+.I /dev/urandom
+since Linux 5.6. (See the table below.)
+.PP.
+On older kernels, either read from the
 .I /dev/urandom
-device or employ
+device or (especially if you are concerned with early boot) employ
 .BR getrandom (2)
 without the
 .B GRND_RANDOM
@@ -117,9 +116,9 @@ T}
 T{
 .I /dev/random
 T}	T{
-Blocking pool
+CSPRNG output
 T}	T{
-If entropy too low, blocks until there is enough entropy again
+Never blocks
 T}	T{
 Blocks until enough entropy gathered
 T}
@@ -144,17 +143,6 @@ Blocks until pool ready
 T}
 T{
 .BR getrandom ()
-.B GRND_RANDOM
-T}	T{
-Same as
-.I /dev/random
-T}	T{
-If entropy too low, blocks until there is enough entropy again
-T}	T{
-Blocks until pool ready
-T}
-T{
-.BR getrandom ()
 .B GRND_NONBLOCK
 T}	T{
 Same as
@@ -166,21 +154,45 @@ T}	T{
 T}
 T{
 .BR getrandom ()
-.B GRND_RANDOM
-+
-.B GRND_NONBLOCK
+.B GRND_INSECURE
 T}	T{
 Same as
-.I /dev/random
+.I /dev/urandom
 T}	T{
-.B EAGAIN
-if not enough entropy available
+Never blocks
 T}	T{
-.B EAGAIN
+Returns output from uninitialized CSPRNG (may be low entropy and unsuitable for cryptography)
 T}
 .TE
 .ad
 .\"
+.SS The old blocking pool
+The above table describes the behavior of the interfaces since
+Linux 5.6.  In older kernels, the
+.I /dev/random
+used a separate blocking pool, and
+.BR getrandom ()
+had a
+.B GRND_RANDOM
+flag for reading from the blocking pool.
+.\"
+.PP
+The older blocking pool was a vestige of a time when the CSPRNG
+was not trusted.
+It assumed that entropy can run out by reading the CSPRNG.
+This has never been the case.
+Instead, programs using
+.B GRND_RANDOM
+and
+.I /dev/random
+had to deal with operations blocking indefinitely.
+Furthermore, dealing with the partially fulfilled
+requests that can occur when using
+.B GRND_RANDOM
+or when reading from
+.I /dev/random
+increases code complexity.
+.\"
 .SS Generating cryptographic keys
 The amount of seed material required to generate a cryptographic key
 equals the effective key size of the key.
-- 
2.51.0


