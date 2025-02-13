Return-Path: <linux-man+bounces-2437-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3F5A3451A
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 16:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC48E16C025
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 15:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48171AAA29;
	Thu, 13 Feb 2025 15:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIG+mD9P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ABB19E83E
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 15:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739458964; cv=none; b=JjdJf24TusavD2egD5+FR1BedABe+ACckkeKmznFBp8GQOn2galdN86Tga7VfTnxsXvSMLyLXZuwKKGugtcD+svu9vWaj5zQbAL6ZzA/UHkBc52J/WYI3Fb+/U8npd8HH6tvC49NVH+Cjp9KveXUmx4gIWeioNDvxz19DNqMCK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739458964; c=relaxed/simple;
	bh=Y4Iw3Rdn2kOhsauwaCUxtwXpCA9o/qFP07XDkr0G8i4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PSFfBehfgqVqGSfoSAhUOBFMx4s88rv+ttjcetCcJN5XV0rDa+vyMtL3+whiospmuqeE5A527afQxWT+L1rbRoYOFsC+qVqwbkoqGXcRLxvteGlGnmjTNt5JLV8kINSqsdSF383FsVURmIeY8U9DEXT71SMqDw/yDwavWhk9s/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIG+mD9P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44672C4CEE4;
	Thu, 13 Feb 2025 15:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739458964;
	bh=Y4Iw3Rdn2kOhsauwaCUxtwXpCA9o/qFP07XDkr0G8i4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FIG+mD9PNfnIb2Q7WYen2Y15WFEQDh1/5e56HPNjRBHeeSdX/hgFWS22fugCe5Kw8
	 aFWqAp8/UlRN7rauJDLcd20Z3Pk7iXxAVzVR2MbOZsTCRU630jgx/3hAfcovS2lRNd
	 JCD6r7JnXrDdKMLy61wnG64oZKul9Oq1T9pCtbcz2p3qrn5fZSjqcHH3GHldwKMDhu
	 ow9iEMrBaSZ4fGBMnFkzusO738GxC9gsXUc98xUvkqBRXssmh2s/H1WQSneISVDyPz
	 EqvwsYHLG40HYnpfW1EEP426qsAKbr9c+gagKZzrf8aHDOZ8Db1J0zq8lMBYm9q7Rn
	 hQPjvZyHxS50g==
Date: Thu, 13 Feb 2025 16:03:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
Message-ID: <dy4zsyyv2ftz52samghqeoxd7f7oaqy3saircc6oq7c5vyiotc@jmxqk5p74cwn>
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <20250213012107.urh4ndk4tnnzm3wx@illithid>
 <uaqgnws4f2l5hkmegjmh2kq4camhcvtaurgm6ym6kgqack5q4j@2mkwngs2krs2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bcy47ibz5dgioi3q"
Content-Disposition: inline
In-Reply-To: <uaqgnws4f2l5hkmegjmh2kq4camhcvtaurgm6ym6kgqack5q4j@2mkwngs2krs2>


--bcy47ibz5dgioi3q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <20250213012107.urh4ndk4tnnzm3wx@illithid>
 <uaqgnws4f2l5hkmegjmh2kq4camhcvtaurgm6ym6kgqack5q4j@2mkwngs2krs2>
MIME-Version: 1.0
In-Reply-To: <uaqgnws4f2l5hkmegjmh2kq4camhcvtaurgm6ym6kgqack5q4j@2mkwngs2krs2>

Hi,

On Thu, Feb 13, 2025 at 10:49:07AM +0100, Alejandro Colomar wrote:
> > > I sometimes wondered if I should run the Linux man-pages build system
> > > on the sources of Unix manual pages to generate an apocryphal PDF book
> > > of Volume 1 of the different Unix systems.  I never ended up doing so
> > > for fear of AT&T lawyers (or whoever owns the rights to their manuals
> > > today), but I find it would be useful.
> >=20
> > It's the kind of thing I've thought about doing.  :)
> >=20
> > If you do, I very much want to know if groff appears to misbehave.
>=20
> Hmmmmm, I guess I should do it.  I'll take some time, but I'll keep it
> in mind for things to do this year.  For some reason, I'm more busy now
> only doing free software, than when I had a regular job _and_ also did
> free software.  :|

