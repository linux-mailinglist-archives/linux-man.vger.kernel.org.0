Return-Path: <linux-man+bounces-1999-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D77799D03D8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F643B22008
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FAA2188906;
	Sun, 17 Nov 2024 12:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="a/EC1Woc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0171803A
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731846876; cv=none; b=ExhGbHIhk+jmqGFhKw4hP6RWTdL6GZnM3xRWXtX8EmfokCQZg7WGJs02dJhQpBgX4s9XokArDuxxqL4ukFpZMAqcAP+m3gpqrQVAGMl8W2yR67YQWBL2j+kWK+tD54bxK7qssmzN8kpvCynDMMuf12JiTbUzNOO/56YmBWVYbxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731846876; c=relaxed/simple;
	bh=O7eavm/ASLUs6Q8KZVTQ7aPSPc54Nwx1YdqN1bKocHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d3+y+lu93R5ZdaklvQFsKDXyVanmPDWrDVk5dAVPYvjtgqTVBhrbTUBo4OVgyKC3MVbbhQ1lMDBK/j3d9CE3Y/36LbogWdPsSjIFx481BtbyW1/BUy+2rx97dvoA895/MPjFVQSaUGb76HWwmpnJ+1p3RU2f2S2neWHz/BQ7Hvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=a/EC1Woc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731846873;
	bh=riWGq2/uYSZ6MtLSRr79vMYbIyIWeoIqazaZKOO7nic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a/EC1WocH4oNggODgztU0s4fBPghsB8egRO6K4IvrwPuua+FtmjBChVBf33K8fX/D
	 7fZFJMlx5tPhj2qxJatUrHVWDx8/f8HduQTGQ29CZQLcQGfJBV82ChDV78+bcfrNKI
	 rAm/SLiL9/UiwlEKqAyXYM0HFFihYxoQ1nKdyrUdejt9eLMNz7DsylPCLYliH9AxeA
	 KDrAQsW0bAM24K5igNQykN0mnGaDUgJ1wm7tgjQh8ITa0LbLhDtgmuw+2FMdpf3tEF
	 U/fC6ylI4w76Sl5jw5R9TL6ndsdmVZEfVLC2geVlzOpZdXCu4hwIJYaGrp5DJ+XxRk
	 bFp0alpmJEjNA==
Original-Subject: Re: Issue in man page remquo.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.000000006739E2D8.003FD603; Sun, 17 Nov 2024 12:34:32 +0000
Date: Sun, 17 Nov 2024 12:34:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4183555-1731846872-0001-2"
Content-Disposition: inline
In-Reply-To: <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4183555-1731846872-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 12:38:24PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Why is this no-wrap?
>=20
> Are you asking about the behavior of the function?
> >=20
> > "Domain error: I<x> is an infinity or I<y> is 0, and the other argument=
 is not a NaN"

No, it is about the formatting. Normally, all paragraphs are wrapped
as needd, but this paragraph has word wrapping hard coded explicitly,
which you usually do in code blocks or when long lines should not be
automatically wrapped due to some visual layout.

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4183555-1731846872-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc54tgACgkQQbqlJmgq
5nDqiw/+JjtCd1HbKQwIiuaFQwnsNvMtzMFs76tYOWLxiDTLCrx5ljka7VEhUXem
JW9JWwv6vSjrYnsC6nqASQsAEkm1gwonN0P9dIazHz8beSoquxa/NtTZejhWpgNW
PaWSOzQNqqT8zaPRIRWFP9TpCaMB3IqZ1aFth4zsDlxl+p8ryMf/77s7MBfYrv/U
SOa41S/vdMcCD6Qfz+vgZtPfh9Gv3MExjpgybiq2j6rvy0MFlto/acWPlq1eNLyU
NIJxXE/evxA/mkWgr0s+pKqg2xcY7QP9EjKCVjLb657CIsTFJppPgH7kU++C+Sp6
n3ZNEVd5zMPi6CZr5G2q2FGPQSxeLA+21b4oS4+42aPHu0sXWbaQaRUXonBgwddm
eiu0dqbRhYtZkx9CWOzc20ocaWaBLYfCXXELMpeuSjV12dSXfVvfeVa1k7Z2DHBn
zU6M7v7z6vCAGCN7vLvj1iDfDWirEz4w+cSMLHCamB1pc8VMlaFGX1I8C89Pz3It
chxX6boiIoynkWeyHMUl/8I2rgBR090Z/NVDQVsw+eIyyDPjFfJ9lu7dPv0g0kvq
ENWEYr7Nj0npJc7ZedjQ1BxqAFMdJKWs6rQh4dSqsHE28QtMjgzrwCWOJM+YN2bn
hwEVervAD10QlSAc/X4AfEaTByl4/SEFjvAGjY3ViVb0HuAvktQ=
=TqBk
-----END PGP SIGNATURE-----

--=_meinfjell-4183555-1731846872-0001-2--

