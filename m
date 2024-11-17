Return-Path: <linux-man+bounces-2014-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D929D0466
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B9DCB21753
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE3D1898FC;
	Sun, 17 Nov 2024 15:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="o2Ofz3oN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DD538DE0
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855846; cv=none; b=g8CLtnwZqppR2DsD1GfF9h28JT/7JP9D66PxPWguc+0cjmN5gok1leuSTel1UVDWWucnfoeUEWwjkP3WMJKcwj1uKhrYkDyiQ4tVj0T6nGbirC6ThiAgmUOeiZV9yMTyFN7lQ/TC+Qrd8dJTxC71fpFVJLXyK0h2mzu2t8SQrcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855846; c=relaxed/simple;
	bh=gVaunjrThacUP3TPclH9hDWqSVZB9ph+pIbRNtsbVz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qKEuDi1hjlqxk6yByP+fVtcnaCy/pWsCVX2tqnAIvVna3pm2Qe9iq+rBWX3LpI1zKVUOKNUoB5CDBG/8ai7vHlY1DrCXfUqsTt0nB8nKc5tuTgPoa9/P0sGWoRcHWJjoQfoChC7W7Ocfv8dpeThU+q8387yMW2fmbw2mFtaYCzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=o2Ofz3oN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731855843;
	bh=JQVrYU6d4ubBP/Hc+FxEBjDfGAMdibxfTsasMgVWbVQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=o2Ofz3oNactaPg24LnHs5UeFnymWigep8lH4d9sDHwJr1I4QjagZzcg1NbHrTK3ap
	 nY1rjQkYZ/+Fc0+zwRUILyQ7RbDvg6GkBGm3Od8tpwFmo0unI5e7br3W80FFrhiVrj
	 t0l5G/I1nyygv8TymGYb7HGwBaLQwTKeZLD1HEK35Ka/Z2AHxoKr8ZJRwQhiwDf8If
	 XGn//62t/cNhSYMfeqCbqrw+L79j/zL4T39GByJj6qW5G29xKnifoRyAz4u7Da7kOj
	 C1ZZCkoj3MBJt9e5uVHWTcALxpllio0hrsV6wNW12wXibUn7/nNVNcTQ0Siyg4IzLf
	 PxvlWRCNAy4Tg==
Original-Subject: Re: Issue in man page remquo.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A05E3.003FF1D3; Sun, 17 Nov 2024 15:04:03 +0000
Date: Sun, 17 Nov 2024 15:04:03 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4190675-1731855843-0001-2"
Content-Disposition: inline
In-Reply-To: <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4190675-1731855843-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 03:37:34PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 12:34:32PM GMT, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > Am Sun, Nov 17, 2024 at 12:38:24PM +0100 schrieb Alejandro Colomar:
> > > On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    Why is this no-wrap?
> > >=20
> > > Are you asking about the behavior of the function?
> > > >=20
> > > > "Domain error: I<x> is an infinity or I<y> is 0, and the other argu=
ment is not a NaN"
> >=20
> > No, it is about the formatting. Normally, all paragraphs are wrapped
> > as needd, but this paragraph has word wrapping hard coded explicitly,
> > which you usually do in code blocks or when long lines should not be
> > automatically wrapped due to some visual layout.
>=20
> In the upstream (English, man(7)) page, I don't see any hard breaks.
> Maybe it's an issue with the intermediate format that you use for
> translation?

Strange, both in the original file as well as in the translated
output, so something in the toolchain, indeed.

So disregard this bug (or add a full stop at the end of the line, I
just noticed).

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4190675-1731855843-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6BeMACgkQQbqlJmgq
5nAxgRAAsGhuc+XRh2tMqOe6r+KGFHh054P48qIpvxAADUElorviDl+6D3SKHQPB
Zi5eM1EzHIwoSYOKQFPbC3Ts+yl+LZvvSrZfpB3jllDo5ulzS0K8h+W/5xSP6uUh
N9Pb/vhKruGB3K5pYV6zKOxz54fKZnTEw2Ag2BICptKP1PhbcOqQgtZHOat54mIY
zM2PJAa0lI3oXq3X0HQcM6g2tOulD8Rcg1GaJhQJiWrUyYetaJWeWbM/JguGkpgz
jY7phtMzVfPZqWhqQC+VWPZNr2m/Bps7lbxLuZy5ErZz/a1FOjhqWOiDDZxFas7R
ue1fKprbEpqeAqDMIZh1a+jkBYDBLkCidrwUD3n+VBgfjI4wfbouxJyUSaiUNR0n
//wxsg73EQPL8ZLKH5sQePa2BOJ4UETe7vfvJAhVEw0yZh4HKhQdyW6Z+qJJRwbG
WvWLrOOVBzJckuY93nRM2l9esIXYz2q7ZxSGSOV/kzkcTCL8+obOddtrMcCd2zDx
4nBV3eL4x+hAt4kv98sj2T3MhmWVqxUVI5vZ8gpWtF6s3YzsHusQ2Sry0XYpB7Bn
lFrfckPpEIv1vkm05qxwz1QDeQBGnEw/bai+3QGhuVRjdLZVfmKeNwGgMwmahw6g
SkOQWBKL7t2m/E8t2Qq/mtgx37cSLxnFR5KQZ5r4hlTjij7UbiQ=
=dvGy
-----END PGP SIGNATURE-----

--=_meinfjell-4190675-1731855843-0001-2--

