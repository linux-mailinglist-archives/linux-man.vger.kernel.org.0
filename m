Return-Path: <linux-man+bounces-1998-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 268419D03D7
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B79DC2890CC
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6C818DF62;
	Sun, 17 Nov 2024 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="e/8CQnGI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7E61898FC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731846773; cv=none; b=pct350QZ9l9WRgZAHSjxi8cggfoc7yENgSEeXJLfB9lXibPJ9OdrFw4qSds1bR1hNdkEtP1VVm5RedPZ3wAXE5M2vIzTAd1yjlWVRwNNJqr2eow8NE/cICa4EkHZHyB6vX4bQEmLH1FhqdszNld6UVbyE0cwwot1+EhY0D7jU94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731846773; c=relaxed/simple;
	bh=g5f1UYUaOK8L58qtQhtridXH5k2ol7yaUeYSmIDb+Ew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKvBZ/gzWM3mewEItfP77oaXBx5nrG0PQwOx9mMvu2/3wmkBy0dQ4Jm70vtPsaLa7EBeqo0PGao+dc5TwMQHG/ApdgCQH8gOKSPuYkYZFowAbgAvAd7z29ZDUfqGFJ5vHo5W4IV0OCKHvJzjJbVRNCLiRE9SWmHWVxt7UKdCP0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=e/8CQnGI; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731846770;
	bh=dqWrs1h2QLvqocUPH8sInaCi5Cq1B/gL9fZgCV0dWoY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e/8CQnGI+jS+b3fqJvBvycwfOBJaQch8Hgf8dAVa180kUPNNAdZf6f8eKPQQ2FhaC
	 rTmEuTAipOxEfPgtisWWkbXiQNX8fo86qHaZe31K05Bem0+G/isMcihbSFbQ9FRpWU
	 zX8PIfzVl1Pjn3499uoyhdZ68d1CfV+ZOFOBk7a6MNAbi+AP2e7c58PfD3TIPzqN/z
	 dmEHM1/lLieWqmszymTOd4lOgM8Vt/5OhmMjcigtoBJ2zVaNn2TX3qh+FG3xkiG5W1
	 FddXYAEXfDpKHWZQRx6/iXEc3JRUuR0AzisZb0Y1ZWBgJ6+Ts0PYfALQPoF0SGjrE5
	 t2yaxVAJL6QTw==
Original-Subject: Re: Issue in man page proc_timer_stats.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.000000006739E271.003FD5BA; Sun, 17 Nov 2024 12:32:49 +0000
Date: Sun, 17 Nov 2024 12:32:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <ZzniceHkdMP0kBlw@meinfjell.helgefjelltest.de>
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
 <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4183482-1731846769-0001-2"
Content-Disposition: inline
In-Reply-To: <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4183482-1731846769-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 12:33:13PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> I'll eventually do a consistency fix in this regard.
>=20
> About until/to, I think until is more common.  I'll also check.

Thanks, it's mainly about consistency.

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4183482-1731846769-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc54nEACgkQQbqlJmgq
5nAizRAAnXAeb49AC2vKfdS7CGyOeF7mgl55hHGrPgu4hxaGxj3uULhXxL5Hrhwd
jR/y25cVi2LC9dvu0jgIgAllEjgRjo6bBtOGsplTJmmCLiJogPBTXIJVZzLSF5FF
NRp2vcLV3bQHNZ/ckE2gEzNPezup0vfn4Pi0Rza4THmfUnHbQAiujDTNgLkxGdD3
Ak2OW9kzLTSCSXfRPcGhAL1ktaY+EVUkcPrMvzXgA44nYhxD5azZ3+gnYlXP5cV/
GAWCZEJHu9T15bAbXPjDAabE0TB2GqGN0jfG/lwFrB0Lqc6RZ+4vanjtRqyQ+mlX
uqMgHQiqKA2CV1HwiyQHuLYfP7JXI94qINz68SKn1zq/wTp2WoMYO13p9Mw3AjU9
XLdDM9q81mFUxpzfP4LrVtspiKeGK+JRyStxf7wrjk7sqpb11FTw5CIz3hPD/C51
+HRKuT6k8yk5R2RSi5vTGs5SYU7+13wJdaEqlgDYQdMgwDMmQO4o+x1OalmCjbOR
d5MrG78LHdqmKz+x3VDul2nNa7F8LuahtTdogvx2UCPUmQKkNwo14nfwIL22QiDD
D8ln+2i1XR8r/Dy3DHyfrsZ7sIvamqwYWGL3mX/Dbfq/KFPhNYe3NCNh2bEttupU
SvOao/HsiQTVbKQwqnwZv7ds7V3ggJ3zc1Zgknsw0h51pZpeluY=
=yeVC
-----END PGP SIGNATURE-----

--=_meinfjell-4183482-1731846769-0001-2--

