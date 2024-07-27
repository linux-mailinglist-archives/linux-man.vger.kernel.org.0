Return-Path: <linux-man+bounces-1537-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB5F93DDD9
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 10:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D53B91F21E04
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 08:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BDF38DF9;
	Sat, 27 Jul 2024 08:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzx2KZAg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8740C286A2
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 08:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722069889; cv=none; b=QZyEPwQ6tAlwRZSHRa0la/ScXOC/S9JBpMZmTJVCVdaoUi3xLM7WYYju9b1NvyDgyyNCYGIH9p/9M1KmN7ZBmAt6v2sj49u9NyLygzwoLe0vgeBqrQB+QR/qYn1Nzp7R5o6cZW8sW+zmHgHCC0INWpJfHQMhYmas0/4zQJWUea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722069889; c=relaxed/simple;
	bh=gvd91hqh7FUt41sp3+Jo8p1eEM5hNm8celSz0bv7uqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D0aiIKENlaWOLU3+QIfNe2EESSm1hepOWPYN+7Ggqfd+gqqHCB5ldw23xezpAEx7VPLtiWg7p17UGHZF4Wm6gwp2kRZR7575ClcUS4nsc0ElWWtJ14LbDfj1YWviIlsiy2/KL1Jczgu2uHrTp/Ho48xfmEYjA70iK/ZFJrHmLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzx2KZAg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B112C32781;
	Sat, 27 Jul 2024 08:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722069889;
	bh=gvd91hqh7FUt41sp3+Jo8p1eEM5hNm8celSz0bv7uqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tzx2KZAgHlQcvW6CH/ADpnjJJU1L3rOaJIK7no70CG+jiV28o/6qWfjxYBbUcd8pW
	 j61HrgxPD458p7jkXJLoGf9MIx/lcICY4WBRJmIlsBdsfTMhAgpGvaMsksAG5fqRyI
	 xlpcH1EPJUb7DoHW2Blf0jKSU15naAm2NSHXg6H+oJ4UwflHO9tIQzpQXWebq62a3n
	 MRd2aCrsYr3RVckyTYXS4vKKo3IvCO6R57G36cnswE4Cjg3fzwaTxNHQzANvSSLRCO
	 HmH4Ji0j6ZVDlerD7yyNqznEkh0UnOtAtd/AXknZZYywuEtWMUaM0mbt5UjA4+MEjE
	 kEnmbMvXRMAng==
Date: Sat, 27 Jul 2024 10:44:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <7hnwn7z52k432rz56votyi7otanrpmfm4g3wtlzjmjio6gymu5@7xnrpkilp7h4>
References: <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
 <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
 <rep4dolvep7xx77tirmdknhci5ogliqj44ufngop5b3xjjacoc@2azllzbk3lpw>
 <aec126f0d4ee775b78accdbd14d35a5266cde3c8.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kp4lu4pweolumkzq"
Content-Disposition: inline
In-Reply-To: <aec126f0d4ee775b78accdbd14d35a5266cde3c8.camel@gwdg.de>


--kp4lu4pweolumkzq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
References: <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
 <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
 <rep4dolvep7xx77tirmdknhci5ogliqj44ufngop5b3xjjacoc@2azllzbk3lpw>
 <aec126f0d4ee775b78accdbd14d35a5266cde3c8.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <aec126f0d4ee775b78accdbd14d35a5266cde3c8.camel@gwdg.de>

Hi Martin,

On Sat, Jul 27, 2024 at 12:59:34AM GMT, Martin Uecker wrote:
> Am Samstag, dem 27.07.2024 um 00:26 +0200 schrieb Alejandro Colomar:
> > On Sat, Jul 27, 2024 at 12:03:20AM GMT, Martin Uecker wrote:
> > > > Maybe if GNU C compilers (GCC and Clang) add it first as an extensi=
on,
> > > > adding diagnostics, it would help.
> > >=20
> > > Both GCC and Clang already have such diagnostics and/or run-time chec=
ks:
> > >=20
> > > https://godbolt.org/z/MPnxqb9h7
> >=20
> > Hi Martin,
> >=20
> > I guess that's prior art enough to make this UB in ISO C.  Is there any
> > paper for this already?  Does any of your paper cover that?  Should I
> > prepare one?
> >=20
>=20
> What do you mean by "this"?

Adding UB.

>  Adding UB would likely see a lot
> of opposition,

But UB allows for safer code.  It's the lack of UB what reduces the
quality of diagnostics, which results in worse code.  I understand it
will see opposition, so we better wait for the path to be prepared
(i.e., n2906 already merged before presenting a paper), but once that's
done, I'd try to add UB.

> even where this could enable run-time checks. =20

(And build-time too.)

> N2906 would make=20
>=20
> int foo(char f[4]);
> int foo(char f[5]);
>=20
> a constraint violation (although having those types be incompatible
> could also cause UB indirectly, this would not be its main effect).
>=20
> So I think brining a new version of this paper forward would be
> a possible next step, addressing the issues raised in the past.

Yeah, that would be a good next step.  And when the array type is part
of the function type, it'll be easier to convince that [n] can only mean
[n].

Have a lovely day!
Alex

> Martin
>=20

--=20
<https://www.alejandro-colomar.es/>

--kp4lu4pweolumkzq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaks3UACgkQnowa+77/
2zJRUw//fPKVzOBrlmECUBoW5q/Az9v06MY9eWsEp4G+kXjNs6hDzjh/IzmhY/sL
Qa4Z0fimPCvkI0+/cX0Hq8pZTlVCl+ZAjT/fYDYSFncnTugzDZHjOZUz00yXLmMM
W0egn9sVJgPQDKK5idAMSQx+taDToF8iNGePKapB6nmI2WPe3uHGfwS2iVgy2pfV
aT9u1RatLH1FBQ4kmokbN+b7q0ss3nOJM9v6qF8HKAfnAxp8YZWT7abTr/7w+7vp
3nRDjSTYSXUGlWrE9mHmw4ukg2HS7D6MKsaKZajxIo3U1px2yJMpRs9YLeeFvvNt
It/yqI5ypV4UmezWQzqZ/2JnIN/qyx14J9qg8zCYKVujI0k0V8qcqNqTy4OWduUZ
7ElWTooSIFihxjcqefeCKq2Yga+yIxqsvP9KBx2OPVBM51dYY5avP4gtBl4fmS+T
1yadphRa8/B4obioQ+WgRvI1Mb2aj/eaOXcZvSWSRxvYBpfv1sS6aFPI4Xw+zJEH
nRY+fFXOhawRWz5oJGOnxa/Vx0Lj65ngTXrhpZxHCkqO9YgDEjL1VK9EMJERs3Z0
7+ZiqeHjAc2Nm632xE7YF+4UN4DlWIXl2yEjQDTTIrIXeALN126fTvOgK32tyEmF
uFNoxILwt2jSaszkZLk6yzb/arMi/f75Kq6kWP79y8Gzr3aQbQc=
=uzMf
-----END PGP SIGNATURE-----

--kp4lu4pweolumkzq--

