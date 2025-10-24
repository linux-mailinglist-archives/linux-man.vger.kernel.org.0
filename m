Return-Path: <linux-man+bounces-4190-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 100FEC04E41
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 09:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E872C1A61B77
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 07:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3DF2F7AAF;
	Fri, 24 Oct 2025 07:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZxPhrV1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1552F7AAB
	for <linux-man@vger.kernel.org>; Fri, 24 Oct 2025 07:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292639; cv=none; b=ffKE24yuuWJOrHloRSdySkCSQ/793K/W/ywcsg32qJH8GX5oAf9nIqWASXS4hh42jQ6YbyaLT0vbhKT8XG1xxLOsl17MQc242OUmsCJwLh6PDs1gQHfxi28mRtOhHZtr0O9sU3EK0NZnRbo1+okZ4g518/fT9FfoauVyrWaxOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292639; c=relaxed/simple;
	bh=Wsovki1dSb1n9Rf3pF/vjNkA2Ez+3WbQOkVKSxn8CvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j+EfphedAvsWMYR3AStw6sPSrL+2w1qlEI2tVSP3dymIox8XsBNLzJKX1QGSdaRUT8TSUzo+ryWWPuaVsz8fXgNMw7HKFwgae1n4au+WmtrgU3ESbx5x68ezdNCVe2LNVtJXOm5rQMLtC4q76znDB4LS/CGgtWB1YbuxhJhs44w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZxPhrV1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47FF6C4CEF1;
	Fri, 24 Oct 2025 07:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761292638;
	bh=Wsovki1dSb1n9Rf3pF/vjNkA2Ez+3WbQOkVKSxn8CvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZxPhrV1/ZxaT/g3Mvm+KPz26Z9IXx+TQInmFYS3E+7eLuFIJBaLFNEz5RFxvh3jo
	 Z4Ky2CUzALKZvhLVht6n+uH5XdWcYi3t4IARwDif89HXiNy1tHFEVOWMAfryprexbt
	 rkfBB319AUhajfQdGaZmny79QujoWihBBrpFBtjwlYJjtOnLr/YmIKreypYk8kBJl1
	 VuQ4OYYmTg3Jc7ltj5YoBxRQTfZYF1HpriA74z7xTt7nSGfm7KMszxu/WuoFzvNFw6
	 1DVOx19unHw+vMppNncKVotTpk5N4yETKbXWmRDh008roq/XlULZuepIsDoWBFu/nb
	 y81Al8Wmh9j2Q==
Date: Fri, 24 Oct 2025 09:57:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Johannes Natter <office@dsp-crowd.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page bug - write()
Message-ID: <zdjwhqp3fiy3yzfyuqfrqt6e5f5n4qaywfhicul2c3trumgcxo@ldlojvk23slo>
References: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>
 <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
 <16e2a563-37db-438f-a6af-9e3c904fceea@dsp-crowd.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pmsmdoqtquw6gv63"
Content-Disposition: inline
In-Reply-To: <16e2a563-37db-438f-a6af-9e3c904fceea@dsp-crowd.com>


--pmsmdoqtquw6gv63
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Johannes Natter <office@dsp-crowd.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page bug - write()
Message-ID: <zdjwhqp3fiy3yzfyuqfrqt6e5f5n4qaywfhicul2c3trumgcxo@ldlojvk23slo>
References: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>
 <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
 <16e2a563-37db-438f-a6af-9e3c904fceea@dsp-crowd.com>
MIME-Version: 1.0
In-Reply-To: <16e2a563-37db-438f-a6af-9e3c904fceea@dsp-crowd.com>

Hi Joe,

On Fri, Oct 24, 2025 at 09:47:38AM +0200, Johannes Natter wrote:
> Hi Alex,
>=20
> ok.
>=20
> Shouldn't the function prototype be:
>=20
>        ssize_t write(int fd, const void buf[count], size_t count);

This isn't valid C, as you can't use 'count' before declaring it.

>=20
> instead of:
>=20
>        ssize_t write(size_t count;
>                      int fd, const void buf[count], size_t count);

This is equivalent to the previous prototype, except that this is valid
GNU C.

