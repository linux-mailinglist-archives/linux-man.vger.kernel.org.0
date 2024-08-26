Return-Path: <linux-man+bounces-1703-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 195BE95ED06
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 11:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4515C1C21774
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 09:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0B412C489;
	Mon, 26 Aug 2024 09:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh1e2xF5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4B62F34
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 09:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724664191; cv=none; b=JAIVo8wT5vxs7CnsevgpVbA8q+FeLp50z6+mk48wHk3dlrxjSgj7sHQB1RB20NVVVtQRwM5iMAKzgphhkvoP/+Jy7Hm9iSD8YjOiBlOJkyJcv4ggmCcN7p2kGZ/6pOhTE9C5GRCB/yBF7f/hM3IhAxN03g5j9c5YT0KEj7nOTvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724664191; c=relaxed/simple;
	bh=K0a+sH2M5Hk/BZTklARmNhinYV1/AGl16PxujYMIPRQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RTWyN5w+++ZNieMwxWQF06gUU0bH0Awqtzskj06YfzsIwWLfawvjV1tDJEtCWq+l2s/lqglvfzocpxng8OjwCms2WEOVfEvy5dOGT7xbLNqUQdmeyTCBPI5yNE/7lXRsOVI+DXi7TeDFbVd56/7QTgPYbcyElCtaxgplY+97BJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh1e2xF5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BAFDC4FE09;
	Mon, 26 Aug 2024 09:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724664191;
	bh=K0a+sH2M5Hk/BZTklARmNhinYV1/AGl16PxujYMIPRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xh1e2xF58OG6jgzOe7rpI6xBhZWlR1JIQJ8Iwykbg+K16dQh0bjRzTfjINOO+m8XL
	 fPBw3V/I4A6kileBJhR3SEMl0bpFVQG1mU7iL4uCUWjTYVWH6yO/FDKU3mgS2MHSi5
	 xSPbIQd3GuigQzBECYxzJ/R7zLGwtgFjFflLhoxkXZxLiTWlY1OSjSDZIHFslFFG0d
	 eRmOgZswaBp33U5zsovKOXTq6ZTZicPZL/3kFL6YqYDEb42EKq01HDSlpThgfwQSyv
	 T6WinoAOSdWm6CAWEpT0gT63Ju2GBNfq04eLX2bTVKes2kz3GtHa6ZvLrJHRr+EWqD
	 JIBHVlQkmv6yg==
Date: Mon, 26 Aug 2024 11:23:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
Message-ID: <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s2lhrxlsr2yzrozt"
Content-Disposition: inline
In-Reply-To: <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>


--s2lhrxlsr2yzrozt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>

Hi Absee,

On Mon, Aug 26, 2024 at 07:40:37AM GMT, Absee Seeab wrote:
> Hi.
> Not sure I have an idea for an example program.
>=20
> As for a paragraph documenting it, here is a patch of one suggestion,
> though feel free to modify it or change it as needed.

Maybe write a program that demonstrates that the statement is true
without having to look at the kernel source?  That will probably serve
for the EXAMPLES section.  :)

Have a lovely day!
Alex

>=20
> --- splice.2    2024-08-26 07:39:07.553952939 +0300
> +++ splice.2        2024-08-26 07:38:36.503953192 +0300
> @@ -63,7 +63,9 @@
>  .IR fd_in ;
>  in this case, the file offset of
>  .I fd_in
> -is not changed.
> +is not changed, and the offset pointed to by
> +.I off_in
> +is adjusted appropriately instead..
>  .P
>  Analogous statements apply for
>  .I fd_out
>=20
> On Sun, Aug 25, 2024 at 12:08=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hello Absee,
> >
> > On Sun, Aug 25, 2024 at 07:22:43AM GMT, Absee Seeab wrote:
> > > Hello,
> > >
> > > The splice(2) manpage (at least the version at man7.org) does not
> > > specify that off_in/off_out are written to after the operation.
> > >
> > > This, however, is done by the kernel (observed both by behaviour and
> > > source code).
> > >
> > > Plus I see similar functions (like copy_file_range and send_file) do
> > > document this fact, but splice does not, so it seems like a
> > > documentation omission.
> > >
> > > (This caused me a bit of a debugging headache today)
> >
> > Would you mind adding an example program to that page, and also some
> > paragraph that documents that?
> >
> > Cheers,
> > Alex
> >
> > >
> > > Thanks
> > >
> >
> > --
> > <https://www.alejandro-colomar.es/>
>=20

--=20
<https://www.alejandro-colomar.es/>

--s2lhrxlsr2yzrozt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbMSXwACgkQnowa+77/
2zLa3RAApc4uK8ixoL8ahoC9a9QHinnKZuHn13xfZLhtOBMroyEJu7eOw/EpYaRI
vrzBF8ZYoBr2qMprpyLA9XfXYZSbIALabnbwt/umN7+2uHdAUIn3ShCD9n14QPRC
Od5AOCvO7AU5lEkPMO0G6HKShREhiWlDp5sAhLT2nza9NLXr2T5AlqzWsSUmvvcn
x+xNCwBW67XD9GtN8tKa11bWGA4z8QQ7+chVFLrHlkBa/fn22mHEzscen9Ydktfp
GC9d9I8k1eyRYyuSmNWElTq9hFt/UDnJfma0LNQp1Gi2a0+a7REUJKYaE9JPdOFn
EeQvIywOyEKOWdbuPOeh8d/YGM8yJKbHCOwz0hMOmx5/JeUVxT3RV9cH2bSFGxCI
QnEizNA8YWuvk04AT5vEiZpc900Iir7FxGYX57njNobtpQrf5DCSBi8QjpwuJxhM
RM73uOO9mk+xjuYwEFH0URUMNyPwsGAT/G1tGT+UxfuDSE433w7v/EAIdTk0qRcp
WeQrX4lmWmFzuPhIwScTlijTFnQk3iIbfBi9aeVlCb4x3AOCQwvuh33pBUqLQhOm
SvukmUrEu5507BfIjy/m1qXcyNxpiWBQhVkwiC2u3YbKujqEXd86cZK/SQ+XwHbP
r3aq3Sy/NXLIsuYmIQ/NadiNovG1B0HBCsm+6s403WFUSLuSUe8=
=roNi
-----END PGP SIGNATURE-----

--s2lhrxlsr2yzrozt--

