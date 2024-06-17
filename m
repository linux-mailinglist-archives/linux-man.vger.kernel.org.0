Return-Path: <linux-man+bounces-1217-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13290ABB2
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 12:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14C94B22FC7
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 10:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB1F1922F3;
	Mon, 17 Jun 2024 10:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV3snQdq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB2461FCA
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 10:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718620803; cv=none; b=kwhYwP3ZhGagJx8TYg9bi+VdZzFVUAk8OcB3ivUjm/pG1XUlkPtMuVa8gwIKKNh5J8rPljuWDdBl83Yy3OALMhW0jfpQT2KeY3GnQfupKv4E6EkS1/IIs2XWbpCgqE9lgL0B3w9ocJrM/ls2hQiMf5+s33CoD6rOwBMd7cHF3n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718620803; c=relaxed/simple;
	bh=AF3prpi0AKL+1oL9kAwi7NKtCnrVXNW+25FcY5gyurc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VhDds2Y59cJGWCJJt4LkMDq0FwSTF2kAfzAl/d2mcVMoy2eognaSgIaXMUlmcyYqdYeyTgKLl9RcbI+YigR/P4PRfrxaSl+PvO+/PzMY1XKOG2gKo2DMk78horF1TFgKkVaKKS2R9++q9nNrHYEHjAMKT1DWC+hKpkqJoHP8UaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV3snQdq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7175FC2BD10;
	Mon, 17 Jun 2024 10:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718620803;
	bh=AF3prpi0AKL+1oL9kAwi7NKtCnrVXNW+25FcY5gyurc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AV3snQdq9vGxqoxHHKPKwJNNkvcNQKZmshYtkR5ywcW+BJNPvj+6/GySZ8k7A9qn4
	 DgaBAwRmHfp3GoZfgGQ/u3JiUw4x6tUqW6/IZydfGrTIo2ju/bS5f9c9O3YwnJ2H7H
	 mfjUOHZPlrYMsyYwiUssMJY6kp1rT+zq2gPfway9RdjQxtrVOiVVuDcg0ubAvzmtTn
	 R2+CKSSg/t5HoGmkmez/6M7YE5rTcvgCTRb1ePgRo00biKwl1WG9W8h3vHkE38Icfn
	 qmi1Vcvqkalkw8BGod+hzagG6gD2VSvjp/zWFKmla65whvTXGlWHyIGcY9P5skVL7U
	 8SyEBudOcXrug==
Date: Mon, 17 Jun 2024 12:40:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jeremy@baxters.nz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] intro.1: Improve wording in initial introduction
Message-ID: <wgjzmwawz57ycvyfncmtuiveqsyyguahsxst3fkcxnq7f7tqzo@bfrawidsg3f5>
References: <20240616233931.53760-1-jeremy@baxters.nz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z7o5dhaaodxqp5xd"
Content-Disposition: inline
In-Reply-To: <20240616233931.53760-1-jeremy@baxters.nz>


--z7o5dhaaodxqp5xd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jeremy@baxters.nz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] intro.1: Improve wording in initial introduction
References: <20240616233931.53760-1-jeremy@baxters.nz>
MIME-Version: 1.0
In-Reply-To: <20240616233931.53760-1-jeremy@baxters.nz>

On Mon, Jun 17, 2024 at 11:39:12AM GMT, Jeremy Baxter wrote:
> ---

Hi Jeremy,

Patch applied; thanks.  I'll release 6.9.1 later today with it.

Have a lovely day,
Alex

