Return-Path: <linux-man+bounces-4416-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C5BCBE6BC
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1991C305309F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30222F39C1;
	Mon, 15 Dec 2025 14:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prrip9Jv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027612DF138
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809686; cv=none; b=e5KU/a+670f3Lw6ukcqMI+AbiUVupaZSmuwtiqUYpGdXejHQy0q/tDqUehBtAS1kQZRlCXXCHhP/FZp2OLmij2+NxCpOIpSrZfVWV1W05bUgsT2yqf2rkT14S7p9qqq9zL9ZkpePyt+xmllfybkTJx6YoWbpDmEGab9W09ubrZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809686; c=relaxed/simple;
	bh=KOXFgX3kr3XUM1dzOjn+epeOVQSR+vg+SsmWVR5HSKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMsRjTwZmBcZ/sd4+2+EeeWA8Q4DSJlTkAqOq5ptlTnCGO1UEw59lsBHkKODtEGfcv6s9gauVO8e/ZNk8nrnyd+/yXcYrlnLfhSGbIT9E2Dx1ZrOw9Prt4wBJgf1nEBLkNviRdNhzkIc5yHeZsW+ZXZP0Ah7PTJ40WwHJdhsuGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prrip9Jv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A67BC4CEF5;
	Mon, 15 Dec 2025 14:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809685;
	bh=KOXFgX3kr3XUM1dzOjn+epeOVQSR+vg+SsmWVR5HSKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=prrip9JvDYwHqAlEQne3HifPAsug7Xr0YMkaoF4ZcxBq37nH2meR7LRXzT7KffkDQ
	 9HcA9uwfLpDC0+/B6728Mzj1g8BmLBKhD2MFCQpcet+jXO0PuOZDacbcaIGdhOac7W
	 xWpx+WK72XMt6R8XS54P9j4yknLY8NdBxVJidoEcudwC+PAw0qmDsoCX8GInbh9iAx
	 7Fkd9nlRMRryIdoZxNdrsEBg0FRbA9QpP30a4vUkyteGl6MSQubXQ4xg5qFPbI74gL
	 +2WLlUB9dCMhFERChspCGif/cZ6IamHwGOABgiyj2mJDSJPNZ9jRABpgpEz7OWuMPW
	 YBkwd3n097BDQ==
Date: Mon, 15 Dec 2025 15:41:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 00/14] man/man3/posix_memalign.3: Several fixes, and split
 the page
Message-ID: <cover.1765809415.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

Hi!

In v2, I've removed the explicit sentence saying that one should use
aligned_alloc(3) instead of memalign(3).

I've also documented that C11 had a bogus specification for
aligned_alloc(3), and that OpenBSD still implements that (although at
least, they don't exploit the UB).  I've CCed them, in case they're not
aware that C17 fixed those issues.

I've documented that while the C11 specification had a lot of UB, no
implementation has ever implemented that, and so it's just theoretical
(and thankfully extinct) UB.

Apart from that, there are minor wording tweaks.

See the range-diff below.


Have a lovely day!
Alex


Alejandro Colomar (14):
  man/man3/posix_memalign.3: Remove confusing exception
  man/man3/posix_memalign.3: wfix
  man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C17,
    not C11
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
  man/man3/memalign.3: wfix
  man/man3/aligned_alloc.3: HISTORY: Document bogus specification from
    C11

 man/man3/aligned_alloc.3  | 128 ++++++++++++++++++++++-
 man/man3/memalign.3       |  77 +++++++++++++-
 man/man3/posix_memalign.3 | 211 +++-----------------------------------
 man/man3/pvalloc.3        |  49 ++++++++-
 man/man3/valloc.3         |  89 +++++++++++++++-
 5 files changed, 355 insertions(+), 199 deletions(-)

Range-diff against v1:
 1:  90f18b452 =  1:  90f18b452 man/man3/posix_memalign.3: Remove confusing exception
 2:  19b5ea61e =  2:  19b5ea61e man/man3/posix_memalign.3: wfix
 3:  95f523f48 !  3:  82bcf3b0f man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to ISO C17, not C11
    @@ Metadata
     Author: Alejandro Colomar <alx@kernel.org>
     
      ## Commit message ##
    -    man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to ISO C17, not C11
    +    man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C17, not C11
     
         ISO C17 removed a restriction that was in place in C11.  This
         documentation doesn't conform to C11; it conforms to C17.
 4:  9db9d670c =  4:  04f5087e5 man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C23
 5:  032768ed7 =  5:  c8ffb2124 man/man3/posix_memalign.3: STANDARDS: aligned_alloc() and posix_memalign() conform to POSIX.1-2024
 6:  de49191b8 !  6:  51b7f9f43 man/man3/{posix_,}memalign.3: Split memalign() from posix_memalign(3)
    @@ man/man3/memalign.3
     +.SH DESCRIPTION
     +.BR memalign ()
     +is the same as
    -+.BR aligned_alloc ().
    -+Use that instead.
    ++.BR aligned_alloc (3).
     +.\" The behavior of memalign() for size==0 is as for posix_memalign()
     +.\" but no standards govern this.
     +.SH ATTRIBUTES
 7:  af29aac57 =  7:  a60d6283f man/man3/{posix_memalign,pvalloc}.3: Split pvalloc() from posix_memalign(3)
 8:  03408db2f =  8:  126c39d0f man/man3/{posix_memalign,valloc}.3: Split valloc() from posix_memalign(3)
 9:  6da397d5c =  9:  b23cb7bc6 man/man3/{aligned_alloc,posix_memalign}.3: Split aligned_alloc() from posix_memalign(3)
10:  213710d2c = 10:  1e5a0260e man/man3/posix_memalign.3: CAVEATS: Add section, and move paragraph to it
11:  7960911fc = 11:  c0b9fd96a man/man3/posix_memalign.3: Remove redundant text
12:  54e7d20ee = 12:  34d984534 man/man3/posix_memalign.3: NOTES: Remove superfluous section
 -:  --------- > 13:  a5342ef55 man/man3/memalign.3: wfix
 -:  --------- > 14:  cdfc42078 man/man3/aligned_alloc.3: HISTORY: Document bogus specification from C11
-- 
2.51.0


