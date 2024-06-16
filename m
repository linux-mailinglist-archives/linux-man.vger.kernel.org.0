Return-Path: <linux-man+bounces-1212-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BCE90A0B0
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 01:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A3640B218C4
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 23:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E807344C;
	Sun, 16 Jun 2024 23:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrNF7lE0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE2F7317C
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 23:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718579149; cv=none; b=MqlmIC+zCAIe/0+ex5O4gXptReUnEEZSya5AcVMX5esP9huGs9QZ6uMHJVrgcF4FUJH1HOvB2FGv3GAD2r6LUM93TJG2DIXNeuYLq7a1g3uSjNPb0yr3J3McpP8VYf2UWa7L/omcfa95VJbkk+eU0L0BbvRxg+jJyjKV9tgUKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718579149; c=relaxed/simple;
	bh=dWQ9RCn7kQCePKRzgJRhp6dkJoEf5ogbzihHfIMIQis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YcpOJluZ/teU5ohsUj4GToWwXpNMe/C2/RYHU4JnVftsRWpNASIVww73D1SZGfFCfgjtQA42eugGxriUVCL3aJOpAA02Ph8tyHTa6xlrh+Oox9AsEpqI3bGaTJzDvQHb7gA+A3qDJ0CS71igCSJoH/26W8uL1dCOCAX36sd/Qco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrNF7lE0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A0FC2BBFC;
	Sun, 16 Jun 2024 23:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718579148;
	bh=dWQ9RCn7kQCePKRzgJRhp6dkJoEf5ogbzihHfIMIQis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZrNF7lE05xQYOlTHyUGW3YBwgYV44TXWpbtFgUjdA2XoSAhzsOn91IlqTSju2Uh08
	 wqRvV7xUOJSevPPj3qeWAB8Ozc9YtNZapvxDsIss98gghnPuys3PyGs4866P8hUepK
	 JqRCra+6kQrVJz0CvQ8SX3ozlQmed30/iSrHNgT9I3aSTiKqakfFCXv6swSl3h0a5K
	 G4uL1YjSlJWNlZ3aRekQ8lZA303gDwbNAgRz6N6l3hFbjoH4f1GyyWQGmT3JplQEXS
	 iwV9lVYAL51Tx/U5QqPeDufj0Hm8PVZjb/bajanzWT2DepqkPU4+u//ansRNg1YcqO
	 xfCbG8mWu6CFA==
Date: Mon, 17 Jun 2024 01:05:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jeremy@baxters.nz>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: Re: [PATCH] intro.1: Improve wording in initial introduction
Message-ID: <h2n62rzdo3sska6dcjxpgkootmafjyq22nu75dw7js5ycjc7oc@wogudmcmgmg4>
References: <20240616223429.46202-1-jeremy@baxters.nz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vzo3jjrkhhoqgqau"
Content-Disposition: inline
In-Reply-To: <20240616223429.46202-1-jeremy@baxters.nz>


--vzo3jjrkhhoqgqau
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jeremy@baxters.nz>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: Re: [PATCH] intro.1: Improve wording in initial introduction
References: <20240616223429.46202-1-jeremy@baxters.nz>
MIME-Version: 1.0
In-Reply-To: <20240616223429.46202-1-jeremy@baxters.nz>

Hi Jeremy,

On Mon, Jun 17, 2024 at 10:29:17AM GMT, Jeremy Baxter wrote:
> ---

For readers of the list, this is a continuation of
<https://lore.kernel.org/linux-man/CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org/>

>  man/man1/intro.1 | 31 +++++++++++++++++--------------
>  1 file changed, 17 insertions(+), 14 deletions(-)
>=20
> diff --git a/man/man1/intro.1 b/man/man1/intro.1
> index decaab161..4d9e81c5a 100644
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

I like the changes in this paragraph, except for the removal of "as a
first approximation".  Not a big deal, though.

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

LGTM.

>  .SS Login
> -In order to start working, you probably first have to open a session by
> -giving your username and password.
> +In order to start working,
> +you'll probably first have to open a session.

LGTM.

>  The program
>  .BR login (1)
> -now starts a
> +will wait for you to type your username and password,
> +and after that,
> +it will start a
>  .I shell
>  (command interpreter) for you.

LGTM.

>  In case of a graphical login, you get a screen with menus or icons
> @@ -36,12 +38,13 @@ and a mouse click will start a shell in a window.
>  See also
>  .BR xterm (1).
>  .SS The shell
> -One types commands to the
> +One types commands into the
>  .IR shell ,
>  the command interpreter.

LGTM.

> -It is not built-in, but is just a program
> -and you can change your shell.
> -Everybody has their own favorite one.
> +It is not built-in,
> +but is just another program.

I would maybe use a ';'?

	It is not built-in;
	it is just another program.

> +You can change your shell,
> +and everybody has their own favorite one.
>  The standard one is called
>  .IR sh .

LGTM.

>  See also
> @@ -53,7 +56,7 @@ See also
>  .BR ksh (1),
>  .BR zsh (1).
>  .P
> -A session might go like:
> +A session might look like this:

LGTM.

>  .P
>  .in +4n
>  .EX
> --=20
> 2.45.2

I think I'll apply this patch.  Let me meditate it to-night.  I CCed
Doug, in case he has any comments (it would be great to hear his
feedback).

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vzo3jjrkhhoqgqau
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZvb8IACgkQnowa+77/
2zKy3w/+Ml1UBuuYS4b33/U417a5yBAkE3PKaQ6R2a6C5iheGDrVcSK6Sm+baU0b
0XJ/k1UP0q/AjYvRSv3UjBoIs8h7+OPC0Di+cBxVybly8m4WYmbFA8LHGIrTWp9O
Mm9Xcp2gj5V7HXafxE0oUiTynwp/IpzM8a7NUm5f8pK8dRRso43xOrNWurUSlsJj
ziNoj8P4mJigIoMKBuzsy3q6jJR6VlimNsDkA1vfiSU259jkBHZLxzV4olB7e75j
mBbRBvv6jLznyJ6kTWV6Rw+aOP2Tx2ad3qZPinjs5fi18wH2MdMnNWpVP6I145DJ
RveWhf+cuOxngaTjDOCQAxI6dkgDRH9rtmaEpWDh36V0JdWcyxUz9D44TZHkv6J2
Ga5HRxGH63fQfSdhLiVVXdBWe3HeVpybTITcoH7Lcud/N+I75Hy177sjsX1yB13K
SUyJBzdLvh5S+YmLEcyh2F7nJbvId9vTLklpWQz8cr8L0I9b7S07G5g+M4nFkCil
JIO/8gVUjE6MVDJb0ic0ejdVj6ZSY27tlqo1BL4QKGPOQp/mvu1cG/GW466m8Ek6
kvMHCmoxbnFpozu7fHP8Fx91U2XXo4MfPHwKjxIe+dQPzNKY3rML6ceZGxZxU9di
vyyIBfwXbl4AeEdW84ezRCCqITRFAc0tLTJpwOheKNpgmHEIYKU=
=THUb
-----END PGP SIGNATURE-----

--vzo3jjrkhhoqgqau--

