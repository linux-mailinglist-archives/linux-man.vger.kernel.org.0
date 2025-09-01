Return-Path: <linux-man+bounces-3806-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE3CB3E5D1
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C6C17A9886
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 13:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8827D3375A3;
	Mon,  1 Sep 2025 13:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtqTnhpy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AD533438D
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 13:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756734244; cv=none; b=ljdzPubbsyvDkQqlg1H5A278fkDmFBvs/GS7BeO5FVOB+BzZz7bN52rOg0MQHFGJ08uj+kbv3PkFH7jQPR6gOHUJfqd+E3CO05t4JLOWgrKsrLGdMjqkiDwiHdidVA3OUHIyxu+vFRoJJVz0D0qD1FJvS0XeHJYFICr8BEY6B80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756734244; c=relaxed/simple;
	bh=+t3GXMxe7p1OX4xFdN/nwRcihwt/zVP5GcpXpy5uobQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eTqUgMw9Mxc22tzDUtU1P0EicaxJFpmSJ88Z+gfjiIsZ9zhV2HeEWA2JDJhPbHcRhDNcskuAFcOaJZAUqogeCyyS7a3cJspGYw7I13UgDp5whRR8zVr2aWjEtH5E+sb/4G1lpz7AwgjJS4+8RPZXWkHMCHn8WzJ+QJEQEkAarXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtqTnhpy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BAE2C4CEF0;
	Mon,  1 Sep 2025 13:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756734243;
	bh=+t3GXMxe7p1OX4xFdN/nwRcihwt/zVP5GcpXpy5uobQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DtqTnhpyGSt8J9aMkmLX6rTe32f49mv7qoSrHFWP7ubhz8opGb0FQ4wIer+Flyqqc
	 D5XngZUlRjiYy0yVAnRacCPS4izmOZLbioWHPXL7pe5BMZ0MesUE310oQVjRueF+Kz
	 6iQ/+mrc185ml8nS9gtDdmD4J13GH/kMpMFqhozJoHBggNTzT7zoMzOmoMoJgopFCF
	 sNyQ1X/pjTKkjl1tKi+7Iv5xtnoGdrcXocrOLqWS1GB837dMaUK12RA22ORa92azy0
	 vuOE3C2OS2gQoX41Mcg0zJ5FV6am4HLrn3jhRJ5pN9jQboeklhywKGxjnXPRGfOAaT
	 fwnXG7o8rm/Qg==
Date: Mon, 1 Sep 2025 15:43:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
Message-ID: <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
References: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76gpdvisrna2hfnm"
Content-Disposition: inline
In-Reply-To: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>


--76gpdvisrna2hfnm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
References: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Asse=
rtion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' failed!

Could you please clarify this report?  Is this something libc-help@
should be aware of?


Have a lovely day!
Alex

>=20
> "$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\n"
> "Flat profile:\n"
> "\\&\n"
> "Each sample counts as 0.01 seconds.\n"
> "  %   cumulative   self              self     total\n"
> " time   seconds   seconds    calls  us/call  us/call  name\n"
> " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> "  0.00      0.10     0.00        1     0.00           x1\n"
> "  0.00      0.10     0.00        1     0.00           x2\n"
>=20
> "$ B<sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>\n"
> "Flat profile:\n"
> "\\&\n"
> "Each sample counts as 0.01 seconds.\n"
> "  %   cumulative   self              self     total\n"
> " time   seconds   seconds    calls  us/call  us/call  name\n"
> " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> "  0.00      0.10     0.00        1     0.00           x1\n"
> "  0.00      0.10     0.00        1     0.00           x2\n"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--76gpdvisrna2hfnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1ox4ACgkQ64mZXMKQ
wqlc+A//UYVVFNYWhXQuWvopJkspCl/4xMksw+f4bAWSYngPpRK+tmIAa5vLg3DD
M+KmNskIIhJfDXqHAPCvaBTOhFo/AfVu6OmI4a4UWxSaZnSaI2VRxsML4XH8bjNy
csBBQ2GeAoYC4SCinFHAu+TgFGjdhNfuMpsiFiksxc+n1HN9fsK5t9qFRu4wIIZR
4PWkScacqiIZR8SWeO3L/fjJfjvF9oSFTIvxbKJk6JVPJP0edKTjzU3DL2crUycE
lYtH4HquHZNQM6pMrMllSaYwCfbRtoiVCza9IaialUfAG+OKJyrxLIQ69BG++HuG
XM8f05Z7jNSPq7AdAGc/d8ZBhpfJTxBfahYIfKNhbRCExCYyYlaiD4SRYaCfUocM
6wOePchASi3mhB7BrG8fC8SOFEIvKtEs8HQvBQi8vul0znjhUgwxBW0Ak0Tr7IYN
mqxDMIOfUj11GpDpUdfmnL5/rdBmSDzVnzHF13TKLw24y7BOG7OgKypwuCKcwhic
wmXnSycW23fPHybVUBVcGBSgisui8p2TgTT8pV2D7iiDBsrSBIWknPHNA1UwWIvw
lhoOrl5rfftWjRN9Z7W9RJ/I5GZQMTVe/0FvzWRFOjh6QsCAsjnFupADu1NnRpoC
CgIDeCUim74yYfTaAi99ooXHYKP/iRnUbV44AusFL6nPUe78N3s=
=zwQh
-----END PGP SIGNATURE-----

--76gpdvisrna2hfnm--

