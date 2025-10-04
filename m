Return-Path: <linux-man+bounces-4041-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D588FBB8C6C
	for <lists+linux-man@lfdr.de>; Sat, 04 Oct 2025 12:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D7AF3A7D14
	for <lists+linux-man@lfdr.de>; Sat,  4 Oct 2025 10:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96927238150;
	Sat,  4 Oct 2025 10:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0+As6Lp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5655D1EA7C6
	for <linux-man@vger.kernel.org>; Sat,  4 Oct 2025 10:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759573835; cv=none; b=tYS6NYDhMVlAqrls6U35ZcEwpkL3RHSt1wNruLD1Pj0i0ovXd6XyY2XzxaTozkqypbF8mYrkrL4DZTVIirANi7uTi5NAp6UH2whgJkB3iAiC7XE6bZqpFEZRrDEmteln/BMUuYfjCYdz5gdcP9OppRY0PhrP2MVmGaOlzRp+Z30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759573835; c=relaxed/simple;
	bh=xLx1lk7Oi62M8AAj95dq1U4BZ6PSzI6tlh/bUxqIig0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RSMwMa7L7RJAnClzQ+GsYhQYGwR4sr6ejk98Ar6JThZIOqHyTgj4RxXVjDb19jvjm3l3PxJ03E+0iEZ+ZjkefL6h7v1fY4p4as4ql2YS2j6VQHjO7C1A+d5NWaDCYNmtlFOqXQj4G0u/LYMI45DS1hIAW6ERAHWmofmU5Rl3Hfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0+As6Lp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05BA2C4CEF1;
	Sat,  4 Oct 2025 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759573834;
	bh=xLx1lk7Oi62M8AAj95dq1U4BZ6PSzI6tlh/bUxqIig0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n0+As6LpRlLHCeXur2ooiwGi7Tztw2Dry0QFnGmhVvrwC0CEDfDGldcEGYveTlKo6
	 5UN6yNBXMdTQ6Hy/S2STZHqtzwur4QehHU6TqJOTAdbISuog6Vvyi1L3BZl8yPSPJX
	 /ShfFm4/c/tTrK0JVMeRUf1MP8XC7j/syzEzM7msgu600zP3hECdWIFHOOOKbFIvKd
	 j09tGhnSlWZ5EklScxKn1Qolsv9nbdeUHxUftlP1Bc32eUPrGGo1S/VTaSKVjizyZR
	 U62cSejbzRRCcbJNesMp5FV2VsP/SwWKl+uZoiH+vH4dVZb/jqmK7PIalT+HIA0jlO
	 tj3GllI4ZZ0fQ==
Date: Sat, 4 Oct 2025 12:30:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <6np26sx47ntubt6pw4n4nkfgyfssov36qi2jflakgh3bc6kuvd@y7nu6tjwpsnn>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mmjozxzr5x7ejs7t"
Content-Disposition: inline
In-Reply-To: <20251004094243.avg4hvwwir7ink5u@illithid>


--mmjozxzr5x7ejs7t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <6np26sx47ntubt6pw4n4nkfgyfssov36qi2jflakgh3bc6kuvd@y7nu6tjwpsnn>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
MIME-Version: 1.0
In-Reply-To: <20251004094243.avg4hvwwir7ink5u@illithid>

Hi Branden,

On Sat, Oct 04, 2025 at 04:42:43AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-10-04T11:16:06+0200, Alejandro Colomar wrote:
> [snip]
> > > -l l.
> > > +Lb Lb
> > > +L  L .o
> >=20
> > For consistency with the rest of the project, I've used 'lB' instead
> > of 'Lb'.
>=20
> Okay.  That happens to be the precise opposite of my preference; I think
> the column classifier is the more important property and column
> modifier(s), if present at all, less important.  But tbl(1)'s matching
> is case-insensitive, so it's purely a question of house style.

I like from lB that B is well-known for bold, but 'b' not so much.

> And consistency is king.  :)  Or co-king with "clarity"...
>=20
> > I like this change.  I've applied this commit:
> >=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Dfa940b6d17791a166c793b74a50cd72926d14b50>
>=20
> Looks good to me...but it _would_.  ;-)
>=20
> > BTW, in the PDF, the '.P' doesn't seem to be working.
>=20
> > <https://www.alejandro-colomar.es:80/share/dist/man-pages/git/HEAD/man-=
pages-HEAD.pdf#vdso.7>
>=20
> Hmm, yes that does look wrong.  Plus, I see too much vertical space
> _after_ the "ARM functions" table.
>=20
> I'll get back to you on this.

Okay.

> > I don't see the space before the tables.  Compare with the old PDF:
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-page=
s-6.15.pdf#vdso.7>
> >=20
> > > ...and so on similarly for the rest of the tables in the document.
> >=20
> > The only other one I can see is syscalls(2).  That one is a bit weird,
> > so I'd like you to have a look at it and tell me what you'd do.
>=20
> By "in the document", I meant only the vdso(7) page itself.

I somehow misread; it was quite clearly written.  :)

> I don't know if I have the spoons to tackle issues in syscalls(2) before
> I follow up with you carrying my sed(1)-driven bucket of thunderbolts.

:-)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--mmjozxzr5x7ejs7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjg90EACgkQ64mZXMKQ
wqkPvhAAsolZyzEYXfCiNDEk8gwrReUn6PjFWoBSWByxkB6vw+TKoys3rsYU75bU
RxkptHiyL3jS3S6KsekVtQmDXuiQmyKwzCK3FIdqfqFz5l8opu2WQgjjjMsAPjMG
emfhwpzuAVuZ82rRY0bprSvpXEz3AP0iVV7MQGfeEAh9Xde3n7Gnt6uPaHY/xiil
Y5cOhzI/oMvEZ0m+mWfLyaZNckYvJJtgX9UfC5ePmn77ZxB3fgfKpbpvvsPDb063
Jgtba35qHqTT6OhzIu72jt+FKZYwdC9ZBy+SIpk7jLP83a8nmY0Yb91ZsEb1cATi
cG6TnzosBemfrJcpWYbB2CLIWQjUVx7x8yzJnnBvrUZo4eUkMei+MykQiG0FxCaq
1MOmCAjVovy0IhKic/RS4tmswqFnMG44wWLTyNSaasHhT0+xuAmarNXrtd1TihND
IYiAFQNGAxzSuXkBfvAeWycCFdPMBuHRfTpzlZL1qzy/DWkA40JDtvO/WJ/dcmfy
sig1RYryaDWYpYMCfJak+FuHWZW16OewstHs3RXw996d225E08F7bmsBA+WBmcym
HoDl7rI245DYizJXrt8nSoNt9sbNn8PcpE8E72eooiyz4di+FHNg1zngNwmWX4qz
Nc7060iVbMJL6xTzkL7UUBcqmlj5Aq+Iy3hf5qR7KDjVaEkVuOY=
=UB3b
-----END PGP SIGNATURE-----

--mmjozxzr5x7ejs7t--

