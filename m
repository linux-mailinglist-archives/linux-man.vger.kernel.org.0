Return-Path: <linux-man+bounces-1-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABF87E7EA2
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A05E21C20B36
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D69D38DD1;
	Fri, 10 Nov 2023 17:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6TrnLHz"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CCE219FE
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 181792A273
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 02:47:39 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BEDAC433C7;
	Fri, 10 Nov 2023 10:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699613258;
	bh=WkHeMebcCnIFJw4p8ywD8hBSo+D4r4RUqUuAnaQ76Uw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=r6TrnLHz2okYQJp02cGLbfAa1OvWl7P1aThsRDRmzoOVWnWMzVnQGqJnHuyq/QGlJ
	 GwO/zVwG4RQSg+oS0oAl4eBYBgX6yYsLpb5IVXKLT2zrZN20fYaikmBzW+kGpmoGS6
	 Lyje1r0uYhJa9EVO1Q9PJISYHmiXMHUwG1FruRG9nBAkgeD6JvxwPS7oK4LRqndTma
	 6i4MoEXB5CqOwE5sRbJAUGL7YRGKYuzErTmAcwGyEXd6JoQXIibb2vQ3yZ4D4XkG8l
	 vf2QvYF0fFr8tB0cEq3JY9ss2+9sxCzgDu3lOONHkYHqHHy/2gGd9a3aEb9fHBbgFA
	 evFPSJyfaAsNQ==
Date: Fri, 10 Nov 2023 11:47:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	Jonny Grant <jg@jguk.org>, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>, Xi Ruoyao <xry111@xry111.site>
Subject: Re: [PATCH v2 2/2] stpncpy.3, string.3, string_copying.7: Clarify
 that st[rp]ncpy() pad with null bytes
Message-ID: <ZU4KRaN9dKOPnnm7@debian>
References: <20231108221638.37101-2-alx@kernel.org>
 <20231109151947.11174-3-alx@kernel.org>
 <ZU3D9k-7A6WN17QD@dj3ntoo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="luhCgtrh5cDFQtV3"
Content-Disposition: inline
In-Reply-To: <ZU3D9k-7A6WN17QD@dj3ntoo>


--luhCgtrh5cDFQtV3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 11:47:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	Jonny Grant <jg@jguk.org>, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>, Xi Ruoyao <xry111@xry111.site>
Subject: Re: [PATCH v2 2/2] stpncpy.3, string.3, string_copying.7: Clarify
 that st[rp]ncpy() pad with null bytes

On Thu, Nov 09, 2023 at 11:47:34PM -0600, Oskari Pirhonen wrote:
> On Thu, Nov 09, 2023 at 16:20:39 +0100, Alejandro Colomar wrote:
> > The previous wording could be interpreted as if the nulls were already
> > in place.  Clarify that it's this function which pads with null bytes.
> >=20
> > Also, it copies "characters" from the src string.  That's a bit more
> > specific than copying "bytes", and makes it clearer that the terminating
> > null byte in src is not part of the copy.
> >=20
> > Suggested-by: Jonny Grant <jg@jguk.org>
> > Cc: DJ Delorie <dj@redhat.com>
> > Cc: Jonny Grant <jg@jguk.org>
> > Cc: Matthew House <mattlloydhouse@gmail.com>
> > Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> > Cc: Thorsten Kukuk <kukuk@suse.com>
> > Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
> > Cc: Zack Weinberg <zack@owlfolio.org>
> > Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Cc: Paul Eggert <eggert@cs.ucla.edu>
> > Cc: Xi Ruoyao <xry111@xry111.site>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >  man3/stpncpy.3        | 10 ++++++----
> >  man3/string.3         | 11 ++---------
> >  man7/string_copying.7 |  3 ++-
> >  3 files changed, 10 insertions(+), 14 deletions(-)
> >=20
>=20
> ... snip ...
>=20
> > diff --git a/man3/string.3 b/man3/string.3
> > index aba5efd2b..bd8b342a6 100644
> > --- a/man3/string.3
> > +++ b/man3/string.3
> > @@ -179,21 +179,14 @@ .SH SYNOPSIS
> >  .I n
> >  bytes to
> >  .IR dest .
> > -.SS Obsolete functions
>=20
> If you're removing this section ...
>=20
> >  .TP
> >  .nf
> >  .BI "char *strncpy(char " dest "[restrict ." n "], \
> >  const char " src "[restrict ." n ],
> >  .BI "       size_t " n );
> >  .fi
> > -Copy at most
> > -.I n
> > -bytes from string
> > -.I src
> > -to
> > -.IR dest ,
> > -returning a pointer to the start of
> > -.IR dest .
> > +Fill a fixed=E2=80=90width buffer with characters from a string
> > +and pad with null bytes.
>=20
> ... shouldn't you also move the rest of this up to keep it alphabetized?

Hi Oskari,

Sure!  I was trying to find a pattern in the order, but didn't see it
yesterday.  Thanks!  :)

Cheers,
Alex

>=20
> - Oskari



--=20
<https://www.alejandro-colomar.es/>

--luhCgtrh5cDFQtV3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOCkUACgkQnowa+77/
2zLzAA/+JuHY9Logzy7UKEezI5UEEPWjq8lotk7K9KG40DiD87HXUI5caqbnkQMj
syg4+uL+BaH65Ek/0QJoQjlg9SlnhNPkcdoP3UmQw/4hGqhXOZAIKoKzOh2975Rj
wmuxBAka+Tk/xMwHYbXJ1dlw23+d1zdTv+ma0sTIk1CwKwWqsMwyGTcvaX2SHx8A
BWQhGYxr2U80FSuHY4xtNtTl6ajRqClpqsmGomTl+kCLnxHtgOUUKjbPXSTki2cD
m3bMYLtCxQ86t3cUgeiH3TPS0aXqL4YoR6XenfXD8Qolq8IOoS6xfQQ2MSS+yCYt
mTusdVomrrVA5OufLo8JuvrOt/bZQ6FZYgqkZtGHucNgZZvxBnweGnNPuEG5pLD4
tEJurHmYmgRpln86emB2BNEWbK/ZxVQZASmQFHzL3eoSw2mVsc95IrC/Eo0Kx9U0
NRKDzsWUcdEOIB7/dHTClHVr8FrTRWcZto0kCGS+5yrGEQehas4RBDLMevuyeplz
QzgmWxWbvV9zzZ8YC/hKsx45lDaCIiC4Jghx6RYXBSxK4RN8sxV0zm6Hu9nKktT8
O+fNjXk6Y4s5DNU+R1DbjLCQQHnieMjD9HGE//uSmjNiub3NH9/p4Vf+FE6O8N3s
d7WpEN7zuKGheG+3OobuBBiOC4dn8YvaIbLDOOrkqfiHBIpMJuM=
=Elqx
-----END PGP SIGNATURE-----

--luhCgtrh5cDFQtV3--

