Return-Path: <linux-man+bounces-3180-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBE4AE0A7E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 17:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BBBB17A72E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 15:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56C119CCFC;
	Thu, 19 Jun 2025 15:32:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25581E47A5
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 15:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750347134; cv=none; b=TSj6lMzBossF5DNcXGL06U0ZOTPZLieRHGbY0mCORqrIfutHGnm894ZpFH9CCZsdgOaFhp3AtLdUticbdhnX4twxb9E66ndQ+tZU0E96oSeKWLl3w9Yr4+fmUK/MyorazpuH5oRaMtmO0MrxHW/3Y/3Jtok34BJvTm32m5xcDdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750347134; c=relaxed/simple;
	bh=9lflZyOyXfRf8lSVa3dXs56co/uF5WFovJv//r6TB2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9URH8/xYG7H/xkuO8g/2Cki4B+3HrgaeFB8b/XVvAndmXb6n7npsTZaCBVTUo8IXtHJaoqkHg/PxT5r9N2d8751Z2A1+yfujE4VFoRnoHkbV4E1RdpOBporvSnoswPA4TT4ZMada3qFJ44jmfqKB42iALcDj9vtxwSA2xVLye8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Thu, 19 Jun 2025 11:32:09 -0400
From: Rich Felker <dalias@libc.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com,
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>,
	Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619153209.GG1827@brightrain.aerifal.cx>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Thu, Jun 19, 2025 at 03:57:47PM +0200, Alejandro Colomar wrote:
> Hi,
> 
> Here's a revision of this change, addressing some concerns.  I'm only
> showing the formatted changes, since the patch itself is unimportant.
> 
> 
> Have a lovely day!
> Alex
> 
> ---
> $ MANWIDTH=72 diffman-git HEAD
> --- HEAD^:man/man3/malloc.3
> +++ HEAD:man/man3/malloc.3
> @@ -126,15 +126,32 @@
>         │ realloc()                          │               │         │
>         └────────────────────────────────────┴───────────────┴─────────┘
>  
> +VERSIONS
> +       The behavior of realloc(p, 0) in glibc doesn’t conform to any of
> +       C99, C11, POSIX.1‐2001, POSIX.1‐2008, POSIX.1‐2017, or
> +       POSIX.1‐2024.  The C17 specification was changed to make it con‐
> +       forming, but that specification was broken —it is impossible to
> +       write code that works portably—, and C23 changed it again to
> +       make this undefined behavior, acknowledging that the C17 speci‐
> +       fication was broad enough that undefined behavior wasn’t worse
> +       than that.

This is still full of your polemics. The word "broken" generally
belongs in personal blog posts, not a manual that's supposed to be
documenting the facts of an interface. In fact it is very possible to
write code which works portably: by refraining from passing 0.
Regardless of what action is taken here on the standards or
documentation, that's already been necessary for a long time, and will
continue to be necessary for a long time, because of the existence of
implementations on which passing 0 has inconsistent results.

I would suggest something more like:

      The behavior of realloc(p, 0) in glibc doesn’t conform to any of
      C99, C11, POSIX.1‐2001, POSIX.1‐2008, POSIX.1‐2017, or
      POSIX.1‐2024. C11 was amended in 2017 to allow the glibc
      behavior [insert description of exactly how that was done, I
      forget] and C23 followed up by making the behavior explicitly
      undefined.

In particular, this text is purely matters of fact, no statement of
your or my preferred future outcome or disagreement with what
happened.

I would also move it to CONFORMANCE rather than VERSIONS since
VERSIONS is normally about differences between versions of the
implementation being described, not conformance requirement
differences between versions of the standard.

> +BUGS
> +       Programmers would naturally expect that realloc(p, size) is con‐
> +       sistent with free(p) and malloc(size).  This is not explicitly
> +       required by POSIX.1‐2024 or C11, but all conforming implementa‐
> +       tions are consistent with that.

This has not historically been a conformance requirement and it is not
one now. Because the behavior is undefined, arbitrarily-inconsistent
behavior is conforming.

It's possible to read this as not stating a conformance requirement,
just a matter of fact that all implementations which conform(ed to
past versions of the standard) happened to also be consistent here.
But in that case I would very much prefer if you make it clear by just
saying that they're consistent on [some explicit list or description
of the class of implementations you've reviewed to have this
property].

> +       The glibc implementation of realloc() is not consistent with
> +       that, and as a consequence, it is dangerous to call
> +       realloc(p, 0) in glibc.

It's not dangerous if you know what it's doing. Rather it's
non-portable. It does something predictable that you can use safely,
but the way you use it safely is different from other, more consistent
implementations in a way that can be a footgun.

> +       A trivial workaround for glibc is calling it as
> +       realloc(p, size?size:1).

It should probably be noted that use of such a workaround sacrifices
the ability to diagnose logic errors (via sanitizers, valgrind, etc.)
where 1 byte is written to allocated memory that was not intended to
have any accessible bytes of storage.

Rich

