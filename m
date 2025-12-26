Return-Path: <linux-man+bounces-4579-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F8FCDEA31
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 12:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 590F130057D5
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 11:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C857431AAB1;
	Fri, 26 Dec 2025 11:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Gkz/BDBk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E947C284662
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 11:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766747822; cv=none; b=ncoi/7IWrTJcc62mAMUow72YBD0ia5IYUY537f5CuwrRuhpgT52vKGYYj0TPhaoAhUOdpZMDkoMICYgEY0gob4hZGbvVgmHgB4thdkoL8ZbnRHyrBvYWVlP9eSmdgjjFx+HgYSqscUoTZ2j6/AWd4gTUQLY94Sln/BpZvGwfXSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766747822; c=relaxed/simple;
	bh=3xsxoxcFawY7Hfk/4d5dN+xYvFGi8TkzFjLBQUo7Ypk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PViYbtKc6ZJ0UsWXQ6NVrAO+luvzfZHvHb4PuHM2OeNLmH492DvOkQ/o4y12o0GPJGU2hWUwvEd78sKev+4UPQRtylrAKlZHl6uDBfD9/ydmrInRX/nkxZrqisCcn+D5Wmftj09ETiOFatNh2Cbrdv3sLm/K8DKb+2fD6wTdMY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Gkz/BDBk; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766747819;
	bh=430OqYF+K/xmuKvqzFQ0WCGJtkwlZidLB0BC33nER+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Gkz/BDBkffNI+/f7NxNQfOiKWIDfk2ktP/ErwKPd0XRkAciF6b7ltX+eIbbxajB0m
	 C+zmA+NCDIiyx1W7umMr9vJCVuMIr2xozDbzA87SBBF0y58/tf/Rt8SGHQs/KTz390
	 WtASfjQH6qLlQDngno+PCp//sd254wCLMikmLKRHv81ck06DEYaq5olxnBnYO30DbM
	 USPmCsoit839b8NCi3tafqfAZfEzvnTkJZEKjQaeeAuZpJm+JFWlwvm0Ope+01lphX
	 SpOYJg0gL5Z2rw91EIyHLek27zstLWZHLlyyFUNUSDZlHlH1zXaZ4f7hl1+Q3NfmWG
	 F5VWUMEDge4IQ==
Original-Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200AF.00000000694E6EAA.00341D88; Fri, 26 Dec 2025 11:16:58 +0000
Date: Fri, 26 Dec 2025 11:16:58 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU5uquh2IqlgPsXl@meinfjell.helgefjelltest.de>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
 <aU1A1nItvZiTB0Vc@devuan>
 <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>
 <aU5oh9TKekgvpkIn@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3415432-1766747818-0001-2"
Content-Disposition: inline
In-Reply-To: <aU5oh9TKekgvpkIn@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3415432-1766747818-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Fri, Dec 26, 2025 at 11:51:53AM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Fri, Dec 26, 2025 at 05:02:39AM +0000, Helge Kreutzmann wrote:
> > Hello Alex,
> > Am Thu, Dec 25, 2025 at 02:49:23PM +0100 schrieb Alejandro Colomar:
> > > On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:     Replace comma by fullstop (in SEE ALSO!)
> > > >=20
> > > > "B<prctl>(2),"
> > >=20
> > > I've decided to just remove the comma.  Thanks!
> >=20
> > I thought this was mandatory, but I now read:
> >=20
> > > Do not terminate this list with a period.
>=20
> TBH, I think it would be better if the list was terminated with a
> period.  However, that would need a global change.  I'll probably do
> that eventually, but not now.  :)

Well, man-pages(7) says (which I did not now until very recently):

Do not terminate this list with a period.

And from my side this is a really tiny detail.

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3415432-1766747818-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlObqoACgkQQbqlJmgq
5nDRExAAmI6F+XFF+Pn2h9hhcFECQn6rTL2b99kc93ZSU5innnkDYm+vaJLHwAcC
oZUnoiKMoUKMfmAo28HNjtIelcwtewx3OWXcHJkUC+k97wlpIbHhyUWYpf+MuozT
C8rnIuL3fcli+gX5WsBqvkQb9DOdfZ084URIqEsKHyK8gjOjvtuJJZxmlq75Zc19
xG/TUf2PXudXN8iS16zRRUAZEN4cd2KUflB5OrrEeBsnjwQ7YL80jL5Oku00HjBO
UzZZlPljGuiX5uvR32MEt3jSST8TVZWbS1G2e1FqOhYo8wmcFb72riND+icKAnOY
eNZk0uk4YJOIxz38eVRZIG3gitSbPeh4QDWz+BXbbz1yxG1B5H8Cn73Vb5NasTbV
ay6xCBEVIyMuQy5dnxjfjVcFb68EFY+8S09K6MCjeweWSxMfP+mVrPrSXAVk7Ejo
pcyq67IksUtrrOYgRyxdQ6kH3TJlpVbLXA4LfSDx6o37ImGtA1VGeiL4noKwLqGO
ufeIeu6K6pQrjWmgeQWJY2BGBjsw+wUj5QKkffIIu7GBP3CY+r1gqtecdShYPCVz
KLsYAKl/HkRuX4er106qR9gsKmG2SOCZgUf86Dj4fWao3yLq1UCsEE4rZvOvkdbW
nmUMtsYR7E7BtuLhzwGPmDhsK5UMN/Q3KuGXmlPakZayy9sAtnQ=
=5C2a
-----END PGP SIGNATURE-----

--=_meinfjell-3415432-1766747818-0001-2--

