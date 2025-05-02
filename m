Return-Path: <linux-man+bounces-2856-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CCAA7625
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 17:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04BF71898FFF
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 15:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D931DDC07;
	Fri,  2 May 2025 15:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOsyuqEZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8757C23B0
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 15:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746200084; cv=none; b=VWYN+q4GFMyoQkpjBrGWt6rSn1KG9vRyQMV4AzQaO8taVebzTuG2lj+uv5QhiaFnhTfOrmRkVVruKKZjSQRfEansmjDlHM/sDxo6lwHlTxR7Hz6gP6fmMsD7FUGv1o2x4iVo6aArZZYh/9k36n7dnVdfpQxYQ5JUDMUXpjSDKZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746200084; c=relaxed/simple;
	bh=RaGuKhTVyuAaoJnq+lH4pJG6QLWukE3+UJ6/Aphjd4U=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Au1D2CcANmGRboTL/Uv4HGvhR5J+8KYZ6HQnpBHSk93332epF5X17ESXTXi5UjZ1WQhYTfcSEptP3pv/BYz01KfCCkz3x2xiRo/f0lans2zxDfHRNcRspbiKUsQ7WHBtjHcckyzg/iEy+OpCOmmAi8t+XIuK6m8pA8iI0pZoX0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOsyuqEZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C6A8C4CEE4;
	Fri,  2 May 2025 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746200084;
	bh=RaGuKhTVyuAaoJnq+lH4pJG6QLWukE3+UJ6/Aphjd4U=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=dOsyuqEZz/JTBLIRs9LwNxqhP2/F2PBOUrJq+06qgTAMcqgN9+RmovjsQCL/TZoH2
	 bLGj9tRzwYKew6FzdZWwqG7ehOiVp2yKPYScAlYnW5/nGJTj5YKwFCpUFAmdBfvKft
	 XLD5PzE6CsVqaX2UFfkRXzR8IJ0dzTJzqDXhp6RVK39O5EpjvL4pxEtKpnndgK7UAx
	 g/NgL9jm4K57+7Cjfm7v6+cGEt53TyhztyjnxJ4G6z8nC3tyzVT1j7LapAvBkOW8pH
	 pQCwB+kyg3ZLWpCcHjivTeh3njGuJ39qYh51wBe/r1xSQquQBCeYSyIAEcyOjqeEcy
	 iM51qm/DlFpsg==
Date: Fri, 2 May 2025 17:34:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <kb3ufv3zgvi5xihgkb2jrt72a44ykcut2srwmilb42johera3k@jrsl7nuh7k2p>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <20250502145104.uouytem5fpxfjc3s@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ka7tuuuolzcuvb2m"
Content-Disposition: inline
In-Reply-To: <20250502145104.uouytem5fpxfjc3s@illithid>


--ka7tuuuolzcuvb2m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <20250502145104.uouytem5fpxfjc3s@illithid>
MIME-Version: 1.0
In-Reply-To: <20250502145104.uouytem5fpxfjc3s@illithid>

Hi Branden,

On Fri, May 02, 2025 at 09:51:04AM -0500, G. Branden Robinson wrote:
> At 2025-05-02T15:06:46+0200, Martin Lemaire wrote:
> > Thank you Branden for those historical insights.=20
> > Off-topic to Alejandro's initial question but related to the subject of
> > justifying text set in monospace, do we owe this typographic gesture to
> > the early *roff formaters or was it already a thing in previous
> > publication tool, either software or hardware ?
>=20
> It dates back at least to "old" roff, which is one of the first Unix
> programs ever to exist.  It is older than the C language.
>=20
> roff(7):
>=20
> History
>      Computer=E2=80=90driven document formatting dates back to the 1960s.=
  The
