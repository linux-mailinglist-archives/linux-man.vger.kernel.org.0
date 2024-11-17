Return-Path: <linux-man+bounces-2004-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 150CD9D0459
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D63CB2143E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9901D958F;
	Sun, 17 Nov 2024 14:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwv03Mn2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D994A92D
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854259; cv=none; b=PViaO4R64mU8WpZNMpmEhOLpAbHrd/HbMP0OA2MjjTPYRhJkp0miXeW3OtFb/5nDwqMWh2RE1mpTHc5XNbys4eKVLYS8LFHVJPNPWdqRTfMtpkkFfydxtaYHyaoel7+XdUodVnzeDp0eKsr9Lgw/1ycN1fRiou10epYK15Xv3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854259; c=relaxed/simple;
	bh=iXjg+rsUtNzKR7cuJFScB4SPMq6XAjXLUQ5NAoQb6Wk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gmxEvETb8bWQgxOmFE/cHb1cLug0wJSYJvJJzRjOV//Zy9BG8GWuqX2NS8MGzr7661WkepMxqrVnbpTiSDmuKi/6hILEmQzbdsyBpi1DwZ8S0kiRylFjR23wy8FxyWGnnHWYEm190v2quT16NSfcTQBgLni6gZWYv8tOT86iWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwv03Mn2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1572BC4CECD;
	Sun, 17 Nov 2024 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731854257;
	bh=iXjg+rsUtNzKR7cuJFScB4SPMq6XAjXLUQ5NAoQb6Wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wwv03Mn2C7DFQgB3LDrqJSuW3YB33z5Hk0P9P7IgRa6wMEOL0FG5ZuM6kfJ54xWST
	 RBRqXliIz1//kPiHnCP2kjDt8rigkXCfmq+VSS2JpPBC4Vl8QjoyYXmKISUg89QYGN
	 hSV2WmWNWfL9e7BoqMuPgZI85cqE7cq5WADqhSnXFXcKtXg17Q9W/939ZR25aoZnhf
	 RBEd5V2B2/DZ5ZsbRjw05VXoJZ1fz3iB7V7WZhDvAsMV6eGIIQEvD3uFlgWgdiq+0V
	 4syh0uIonJqHgELmO3apYpVqXDg8g/hFPWlzmL18PghiWpBp+WsXFGhj/KYnk3qnnc
	 9r634WZ4QQKUw==
Date: Sun, 17 Nov 2024 15:37:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f7hvs5nflnuec5qa"
Content-Disposition: inline
In-Reply-To: <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>


--f7hvs5nflnuec5qa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 12:34:32PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 12:38:24PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Why is this no-wrap?
> >=20
> > Are you asking about the behavior of the function?
> > >=20
> > > "Domain error: I<x> is an infinity or I<y> is 0, and the other argume=
nt is not a NaN"
>=20
> No, it is about the formatting. Normally, all paragraphs are wrapped
> as needd, but this paragraph has word wrapping hard coded explicitly,
> which you usually do in code blocks or when long lines should not be
> automatically wrapped due to some visual layout.

In the upstream (English, man(7)) page, I don't see any hard breaks.
Maybe it's an issue with the intermediate format that you use for
translation?

Could you should more details, so I can check?

Cheers,
Alex

>=20
> Greetings
>=20
>          Helge
>=20
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--f7hvs5nflnuec5qa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5/64ACgkQnowa+77/
2zKZpQ//YM1bAHqknk3I+6rH1W4kviPOhZAF92tCHK3qciAPDybbL+HQIU3yEWyu
iSUvEoUD49bFYng0pQMu6P3nJYY3yHOsqijE9Jr+MojGtNvtTKIOXnaAe6GyzTdj
38PgbNOKyDm7LzN4646iNcxUC3onQrBrUcwXh4wUVugUgwS41JU0WlPDUUrQPSk/
mRH9gW+s5nMk6jToL5/Tn5v61XkZlJyyOJb5H6VqReIa+PW4QK/Iu8kudGKS9FPs
deYWpJGsqCJC/qVxs7gB/MU1qLwbOmV2ciK2ycghX2X3+JHGiKsQVFtgG8LGSYUE
AvdHo+w0Oyv4OuyeVYxgT4Op8owgKgyyZQP3y0llceG0m0O2s1nFlLwdWAOeA2mN
eS1irFA+IzB208VveHXtfQgEIp+453pK8xKqza0uL9uWNoIew4GyQs1iHjLGUv/e
gq8OU57VdtS9s+bGG5uX1EObWSbI0U+91ralgjpj4HRV75y9yZv61WvqgJnTyR1+
4zsNyK5fV0QoPK299gU8wX/ujt9trv0rbJBPk/vjn4K0xFQh+m8DXCSEJAgQOHZy
Bba/xvpIuvDeeOaB0jd/89toDNxAxHNu6plGOwgs9pi7P84nM/dJzHLpqbKwCEP7
09SIC0TJ5tYlkNcTIjY6nH4dd/NGSr/N0kDqYdEfpI6vIB86/bQ=
=OP3Z
-----END PGP SIGNATURE-----

--f7hvs5nflnuec5qa--

