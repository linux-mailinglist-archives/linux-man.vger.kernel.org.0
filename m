Return-Path: <linux-man+bounces-1983-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8709D0354
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:50:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C00B1283741
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFF7145FE8;
	Sun, 17 Nov 2024 11:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gScDaMal"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF62580054
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844203; cv=none; b=G4/cGgz+nVUFlTj4WmH/y76sypqyq3cohIkmGEUWh6eecVPHPeMXMz2k4N9pbhwiNkbXAlerUzPFaSgxQPoVLjQi9ry65W7ctAkXEu6HlGxt4/QU0MWFX0/XKJuGmosdOmUMGOz/32lH6FOxw1oA7z72XUsPGr6QFevL8meiX7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844203; c=relaxed/simple;
	bh=neXchs+oQLA2YD1xmA4/NCiM0DB5M4sBAlcK5qd+3nk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bKruzZE3c40HNXX10lXyjuHzJimUQYfAhnncQbSgLtJKzs8TP941+HUAvV0pxO01f99eng4c+laxRTPvVMz2pCEBnC42a6D17x/K54LTwDlfTUBlKIdr8FS9i1cLTwwj4KFE52t6oL8T01BHctKfs2IXYoImp0dK0kXSGuhJHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gScDaMal; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B77CC4CED2;
	Sun, 17 Nov 2024 11:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844203;
	bh=neXchs+oQLA2YD1xmA4/NCiM0DB5M4sBAlcK5qd+3nk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gScDaMalUznxlmx325flrL3c8q7Oyy8TFqanIRqQxH2VdBaFwFdit9AJPABe+9Byu
	 KAqjLBkJw0bVZLlE0m5C+14O2rKK39iO5AB3luUjPzbCE8ssKzqbLsILwLL+u+dUYY
	 WdeSqkKfEbqUkPf7g+e7VofcnSLSeOER9OUQ8YbkQOUSOIc9x43kaIGj9SMGTF4jqb
	 ZQmn/R9RcHwdQRniG+OII8JD/Negp8UiDA/NwDv20BXtBrtQlZxbNQGeM8co3A9XJh
	 fkJtEWOcEAnDkAzoAiYyCQfJXQWbJT5fHRP2tW24CSFlJCLjKk1vrFXt30OFjFon6P
	 1kPZrK78ePodw==
Date: Sun, 17 Nov 2024 12:50:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
Message-ID: <3ztlsn7bwy7jrn6kwyq5b3khxplnqvp477agshzlyesp5tgoge@ig744z2gnvlm>
References: <ZznJfzfiBOnRbni5@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zvsteyrtv2smtqv2"
Content-Disposition: inline
In-Reply-To: <ZznJfzfiBOnRbni5@meinfjell.helgefjelltest.de>


--zvsteyrtv2smtqv2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
References: <ZznJfzfiBOnRbni5@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfzfiBOnRbni5@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<info> =E2=86=92 B<info>(1)
>=20
> "The Linux version of these functions is based on the I<GNU> I<libio> "
> "library.  Take a look at the I<info> documentation of I<GNU> I<libc "
> "(glibc-1.08)> for a more concise description."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--zvsteyrtv2smtqv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52GgACgkQnowa+77/
2zKk+w/+NGrYWRG6TK293gLGeq1OzyfjuVi7iaLK/I1gC5kVlgwWR0RudRtdr7IL
mcuvbssQ7L60mSpUNnoerh2FtUKBIcaUDTuYYc0yc89r3ziZEh2Nzx0sK+w96R0s
bVD0p+U1+TPeNZ7Ik9iiYU54INxdEjgvGBT8hR6zGV/86IqI84ubu/fZYx/2bL/L
7ouM0Y9tsTejs4UfGBLPV63T933QYZysJfMECuU1lZUSO07z8pAnIolE9+otgR94
mPMjaKZ47C7+jszUfWpOlAfKXxAGsghf7b067RuUtIX0b0moAjCYsheLRypskXb/
7UNOwY5FLZrS6e+TLff2IZB63fneJpx7oBfPiXEXmIO8gVTHfr/cgcSu/nyp+p/4
3K66IsJA4+nPh8i5SQQENhYRcd8LWlce/38dppbIFJV2PvGMdhuG8kQaUYkUmWo5
eSsfUGbsHtw4sdYZ5NU2Qurzy4b5GwnhPX6J8kvggq4wSFOeQysWNlIa0jjt9IpW
tSd5YDkf9qS3QJMX3B/d98xdoarnXMlZuI3uzVVw0YtKanw19BgJ8pAD6FmRjYg/
zt9kMnyLIiDP8xQ3/vIJ93D1XwmCGCFvp+zgQ9qVQG21g5l/MNdLJt3XGNmyZ13c
DusP4ZPQ9KO1OSqt6dhACNReqNOmmrH5Kk2upuj4SHk8rwmQpis=
=v1CD
-----END PGP SIGNATURE-----

--zvsteyrtv2smtqv2--

