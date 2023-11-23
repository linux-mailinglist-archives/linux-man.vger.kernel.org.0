Return-Path: <linux-man+bounces-157-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DEA7F68D5
	for <lists+linux-man@lfdr.de>; Thu, 23 Nov 2023 23:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB535B20E2D
	for <lists+linux-man@lfdr.de>; Thu, 23 Nov 2023 22:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315B11401C;
	Thu, 23 Nov 2023 22:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mr5g9OIF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69D83FB26
	for <linux-man@vger.kernel.org>; Thu, 23 Nov 2023 22:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82F2AC433CA;
	Thu, 23 Nov 2023 22:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700777569;
	bh=S+UQXE8ZQqvA8ntT4uSfBxKFCZWg1EC18qu8GTukErA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mr5g9OIFjEH0iT46k0veX7sYA/N4rvmWIC3NW3QvuoGe4DwWTZpexdEle2Cplsqqs
	 MiorPkQP8/fjQj2DY0ReO75oBmPU1+saBr0o4eBeNYkvnB/stQ8/G/0doh4TUCS/2q
	 eeFPT3StwjYhMXUNzcdCihtCaWiOCNqvmcOAhIse4Kl1/FZxaddvJhs6rlUXyJeL63
	 +qKPtb45USPdvCpCY8WRUWX4hbyQbYyIt4I+SokON2X8qNpJTZtl0sIEollfGzpOhU
	 HyFmPcgRTHLQiwvV7D4Nr3gcrmrmvv4aXjD3fL5plQle64ne8QMLUo5AfoTZ4lJ1Al
	 +plZEl6Oq3teg==
Date: Thu, 23 Nov 2023 23:12:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZV_OXhw7V6Vk1HBR@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <2818350.Jt13fLt2Sg@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E+k7YwdbvF3bGa6b"
Content-Disposition: inline
In-Reply-To: <2818350.Jt13fLt2Sg@pip>


--E+k7YwdbvF3bGa6b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Nov 2023 23:12:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

Hi Deri,

On Thu, Nov 23, 2023 at 06:41:14PM +0000, Deri wrote:
> Hi Alex,
>=20
> It looks fine, although you have to run the code in=20
> "prepare_linux_man_book.pl" twice (to avoid using a temporary file).

Yep.  I was wondering if we could change something in the design of
prepare_linux_man_book.pl so that it could be run once without needing
a temporary file.  Maybe if it could insert something in the pages that
the latter troff(1) would process in one take, without having to put all
the bookmarks at the start of the file.  That would be an important
simplification of the scripts, and probably also an optimization.

> If you=20
> are going to run preconv it is best to run it first - stops pic spitting =
out=20
> loads of warnings.

Thanks!  Makes sense.

> You also dropped one stage in second pass, no pic in the=20
> pipeline. This may explain part of the speedup you observed. I don't know=
 if=20
> any of your man pages require pic but they could in the future. The chang=
es I=20
> would advise are:-

Thanks!  I've applied those changes; will push in a moment.  The speedup
is still the same; probably because pic(1)'s throughput is faster than
the consumers of its output, and its latency is negligible.  Since it
doesn't slow down, I've added it, just in case we want to use pic(1) in
some page in the future, as you say.

Cheers,
Alex

>=20
> --- a/scripts/LinuxManBook/build_linux_man_book.sh
> +++ b/scripts/LinuxManBook/build_linux_man_book.sh
> @@ -4,8 +4,8 @@
> =20
>  (
>         "$(dirname "$0")"/prepare_linux_man_book.pl "$1" \
> -       | pic \
>         | preconv \
> +       | pic \
>         | tbl \
>         | eqn -Tpdf \
>         | troff -Tpdf -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 \
> @@ -16,6 +16,7 @@
>         "$(dirname "$0")"/prepare_linux_man_book.pl "$1";
>  ) \
>  | preconv \
> +| pic \
>  | tbl \
>  | eqn -Tpdf \
>  | (
>=20
> Cheers
>=20
> Deri
>=20
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--E+k7YwdbvF3bGa6b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVfzl4ACgkQnowa+77/
2zJ0+RAAn+5fHfBMI6DEfQnTNLNOqyz5WRw99OD6KnH9J/bdAnAXvEbY+Qq7zLa+
5uUve9HH4417i9GHdLUNfyT4fqTVdO8h2pmXunu1mNDB331M7GMbjF2dQ7aDrsZQ
kYF/uCltErlO5kVnt47qT8GCOf7jRH3yDLMTPuvb8PGDlyP1iz1Za5idoqU1tsXu
nByVdd5uR0lVrn83WHJls2gGOFiDet6M/CyW94UOmkzwp0/dxGQD/Op77oADMuS3
J/KjNuJnPUyRbJHerpWGwhjpMZ598JbDjXpsRcHvtGGboQPST2KwoS1ZHMGc+eQU
c1Y6vfl1ojDyVRJHGsKV9Q/Yd2OnSxCSkI65lMGiRap5LHjHS0bWuPvA9cOFIUUB
QOjZ3BbjqFV0jEp4b5fAPDyvq9yt0B9EIB0K8u6NSXgtLpvzS4X/jRS60NNlooER
B+Qmq0Ll4Dp5AV+wJ3mYF80YSiYnn4xa+i3Q2IjHjTaDbZJHYs1ZJymi/3gMv81R
6bu8G3lQHKyLK4PcGOBNCurDrY7C1LdmoJP19qRQ8cZOtB6Fqxu43GtqjjCEKjkM
lzmvgl6EQjcETXFKj3BE9nT+1O25rL3cJoa9TziU42tLfVK7QQmWhkXx1PEuk2e/
8Tpgr6EteS++HTPNtyGHsCn000tokyrP25Zf4DOUmF7aVszCIHE=
=2YJu
-----END PGP SIGNATURE-----

--E+k7YwdbvF3bGa6b--

