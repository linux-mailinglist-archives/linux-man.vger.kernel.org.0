Return-Path: <linux-man+bounces-418-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D03B850ACE
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:23:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AD16282D79
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2CB5D492;
	Sun, 11 Feb 2024 18:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anYKuiIc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B33B5D480
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707675806; cv=none; b=l4vzb9c5KJ4tyLIoqzMNLq8vCVgXCB2SekqnFjEsTtWCKuGJKquJlk0UZMhvChad8jrjqmL1hDkFeLo1t7oJ8yElAg+6AQ6AcGNeij91kuxQUqJl5DvyiKD60IDuu32uA3EsKFYV5MjLb7cyFYOI8knnp5EHXmttUgWgZUDa+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707675806; c=relaxed/simple;
	bh=3iy8NCZ/ak8pPME2fjSlAjgLy+Ww7FirkPoS1TfCGQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l/7/ysis6vmcGv9Il8LWkkZfZYAXPcAfV/YjhEx9a4CLMfrSpSLlRKWlLTwgC7/iY3x1iZzpROdXS8Zlv0sJ4/atNKWwrbleVoKs2awRL4Mhl3+rfbhKQo12CEUWr9YT3mJ6/xpMWoamRCyPUsnGou8ckbzG7qdpwpyLWPT8AdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anYKuiIc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3573CC433F1;
	Sun, 11 Feb 2024 18:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707675806;
	bh=3iy8NCZ/ak8pPME2fjSlAjgLy+Ww7FirkPoS1TfCGQA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=anYKuiIczSxRWm/4C0ZQmsno1d3wPg8sMA7yY1+EKV1V0/J18RsZA9EvpyYRSkCRv
	 tSAHvC4D97VIWE1A8YZYOvS6dGLoW+jKEHyQq8bDK7dirucoH7e0rvfO3aWWuRo/Ol
	 2clucPMlHaFyt/r/wsrj/4euZ/aC5o5X9feXAi4GOglBGNjYjW2ttH89vHRHpp1nsz
	 PiSmgcy5JqmaCgXAb5g9QetsEfezgXROj2HTHCiiwwmTjGRu6lERUMowqr6Jh844z2
	 DGqJTE/1ST+v5TjNQdJa2nk/LuJlKuS4lyuMR5zp8EnZdl6xrz6z+GupjmJJP4GqZJ
	 VVB4Yymev39Tg==
Date: Sun, 11 Feb 2024 19:23:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5a2f5pWs5ae/?= <mengjingzi@iie.ac.cn>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: Recommendation for Adjusting Command Categorization in Manual
 Pages
Message-ID: <ZckQmoQvBn3GXX3i@debian>
References: <4199785d.2f13.18cf3132e26.Coremail.mengjingzi@iie.ac.cn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QAbQWLEBKCVY1XRE"
Content-Disposition: inline
In-Reply-To: <4199785d.2f13.18cf3132e26.Coremail.mengjingzi@iie.ac.cn>


--QAbQWLEBKCVY1XRE
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:23:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5a2f5pWs5ae/?= <mengjingzi@iie.ac.cn>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: Recommendation for Adjusting Command Categorization in Manual
 Pages

Hi Jingzi!

On Wed, Jan 10, 2024 at 07:12:49PM +0800, =E5=AD=9F=E6=95=AC=E5=A7=BF wrote:
> Hi! I hope this message finds you well.
>=20
> We have identified an issue in the categorization=20
> of certain commands in the man-pages and would like=20
> to bring it to your attention.
>=20
> Upon testing on Debian 11, we observed discrepancies=20
> between the stated privilege requirements in the manual=20
> pages and the actual behavior of some commands.=20
>=20
> According to the introduction pages, commands in section=20
> 8 require superuser privileges to run, but we found some=20
> commands that do not necessitate superuser privileges for=20
> execution:
> lnstat, findfs, blkid, lsblk, lsmod, lspci, modinfo,=20
> isosize, lastlog, tzselect, zdump, getcap, getpcaps,=20
> mklost_found, tracepath.
>=20
> These commands predominantly query system information and=20
> do not involve sensitive resources.
> For example, lnstat print Linux network statistics, the=20
> statics comes from /proc/net/stat which could be read by=20
> anyone. Lastlog reports the most recent login users, the=20
> similar commands like last, printky and users are all in=20
> section 1. And it is clearly stated in tracepath(8) that=20
> the command does not require superuser privileges.
>=20
> The introduction of section 1 claims that those commands=20
> to be user commands, but some commands require superuser=20
> privileges to run:=20
> dumpkeys, fgconsole, kbdindo, kbd_mode, showkey,=20
> deallocvt, tcpdump, chage, gpasswd, mesg, mkfifo.
>=20
> These commands manipulate special resources like keyboards,=20
> virtual terminals and pipes. Notably, tcpdump exists in both=20
> Section 1 and Section 8, but it can only be used with privileges.
>=20
> To enhance clarity and align with the intended privilege=20
> requirements, we recommend adjusting the categorization of these
> commands. This adjustment will ensure that users referring to=20
> the manual pages can accurately configure command permissions=20
> without unnecessary use of privileges and contribute to a more=20
> intuitive and accurate manual page structure.
>=20
> Best regards,
> Jingzi

Could you please suggest a specific patch to the manual pages?

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--QAbQWLEBKCVY1XRE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJEJoACgkQnowa+77/
2zJKvg//VbosTnLmkI7Pen3oYIW3EeaDYWxWMnV+kr/tSOt7D0LS+mC0j9VuXPPZ
Y38BmiYP9esuu8up79aBOFHr4ymLoeHxvsAFtRQyNX4wozmfcApod8rwlQK7oRsu
PhlgyWx2/mmm/rtlEbCDnqy43S4MzLFcB4wjgSiBR5aQExakHlZ1QJA2x8Q9iruI
xruDssdbQrIhP/4RUCHfZy53RfZko2n7NSihZ3GnP/DQDtnW0Fa02d4fDjkiGAqm
7R7McFWWXnYqrpAsC9NcPRam3fMUkSmD/LSEV4tS1mvdTBOe/47kQmBKxLqQcFB9
UW7SmiuxG+pX7i/PKd9nQ0ISa0VMi8wE/hKHtOGTYqbwUNr54JtGcbmmZ1muyfg1
5AWMFG+ZlnGmPd1D963zlVKnj9hHQHIp9eH847ZYNjTJB5+qAsQwtlcm2gQC+L+r
DOtktU9vvcOJmy2YNTU7Q9IhoLtJC2DhPcokDo797EzJJ2hp8YIIJ4P1mW8gOQkU
Aa5AMJOv4V2XJNVagjJpXX7GosFm+vJdwlJIUnLdU+9JMDz9J7nB4i+EK/RdUaHO
JmeeKVY0EiFQXh46sBLNZwc+XRZsdw6rtvyRMbBfykb3SFrnbYD2NfJwGSr9anrW
Wo/yI0/lEH0QEgbNe5AsBCbWoaE4hqUPHyZqVJWfNzWvAATbZgs=
=jKdc
-----END PGP SIGNATURE-----

--QAbQWLEBKCVY1XRE--

