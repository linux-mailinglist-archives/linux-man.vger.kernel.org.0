Return-Path: <linux-man+bounces-2374-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82102A2DBD1
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 10:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B73271886398
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 09:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A464D13DBA0;
	Sun,  9 Feb 2025 09:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHfdKXTl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D0633987
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 09:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739094289; cv=none; b=FXy1e1qZlyL8JN8GG0n6xbWnlKFtzcw07KOnzNCUdVsGnJreC/CQnSoVEDlLexFduCDDxGLtFKyhpVU5BDtdKIBYYZ9EKutjFBzTal4W7wnlQvyV4hxJaAl0tLBNEOZ2A4ntC+Fp8shdmJ4SACS2CRvYQlJMUBTtL6RUG71QlO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739094289; c=relaxed/simple;
	bh=it3mDrb0PxvsciA5qLyi1Qd4gZFotTfqrAwRPOcjxwo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qilb+XXHosHyigDrgZQkpAw/HSmTi7KdIax3TcPCZPEeC0n9CeGQc1WB1tIUMEoxCCXPOHhLFS1XWxDDOZZ+X7s5bQvkKr7/OCbUvsY2CAMG+GyJFFOdsH+LGVOfmMGQaPVXMoMpS5Mg70UA+1qdtqHhPWajedrn6SRC7cfaLBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHfdKXTl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2943C4CEDD;
	Sun,  9 Feb 2025 09:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739094288;
	bh=it3mDrb0PxvsciA5qLyi1Qd4gZFotTfqrAwRPOcjxwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CHfdKXTlfjBNRLjKN3h9edy3AaW+Ogcu7hOPJCTDMsbZ5KtbUQA+wmiOT/leeFlK3
	 +gmYQKyrniAEzcKpB2k2u4RYBy7B6AEbnfoh7TDCbyVwo527mESk+EHkyMP+HQLcuT
	 Ye1SNo7VwUYiNsAQRmQOMlQnv7mApcDFYYaumfT2tg+1lLdSIuWXD/nIWWsPZwLb9F
	 BBFlFJDGEWF9ce7IURxOIPfgJYVVyNfPbK3yS0Tu5B5oAfFbeP4Cw/93q7QhPZ6knH
	 VOitLNea4OTFFZLwywRnu1YRt3zR41vzOHFdwQXhe2uVtt+npghMJ0/jvlT7k2eCu8
	 OkQ3T1vYl9rsg==
Date: Sun, 9 Feb 2025 10:45:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	groff@gnu.org, Ingo Schwarze <schwarze@usta.de>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <5yicu4q4tuf2i7qfrnicr5mt6qjg7b27j3dia3sz4etplvnqfu@fwm5i72xxj4s>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
 <20250208234619.a3zfan43cawwhae2@illithid>
 <sxeh5c2rcyyp7eakkmjsxvdhiugw34ytqe3rqk3khi6mjpuikn@qglzlxykjlvs>
 <20250209004531.bayfkwan2sr2vncz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5dxwane4z5hc4ntl"
Content-Disposition: inline
In-Reply-To: <20250209004531.bayfkwan2sr2vncz@illithid>


--5dxwane4z5hc4ntl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	groff@gnu.org, Ingo Schwarze <schwarze@usta.de>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
 <20250208234619.a3zfan43cawwhae2@illithid>
 <sxeh5c2rcyyp7eakkmjsxvdhiugw34ytqe3rqk3khi6mjpuikn@qglzlxykjlvs>
 <20250209004531.bayfkwan2sr2vncz@illithid>
MIME-Version: 1.0
In-Reply-To: <20250209004531.bayfkwan2sr2vncz@illithid>

[CC +=3D Ingo]

Hi Branden,

On Sat, Feb 08, 2025 at 06:45:31PM -0600, G. Branden Robinson wrote:
> https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?h=3D1.23.0#=
n162

Hmmm.  What would be affected by changing that default?  Does it affect
anything other than a literal tab in source code?  I presume it doesn't
affect .IP or .RS, and it shouldn't affect tbl(7), so it would be
quite harmless to define that to a different value.

Considering that the BSDs are 8-col tabs people too, I suspect Ingo
won't be too much attached to that default.  Especially, since few
people already use tabs in their manual pages.

And even if the default doesn't change, I can just point to people to
the reason why they see 5-col indents in their manuals, so they can
tweak it if they are too irritated by it (most likely to poke their
packager to tweak it for them).

> > Why am I not seeing 8-char indents?
>=20
> Because the package redefines the tab stops.
>=20
> This rears the head of the portability beast a bit higher.
>=20
> Famous Original Doug's man(7) in Seventh Edition Unix also set the tab
> stops at every half-inch.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/lib/tmac/tmac.an
>=20
> So does Heirloom Doctools.  So does mandoc(1).

Hmmm.

> Neatroff doesn't ship its own man(7) implementation, and Plan 9 and
> Solaris 10 troffs, and whatever other System V troffs still exist,
> I'll wager have no relevance to the Linux man-pages project.

No, they don't have much.

> This half-inch tab stop default would seem to foreclose the possibility
> of using hard tabs for code examples in your man page sources, unless
> you want to depart from Ingo's and my man(7) portability advice
> regarding the use of formatter requests.

Well, I'm not too uncomfortable indenting by 5 spaces, if that's the
default.  Then it's up to each one to reconsider the defaults.  :-)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5dxwane4z5hc4ntl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeoeS0ACgkQnowa+77/
2zJBRw//ZYu7uNKK7RB3FObcAs0P1L3+JmZYoWSWkXmENZGRg3BZkf+QljCq6YB9
pQ9lPbTK+VburFDGiuzcZVD1CeHi88ERmF+B95Idlq0HkOpBDbrWd+LWfEqI2Ih3
5K+qRb9GYkOPyuPPnIixu0d3BxAbcTPTgEvpMWXGIM68m6SHkTSN4AJ6CJd6G4hb
i/GnGmtxABrBFPMJ2HT9i+eygl2jb/33wdZBeXwsvxM9e4GXEsNIiDKn2yq+PXsq
W0Zubt0I3Cp2Ga5nu7zdM7RVCJZkV0k9JwpC7VByt9fGVgsF2eEXjqeXIaJFcc8S
F/M079d7DowinJP4OJy4CE6rzyNeX5H2UFJi3k/feLzbL5Q46n+I0bQZ4NhmfQON
6zAaJ/92fZWU82OSDWB4Bz+pCcJ1qGnZzHj5T4stKcNQIiMfmTkxB9vRkOsi6My9
SKCpy/bnT1nW+PZvzNUFRLSl7mP2bFgS5d1v0FaktAjyo9BUiZFNZc/XO1sfAgUS
WIIlJIZ1pXBTu296MH0dkENwTYZCKzktAYNHCrdWoEszzvJzJeCXzOwGd6HSvQ3U
MBu8D7sD1P3A/vf/84fh3N8ZVDScvRHWM0o88HWRu2jao+jTQeyTD8U8xMYBbLUk
ilJ+kFA+YFMekDpuJrPtFvZUiD9hKpWoi691o3KyfX8c5eNiDLE=
=KUcT
-----END PGP SIGNATURE-----

--5dxwane4z5hc4ntl--

