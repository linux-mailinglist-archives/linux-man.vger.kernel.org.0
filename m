Return-Path: <linux-man+bounces-3189-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B699AE0F13
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 23:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB5521BC11CA
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 21:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A74525F78E;
	Thu, 19 Jun 2025 21:40:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA0830E852
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 21:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750369235; cv=none; b=bUbXcs2htdewCmyH9iwXmcppZl2uQzOdFWWAHGDt0FHn1u34j7vJjRdiGwq+KZuFGzThPheRBn0pl4VDh+PjabWJNpxnTtAoiQcVLGnZULdDmOn5OrlwJU+RohQXnlVhqKNmk9fY/f+EpPe08Nhq5BV4tcFIma3EAEwXO0PXM50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750369235; c=relaxed/simple;
	bh=qt8HNMyQi4Wu1N7JanfJ1EDmThrsWRl6JX+7E2uUxlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lIbkehjj3W4DO5XudLb92pc1l2tc6qfF6OB1hLqUTdRSLvkM7arBQU2szEco6KUmvSDfEyZUMlN6wq60Tbq1TegO/UqnocKsmFv0jeJFGDtNCEmYsY9uuyZFeSfrQMX5beY3IUkKdGH6a+h2mYafVIoZrjVlCX5fR+2e7JgEDKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Thu, 19 Jun 2025 17:40:30 -0400
From: Rich Felker <dalias@libc.org>
To: Thorsten Glaser <tg@mirbsd.de>
Cc: musl@lists.openwall.com, Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>,
	bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619214030.GH1827@brightrain.aerifal.cx>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
 <20250619153209.GG1827@brightrain.aerifal.cx>
 <65bc2156-fb06-49b8-29f1-b6df8d98ed6d@mirbsd.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <65bc2156-fb06-49b8-29f1-b6df8d98ed6d@mirbsd.de>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Thu, Jun 19, 2025 at 05:38:15PM +0200, Thorsten Glaser wrote:
> On Thu, 19 Jun 2025, Rich Felker wrote:
> 
> >> +       The glibc implementation of realloc() is not consistent with
> >> +       that, and as a consequence, it is dangerous to call
> >> +       realloc(p, 0) in glibc.
> >
> >It's not dangerous if you know what it's doing. Rather it's
> >non-portable.
> 
> Nope.
> 
> It’s actually dangerous in all libcs.
> 
> GCC is a repeat offender of taking things that are Undefined
> Behaviour in C (and GCC 15 even defaults to C23) and optimising
> in a way that breaks programs and libraries that depend on the
> behaviour of the respektive system and libc, which they even
> guarantee.
> 
> This is an unperiodic reminder that GCC lacks a -std=posix2024
> and similar.
> 
> This is also why I was a bit angry that C23 made it UB. Had
> they made it unspecified (POSIX verbiage) / IB (C verbiage),
> implementations could actually do things and compilers would
> not be allowed to break things that rely on it, i.e. it would
> merely have been unportable. But when ISO C says UB it’s not
> unportable, it’s dangerous.

OK, this is a legitimate point in support of "dangerous", but it only
applies with -std=c23 or similar. When targeting an older version of
the language standard, the UB does not apply. It would be interesting
to know if GCC and/or LLVM have any particular intent on this yet. My
hope would be that they wait to react until a better consensus is
achieved.

Rich

