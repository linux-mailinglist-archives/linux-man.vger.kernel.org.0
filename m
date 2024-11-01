Return-Path: <linux-man+bounces-1820-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE849B9919
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 21:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA7E8282A00
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 20:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350341C7287;
	Fri,  1 Nov 2024 20:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdlu2oXw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82E9168DA
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 20:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730491291; cv=none; b=HROMxFN2BPvIYXLoqGsUpTgL/hWFIISZecLLh3iNVjQz/DHMTiUUPaEQUOovn6EhktixM5Me6on5VKr9SUI57N6mz+zvVs6YEJmu9nKASIN44dFKSZHl4wQGur+9xqvzKicOibJyIwDOSjHVzyqlMKOK0TazuLH7BIICvklZx2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730491291; c=relaxed/simple;
	bh=owToXLTrG1Ve7+bEmae8qEho82WfSDRFCz1FRYIEkAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MI0rCL9WqAVDNVmESteSVlsvIoLv4jcyTe1ziqBDgngwwh+c4fTyLkH2bGrY0D5L1ZnSCC7PZzM75z54tmJ1iaM0GX+5Y3oq0VsGzJ2dI7Pq/TK7z+UuFoWy9Jw0N6CVfe/vm598b2ZPtq+orS0928OzfDjWShZ7UpZLKvNqTK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdlu2oXw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28B9EC4CECD;
	Fri,  1 Nov 2024 20:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730491290;
	bh=owToXLTrG1Ve7+bEmae8qEho82WfSDRFCz1FRYIEkAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tdlu2oXwwtU2RafzsbXY9Jfvl62jCoXGnnBbHiz3Q8uQF0UqEYKp010TY0FAIoNyQ
	 u8Iz0iZ54TpDR29GpQLaDic3PDAFe8JNSsslzXHvkiHckF1wg7OhgZPIuAOkGOrdWR
	 953aurdA1LBcatEir5D21dXVRSCcVQ/MmFgQrCx+CLQEhVY6Yn2HB18sm2DRW3gxh5
	 7jK4K46s74sfdaiUaDeZ0/ZGbCeJ72JzsnXitMguGRQ8oFi8g7g3zKSpx0OeqSCArK
	 15N7VY84NpJ/RUgxj9kqh5DxVqlHrljsZ14DnfFnPqzxPuwOOryvrzYaXAGLjfuazR
	 mzpHJqAajtIdQ==
Date: Fri, 1 Nov 2024 21:01:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
Message-ID: <20241101200126.a37hkoylwwlmhdnh@devuan>
References: <863308.1724581040@archlinux>
 <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv>
 <864874.1724585353@archlinux>
 <20241101134653.3vwbgzk3ffegckzh@devuan>
 <76180.1730483827@archlinux>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k7pelffys3puevhk"
Content-Disposition: inline
In-Reply-To: <76180.1730483827@archlinux>


--k7pelffys3puevhk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: getaddrinfo_a man page: add notification example?
MIME-Version: 1.0

Hi Greg,

On Fri, Nov 01, 2024 at 10:57:07AM -0700, Greg Minshall wrote:
> hi, Alejandro,
>=20
> thanks for the e-mail and code inspection.
>=20
> > > static char notification =3D 'n';
> >=20
> > Would it be better to use an enum instead of comments?
> >=20
> > 	enum {
> > 		NOTIFICATION_NONE =3D 'n',
> > 		NOTIFICATION_SIGNAL =3D 's',
> > 		NOTIFICATION_CALLBACK =3D 'c'
> > 	};
>=20
> that works.  i like that, by initializing the tags with, e.g., " =3D 'n'",
> i can still use the user's input to set values, without needing some
> sort of a lookup.
>=20
> : echo -ne 'n signal\na example.com\nw 0' | ./manpage-like-gai
>=20
>=20
> > >     if (buf[strlen(buf) - 1] =3D=3D '\n')
> > >         buf[strlen(buf) - 1] =3D 0;
> >=20
> > If the string does not contain a newline, it probably means something is
> > wrong.  Returning as if all were good is probably not a good idea.
>=20
> here i'm thinking of the case where the program gets its input via a
> pipe, which may present an EOF without a trailing newline.  i'll be
> to follow your guidance here.

