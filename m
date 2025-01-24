Return-Path: <linux-man+bounces-2289-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59106A1ADB9
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 01:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57625188E03A
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 00:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17934A04;
	Fri, 24 Jan 2025 00:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al+qOrym"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AF823A0
	for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 00:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737676840; cv=none; b=dvk/H8cl9r0+tysdnQbNZJLYGw4GTf7Fgeo7Kasdf4yJZ5vpC3r/PdNNJ8lNVe/4s7p4UZ53SirLgzCRY97VOKzAf/akT+F4/7YLGUVvl3LWRnFTHXDYS1l7yhwMzMOl5eZXVPVuQtn3sQU+fxaARSRNiwBl96nufYg4pu1bbpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737676840; c=relaxed/simple;
	bh=NN80bgZLI+iWTlBN9UIHTlq0/7gBbbPid2STDf9nlhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DtDiWkbJb91CkNzhulQae97EJg7n1KTdpy76/qUj/0eoNEuTsoDlCPcmGOi2x9BScHZPBneXix2XkKPxGoJVNKvbYHmX0VWN4LBGhN1HBT7164oEe+GEDkU0W99hSrLxubM5ZpUXj66+At9qnqjLWR3tp7klAbM0mvRip93FaEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al+qOrym; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 502A8C4CED3;
	Fri, 24 Jan 2025 00:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737676839;
	bh=NN80bgZLI+iWTlBN9UIHTlq0/7gBbbPid2STDf9nlhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=al+qOrymo4Lxh9uNgNYOiATh/agBQ4Fw7Z8RPHRgueZydD+QFYZ+UpaY9o963wl7r
	 5uTSC4xFR4Saoow720fES8dS0CKHbh1Nrcr3nVkI4actY9zchuJZwJJdPQqUsvBmFA
	 7/TnJY2u93jXlhQ8eImQn3NRpPJvaOX6/T2pJy7TP8Vj/3dxtGh7TElWVMP0NT89pu
	 r6DxWZ7rdtRH4gl8Cl8oKQcTuX7wnrkHwHatAbHDnNstkJGdzPsTpXulSA3e3WYuDg
	 jTlYs3WZ3XiJvw89o/sz31AvVG2/BdYYI2sVFTzP21TRLynkgjW9LCRNRJctpzxNsg
	 NCeYdcWDezK3Q==
Date: Fri, 24 Jan 2025 01:00:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.10 released
Message-ID: <54jducdvjlb3pk6zpk6sjyd7k7fqfyzbbnncsgcobj6wcejt6q@3atawpg7uaw5>
References: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
 <5879567.Si16P0KhqQ@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a5pruedqwxsrcglh"
Content-Disposition: inline
In-Reply-To: <5879567.Si16P0KhqQ@pip>


--a5pruedqwxsrcglh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.10 released
References: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
 <5879567.Si16P0KhqQ@pip>
MIME-Version: 1.0
In-Reply-To: <5879567.Si16P0KhqQ@pip>

Hi Deri!

On Thu, Jan 23, 2025 at 10:53:04PM +0000, Deri wrote:
> On Wednesday, 22 January 2025 22:26:48 GMT Alejandro Colomar wrote:
> > Gidday!
> >=20
> > I'm proud to announce:
> >=20
> >         man-pages-6.10 - manual pages for GNU/Linux
>=20
> Hi Alex,
>=20
> I have noticed in recent releases using a newer version of groff, the ove=
rview=20
> panel was getting double entries. Here's a patch to fix it.=20

Thanks a lot!  I think I saw them, but then forgot about it.  :)

I've pushed this patch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D39591713834b04707baebde59f78e71f1f3f3697>

And the book that I generate from the main branch at my server already
shows nicely:
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf>


Have a lovely night!
Alex

>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>=20
> diff --git a/share/mk/build/pdf/book/prepare.pl b/share/mk/build/pdf/book/
> prepare.pl
> index ef8c17b18..4620072ca 100755
> --- a/share/mk/build/pdf/book/prepare.pl
> +++ b/share/mk/build/pdf/book/prepare.pl
> @@ -184,7 +184,7 @@ sub BuildPage
>                                 # Add a level two bookmark. We don't set =
it in=20
> the TH macro since the name passed
>                                 # may be different from the filename, i.e=
=2E=20
> file =3D unimplemented.2, TH =3D UNIMPLEMENTED 2
> =20
> -                               print ".pdfbookmark -T $bkmark 2 $nm($sec=
)\n";
> +                               print ".pdfhref M -N $bkmark\n";
> =20
>                                 next;
>                         }
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>=20
> Cheers
>=20
> Deri
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--a5pruedqwxsrcglh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeS2DYACgkQnowa+77/
2zIwpBAAkiRPQxFdXlmaUDWb5zpolAKQ1rVtLzParDHL5p2HLOK9QZ0QNTEJD5Ek
y4PMTWmAt1rpIQFe8TqnCBNhlhCEq430m8qgBwIh5+gQCFLZ0Obq/wW9EH7zgV20
h0wI3rIS0fGExH6J6ros9f6E+FUJ4KHQkNmPcq+vLmkBuwsYH5LVmPHHKJjc4+ew
M9dAGuNIpBHgtEngan+pCQ117dsD6HnX8FwQ+NNwKtDXyeLEDEb3+GoWj1/Tqujr
X8cB+5P55gKAy/Keje2H1Pz3iyU/HM9aaUiubN81F1YS7/MyXtJVoMn22EEMZv7i
wFTnLeCgImG+XmnNnwm7xLgHx+ebrjhznr0oIjrw9LS6TULnUvKsZjoGxNhQeX71
ABVtUCWutyhPHbau1O6q5aq5df6xLlo8b0UY/ZQ9nbPlVrvAR7sG8trECKMrm7+F
MQ9IB9h7ChuwZxzixmw7umRiF3eYr7Vpa1PFGbGtCeq6pnXtSz9GUJKGI96biK3c
1Ck4513nasu2dGW1gpMzV7Hj6I5wRmUmweBQNXiR0MS5iqzlyEactFg4wVXIVyxh
U2SCTTZ9TZjyXb38OTR+ADceabVLThemwvsqpuOkV189gQ5haeLpDtRdMvtxzd7P
rBnXb5m9SbpeLo/9mNEtrbcjCo6nvlz6I5FQRm8NQ3kxxS2yhtI=
=2SvS
-----END PGP SIGNATURE-----

--a5pruedqwxsrcglh--

