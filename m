Return-Path: <linux-man+bounces-3208-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49472AE33E1
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 05:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09EFB7A3732
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 03:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57DD199237;
	Mon, 23 Jun 2025 03:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S48Mfzyf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221981DDD1
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750648165; cv=none; b=FjRxoQu43TnZmmdfLpp1L3mHHXJpjw7wdow79vhfJ5ef/YE8KLaFYOGs5t17Wd52G2CEj/a64aAWFRarllHYk7lDl/hIp+PfTnCHnkGgfMXVdhhOM5P81+h01C+4dYnd2Fai/YOgBVu3w62QNjZ2PUjpntBtIHNveKhSrCAimGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750648165; c=relaxed/simple;
	bh=fYSR0ogNZE7Irbx++0jNojyv+W8Ms+CXwdBJT2gq5cc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nPkr3sOqd5U3OZEUeMEWQj9vKDIJguP2q+WcwCIwc3ghtbdoy+R6/62ngs3JkAmFlFdmqZp4/0TFrwEJv/WH5C9XbvpYSCiGLAC96NcIrVp/VucsKOO96pb5gwPv0nMeiyzl5FEN0eTICYztv7vUaHA1Ef/dk2lzFaVb8Jha1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S48Mfzyf; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-60402c94319so1982930eaf.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jun 2025 20:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750648162; x=1751252962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OUjCnbZ3rbr23HcJb2fEEQGLp2GUbtlQ4+xx1YndFXs=;
        b=S48MfzyfCyjP4lFQ5SNO7qs7KI6JjDfNTFb2p8AUv5o6XHA9Aap6dJgACEVlrLs5YI
         gSvuQQq6zQ/66KbgIatY3+zVf4BE2hfH0YedYrI8cFut0Ls2cQmF/NI6gk+XQHzUBJWl
         Jgr7Mc7yR+LuxQ3A3r2zJc7AbvVTmXmMJkbxvPRtQ3wGhnf18r//Gjci+V8BYKq1wkfN
         cfLmlPgwbxgYJtyGnhDWAeNM06tmj2XjIKxVuQsqvv9CnhXf56fDR4fPW1UzUTeuBT/p
         eh6EDpSEDUtr9YK0fNuAnfBrC7KCLiu4Ivx95wDcKj0s4PDVyYTV9Yy0cxyJJb/UAgiq
         6B8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750648162; x=1751252962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUjCnbZ3rbr23HcJb2fEEQGLp2GUbtlQ4+xx1YndFXs=;
        b=I7MtxA6puJ9XQE30i2FBZTypauvq+6A3YC08kQ3HV+3BUGaTIIenH4Wk3dwp3SmOwA
         7do+M6hGqJzyxeo4Ja4QjsC5MUKWvQ0vhpWMFG5LZCTTM0CoqQrgyQzdMG2hnTWTGdOr
         cun2TO4J75xEPS8r0FJHSHiTETKWpcumDdRuGsfHZzXMRfNenKUn8B+A8wQoC3L4Uuop
         VVmNtlAxkRWXVBUHLXVWgkQEdkfNSgp8VoCYjkaD+UA/+Ru5rN5iRpAcOyUtphv7CM9w
         /RzR72uR9AIBeePrQij9gUJybmYJu9aAinIJxZFJE+2WgNGUoRryEeAkA6poa/r1/g6S
         Efyw==
X-Gm-Message-State: AOJu0YzrOpXBELE5W2ojx3IArpnpG8DMN9RQoh8OXipn2xRjgiZ8A2vB
	fMRArDNsajqximA43/+6+sOdm3/FRGCvyZnzSPxcyPmSxSgDJtqbHG8CVcCclw==