For serious programs, I prefer being POSIXly pedantic and reporting an
error for such files.

For an example program, for simplicity, we can do this:

	stpcpy(strchrnul(buf, '\n'), "");

If removes the conditional, has less moving parts (no '-1'; and thus
less error-prone), and is protected by _FORTIFY_SOURCE.

>=20
>=20
> > >     static struct sigevent senull; /* static, so initialized to zero =
*/
> > >     static struct sigaction sanull; /* static, so intitialized to zer=
o */
> >=20
> > These comments are redundant.  Please remove them.  Maybe add a blank
> > line between static variables and automatic ones to make it more
> > evident.
>=20
> sure, thanks.
>=20
>=20
> > > /* List all requests. */
> > > static void
> > > list_requests(void)
> > > {
> > >     int ret;
> > >     char host[NI_MAXHOST];
> > >     struct addrinfo *res;
> > >=20
> > >     for (size_t i =3D 0; i < nreqs; i++) {
> > >         printf("[%02zu] %s: ", i, reqs[i]->ar_name);
> > >         ret =3D gai_error(reqs[i]);
> > >=20
> > >         if (!ret) {
> > >             res =3D reqs[i]->ar_result;
> > >=20
> > >             ret =3D getnameinfo(res->ai_addr, res->ai_addrlen,
> > >                               host, sizeof(host),
> > >                               NULL, 0, NI_NUMERICHOST);
> > >             if (ret) {
> > >                 fprintf(stderr, "getnameinfo() failed: %s\n",
> > >                         gai_strerror(ret));
> > >                 exit(EXIT_FAILURE);
> > >             }
> > >             puts(host);
> > >         } else {
> > >             puts(gai_strerror(ret));
> >=20
> > If you invert the conditional, you can add a continue after this, and
> > unindent the non-error code.
>=20
> that seems nice.  i think i didn't touch this code, but let me know if
> you'd like me to add this to my submission.

Hmmm, if you've copied this from existing code, we can keep it like that
and change it in a different commit.

Have a lovely night!
Alex

>=20
>=20
> again, thanks.
>=20
> cheers, Greg
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--k7pelffys3puevhk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmclM5YACgkQnowa+77/
2zL09RAAkokkzCRtg4hOFsP9VsOFvaJ0phhcIMkQdBZi93YdVIq+JIl1/q0utIKX
mDdIORXhz62jq2WG3mO6rzAYzXIvzNwYCPBfDpCa73hgXEwOA6noechzJxXufZET
SRg4Xv3aAWuZEGxAsJI30zKCBHd59kpeIHhnGY2aqrr4NaEi9mAIRJXV53HBuqUP
8poGl0Y8kxacSVTuaHR6nGMl/v0EC/aiuWX38qa/F1rPPFCK/f2CP1S6hYqHYAHJ
l5KBbG58vUAd0KBFDef7+FVG8yPbVhb6RyoEXMkboLb0JUbiEj2BN7Mn82ypkr03
hcXkrVAkqS/GabsTzRL6LEtCO9onoVQjsxa4bwE3dgBBz9w9Tne12WnKU8zWOeBE
lYul8nmZyQR2goABLPmtk4kdHDVYNWi+bYkv87X6lB9yBoMHPOxCo/XzSTMhzzCc
/pwCOCXfFriIMZdj1uF7hN8QmnKtp5oCSV5SxGsJ5XfynK88FJNecgmsWQCyB2PJ
bUWxc73UIjPEZ+LSMxQk3uRNx30CsYXXoVZslKgkyU1QNoCUMQOrgKsiE1JZHAI7
yk6QM6W7ZTX/AOI9PM7lYhvUrMtFTfdz4w8rIMbl30ELhKJHzpULB3NsrYhNwboe
yCnZdcZMZniO0U7oqr1Ut+R799GKYAkM0zjsniU7EBwgQdPwW9s=
=XCtH
-----END PGP SIGNATURE-----

--k7pelffys3puevhk--

