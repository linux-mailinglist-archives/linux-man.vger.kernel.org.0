Return-Path: <linux-man+bounces-520-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF778706E7
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 17:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EE022812EE
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 16:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6624C624;
	Mon,  4 Mar 2024 16:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1xlj/4h"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DE947A6C
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 16:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709569320; cv=none; b=g89hryIJR9rjXCihY0KLGxou84Fnr+Xi08+gA/ndpGoNkYfwVwWtVXcLpcU8Vh+78NWnN8MSc7CXctikQ/thi6roRV3ldCMDT0FjuCAMRSbTs15UIGvH9mJapUBQaP1U5ullh71fPLaExlQKJDVzj+wXXv9Q8i0fwm9cGhkrHzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709569320; c=relaxed/simple;
	bh=7Ul3v1ESTEgiYI4VoJaVpziR2l59LAwS75Tu1cDjR5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RIHwudACDqUXxw0Ow9DUcXcWDVkdjZS3fllpTPFeFmyXExmfpaG9DR+RamKrSGXs0crG8GFNdKXU4RsRXWL8z4rs7qgQKLgpVDNXoAVar60sXz2Sz4Ftx0hOa8JiH6gdcf7Kh/UICr5BWaymV8DyIxvCdXD0Qx1M7aJGQaaiD3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1xlj/4h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C22DC433F1;
	Mon,  4 Mar 2024 16:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709569320;
	bh=7Ul3v1ESTEgiYI4VoJaVpziR2l59LAwS75Tu1cDjR5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m1xlj/4h5qrqr8sNhchxMZI8WByr/VEQwMkI7c9OfkkOU88eoxwKToN2jv/rYYH6Q
	 SgoG56MOdYRtH3gerrLT6/+cwQFLqlcmGRlVm3z/JN36ZATV1Jt2PjfF8Ih/dBF6h6
	 5wmVaRds8EawOBoBlGPtlQu058GhC22NdIqV33LKl3k3PD7hrPf+D0UfX/gOiSlyZm
	 4ECk9JbpQcpEqaxVqhhtum4QRSP2eqbMfBoTklh8EmUAOiKnWuKzbW4bJicN1AUt6P
	 mgUpnX9bPxJEZyx6/ocCyfG00zamUt9LYv30hVHz4jdb5rBD6KIp3gT3WqUPJplazh
	 a/ObYMDyaYSYQ==
Date: Mon, 4 Mar 2024 17:21:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: patch - fixing sample program in unix.7
Message-ID: <ZeX1JTt2Sxot-JFU@debian>
References: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rcp8Ou8R0CjyXX1W"
Content-Disposition: inline
In-Reply-To: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>


--rcp8Ou8R0CjyXX1W
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 17:21:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: patch - fixing sample program in unix.7

Hi Lili,

> Subject: Re: patch - fixing sample program in unix.7

On Sun, Mar 03, 2024 at 08:27:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> diff --git a/man7/unix.7 b/man7/unix.7

Please add some commit message.  I don't understand what this patch
does.  How is it broken, and how does it fix it?

> index cb1dcae45..7fb41af99 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
> \&
>             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
>                 down_flag =3D 1;
> -                break;
> +                continue;

DOWN is used to stop the server.  How would 'continue' help?


	$ MANWIDTH=3D66 man unix | grep -C2 DOWN
	     tegers.  The client prints the sum and exits.   The  server
	     waits  for the next client to connect.  To stop the server,
	     the client is called with the command=E2=80=90line argument "DOWN".

	     The following output was recorded while running the  server
	     in the background and repeatedly executing the client.  Ex=E2=80=90
	     ecution  of  the  server  program ends when it receives the
	     "DOWN" command.

	   Example output
	--
		 $ ./client 11 -5
		 Result =3D 6
		 $ ./client DOWN
		 Result =3D 0
		 [1]+  Done                    ./server
	--
			 /* Handle commands. */

			 if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
			     down_flag =3D 1;
			     break;
	--
		     close(data_socket);

		     /* Quit on DOWN command. */

		     if (down_flag) {

Have a lovely day,
Alex


>             }
> \&
>             if (!strncmp(buffer, "END", sizeof(buffer))) {
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--rcp8Ou8R0CjyXX1W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXl9SQACgkQnowa+77/
2zI4zA//SjVszT+L/9da0l3OzfMDScIOfgZ4SiH9lW6kK4McSODsW0tJxlCH3966
YZl0DznKkWkkGtrP7d52M8RoG8nDyUmO6Ti1tdjrY76nWHX9Fiu8vNduioFscBKk
wFLxS1/A9B8F8rpjEg36eLbph5tqJPXEYrToyq6N895NZ25jL/wXPnlbKxQ0JwMq
lR6rW/e/ijhjb4L3RksCx/eNtOtfG+w2qTer8sgvOwTeysnll4W0hvGEfBl6SHmn
p/YGcgGrVTZrILBSYWtLe+4xB/SF2kYrJq5B2GuGcU+DFom+Fu1rbK7sVAavZaPT
IaZOLPFRDr2onF2DAN6JKjyv6qAI4K8SuANHi2CAr9j57h2pqgP2dcBQIS48SF+q
D/orYmC9e0zXE7fJaMEAJYh3ZPlTcQZmDvxzh2hXRuwLYht/6bGlmBETUtRJZlqJ
fp5ku29BZMdNA+TVb5LCaXW7TXjQV2S5xH9antZCCwvIiL/GeNF/61XLdpL+m3Sj
ubTa2dl+1MDOdZT2UyWnGFV8ohnxoa5hQ45qrD0c4ZkSGChwXqyLJYWFYPFhV4gJ
01dsqc/6e8yTQYTuQsdTBfhQtXAnW7IDJKL6WYJlNxnaPvFUkFDbFa838a9r6xCj
6TA+QhssPUnnuFSyK6QcPXadDlZFlOkUpZjAs3O8XXDg2sSPq/8=
=gJV0
-----END PGP SIGNATURE-----

--rcp8Ou8R0CjyXX1W--

