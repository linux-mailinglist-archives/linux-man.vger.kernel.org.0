Return-Path: <linux-man+bounces-4466-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4901ECD7347
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 22:33:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02CE53017846
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 21:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17B2E30EF98;
	Mon, 22 Dec 2025 21:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSv7FmK6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB06D30EF6B
	for <linux-man@vger.kernel.org>; Mon, 22 Dec 2025 21:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766439194; cv=none; b=EX1Hu3U87l+UoXtl8fLHWibxoW09nClFc0mHFElFUHUDPl88VIqG78RVDzMJTB+Zfq67HFfvCJhWk5Sx2b3So3uPENzPenQClz4o+FARBZtOwlFAySZq0YGd00rQ2McqVdop8ttUyO2aiOAo3mDwYvmaaGyNhn7ZePcrF7bRjso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766439194; c=relaxed/simple;
	bh=2YKlZn9tk4IZrtFEfA1POTuGBypH16TZ9YuPzTfMAek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJkO0YnhPlfGIOGLEt6niiRq2i7iure7lGz70eyzq8B6WeUR7IIJkWdfBeGzsH/h0LzLS+J2hBrHxIUfs8zWPADQlrtKjTpJDFytpBV6SEkyN0h12nhLpEiHmfAKklUyrBg/oOOnBHpX/Rr6CAurpxr0uowuNbohgbXUbv+ymsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSv7FmK6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56C34C4CEF1;
	Mon, 22 Dec 2025 21:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766439193;
	bh=2YKlZn9tk4IZrtFEfA1POTuGBypH16TZ9YuPzTfMAek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YSv7FmK6cPmZOTyaUf48bqcdRustIjSySr1B3upKkIZgOJYuQwYZn10+DQR8y+UVP
	 0hsi+ojUuRxzDdWAOpcxieByFAxPoJ+UMrdz7vr84To7sJ/vHjJMcnRELYeEp1pvdg
	 3snitKgTQScF1EzNMlsiuOf41dcu03CFWITgBJidDvb2/ljwEJjXJ7W7KRJw2iTyyh
	 KGHJLcG07Dvvb6dFEwwFX+p/cDfBIgXOoyEiiBQ5sxX1Ir72YCsehi0Bg9WY9qqXSv
	 lCIGdy08pFDrGP0vRQoGIGHMG2gbzddijLJwzZL2pWLSsrdFU6BaTXsoHq07ien9J3
	 R+ok2FiIVhtfg==
Date: Mon, 22 Dec 2025 22:33:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v4 0/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <cover.1766439016.git.alx@kernel.org>
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

Hi,

I've rewritten the entire subsection from scratch, similar to the email
I wrote detailing the history of the specification.  I think this is
explains the turbulent history of this API better, and allows
programmers to decide if they want to trust this API or not.

Does this look good?


Have a lovely night!
Alex


Alejandro Colomar (1):
  man/man3/aligned_alloc.3: HISTORY: Document bogus specification from
    C11

 man/man3/aligned_alloc.3 | 60 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

Range-diff against v3:
1:  6ed874153 ! 1:  f19bb100f man/man3/aligned_alloc.3: HISTORY: Document bogus specification from C11
    @@ Metadata
      ## Commit message ##
         man/man3/aligned_alloc.3: HISTORY: Document bogus specification from C11
     
    -    And document that OpenBSD still implements the C11 specification (but
    -    without the UB).
    +    Document the turbulent past of aligned_alloc(), and how libraries have
    +    actually implemented it.
     
         Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
         Reported-by: Eugene Syromyatnikov <evgsyr@gmail.com>
    @@ man/man3/aligned_alloc.3: .SH HISTORY
      POSIX.1-2024.
     +.SS C11
     +In C11,
    -+the specification of this function had several issues.
    ++the specification of this function had
    ++.UR https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2
    ++several issues
    ++.UE .
     +.IP \[bu] 3
     +.I size
     +had to be a multiple of
     +.IR alignment .
     +Otherwise,
     +the behavior was undefined.
    -+.IP
    -+Some implementations still implement that restriction,
    -+or claim to have it.
    -+.RS
    -+.TP
    -+OpenBSD
    -+The function reports an error
    -+if this restriction is violated,
    -+without exploiting the UB.
    -+.TP
    -+FreeBSD
    -+.TQ
    -+jemalloc
    -+The documentation claims to have this restriction,
    -+but the implementation works correctly if it is violated.
    -+.RE
    -+.IP
    -+It was only a theoretical UB.
    -+No known implementation has ever exploited this UB.
    -+.IP
    -+This restriction was removed in C17.
     +.IP \[bu]
     +If
     +.I alignment
     +was not a power of two,
     +the behavior was undefined.
    -+.IP
    -+No implementations ever exploited this UB.
    -+It was only a theoretical UB.
    -+.IP
    -+This UB was removed in C17.
    ++.P
    ++.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460
    ++DR460
    ++.UE
    ++reported both cases of UB as unnecessarily dangerous,
    ++and fixed them with a Technical Corrigendum
    ++that transformed them into errors.
    ++.P
    ++.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm
    ++N2072
    ++.UE
    ++reported that the requirement
    ++that
    ++.I size
    ++is a multiple of
    ++.I alignment
    ++is superfluous,
    ++and removed it with a Technical Corrigendum.
    ++.P
    ++C17 incorporates both technical corrigenda.
    ++The API has been stable since C17.
    ++.P
    ++glibc originally implemented it as silently aligning as
    ++.I stdc_bit_ceil(alignment)
    ++instead of
    ++.IR alignment .
    ++Since glibc 2.38,
    ++it implements the C17 specification.
    ++.P
    ++Some implementations,
    ++such as FreeBSD/jemalloc,
    ++implement the C17 specification,
    ++even though their documentation claims the C11 specification.
    ++.P
    ++Some implementations,
    ++such as OpenBSD,
    ++implement C11 amended with DR460,
    ++even though their documentation claims having undefined behavior.
    ++.P
    ++No known implementations
    ++have exploited the undefined behavior
    ++in a more dangerous way.
    ++This function should be safe to use.
      .SH NOTES
      On many systems there are alignment restrictions, for example, on buffers
      used for direct block device I/O.

base-commit: a5342ef55f0a96790bf279a98c9d2a30b19fc9eb
-- 
2.51.0