X-Gm-Gg: ASbGncsAlYSNgTU7FI/0b2Gfq3NNJIwwlUQ6WPXGaXthCPaJfP9MiCQQERDXyVOVTbV
	zV7eCc5TCfz9K0ald1OB6UyR/lohaLQYWCcWOgzjrVC2X/ZUWkH1SAMnBnJ9m3LDzDGEX0yunCI
	fBRLVNVnNPFhN231SnZjUThDpDTQ2uMb3hBEH3/u0rbqfZ9huN1u3qWjeMSnb69ajx8Jzo/axj/
	Ct2IEIInZ2yqSkQEGPydz4joZIbryqK0u892H9XLnmGCfws2/WluSqkgpOSMpeq11iCmNrVHPwu
	JYLFLGHqkZylKW8RSztqoJ+nk8Hz+QiYnj15dVWrebMietPIV3OJYlUVEiD2iPc=
X-Google-Smtp-Source: AGHT+IG1AuS0ITTmcF+RbX2C32DqpslYE3VjaCvNmthZ+/M27dYfalXl+TpnqJALCI1SU3cIZdjy1Q==
X-Received: by 2002:a05:6820:1885:b0:610:ecd3:5e85 with SMTP id 006d021491bc7-6115baa9877mr9517435eaf.6.1750648162581;
        Sun, 22 Jun 2025 20:09:22 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6115b68f256sm889132eaf.1.2025.06.22.20.09.20
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 20:09:21 -0700 (PDT)
Date: Sun, 22 Jun 2025 22:09:19 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/gettimeofday.2: Declare functions with
 [[deprecated]].
Message-ID: <20250623030919.hh223n7y5myslhhp@illithid>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>
 <3vpj363nqd4s4kbsjdwp5lunac7p5utrrzqswop7jewx6a4bo7@ahmuw3ywb7qq>
 <87cyavxjp9.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gi5futaqlhj6pow5"
Content-Disposition: inline
In-Reply-To: <87cyavxjp9.fsf@gmail.com>


--gi5futaqlhj6pow5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] man/man2/gettimeofday.2: Declare functions with
 [[deprecated]].
MIME-Version: 1.0

At 2025-06-22T19:42:10-0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > The '"' were redundant, and BI is for alternating Bold and Italics,
> > but in this case we only wanted bold.
>=20
> Good to know, thanks. I just assumed it should be the same as the
> other lines. I didn't even know what the ".BI" meant. :)

Be sure to Like and Subscribe, check out my Patreon^W^W^W^W^W^W^W
consult the groff_man(7) man page for a description of the macros you'll
see in a Linux man-pages document.  :)

Regards,
Branden

--gi5futaqlhj6pow5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmhYxV8ACgkQ0Z6cfXEm
bc5SuBAAhYh+1i4/JPQg0Q1wMK5XzLzxb0CGYdMzSHB1uJthlP2P545JtXWO9VMf
CuU/6OKLOERyHyCCH0DW7BvU06jPLr0MFO0mp7M1iTIJJv0eBBSke3zvd7Ow4UGy
YUy6PBi0L1JZ11s2jM7HtXbwf+p+InXAkB3CjJyfRuRegeChIxaWunCqfpR2+uc7
mAw39PB/psC8QOQbiI+UdRb74cVrLcWAagHkTDrSMkFT3AIF6mYEofJ5JO2HTCse
uEhgYR7VXBML19pcyDIZOm4Rg/aTlRKuQbj+Ja/sDWWMTE0ZvdtEJp3Ca+G6ph32
lp3HsJXFKfinwrE4o/N1dpYJ9VtbiiZ6rwH0m3ydfgr/DZKeR4gQnOelMgjmHQAv
UJYd8SUfz4PHPCw9CSPKlYOunz8eDNIPBRw34dHI8axqzmR3Hf9YutIwQ3Aos5TS
gx3KAEtQwLbax6+5BPrGqJOuLkkTMnjhhuwO1+rQVEH3XsgRkYEGiPPfunrBTroi
GZbBxVbntjXR6hCOaVKzi/Y0fzZAibCxLlY+qh2e351mvcGBYN1N6eRD40Qfd3nD
CGgjBI7pb4xoMyj6K8wPDIKfwP7lzXkxMmnPw9Wxx7eZzSsSiUbSdraHw2bgl2v7
NuPK45ynLiOGEsYYS1VZoh7Uq3vZouqmnIPWVqvxVAj953Ls0f8=
=g2QX
-----END PGP SIGNATURE-----

--gi5futaqlhj6pow5--

