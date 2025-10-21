Return-Path: <linux-man+bounces-4185-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 539DBBF7CDD
	for <lists+linux-man@lfdr.de>; Tue, 21 Oct 2025 18:58:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15BE0189471E
	for <lists+linux-man@lfdr.de>; Tue, 21 Oct 2025 16:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D30B324B16;
	Tue, 21 Oct 2025 16:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJeF2er1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C040346E6D
	for <linux-man@vger.kernel.org>; Tue, 21 Oct 2025 16:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761065919; cv=none; b=gm0MyX5s8KH3zf3Wqeq3g2FldfI1MkIcooEI60bXyLRNgEIUr3xPmWKyYb6N/YAnhVZjiTFpskl29iKSg8PYaT3pEi5A0u4jkJA65F62FDJYq72n4jN5Urr3hJ7uaemYBKmOIlsw6yR/bOTOkLE+ClYw4Rdo5KMSXHQ3UbTdhtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761065919; c=relaxed/simple;
	bh=IJn7V0G9cyHz1BOMWVFw7GXTRnu2wVlDWmYroYGaUew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jv3I89+tVR48hVJa74IqS5TMbjenvcOxyeycT7BSjhJZZlbuNQTwfzuVCYTaSBdq2NGmxmXrO3JjUp3B8k2+haGrdE+dr3cKlsuy3YZ0onj5P3SVje3bDVK0t45ZXOaA98Rvlr8ZT7U5jN6yM808U33gU3sHPW8UZUEL+VX45Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJeF2er1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27723C4CEF1;
	Tue, 21 Oct 2025 16:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761065918;
	bh=IJn7V0G9cyHz1BOMWVFw7GXTRnu2wVlDWmYroYGaUew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LJeF2er1AaJ4m3kx87lZRBWMCmvCYnAQicWQiAmbYQb58BBL5fjAjzQgyk6o/7QIk
	 dRbyV6/Vtgl8li6s48R8kz01IOPW/AGX6GcGWbb0+zcmwHduuz2I5mj6jGWpE02RTs
	 TfbV1SF3qSvazpsE6q9R9dJ/l290kmeQXBeNjSu7T7GJwEs1GTQsjlGLeeWvfVXPsl
	 Kl4rAfKdZmipbdeUP5oWPqXT5eiox+Qt+LrdPKxh7W0VpnJnojiYAX7HLIBDgV4HKR
	 GKLxP+EEdAYNPp+BZaRMmvpcwXOlMojNNbiSayHD5wqdvMy54eWWO2AdaeKxwtwIHO
	 iAfnQV0Vcwz4w==
Date: Tue, 21 Oct 2025 18:58:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Baoquan He <bhe@redhat.com>
Cc: Barry Song <21cnbao@gmail.com>, linux-man@vger.kernel.org, 
	chrisl@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <3evdcgzys745r4lik6zhqxl2lutqwrulm7bvvswi45dyzrg272@arc4flg5hpoy>
References: <20251017123110.321638-1-bhe@redhat.com>
 <CAGsJ_4wqvrMw0rwDvciVN3JiQ=_5+30HpWNFz2pMHWNQBvDrwg@mail.gmail.com>
 <aPY0gHrlTKvF21PP@MiWiFi-R3L-srv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ofiqhi2y52577ay"
Content-Disposition: inline
In-Reply-To: <aPY0gHrlTKvF21PP@MiWiFi-R3L-srv>


--7ofiqhi2y52577ay
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Baoquan He <bhe@redhat.com>
Cc: Barry Song <21cnbao@gmail.com>, linux-man@vger.kernel.org, 
	chrisl@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <3evdcgzys745r4lik6zhqxl2lutqwrulm7bvvswi45dyzrg272@arc4flg5hpoy>
References: <20251017123110.321638-1-bhe@redhat.com>
 <CAGsJ_4wqvrMw0rwDvciVN3JiQ=_5+30HpWNFz2pMHWNQBvDrwg@mail.gmail.com>
 <aPY0gHrlTKvF21PP@MiWiFi-R3L-srv>
MIME-Version: 1.0
In-Reply-To: <aPY0gHrlTKvF21PP@MiWiFi-R3L-srv>

Hi Baoquan, Barry,

