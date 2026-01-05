Return-Path: <linux-man+bounces-4616-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CE5CF2B84
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACC963031A1C
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124BA32FA28;
	Mon,  5 Jan 2026 09:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O0y3lzky"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC6128980A
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604812; cv=none; b=FdkT22IufbC/2lCHe8pHyRrTZ6l+sIRwMGK1GWVEVfoXhzrm3BLXYp6GaNFtYZZkPzjNO70ofDPVmqmycyc9WvKpPZWCk1UX1DYN81+Y/82qD/F1IlyYjOh01lkMRe7WtVUgNuAIshJzZPgbaoqA4GmReKSvmPqwLjoDYx5Y5SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604812; c=relaxed/simple;
	bh=BConZQegkTGUtP+OWEogMWzZEhcFx48ufDaGP30bBpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DtFWnhv0ZAF7z6bYkZgVJSZQmK/EVJNZuloXxcs4x9vNpJOF3qTwLN8QQRCvsKprbJyn5c+ocbXZNj/2JTmq8G3fXOCBxhPiYruSIUs+mIHVX6RgbdwIB5W+fxnmpAkSGw1jxQbdHdI0dN6TcWWMLMD7OTgfkW34seYUvU+aXpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O0y3lzky; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a0f3f74587so196371745ad.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604810; x=1768209610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qdea8YEJZ8Icm8On/R2f09ejYi/+JhGGJgUSFBtg3rI=;
        b=O0y3lzkyp3+Kca4NUUhD1JQ5+5UE6BX6FzaSGySR4UOmBqz6N4Z39rOmbH9TD12v3d
         BvwM8h4RV71tMHsbIIOZBIJfbNz94a2DLsmv0zj7MntMcyAvYIb7ZpSYzveSDIduFM6D
         Ub6BdSftMnhiy8bOMM6BNpRT8PA1g8cYz8tnwgpqCFQdpjXiN9cVa6gsqaiawpHvfod5
         MopKir/3BVxt9F57GgSz3c7vvZg6mCo1YmcbbhZsOoOV31SIY51lqK8E+xFP8l3nKl3c
         tQQKGR/LEJN+/7ZIXbr5XnfBOzeHhBi1181S9kPvDapu7tR4C1nFe0dgccAmEU1MMnd9
         x7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604810; x=1768209610;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qdea8YEJZ8Icm8On/R2f09ejYi/+JhGGJgUSFBtg3rI=;
        b=fHY1mHgFaqjwoB2u5b7/aKHPiGqNb8yk/lFx0UMx2vdaXGdJqAFxzXu68f+hW36kHB
         7uoZg4aUNlVuzrk7yYzd81uRbzPqcprAwN3WvaypyJBzYm5uLHWbM1EgxLJlIJ9V6xx5
         C3UeAa6l/LNphSAu60JjM6Uo3RJFY/bHjwoKd5qk9DZrdP/8o/kC+kVKu3EyW+E1AZYe
         nt32/5TngyTyVACvPObxCRkFnBRNqAKSEYK9zy7Ibd8UH+iL6BIk/3bd0fK91jmr6jav
         HlQ9AVTZew2/aOB9UyRmETYxcmK+q+PIIQfdfq+abdCXmXgHzDoKRzrmve9Bx8R9GFAC
         bJ5A==
X-Forwarded-Encrypted: i=1; AJvYcCVE3b8f2CdYSDEeBtiPOTZ/GhAue1EeY0925UdfEO/tK6icTHQ6Ex7R/vy7qdHxbwlDsiLqhTMM4Bg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhj19DJ0BLOX/N9Fw+wokjBpuAvRuZXMKwvCcviAhtZZgys87i
	b1gw+tu0/pLg44UcsmHBOz18bhONVHcAH7HTiwa3WL3bsr0bPnkG1JbofhxjaTwN
X-Gm-Gg: AY/fxX7kIGBRZUbx5k4TZmC+JcYBwv1+ERKXYh7tzwS3oTsUDoOFNOqDHdr+LBURAVj
	zizgVOC1s5IdmJXpNIYg9tqdMyOvInhXZGb0lYEqm3ksvSyJWqpL8YaXJM/I2BWGHKsE4PS4ik9
	xgEClncFMkTBjIuG1dEEBs5cr0aj0ouont9Fb3GFXXinbEEEqEwuAYyhG1/OTGMsV3firC3n8Ql
	WzP8Xqv0VM697u4H1SyPiIIXa3mTVX3l65+ruCwGjcy23Gc3BP/WKVSyW+NYiokBxdxUUNbnU28
	X0KZ0Jjbslu7hhlIoHo0ceTr1IrDRFePndzVLtb8emsfgpFeoZpGKd2B5aZ0YMOIedgLUyRckrO
	iiKTn37oO9OF9vy1gUoPkhepsnqywsi4O1W7gsguwHkvuNg5H8ZNarDffnvs7KOeC9GvxsfJITj
	xj/8S1V5azV3t4sASHIS30P5OltpYwu0zi2pSq4qNcGAIN7Z6D+FTBhgwOyn+YwLVT8yXIMkiB5
	slC5O6i8yv35j8T