See the GNU C documentation:

	If you want to pass the array first and the length afterward,
	you can use a forward declaration in the parameter list=E2=80=94another
	GNU extension.

		struct entry
		tester (int len; char data[len][len], int len)
		{
		  /* =E2=80=A6 */
		}

	The =E2=80=98int len=E2=80=99 before the semicolon is a parameter forward
	declaration, and it serves the purpose of making the name len
	known when the declaration of data is parsed.

	Lists of parameter forward declarations are terminated by
	semicolons, and parameter forward declarations are separated
	within such lists by commas, just like in the regular list of
	parameter declarations.

	You can write any number of lists of parameter forward
	declaration, but using more than one is unnecessary.  The last
	semicolon is followed by the list of parameter declarations.
	Each parameter forward declaration must match a parameter
	declaration in parameter name and data type.  ISO C99 does not
	support parameter forward declarations.=20
>=20
> ?


Cheers,
Alex

>=20
> That's my question. Maybe I am overseeing something.
>=20
> lg, Joe
>=20
> On 24.10.25 09:39, Alejandro Colomar wrote:
> > On Fri, Oct 24, 2025 at 09:29:53AM +0200, Johannes Natter wrote:
> > > Hi,
> > >=20
> > > this seems to be a bug a Bug. Should be:
> > > ssize_t write(int fd, const void ...
> > Hi Joe,
> >=20
> > Please don't send images in unsigned email; I won't open them.
> > (I probably won't open images in signed email either, but there's at
> >   least a chance.)
> >=20
> > I assume the image contains something like this:
> >=20
> >         ssize_t write(size_t count;
> >                       int fd, const void buf[count], size_t count);
> >=20
> > That is correct (if we ignore the fact that arrays of void are
> > disallowed.
> >=20
> > 	alx@debian:~/tmp$ cat write.c
> > 	#include <sys/types.h>
> >=20
> > 	ssize_t my_write(size_t count;
> > 	    int fd, const char buf[count], size_t count);
> >=20
> > 	int
> > 	main(void)
> > 	{
> > 		char a[100] =3D "";
> >=20
> > 		my_write(1, a, 100);
> > 	}
> > 	alx@debian:~/tmp$ gcc -Wall -Wextra write.c
> > 	alx@debian:~/tmp$
> >=20
> > Documentation for that language feature is here:
> > <https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pmsmdoqtquw6gv63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj7MVMACgkQ64mZXMKQ
wqkzCw//TK6hzk/ubZOFVi+59pPBgeF3PNdMh58seBT6TyQxHFsuHLZr4AtWm8YD
qQcRriDrJsVbJ0jCAE7CShdX28hS/V3O3MGJizz7uZUX+cGRd7XruWduZvhJi1ld
6HvNQixNj5zD/mB52ThOCqyBUbIIDLlPjwfzkDRfLpP9xUDBCeZU0GyA9CY3wnax
xz1LAHcmApO0rF7t9eYU/mn/U37yxIpLfinUfr09fPjh1E1Vrl6S8zmixPhq5vv1
bldCJho+x3GPr2pd/Zu0Qk/7gjuXyG7M4eFyQazLd1IC9XbnTn20VEjDFtQwuTD8
B8AjaYxwRm817wgJMky/9f2VWaVM845tPprJpD8oLQtpfm49WOKdf2Hn9uZLZV0O
2wo0J+7+5kBmjlm7bY4eDY8pwvzggPZ14g9It1tJ7u2KbRr6t5UG8hnWN2YD5Qgl
Xiini70R9YutPzeysNahxzcEIG57QPKJj3arbGv7exH3Bsaf41kQf/CsFEyJvhll
FqNtD2OvUM8HY1lKpXFTarTw0iNqVi9OpD4/aWV7lN11Lgab9FoEVJb3WWMKU1ei
ClyW59F2o/ua2JGs8fTfx3K+Y3M6smuRtUCPV1l6um0Vf6rc2uukPsqtWMQxn7XY
k7ifRFMr7ljOsBgO57f/ujJXnUdyDwz0kAfYLp58bdoLhobW16A=
=Aa1Z
-----END PGP SIGNATURE-----

--pmsmdoqtquw6gv63--

