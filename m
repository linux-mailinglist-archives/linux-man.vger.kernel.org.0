Return-Path: <linux-man+bounces-3160-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C93ADFB40
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 04:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2003C176272
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 02:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5C518FDAF;
	Thu, 19 Jun 2025 02:30:27 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E83085D4
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 02:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750300227; cv=none; b=h6QHWrzb0sDbZHL/2Sh5Xyht6FQLzD7s2KaR7BLy02YSPPA2/tVSgzjJsgDMhhjBVy+Uae+z+bCVypyv/NotMkAFPEfl1/u8Eothx5A1L7D/PxHDxrsoCXdXBEgczd8Jt6jksw9bq2CfriMHLZ3C54p1CHGh04+7yafo3ccsxpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750300227; c=relaxed/simple;
	bh=/kYsYmeRxfKZUDi/57eQhjrQ3tsvhBHmOOD3Hu6X418=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eEO/YQoAyXBYDXErfYUTgVoGdiglq8a2lWyGoO8TksYPhVQBHq9H6gEXyj/dzbj3/tduXusJsQ2zYdykGA1gAr+n6fQdldkjrcnfHTJs2tLtXc1LFe1cKPM02p4F9y0LaqrJGEDTIUni1zRzIYwVEmB7iEKEJCBAMjlMFfHhGdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Wed, 18 Jun 2025 22:15:10 -0400
From: Rich Felker <dalias@libc.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com,
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>,
	Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619021510.GD1827@brightrain.aerifal.cx>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Thu, Jun 19, 2025 at 02:42:14AM +0200, Alejandro Colomar wrote:
> Hi!
> 
> I've applied a patch to document the conformance of realloc(3) and
> reallocarray(3).  See below, both the patch, and the formatted changes.
> 
> BTW, Paul, Bruno, does gnulib also wrap reallocarray(3)?  If not, it
> should.
> 
> 
> Have a lovely day!
> Alex
> 
> ---
> 	commit 7279622113349f32428fa14467ba2aa9ef090394
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Thu Jun 19 02:27:48 2025 +0200
> 
> 	    man/man3/malloc.3: VERSIONS, STANDARDS: Clarify conformance of realloc{,array}(3)
> 	    
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man3/malloc.3 b/man/man3/malloc.3
> 	index 9cdfa6b58..bd6cc161f 100644
> 	--- a/man/man3/malloc.3
> 	+++ b/man/man3/malloc.3
> 	@@ -241,6 +241,37 @@ .SH ATTRIBUTES
> 	 .BR realloc ()
> 	 T}	Thread safety	MT-Safe
> 	 .TE
> 	+.SH VERSIONS
> 	+The behavior of
> 	+.I realloc(p,\~0)
> 	+in glibc doesn't conform to any of
> 	+C99,
> 	+C11,
> 	+POSIX.1-2001,
> 	+POSIX.1-2008,
> 	+POSIX.1-2017,
> 	+or POSIX.1-2024.
> 	+The C17 specification was changed to make it conforming,
> 	+but that specification was broken
> 	+\[em]it is impossible to write code that works portably\[em],
> 	+and C23 changed it again to make this undefined behavior,
> 	+acknowledging that the C17 specification was broad enough that
> 	+undefined behavior wasn't worse than that.
> 	+The POSIX.1-2024 specification is good,
> 	+and ideally the ISO C standard should embrace something similar,
> 	+but glibc does not conform to it.
> 	+.P
> 	+musl libc conforms to all versions of ISO C and POSIX.1.
> 	+.P
> 	+gnulib provides the
> 	+.I realloc-posix
> 	+module,
> 	+which provides a wrapper
> 	+.BR realloc ()
> 	+that conforms to POSIX.1-2024.
> 	+.P
> 	+.BR reallocarray ()
> 	+suffers the same issues in glibc.
> 	 .SH STANDARDS
> 	 .TP
> 	 .BR malloc ()
> 	@@ -250,10 +281,10 @@ .SH STANDARDS
> 	 .BR calloc ()
> 	 .TQ
> 	 .BR realloc ()
> 	-C11, POSIX.1-2008.
> 	+C23, POSIX.1-2024.
> 	 .TP
> 	 .BR reallocarray ()
> 	-None.
> 	+POSIX.1-2024.
> 	 .SH HISTORY
> 	 .TP
> 	 .BR malloc ()
> 
> $ MANWIDTH=72 diffman-git HEAD
> --- HEAD^:man/man3/malloc.3
> +++ HEAD:man/man3/malloc.3
> @@ -126,15 +126,34 @@
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
> +       than that.  The POSIX.1‐2024 specification is good, and ideally
> +       the ISO C standard should embrace something similar, but glibc
> +       does not conform to it.
> +
> +       musl libc conforms to all versions of ISO C and POSIX.1.
> +
> +       gnulib provides the realloc‐posix module, which provides a wrap‐
> +       per realloc() that conforms to POSIX.1‐2024.
> +
> +       reallocarray() suffers the same issues in glibc.

I don't like this text, at least not the second half. Man pages are
not supposed to be polemic. They should be documenting the interface
and what standards the implementation does or doesn't conform to, not
declaring changes to the standards good or bad, nor stating as
undisputed fact aspects of conformance that seem to be under
disagreement.

Rich