>  man/man1/intro.1 | 31 +++++++++++++++++--------------
>  1 file changed, 17 insertions(+), 14 deletions(-)
>=20
> diff --git a/man/man1/intro.1 b/man/man1/intro.1
> index decaab161..91ebbc448 100644
> --- a/man/man1/intro.1
> +++ b/man/man1/intro.1
> @@ -10,9 +10,9 @@ Section 1 of the manual describes user commands and too=
ls,
>  for example, file manipulation tools, shells, compilers,
>  web browsers, file and image viewers and editors, and so on.
>  .SH NOTES
> -Linux is a flavor of UNIX, and as a first approximation
> -all user commands under UNIX work precisely the same under
> -Linux (and FreeBSD and lots of other UNIX-like systems).
> +Linux is a flavor of UNIX, and user commands under UNIX
> +work similarly under Linux (and lots of other UNIX-like systems too,
> +like FreeBSD).
>  .P
>  Under Linux, there are GUIs (graphical user interfaces), where you
>  can point and click and drag, and hopefully get work done without
> @@ -20,15 +20,17 @@ first reading lots of documentation.
>  The traditional UNIX environment
>  is a CLI (command line interface), where you type commands to
>  tell the computer what to do.
> -That is faster and more powerful,
> -but requires finding out what the commands are.
> -Below a bare minimum, to get started.
> +This is faster and more powerful,
> +but requires finding out what the commands are and how to use them.
> +Below is a bare minimum guide to get you started.
>  .SS Login
> -In order to start working, you probably first have to open a session by
> -giving your username and password.
> +In order to start working,
> +you'll probably first have to open a session.
>  The program
>  .BR login (1)
> -now starts a
> +will wait for you to type your username and password,
> +and after that,
> +it will start a
>  .I shell
>  (command interpreter) for you.
>  In case of a graphical login, you get a screen with menus or icons
> @@ -36,12 +38,13 @@ and a mouse click will start a shell in a window.
>  See also
>  .BR xterm (1).
>  .SS The shell
> -One types commands to the
> +One types commands into the
>  .IR shell ,
>  the command interpreter.
> -It is not built-in, but is just a program
> -and you can change your shell.
> -Everybody has their own favorite one.
> +It is not built-in;
> +it is just another program.
> +You can change your shell,
> +and everybody has their own favorite one.
>  The standard one is called
>  .IR sh .
>  See also
> @@ -53,7 +56,7 @@ See also
>  .BR ksh (1),
>  .BR zsh (1).
>  .P
> -A session might go like:
> +A session might look like this:
>  .P
>  .in +4n
>  .EX
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--z7o5dhaaodxqp5xd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwEoAACgkQnowa+77/
2zIEiw//ew/viqtJ21us915XBWIj9s/gCwMro5sUOiJx1v5GSmtAKkrQqfWDkZJn
5vbguj1dswJ/9EXwxouiQ1629McZQMh3XWRAnVtKntL9h+nGIu2eSLNNZYb1wHzN
alplnyrfn5THsbvTERlTnte3vxrcE9h+mivjrB0tioseyIdOjHQOIPHMSuj/tCcd
Lf9/IyB1Qp8NibrNn4qjqwHfRWSD1x0Q/FQvNZS1ACtUxm5QAEx1YLpor7vGtACz
jIIqKtE0hmswMg79g/I0X2dR2eo2KWIlUOyCa0DRDYjwjbt78bBBOu9KeW/gj4/0
wQvJbAl/DlA3/wB8pC5pKlW/mjD/9qJCvoj0z7ylWKgNYwXtS7FVW1uJKdv/P9W6
S+TGaSmQBfXNqJqVpyrq2a1uw07naWZdmp0+N+YvYEQbBqZl8/dfXVt1YJNDYHU5
mxiY2T4P4tQNfclSICCpqhKpsTNIr/QIw3U1WGgLOxTRyd7RGl4ZhD+jJ9a0TEo3
Gj9PjovyZzT90wIwOexP1d4UesRSN2Kc8e3Ly+9+T6+9zcsL6Ogl5qYQkcEX+ckc
UqpeGgOAjSseKAxE1V0nYJSVIjBvocVcdDTp83W4casIiF+2lLhu7eLcpqu4GZHf
7th9dUTP3hFgeqvTE1l1kX0k6HFmces7D8JgQ9duYgeZJUy9hss=
=tQJ2
-----END PGP SIGNATURE-----

--z7o5dhaaodxqp5xd--

