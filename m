Return-Path: <linux-man+bounces-2369-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ECEA2DA08
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 01:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74F143A52D7
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F00243373;
	Sun,  9 Feb 2025 00:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MKWgc0+e"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FD9196
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 00:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739061937; cv=none; b=lhnseUao89hPq5w3xjbzYWRqgyG2Zxvw5Vf4eOV9Tmxdj4GS2NJ765ycsom7BMLdDKdcv/5b3QewEPK12FTCMVB87uKA/0Z9gcanlP2LBtajna374hjW206+l7eGDEcZHY9c5RKuwQp2vK/dM7QuWpZQkbSgKi2xEW48gXDXRDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739061937; c=relaxed/simple;
	bh=C8F0UIef4XR8p5OU/l19O6mRvkE7a+9zrksMIjwRXvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d3UTbIGNDvtfc+uaSSkpoprPP9ye19S0vz0+Z7tuiWroG1Jq//r8zvelGfPD77asPKrT4PKm2HDTOcQhHdA2CoEXG3okk0lMCM8sQGXCH4bidFCDJik/QzwxZu+CUgQHbAOEFNoUOezj+NCQLpFzHCh/at60aE9YUwzhQKPfPeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MKWgc0+e; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-71e3f291ad6so2369392a34.0
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 16:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739061935; x=1739666735; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1DyD3hhFGxZD1HBW/z/bmK1LNW3IYkoGgWtK4G2unzo=;
        b=MKWgc0+eNvIsPL0xF2JseKc1lB4htJyl1qGo8SE1bGKtXQId60VVSB0Vf/xStsLshS
         eZqjMHVf1nrM8p1anHysEIQ347YfnL6tD53cr8qgz5oJQNRH07aCFerKaqY0gQWU8fcO
         Bdf8gjAJs+Au50puooxX8mEDR7P+08D2uCs09kiqzhz2kwVCU6Y1tKx0nCCIH//Uzz8Z
         vl+7oA74fXmnPMnb4sOm8k0aWN0WAD6b7FjZBGBcb3dWCH647722dnapvFglNoKjmYtb
         o5aojyABv82OJ1vTCAwSkjq/HR3kKGv3WvATow6WNqx2TyG207MA487cGeFfWsAO49LK
         X3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739061935; x=1739666735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DyD3hhFGxZD1HBW/z/bmK1LNW3IYkoGgWtK4G2unzo=;
        b=Ko51MdW9dtrGkQAKiEuiAhAUD6rTXMKWihV48ynLSzuGY7q0RUckhF3PZwsvf4jXFb
         6ahmHv2mmtbbwkZNaSiadaioCiyLSrcKHjwZiScFTSvCRLLAjcqO3D2mrGrnbraA4NMV
         mYWPKyuljm5NIJ2pNFTW9lgIp3niu3V6OfTqSv1pkOp8uuXXd/kN/UpjiKRai5BIRlcw
         bTWK0rzsNmM2ec1KvL6+sPVQ7fcmN4qKqSjhwVTbhXDG0zApy08iYGHuElUxz6YYvNwa
         MDXzkCL3Zghxn3fuqZ0SAru2rWGGYIBGtj4hry87+o0Joal4a7AgQzw4CNBzulS/zAEa
         /2rQ==
X-Gm-Message-State: AOJu0Yzu40OACrwACCd1ZGtUKUvUyeYbR3PchM2ZjXm5wvxcwmpeCTg6
	nqHK13mSeabQHmDq/k+K/Dz61/70JOjDKqhQgadeG8gMw45oEE96
X-Gm-Gg: ASbGncv4sQJDeiZRwjBiZ5rrzbFUjcWim6+a5U755RzY1MxsGzM0fYu16zxi8oM047H
	0QzdhI6F1+d96Y5B/vm5kxxoxsac5giIaC/4mYmEkVN69uFJLF9phMMeU40PsfGXu4cIPCP6EC3
	BkuzWtjIhTeN3YYb2CO7RPsc1X4uJJc0h/kAujpjltsNVpbQ3fnjZgc/jOSdoESaCH3AmVOIsVz
	oYxGcdOysFljgYlNLVBscRVhmfvjgn7kpg29abqQ+y8cn+k+d7Ur6BrKJeLSZMuWZ8TyLY6L0Al
	bLtKIw==
X-Google-Smtp-Source: AGHT+IEYYiyFTT0Qchk1aZxsiGXiyNtzE5snJmTe9ThXka+ti+RrqpYKyR98cqJ9mFN73bM/HyJyKQ==
X-Received: by 2002:a05:6830:6404:b0:71d:eee3:fd22 with SMTP id 46e09a7af769-726b87a23edmr6085249a34.5.1739061935189;
        Sat, 08 Feb 2025 16:45:35 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af914f1csm1711467a34.3.2025.02.08.16.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 16:45:33 -0800 (PST)
Date: Sat, 8 Feb 2025 18:45:31 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>,
	groff@gnu.org
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <20250209004531.bayfkwan2sr2vncz@illithid>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
 <20250208234619.a3zfan43cawwhae2@illithid>
 <sxeh5c2rcyyp7eakkmjsxvdhiugw34ytqe3rqk3khi6mjpuikn@qglzlxykjlvs>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7du5bxtrjbv6b2vq"
