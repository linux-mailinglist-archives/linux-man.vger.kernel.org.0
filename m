Return-Path: <linux-man+bounces-2271-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1335A16FBC
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 16:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7913A1885432
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 15:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6EC1E8847;
	Mon, 20 Jan 2025 15:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="Na70g6yF"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE9E1B4F02
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 15:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737388482; cv=none; b=axjhUckxGM8pnsA2z3TX11f9Y3DSFU9yHIK0f8EcFR9e8qfZCTnhLL+CK69W/BA2tYUS7VQG5bVUybGWdhXkrmA8grizC9D4vPjpDcIwuM3xWlx3L+lszDvYosEfN42Jwt2JWpFEJ3iWZIcAf51uA92JfR3yCI2GOjhVnyen22c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737388482; c=relaxed/simple;
	bh=MiZBII3hAn8eeBZ5PyR5yqz/DqNgtDc8uySXXP+3170=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSvluVC/67RnnULZNW36wGyV1x7MRPgPcnHeS9MPnxgMf2EvFjwEFYJpoBvDa3aPcUeEDUBgt6W9vux/9Z669GZJENk56t7v+PIH7a8zblkNK5gX0Eezh/JcVVvoiDDVkAlo1Yn1UoZs2hRQoeqRRAS0u1fDtajG+CxV3/XMpsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=Na70g6yF; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737388479;
	bh=MiZBII3hAn8eeBZ5PyR5yqz/DqNgtDc8uySXXP+3170=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Na70g6yFwKa9uwoxIL4bjmP6h3Ghj8g1rLBvzdCft9uqTDJaTF6CMoodTmlW/PV2V
	 2SbOaPOW/RzizHVH3Bjz9MuU2b5l6K7Od8L2mU83xNPWqXFDPUseNItvfTgMuv4Vai
	 acnHBAyOt66GJ1ptZbn6tBzcvMzuzrwpp1jzpd/mNeMjE8rffxSJumDZ6ay6GaHxS8
	 zXr++Nk8AxMbc8JJK0tSwlYGm4uzHIYHmjaMX9OK/7CuXxx5ZpFQPPog1gK56JZRaA
	 4icKIVrSPcZ19I/n9T8ZpejzCVwfL/4mYlfG31jEfd8IGohsjV98NLligurgVp7b90
	 HRAnpubHNo0Dg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 32D7F7E250;
	Mon, 20 Jan 2025 10:54:38 -0500 (EST)
Date: Mon, 20 Jan 2025 10:54:38 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v7] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <rkhy3pzu65hqqqx4a5n5yid43zj22q322tsjndfw7kbgd3yui4@ozjs3ckn3n6o>
References: <20250120134222.29136-1-jason@jasonyundt.email>
 <44lwfhugenusvqlbykuedke74oblz6m4tgboy35g6s7zzgq4fe@po5tmyuu6dhh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <44lwfhugenusvqlbykuedke74oblz6m4tgboy35g6s7zzgq4fe@po5tmyuu6dhh>

On Mon, Jan 20, 2025 at 03:22:05PM +0100, Alejandro Colomar wrote:
> Please separate declarations from code.
> 
> 	int
> 	main(void)
> 	{
> 		size_t    size;
> 		char32_t  utf32_pathname[] = U"example";
> 		...
> 
> 		if (setlocale(...
> 		...
> 	}
> 
> 
> > +    size_t len = NELEMS(utf32_pathname) \- 1;
> > +    size_t locale_pathname_size = len * MB_CUR_MAX + 1;

OK.  I made that change locally.  I’ll submit a new version later.

> Since there's no other use of len, I'd just inline it.
> Since there's no other *_size variable, let's just call this size.
> 
> 	size_t  size = NELEMS(utf32_pathname) * MB_CUR_MAX;

Done.

> 
> > +    char *locale_pathname = malloc(locale_pathname_size);
> > +    if (locale_pathname == NULL) {
> > +	err(EXIT_FAILURE, "malloc");
> > +    }
> > +\&
> > +    iconv_t cd = iconv_open(nl_langinfo(CODESET), "UTF\-32");
> > +    if (cd == (iconv_t) \- 1) {
> > +        err(EXIT_FAILURE, "iconv_open");
> > +    }
> > +    char *inbuf = (char *) utf32_pathname;
> > +    size_t inbytesleft = sizeof utf32_pathname;
> > +    char *outbuf = locale_pathname;
> > +    size_t outbytesleft = locale_pathname_size;
> > +    size_t iconv_result =
> > +        iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
> > +    if (iconv_result == \-1) {
> > +        err(EXIT_FAILURE, "iconv");
> > +    }
> > +    // This ensures that the conversion is 100% complete.
> > +    // See iconv(3) for details.
> > +    iconv_result =
> > +        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
> > +    if (iconv_result == \-1) {
> > +        err(EXIT_FAILURE, "iconv");
> > +    }
> 
> Do we really need two calls?  Why?

iconv(3) says “In each series of calls to iconv(), the last should be
one with inbuf or *inbuf equal to NULL, in order to flush out any
partially converted input.”  To me, that quote makes it sound like you
should always call iconv() at least twice and that inbuf (or *inbuf)
should be NULL the last time that you call iconv().  I don’t know why
the man page says that you should always call iconv() at least twice.

> > +    if (iconv_close(cd) == \-1) {
> > +        err(EXIT_FAILURE, "iconv_close");
> > +    }
> > +\&
> > +    FILE *fp = fopen(locale_pathname, "w");
> > +    if (fp == NULL) {
> > +        err(EXIT_FAILURE, "fopen");
> > +    }
> > +    if (fputs("Hello, world!\\n", fp) == EOF) {
> > +        err(EXIT_FAILURE, "fputs");
> > +    }
> 
> We don't check for fputs(3) errors in examples.  stdio buffers stuff,
> so anyway this call most likely won't fail.
> 
> > +    if (fclose(fp) == EOF) {
> > +        err(EXIT_FAILURE, "fclose");
> > +    }
> 
> This would be the only error handling we need, I think.

Done.