I tried, and found some issue: the =3D(1) manual page messes with my
Makefiles (portable filename character set any?).  I could build a PDF
book of Unix V10 vol1 just removing that file.  I have asked help-make@
in case anyone has an idea to workaround this.

I also have some doubts, in case anyone know the answer:

	alx@devuan:~/Downloads/unix$ tar xf v10src.tar.bz2=20
	alx@devuan:~/Downloads/unix$ tree -d man/
	man/
	=E2=94=9C=E2=94=80=E2=94=80 adm
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man0
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man1
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man2
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man3
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man4
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man5
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man6
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man7
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man8
	=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 man9
	=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 tjunk
	=E2=94=9C=E2=94=80=E2=94=80 index
	=E2=94=9C=E2=94=80=E2=94=80 man0
	=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 tjunk
	=E2=94=9C=E2=94=80=E2=94=80 man1
	=E2=94=9C=E2=94=80=E2=94=80 man10
	=E2=94=9C=E2=94=80=E2=94=80 man2
	=E2=94=9C=E2=94=80=E2=94=80 man3
	=E2=94=9C=E2=94=80=E2=94=80 man4
	=E2=94=9C=E2=94=80=E2=94=80 man5
	=E2=94=9C=E2=94=80=E2=94=80 man6
	=E2=94=9C=E2=94=80=E2=94=80 man7
	=E2=94=9C=E2=94=80=E2=94=80 man8
	=E2=94=9C=E2=94=80=E2=94=80 man9
	=E2=94=9C=E2=94=80=E2=94=80 mana
	=E2=94=9C=E2=94=80=E2=94=80 manb
	=E2=94=9C=E2=94=80=E2=94=80 manw
	=E2=94=94=E2=94=80=E2=94=80 manx

	30 directories

What's the /man/adm/ directory?  And /man/man0/tjunk/?  Should I ignore
them?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--bcy47ibz5dgioi3q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeuCbMACgkQnowa+77/
2zIfMQ//S1aCnsxX9fgBH0WfYMvgJXhOc2xb4tlfO83gI8LXI3GUwRthe9siy0up
BS1TZAs9XIgDxb4B8l9VMPfxQeaSXl3buRn2yS8ePNoY5/vPTf+yQ+nakvS90g9s
UMMyCPwC+8q4Eob4Kh95GEyDO/pPtDHRFXOVDoeXnYOoisxpR6SU28s7zNBmKkFu
U+526tsXpo0hZXhz7ZkRHoEOxRdLcspCqKHkGkOLTx8vaM4/Im0ks0hIdGpBU4VF
9jAGzhrlCGlKO64w/8iD2a+vtqLMM2JuRYBhETeqNjmklsdZkGgD8DwzV13cG4Fc
UwRW9G1hZSU8qCab9K2pXaqgH7Jt9imGfs0+ksOA1imneNoSnMn2kUI3cPOkLZyV
zuwBvdImG0R29f347XkIWgvoihG3BqvEEirPyIGD3IlCCePN9gh1lXjBmf+j7db0
cvhRxTi04jDXz5Y0wvTH3j73lj6Fun/ixq2mPPCgawnzzB7sOc5i/3YlN9ZuV/5W
4mPpcy6AMKhjkJJW/JGMKukKFnMRb27UYxjqydBeEKoBV/su0kjgYcmoBx310MnH
X5cEGHaMt5hNizmTQeeTg4FSmk9cX8UOq/sj7Fh1VLxK5nz/Z96y/kzKuQxFSlGc
nhXhtsYxqDH1QBG3gNQ8ZWPT9bRoWeysFgGpYZyhnoKiELr8Jyk=
=OXE8
-----END PGP SIGNATURE-----

--bcy47ibz5dgioi3q--