Content-Disposition: inline
In-Reply-To: <sxeh5c2rcyyp7eakkmjsxvdhiugw34ytqe3rqk3khi6mjpuikn@qglzlxykjlvs>


--7du5bxtrjbv6b2vq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
MIME-Version: 1.0

Hi Alex,

At 2025-02-09T00:59:50+0100, Alejandro Colomar wrote:
> On Sat, Feb 08, 2025 at 05:46:19PM -0600, G. Branden Robinson wrote:
> > _If_ you advise the use of tab characters _only_ when filling is
> > disabled, as, apropos of the Subject line, is the case in
> > (displayed) code examples, you should be fine.
>=20
> Yes, I'm proposing using tabs exclusively within EX/EE.
>=20
> > However, you will get 8 character cells per tab stop and I am _not_
> > sure it's portable to expect, or to try to configure, anything else.
>=20
> Are you sure?  I'm getting 5 characters per cell, which is what has
> prevented me from doing it more happily.  I would have done it already
> if I had seen 8 chars-per-tab.

Good thing I looped in the groff list; this way more people got to see
me make a fool of myself.

You're right.  Here's why.

https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?h=3D1.23.0#n1=
62

My days of furious hacking on the man(7) macro package seem mostly to be
in the past, and I'm spending much more time on GNU troff itself of
late.  So I insensibly crafted a demonstrator for the formatter's own
behavior, not incorporating that of the macro package.

> Why am I not seeing 8-char indents?

Because the package redefines the tab stops.

This rears the head of the portability beast a bit higher.

Famous Original Doug's man(7) in Seventh Edition Unix also set the tab
stops at every half-inch.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/lib/tmac/tmac.an

So does Heirloom Doctools.  So does mandoc(1).

Neatroff doesn't ship its own man(7) implementation, and Plan 9 and
Solaris 10 troffs, and whatever other System V troffs still exist,
I'll wager have no relevance to the Linux man-pages project.

Fortunately grotty(1)'s different idea of how wide a tab stop is doesn't
pose a problem.  It renders a page as a rectangular grid of character
cells, populates those cells where the formatter (which knows the
document's tab stops) tells it to, then, if it's been given the `-h`
option, it uses 8-column tab stops to optimize output.  But, provided
the Unix terminal driver's tab stops are also configured to every 8
columns,[1] this causes no alteration of the output.

This works out okay because there's no such thing as a "tab stop" in the
formatter's page description language.

This half-inch tab stop default would seem to foreclose the possibility
of using hard tabs for code examples in your man page sources, unless
you want to depart from Ingo's and my man(7) portability advice
regarding the use of formatter requests.

Regards,
Branden

[1] ...which is almost always true, and while traditionally this was
    configurable on Unix systems,[2] it's possible that userland and/or
    terminal driver support has bitrotted to nonfunctionality on
    Linux-based systems, or was never implemented in the first place.

    See subsection "Tabs and Initialization" of terminfo(5).

[2] ...because of the long shadow cast by typewriters (the original Unix
    terminal devices) and the corresponding more "manual" and
    labor-intensive table composition procedures they required.
    Similarly, newspaper-style page composition with "cut" and "paste"
    operations involving scissors and adhesive are fading from memory--
    as is the Aldus PageMaker product that largely killed the practice.

--7du5bxtrjbv6b2vq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmen+qQACgkQ0Z6cfXEm
bc7VKw//ezLBVd2C3RW1Lj0EX5yFa2/Sgvb/BodwQzWRshk14yfBFhXdNdOVl+6p
t80DBMUzhc+sTifmWbEwPiym+UsxJBpXT7fO/Aga6Ne5bCtLBvdJSqaKIBHGm2Aw
0HWy9GeoUKAoTLHDKvbZUQWCf3zhVfJ9v5fG+BIilXqn/agpiV/CxvHE5VV2PZaS
rwedc4DaLLytMapXIj/hY30rQRb2hqQkybb75NVCZdInv+Z2TMk9vIBVw1RSGJ6I
4ZYNLFT3oZlsYEbLGSt8W5KjlFsJv//oH1VLXwIPQlXDKgG6KLjt+46XvbkWEMoO
Oncdp6RKXQ4lGWictD5gf76I3Mc2Uh9DDUjgQwtvpvOXwVG0nfo2SO3ZHsVTXTUk
E/h/ZnUQ+adG6JcKZE/o3WTjlL4mQ9AhxlxHttH4S4jJrwBCxwiirG7kR+2x+m5N
KthWCpABkEFCWUBodyGsK3nVHK6iRExvQmMdlWDa6V6eRJVarw2SxqCOEY9Gew/D
/ukFL2zLkXr/G8Ktinl7CDYBx4EYNs8vxbUQu6tIDjLUH0YAVGxPjMUlXD3LSdzv
nQW1f2+8GMsLhYSCZ/ddOrqRw+cDhSh5s5AxWEMTh0Lh5DtLlpZQ++SW1CdE1seA
VTwgmbw84b8N2kS0XFI/NqE30/dNli0D8ZQScNTmTxxVkRUe4TY=
=TaFC
-----END PGP SIGNATURE-----

--7du5bxtrjbv6b2vq--

