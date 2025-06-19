Return-Path: <linux-man+bounces-3186-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF7DAE0D1E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 20:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A29A6164AC5
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 18:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F42023CB;
	Thu, 19 Jun 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G7fWL4BT"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D670530E820
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 18:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750358572; cv=none; b=lDpxBC8NBbBgnPo1r07O5fMv2gf6LbJe+3KwGdQVxoX+Pn9YXnJLpnycwlW8acRG59d0mYSJEZbCx4i8vBAtR3sSUIBo7vvBX4OxkJHPI4p5VleVeOnXaektRe6b8vbWFQNhIDDhuBpqTGa2goC36gBAC2/m7mvqL7i8pmK6/ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750358572; c=relaxed/simple;
	bh=4swje+uvAcCq0VCtkhiNwDqFu0DaFMgIl/LsP2CQtPU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kEsMyKlORHIuFMDw9MW1KTX8/766+NUIr9xryRzBf7Kedd7E4cDj78/9SnCq+Ft2/dumiTQGZkDF97Hsrd/c+kCn175kvt+rAFyY+UTRGgdH+9pfIyUBPyQ0Y14eAyB3lY5SBPYm/akJ7MwqTCr8LrX20n2/IO7mn5JTYwyyK/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G7fWL4BT; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750358569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nDmxv41wUXLcqMq++E76wF2t0j8YXjsRegNxWXyBAoQ=;
	b=G7fWL4BT4TI027KiuklorUI2+DrS3LpO+m07SCOfotgRZpBisgUhXpJdod7JQK6MjhGGED
	kWyx3Pa/m/cioES+XYEJR3b1WeMpsaODXPyE8Vtq9AWP46emqyF/G0wnXiMC3pude3CS3/
	ZV6ExTX2dcRRLujdBMLAzz4nHl6q6s8=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-661-1U8fci6fNr6fAkeHlQbxnQ-1; Thu,
 19 Jun 2025 14:42:46 -0400
X-MC-Unique: 1U8fci6fNr6fAkeHlQbxnQ-1
X-Mimecast-MFC-AGG-ID: 1U8fci6fNr6fAkeHlQbxnQ_1750358564
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D71E1956087;
	Thu, 19 Jun 2025 18:42:44 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.23])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9BFAC180045B;
	Thu, 19 Jun 2025 18:42:41 +0000 (UTC)
Date: Thu, 19 Jun 2025 13:42:38 -0500
From: Eric Blake <eblake@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <nd62th7wphcfw7k2grg2a6y4rbet53d4mljmwhkoelrg43dtpm@rpjskrdvlpw6>
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
User-Agent: NeoMutt/20250510
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

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
> +       POSIX.1‐2024.

See my other (lengthy!) email about how I'm not yet convinced that you
have succesfully proven non-conformance to C99, C11, POSIX 2001, POSIX
2008, or POSIX 2017.  However, I agree that from my initial reading,
glibc appears to be non-conforming to POSIX 2024, _except that_ it may
have been an unintentional bug in POSIX 2024, and in today's Austin
Group call, a request was made to open a bug against POSIX if we think
the standard is wrong for having declared glibc non-conforming.

>   The C17 specification was changed to make it con‐
> +       forming, but that specification was broken —it is impossible to
> +       write code that works portably—, and C23 changed it again to
> +       make this undefined behavior, acknowledging that the C17 speci‐
> +       fication was broad enough that undefined behavior wasn’t worse
> +       than that.

In addition to the other feedback you've been given (avoid the word
"broken" - that's a judgement call), I want to reiterate that it is
more important to focus on facts.  It's not enough to say "glibc is
non-compliant"; better would be to state "standard XYZ states
realloc(non_null,0) must do ABC but glibc does DEF instead".

Remember, there are users who LIKE the glibc behavior and don't care
whether the standard says otherwise; but there are ALSO users who are
surprised to learn glibc does not follow what the standard says.  But
Knowing only the vague assertion that "glibc is non-compliant" does
not help me judge what seems to be the problem.  It is more important
that I know that "my code is non-portable if I use this specific
construct", at which point I am in a better position to judge "well I
only run on glibc so who cares", or "oh, to make my code less risky
during porting, I can do something about it", whether by importing
gnulib modules, rewriting my code to avoid realloc(XXX,0), upgrading
to a newer glibc (if glibc ever agrees to change behavior), using an
alternative malloc library, or something else altogether.

> +
> +       musl libc conforms to all versions of ISO C and POSIX.1.
> +
> +       gnulib provides the realloc‐posix module, which provides a wrap‐
> +       per realloc() that conforms to POSIX.1‐2024.
> +
> +       reallocarray() suffers the same issues in glibc.
> +
>  STANDARDS
>         malloc()
>         free()
>         calloc()
>         realloc()
> -              C11, POSIX.1‐2008.
> +              C23, POSIX.1‐2024.
>  
>         reallocarray()
> -              None.
> +              POSIX.1‐2024.
>  
>  HISTORY
>         malloc()
> @@ -214,6 +231,22 @@
>         POSIX and the C standard do not allow replacement of malloc(),
>         free(), calloc(), and realloc().
>  
> +BUGS
> +       Programmers would naturally expect that realloc(p, size) is con‐
> +       sistent with free(p) and malloc(size).  This is not explicitly
> +       required by POSIX.1‐2024 or C11, but all conforming implementa‐
> +       tions are consistent with that.

You may also want to be more precise on realloc(NULL, 0) (which IS
required to behave like "malloc(0)") and realloc(non_null, 0) (where
things have varied over the years in the standards, even if glibc
behavior has been constant through that time).

> +
> +       The glibc implementation of realloc() is not consistent with
> +       that, and as a consequence, it is dangerous to call
> +       realloc(p, 0) in glibc.

More importantly, with C23 making it undefined behavior, it is
dangerous to call realloc(non_null, 0) in ANY libc, ever.  Regardless
of whether glibc documents semantics that comply (or don't comply)
with older standards.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.
Virtualization:  qemu.org | libguestfs.org


