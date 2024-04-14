Return-Path: <linux-man+bounces-746-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9553F8A4211
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 13:41:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EE121C20956
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 11:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCBD02BD0F;
	Sun, 14 Apr 2024 11:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daiBT7x7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3BE23B1
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 11:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713094888; cv=none; b=EsPrlcx+6+3O6lSRGF+qVUW4T5FdN7aC6EVZ9J8lCa7wKW31VKsUYqfKhpuy9nL0bzAIM9GC/1GDfGx8+F19zLV4qdBXIQAnrH3ctA819IUDtGO43s5Pu6mWtzihBJbns+tu1QllivMi2RIlS/W2Qk1EJDyGEeEo+dssR8jdtHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713094888; c=relaxed/simple;
	bh=xb4312HXufXN42qrVYzOGwQ+ud0c5c4S4SsuisyGkDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tqBlWUyOpEgJXusRuz2TcCsNgObXP1TZY1GSXMDOm1d79gyOFoCPmwYD9dPf7H/wrffX3UgA/W72WegTw6hTTYdIC0+t3u6WL9LQt9Y0dXlxq+BJAR7GqO0Y2MBZf31HMrMpMGpX8ltgY0FdXmKrv4MlRJUEuCTrWOxLd/+AMWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daiBT7x7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48AE3C072AA;
	Sun, 14 Apr 2024 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713094888;
	bh=xb4312HXufXN42qrVYzOGwQ+ud0c5c4S4SsuisyGkDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=daiBT7x7H1vMDs8AgI/GvwKUnPiW1zo11OSlT8qaJ2O5KdLSi92Z7jZyMIBk5TbSj
	 v3bQ2TWQOfx5nvI+Ej6jwUx3DbRkzFAO2MPStOTsGw5NSlM3WHRYCoqbawFngXkXGJ
	 yYg+jODnc1gbE56RWyK11NbDseuzxYPVcbqSI7gKEVmWPrr3jJJcQgVnwHKhofd1sf
	 2JA/+va6mfudqrtB6Od/IpXbTNECY2YvBYbah/yaUX3B00RIXPrJILnzthEiunzvdc
	 vqe1pwCfZKz0Q22GFXYoDZbK6IrVUVUbCWaQgso8epUf3gCp9YnPnSYPlJN9f0uQx/
	 HfGEqucFCJZxw==
Date: Sun, 14 Apr 2024 13:41:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhvA5QR1xg4BEWvI@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oNs94EDlpNjv97mQ"
Content-Disposition: inline
In-Reply-To: <Zhu_-FE5sl3vSu1w@debian>


--oNs94EDlpNjv97mQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 13:41:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

On Sun, Apr 14, 2024 at 01:37:15PM +0200, Alejandro Colomar wrote:
> Hi Deri,
>=20
> Since the conversation in groff's bug report was getting off-topic, I'm
> opening this email thread.
>=20
> The makefile target was recently renamed from build-book to
> build-pdf-book (for consistency reasons).
>=20
> I also reorganized the files to put them inside the build system.  Here
> are now the files most relevant for generating the book:
>=20
> 	$ find \
> 		share/mk/configure/build-depends/texlive-fonts-extra/ \
> 		share/mk/build/fonts/ \
> 		share/mk/build/pdf/book/ \
> 		-type f;
> 	share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
> 	share/mk/build/fonts/_.mk
> 	share/mk/build/fonts/TINOR
> 	share/mk/build/fonts/tinos.mk
> 	share/mk/build/pdf/book/_.mk
> 	share/mk/build/pdf/book/prepare.pl
> 	share/mk/build/pdf/book/front.roff
> 	share/mk/build/pdf/book/an.tmac

Another thing I want to do, as mentioned in the groff bug, is to remove
our an.tmac.  Is there any change we can use a minimal definition that
we can cat(1) to the system an.tmac?  Or maybe instead of cat(1)ing it,
tell groff(1) to use our definition in addition to -man.

>=20
> I removed the Tinos.pfa file, since now I generate it at build time
> from the Tinos.pfb file (installed with Debian's texlive-fonts-extra).
>=20
> Either the reorganization, or the generation of the font results in a
> new warning:
>=20
> troff:<standard input>:1649: error: cannot load font 'TINOR' to mark it a=
s special
>=20
> Since I didn't notice any changes in the PDF visually, and I removed a
> gigantic binary file, I proceeded with it, even with the new warning.
> It would be great if we can do something similar to get rid of the TINOR
> file, and generate it at build time.
> I would also like to do the same with the Unifont font, which I haven't
> yet added because I hate adding gigantic binary files to the repo.
>=20
> There's also the page issue.  Now it seems to reset the page number for
> every TH.
>=20
> Have a lovely day!
> Alex

--=20
<https://www.alejandro-colomar.es/>

--oNs94EDlpNjv97mQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYbwOQACgkQnowa+77/
2zJIbhAAnqy2G7ikscG3CV+7CKp0BDP0Ni1aaH71adt43RN/D/8cF+p9j5mPt9FF
7+Jz7/FrFjWGbyoCGWr96xKSV2MJjEvOeVUNBIAaRFmJYs7NZPs294MX2AquiPWk
WvlSwFH++2CU67Tw0k6SzVwGY1GFTrQ0sCQpDsapHiwk9Ays2Y5pQwVrLlaN6yYY
xlYATVwIMEmFW4X0Dlg5YNR+aChYhQKL6DLech98xGe0gzKQ2zYVrGh7EPRSjZqZ
SxbI7P4tGAZuNNbB4KwAUnPt9cIArCFoodZXXfnA5yzkfk8mOei7C+ZrHvSidLE7
5+3h29DpTuy+rJCW8DxgeECZXo3lv8yeM07IK+dGvo9sIT4goO6E1O5h3fcPVpNJ
K7OnG4CpW1x2I02w2XM4z9tnIiW2EXzGclWbljYAlM+YsqlOcvqtDZSBogAgjAEZ
bjyzNVhghDX01yrTRBD0aIRQBaMO+3TADo9EDvSTXEHWwuUT+iqdQVrnhK/+L1DF
by0hYbP6/bNbxFTYoCX4zNT0Ff27svHpQ5c9qtvTr4tWD62ySAtjR3HasOsrk9Ln
MVckKOyGXM8EzX4PUPA5ZAReiqrM1lJxjxQCe6l2ZHunvDyYiVbMPdFnbVbcvIeN
5otHyPgNRIvWR3bAQRwun9Wkv2zTxMtdSnuGZ3P1SWUzPLqlQSU=
=3dmc
-----END PGP SIGNATURE-----

--oNs94EDlpNjv97mQ--