>      roff system is intimately connected with Unix, but its origins lie
>      with the earlier operating systems CTSS, GECOS, and Multics.
> ...
>    Unix and roff
>      McIlroy=E2=80=99s roff was one of the first Unix programs.  In Ritch=
ie=E2=80=99s
>      term, it was =E2=80=9Ctransliterated=E2=80=9D from BCPL to DEC PDP=
=E2=80=907 assembly
>      language for the fledgling Unix operating system.  Automatic
>      hyphenation was managed with .hc and .hy requests, line spacing
>      control was generalized with the .ls request, and what later roffs
>      would call diversions were available via =E2=80=9Cfootnote=E2=80=9D =
requests.  This
>      roff indirectly funded operating systems research at Murray Hill;
>      AT&T prepared patent applications to the U.S. government with it.
>      This arrangement enabled the group to acquire a PDP=E2=80=9011; roff
>      promptly proved equal to the task of formatting the manual for what
>      would become known as =E2=80=9CFirst Edition Unix=E2=80=9D, dated No=
vember 1971.
>=20
> And, sure enough, it performed adjustment.  We can observe its behavior
> in Seventh Edition Unix (1979), which while much later chronologically,
> also documents roff(1) as "utterly frozen".  Joe Ossanna's nroff(1),
> "new roff", appeared in Second Edition Unix (1972) and immediately
> sucked up all the oxygen available for document formatting work at the
> Bell Labs CSRC.
>=20
> ---snip---
> PDP-11 simulator V3.8-1
> Disabling XQ
> @boot
> New Boot, known devices are hp ht rk rl rp tm vt
> : rl(0,0)rl2unix
> mem =3D 177856
> # Restricted rights: Use, duplication, or disclosure
> is subject to restrictions stated in your contract with
> Western Electric Company, Inc.
> Thu Sep 22 23:33:03 EDT 1988
>=20
> login: dmr
> $ cat lemaire
> Off-topic to Alejandro's initial question but related to the subject of
> justifying text set in monospace, do we owe this typographic gesture to
> the early *roff formaters or was it already a thing in previous
> publication tool, either software or hardware?
> $ roff lemaire | sed '/^$/d'
> Off-topic to Alejandro's initial question but related to the sub-
> ject of justifying text set in monospace, do we owe this typogra-
> phic gesture to the early *roff formaters or  was  it  already  a
> thing in previous publication tool, either software or hardware?
> ---end snip---

This example doesn't show the alternating preference of blanks left and
right.  Do you have any example that would do that?


Cheers,
Alex

>=20
> > Are you aware of theory or paper on the subject ?
>=20
> The practice of adjusting lines of text to be all the same length when
> typesetting is an old one.  It appears to be the practice in at least
> some late-medieval illuminated manuscripts, and images of the pages of
> the Gutenberg Bible that I can find online suggest to me that the
> practice goes back to the dawn of the printing press.
>=20
> Since monospaced typefaces are a straightforward application of movable
> type, the concept of "adjusting" printed lines thereof could not have
> been novel.  It was simply too tedious a practice to expect of
> typewriter operators who composed text on the fly while drafting.
> Computers, however, are perfect for automation of tedium.
>=20
> But I'm far from a subject matter expert.  And a bit too young to opine
> authoritatively on life at the CSRC.  Fortunately, some groff list
> subscribers have first-hand knowledge.  :)
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--ka7tuuuolzcuvb2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgU5hAACgkQ64mZXMKQ
wqlJexAAvUd7vf3iQdrMiu43bo4nQPGDSoLKO8xgN/CyU1GFuENx5H3dehWvYV09
yK5ZgQ2ZLqEJ6PXQoisbEBsi7yqJiLwq5JUAw14wzQVgCkW2YlC+7USFw0a8BLuO
LFSTIBIoaxJIAmwA6FVfPO+y8cBYeh67C+1pC42R+lBWc2OcGvG3PkYYIKFICy0Z
0UuAbuY6diuoZ6x1lGVrc3tKd8yKYNn6J/vEbMyJUuyqqa4gOlI9kDlG7EeVyTxj
gq+GT5q0sxFc7UPFkIfQ7Bj0C7PiPfRe6bKvHgtihVw56NAGMWLLWB4HbkAAFT4E
pbXjBAU+gp24+NCz6lwtPGlBLzmf8nk9ntw4CE5YmM0zewDg/Vn+O3s13XvFGQgs
QQU97OEEIesxlg079+XuXi8E6pq0jc11ISFXGCeRRr4vKpVJn7e4DZYpab6ameqt
mCIRSjQBZfHMSMyx+HZFOUr+gmnvKFWH3Ve/Ed596mX7FsR9zgdrhXnVss22kWa1
3UyhMBXR3iDC5nz/75lXkYWnTlGhkF9BaYIukVAcdTILNFw30nGXERROLgNyRaXG
Y0qTGnPJuovtXbZuGmAFoiM7Vy4MJpeJLa9RlYrXOUwzm5MHFiHnj6BcpXjEAjMz
4N6h9gxVjxQB8BFxTp15kz4kSWLHcYQZVQFiAaXjmvPAZ4e5u+g=
=JZzd
-----END PGP SIGNATURE-----

--ka7tuuuolzcuvb2m--

