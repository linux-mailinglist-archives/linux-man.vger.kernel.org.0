Return-Path: <linux-man+bounces-4380-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F867CB2EE2
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42D5B312427D
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4AA324B22;
	Wed, 10 Dec 2025 12:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUIqdeen"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8509322C7F
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370400; cv=none; b=MBJglWyccrj1XlVEeqXxXUwPoLaLS1mDHu+2gJ+NNnya414vFiwJ83nbrX+V1b0VO0Mf+moeDKB7ocMDycRF8KJe2xGYb6K0YksNSqgdUEmjoSMTdJPYlX0HBy8bnq2P7MTjLfMxf2jsD2+Z8ReJtT9FnaRrA5tJL2A3+KHZ/+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370400; c=relaxed/simple;
	bh=wrb6AY6spXQhZWIU3qfcjfnzkbsU1+3RPv7jsA1kJt0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Zb9/KnAwlfEpHyWZEZVRmHXcPmBt5l2NzbyacyNo1JcBstDgPHc7jxFDOSBZva2KCkbDQFoDRzjzTdFozfxMgIZi99f891sUNOy/jpNKyKOvD4zxCPmaVLKnn9AP0/ZWwvPEJQcfIeyf/nBYi+TB444Y7G4ciWiDco6nQYewvvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUIqdeen; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57220C19422;
	Wed, 10 Dec 2025 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370400;
	bh=wrb6AY6spXQhZWIU3qfcjfnzkbsU1+3RPv7jsA1kJt0=;
	h=Date:From:To:Cc:Subject:From;
	b=XUIqdeenTR8HuRgf23wEfypvmubRyhVpjFVHLgjpGS8MhXp5murxYchrDuPKTzsMg
	 0CCfcyfYkI8N0kUhluS+NyKvCnaNhK/lomyXfbR2kHR1xbc4+cUXbb+C2HOBR828Be
	 USTePeF5sAfmEwHxQBL9zXio21bClEVNUBHNYkZcoqv207bMQaTOkmUfCKVKPN23eX
	 GYwEkp9zW5pM/ja0MGA7kLsFFi37cec/XbGjZQzLw/jRC2pDuaI0tavIVVC4CqTPgl
	 7H+0I7/jyeMB2FqeonDCoL8eYGVmpSZv1bNh0tjHGzyOLe6GHs+OuztxUcCTtDN4KT
	 LOlTs6MdY+Ffg==
Date: Wed, 10 Dec 2025 13:39:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and split
 the page
Message-ID: <cover.1765370035.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi!

After Seth's bug report(s), I've applied several fixes to
posix_memalign.3.  While and after doing that, I've also applied other
patches for improving the page, including a split.

From all of these functions, ISO C's aligned_alloc(3) is the only one
that programmers should be using.  Let's have a page dedicated
exclusively for that function, which documents it well, without noise.

Secondarily, let's have one page for posix_memalign(3), which is still
not officially deprecated, where it is well documented, but point out
that aligned_alloc(3) is preferable.

Then, have one page per each of the other functions, documenting that
they are deprecated, documenting their flaws and subtleties, and
referring to aligned_alloc(3) for the main documentation, as they are
essentially just flawed versions of it.


Have a lovely day!
Alex

Alejandro Colomar (12):
  man/man3/posix_memalign.3: Remove confusing exception
  man/man3/posix_memalign.3: wfix
  man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to ISO
    C17, not C11
  man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C23
  man/man3/posix_memalign.3: STANDARDS: aligned_alloc() and
    posix_memalign() conform to POSIX.1-2024
  man/man3/{posix_,}memalign.3: Split memalign() from posix_memalign(3)
  man/man3/{posix_memalign,pvalloc}.3: Split pvalloc() from
    posix_memalign(3)
  man/man3/{posix_memalign,valloc}.3: Split valloc() from
    posix_memalign(3)
  man/man3/{aligned_alloc,posix_memalign}.3: Split aligned_alloc() from
    posix_memalign(3)
  man/man3/posix_memalign.3: CAVEATS: Add section, and move paragraph to
    it
  man/man3/posix_memalign.3: Remove redundant text
  man/man3/posix_memalign.3: NOTES: Remove superfluous section

 man/man3/aligned_alloc.3  |  99 +++++++++++++++++-
 man/man3/memalign.3       |  77 +++++++++++++-
 man/man3/posix_memalign.3 | 211 +++-----------------------------------
 man/man3/pvalloc.3        |  49 ++++++++-
 man/man3/valloc.3         |  89 +++++++++++++++-
 5 files changed, 326 insertions(+), 199 deletions(-)

Range-diff against v0:
 -:  --------- >  1:  90f18b452 man/man3/posix_memalign.3: Remove confusing exception
 -:  --------- >  2:  19b5ea61e man/man3/posix_memalign.3: wfix
 -:  --------- >  3:  95f523f48 man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to ISO C17, not C11
 -:  --------- >  4:  9db9d670c man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C23
 -:  --------- >  5:  032768ed7 man/man3/posix_memalign.3: STANDARDS: aligned_alloc() and posix_memalign() conform to POSIX.1-2024
 -:  --------- >  6:  de49191b8 man/man3/{posix_,}memalign.3: Split memalign() from posix_memalign(3)
 -:  --------- >  7:  af29aac57 man/man3/{posix_memalign,pvalloc}.3: Split pvalloc() from posix_memalign(3)
 -:  --------- >  8:  03408db2f man/man3/{posix_memalign,valloc}.3: Split valloc() from posix_memalign(3)
 -:  --------- >  9:  6da397d5c man/man3/{aligned_alloc,posix_memalign}.3: Split aligned_alloc() from posix_memalign(3)
 -:  --------- > 10:  213710d2c man/man3/posix_memalign.3: CAVEATS: Add section, and move paragraph to it
 -:  --------- > 11:  7960911fc man/man3/posix_memalign.3: Remove redundant text
 -:  --------- > 12:  54e7d20ee man/man3/posix_memalign.3: NOTES: Remove superfluous section
-- 
2.51.0