X-Google-Smtp-Source: AGHT+IHJRUoAVEfMSWTI5RRo/Mb6tv7dsXSLAdVMHFW39bH4WKdEyZC375P27wrMhJWugNxZr63AUw==
X-Received: by 2002:a17:902:c94b:b0:2a0:9084:3aff with SMTP id d9443c01a7336-2a2f2a5aa44mr499299295ad.61.1767604810371;
        Mon, 05 Jan 2026 01:20:10 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:09 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 00/12] man/man{2,3}const/*: Update POSIX history of constants
Date: Mon,  5 Jan 2026 19:18:36 +1000
Message-ID: <cover.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello all,

I'm continuing to update the first POSIX and SUS appearances of various
system calls and functions, but I'm doubting that it's a good idea to
wait and send all patches in at once.  So while I continue, I'll try
grouping related updates into patch sets and sending them through
semi-regularly.

To start, this patch set consists of updates for documented constants
in the 2const and 3const sections.  I've provided a reference to the
relevant POSIX version for each patch, providing links where possible.

In general, each patch concerns a separate page.  However, if two pages
share similar names and are referenced in the same section of POSIX
(such that the citation given for both are the same), then I batched
them together into the same patch.

Also perhaps noteworthy: if updating a page required only adding a POSIX
or SUS version, I usually added it in a new line and left any other
listed standards untouched.  While if it required changing a line shared
with other standards, I typically reformatted it to list each standard
on a separate line (for nicer diffs with future changes).

Seth McDonald (12):
  man/man2const/F_DUPFD.2const: HISTORY: Update first POSIX appearance
    of F_DUPFD(2const)
  man/man2const/F_GETFD.2const: HISTORY: Update first POSIX appearance
    of F_[GS]ETFD(2const)
  man/man2const/F_GETFL.2const: HISTORY: Update first POSIX appearance
    of F_[GS]ETFL(2const)
  man/man2const/IPPROTO_IP{V6,}.2const: HISTORY: Add sections
  man/man2const/IPV6_MULTICAST_{HOPS,IF,LOOP}.2const: HISTORY: Add
    sections
  man/man2const/IPV6_UNICAST_HOPS.2const: HISTORY: Add section
  man/man2const/IPV6_V6ONLY.2const: HISTORY: Add first POSIX appearance
    of IPV6_V6ONLY(2const)
  man/man3const/EOF.3const: HISTORY: Update first POSIX appearance of
    EOF(3const)
  man/man3const/EXIT_SUCCESS.3const: HISTORY: Split EXIT_SUCCESS(3const)
    and EXIT_FAILURE(3const)
  man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX
    appearance of EXIT_SUCCESS(3const)
  man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX
    appearance of EXIT_FAILURE(3const)
  man/man3const/NULL.3const: HISTORY: Update first POSIX appearance of
    NULL(3const)

 man/man2const/F_DUPFD.2const             | 4 +++-
 man/man2const/F_GETFD.2const             | 4 +++-
 man/man2const/F_GETFL.2const             | 4 +++-
 man/man2const/IPPROTO_IP.2const          | 4 ++++
 man/man2const/IPPROTO_IPV6.2const        | 4 ++++
 man/man2const/IPV6_MULTICAST_HOPS.2const | 4 ++++
 man/man2const/IPV6_MULTICAST_IF.2const   | 4 ++++
 man/man2const/IPV6_MULTICAST_LOOP.2const | 4 ++++
 man/man2const/IPV6_UNICAST_HOPS.2const   | 4 ++++
 man/man2const/IPV6_V6ONLY.2const         | 1 +
 man/man3const/EOF.3const                 | 3 ++-
 man/man3const/EXIT_SUCCESS.3const        | 9 ++++++++-
 man/man3const/NULL.3const                | 3 ++-
 13 files changed, 46 insertions(+), 6 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  24e850c16b1a man/man2const/F_DUPFD.2const: HISTORY: Update first POSIX appearance of F_DUPFD(2const)
 -:  ------------ >  2:  2ebaafd23033 man/man2const/F_GETFD.2const: HISTORY: Update first POSIX appearance of F_[GS]ETFD(2const)
 -:  ------------ >  3:  318b6e1e5d8a man/man2const/F_GETFL.2const: HISTORY: Update first POSIX appearance of F_[GS]ETFL(2const)
 -:  ------------ >  4:  355603eae665 man/man2const/IPPROTO_IP{V6,}.2const: HISTORY: Add sections
 -:  ------------ >  5:  82a8170800bf man/man2const/IPV6_MULTICAST_{HOPS,IF,LOOP}.2const: HISTORY: Add sections
 -:  ------------ >  6:  daf65319f3b8 man/man2const/IPV6_UNICAST_HOPS.2const: HISTORY: Add section
 -:  ------------ >  7:  bec94e780a3c man/man2const/IPV6_V6ONLY.2const: HISTORY: Add first POSIX appearance of IPV6_V6ONLY(2const)
 -:  ------------ >  8:  b8028fb93420 man/man3const/EOF.3const: HISTORY: Update first POSIX appearance of EOF(3const)
 -:  ------------ >  9:  25f4fa02d941 man/man3const/EXIT_SUCCESS.3const: HISTORY: Split EXIT_SUCCESS(3const) and EXIT_FAILURE(3const)
 -:  ------------ > 10:  0b59f68ab057 man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX appearance of EXIT_SUCCESS(3const)
 -:  ------------ > 11:  966063053cfe man/man3const/EXIT_SUCCESS.3const: HISTORY: Update first POSIX appearance of EXIT_FAILURE(3const)
 -:  ------------ > 12:  bbd81741f759 man/man3const/NULL.3const: HISTORY: Update first POSIX appearance of NULL(3const)
-- 
2.47.3