On Mon, Oct 20, 2025 at 09:09:20PM +0800, Baoquan He wrote:
> On 10/20/25 at 05:21pm, Barry Song wrote:
> > On Mon, Oct 20, 2025 at 6:56=E2=80=AFAM Baoquan He <bhe@redhat.com> wro=
te:
> > >
> > > This update the description about default priority value which is
> > > changed in kernel.
> >=20
> > Thanks for sending this. Would it be possible to include a reference to
> > the related commit =E2=80=94 for example, at least the commit subject? =
Also,
> > does the man page prefer using a link to the kernel patchset?
>=20
> I see a lot of discussion link is provided in man-pages commit log, and
> haven't seen a kernel commit. But I see kernel version is mentioned to
> mark since when the man page update is made. It's the first time I
> update man page, not sure what is better. Would love to hear suggestions
> to improve. Thanks.=20
>=20
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

Feel free to add as much information in the commit message as you want.
I'm always able to remove or edit something if I don't want it, but in
general, the more information you include, the better.  Thanks!


Have a lovely day!
Alex

>=20
>=20
> commit 8982bb673546d95b34f7c35be8cadd8091de2a25
> Author: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
> Date:   Tue Sep 9 16:13:57 2025 -0300
>=20
>     man/man2/sigaction.2: Update si_code list with Linux v6.16
>    =20
>     Update with missing si_code values from Linux v6.16's
>     "include/uapi/asm-generic/siginfo.h".
>    =20
>     Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
>     Message-ID: <20250909191357.44951-1-thiago.bauermann@linaro.org>
>     Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> >=20
> > >
> > > Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.=
com/
> > > Signed-off-by: Baoquan He <bhe@redhat.com>
> > > Cc: chrisl@kernel.org
> > > Cc: baohua@kernel.org
> > > Cc: alx@kernel.org
> > > ---
> > >  man/man2/swapon.2 | 5 ++---
> > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> > > index df5e8d8c7ec6..20e213827733 100644
> > > --- a/man/man2/swapon.2
> > > +++ b/man/man2/swapon.2
> > > @@ -60,9 +60,8 @@ These functions may be used only by a privileged pr=
ocess (one having the
> > >  capability).
> > >  .SS Priority
> > >  Each swap area has a priority, either high or low.
> > > -The default priority is low.
> > > -Within the low-priority areas,
> > > -newer areas are even lower priority than older areas.
> > > +The default priority is the lowest,
> > > +and all default areas share the same priority value, -1.
> >=20
> > Not sure what =E2=80=9Cdefault areas=E2=80=9D means.
> > maybe just the below?
> > "
> > Areas that are not assigned a priority will receive the default priorit=
y of -1.
> > "
>=20
> Sounds good to me. I will spin v3 to include the update. Thanks for the
> great suggesiton.
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--7ofiqhi2y52577ay
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj3u7IACgkQ64mZXMKQ
wqmhvg//SBhPzw9sO3jbL20J996OSJZPwhQ+Wzs4zybbl71b4x1gU9RE4lIUY3Nc
hW4QaRDfwlm01TkM2m2tLuZYTmxK1grOi18pm9pfIVTKxvefb4uvAsH+dAcgVH6R
BIuohwAXlZ5Zf2fLE8gfeIJtcOi9UjQgHOtSlOn5FUkr9miGZ6yHT4khXkO5pzjf
u+OlOOQOiBV2YeZfzsJGPjC/k1EOaUi7dLCia1TQpMNaL7580a789NFnUpubZTxU
J8IGM9miPbFIXovotk5q2HTcnsillgk1bOTTdScmn9j6zNVAQbup5wQ1QEWRdfxZ
ZBk+BWEAwTvAesi0WL0U0uSWmd4+usBHDNBYFTFRVsX7GlFgCeFj6tGpkbRTO7rl
Ah6OU1lXiliEfmT+CkM/BNmicV2KRI2l3ZcPQGw1IPFSjHXuJVAs4A2EdJ+SxpgX
oAnqenldH2Iser8YqxYL6qA7Rj8jcAxhV6TAsldclMfNCcgKAUZC7FlXFVrYsi3t
0THeZZRnkMa/4cgGuyaDlRGzGJ3TvMV9jUDWXlYwOScwBcU4vuGfBdGIij8eVqF7
Jm1tIgX2qZSZQQiStJd6RZiL2lSFZWR5bdt89ktD803/WCDVb072SbK9cXgcp7MP
uGKm48I/JwNP+cW+U7UUl5Li4ztZnJMMZRSbn53XVypVPodz4rQ=
=1OmK
-----END PGP SIGNATURE-----

--7ofiqhi2y52577ay--

