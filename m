Return-Path: <linux-man+bounces-1985-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C09D0359
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A4A1F23045
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C060A1422AB;
	Sun, 17 Nov 2024 11:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Ke2ZIr/H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B581F224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844333; cv=none; b=jschPh+YJM6+OeShv7PwZf8NLZQwiaWokR/LIqxLpUsQYd/0wIpEsP7vleZuxSY/cBM8likvQutBI/mGldmAQdTjDxvvZg/dfYU3NRQGGPs9mbc3Mt6auFkBrBH1QFPsBqZSvY+VMhyYeCySIYra7e6z6zPmpvuiRQuS81GCGmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844333; c=relaxed/simple;
	bh=6DDN72MIfNc7g8Ba7xqlvS1Qb6lK8LwQfZSzkqaEvjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pdFj/yN7/rvIpwGJHwMgnJPXqNYUzeXGxh93U4NMRc2+u++1O+kOaVxxFUBDCTHz+vxQcwwcMs5s/vQzEbVl/WC5c7OnwdPbRqI12rVj5gg6o1Kh9ORl4Tbwaae0GOG7+IUm0B/VH8DT1Mo5FiYZmHbhsArczuBLfqQdiFFFj+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Ke2ZIr/H; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731844329;
	bh=87YcQsJGIUHiYJpLpRz85u+61kVbZy5CmdB6cIz1a/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ke2ZIr/Hx0SCwtf+oieBHEotMKClDnaasChcWwRzDIioHgOLAobLY0C5SlGyd4Q7e
	 3MbtPcJmBQ4fhPlzGT9QTSMSiWNhdyhybLFQyJwqLB0jPMgBFmpLBscXU+Xye8PGw1
	 mc0tSNY4AxEIKGbUJWkn2MIQuFUoO5DGBZFrM+IwoyIFeCUDBrqygkdTvrbrnnFkuJ
	 ubr5ADm7MMR8+LyRjAC2A4qydTR/gQjtDpqbMGtgDkEwjhw1J/AxRtRm+mWLO4L1Ll
	 jepRGWlvm24zttLVuvCc8lBeKkRE9+IzyponGZApgh5CNOyUeD+DaLDyOb78q5P8Ou
	 loereV55ADP8Q==
Original-Subject: Re: Issue in man page proc_pid_fd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200E3.000000006739D8E9.003FCF69; Sun, 17 Nov 2024 11:52:09 +0000
Date: Sun, 17 Nov 2024 11:52:09 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <ZznY6Q6IY9OKn0xg@meinfjell.helgefjelltest.de>
References: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
 <bkueim7gfjvp2w6tpqnjust3wwnibeuxmrt5pupeb3ycclujwm@6apz5kypcr5z>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4181865-1731844329-0001-2"
Content-Disposition: inline
In-Reply-To: <bkueim7gfjvp2w6tpqnjust3wwnibeuxmrt5pupeb3ycclujwm@6apz5kypcr5z>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4181865-1731844329-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 12:30:28PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    When executing this commands, sudo prompts me for my password
>=20
> And what's the problem?

=46rom reading the example, this is not expected. But if this is
implied/clear, then I can mark this accordingly in our file.

> > "$B< echo test | sudo -u nobody cat>\n"
> > "test\n"
> > "$B< echo test | sudo -u nobody cat /proc/self/fd/0>\n"
> > "cat: /proc/self/fd/0: Permission denied\n"
>=20
> alx@debian:~$ sudo echo
> [sudo] password for alx:
>=20
> alx@debian:~$ echo test | sudo -u nobody cat
> test
> alx@debian:~$ echo test | sudo -u nobody cat /proc/self/fd/0
> cat: /proc/self/fd/0: Permission denied

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4181865-1731844329-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc52OMACgkQQbqlJmgq
5nDjKg//VZQk521n8il6q89XDudczwgPJ/d2pxo02OT8yyjDWwFQJkP9LTgUbu6o
hKunexxJwpfR0bSl9xL4UUVkDdX0dmuJ/t7UeFawEcL01mohFWBWCX/C2lkw9v2E
FSlcbsMnyiHntxDfkxh8VZgquiFB99dJAKGj/O8B4MDtwxj1dHj5AVxP4cUehEwr
//kjZnWguE7qz95YxFsW9lthWt7dOQYQS/ZrBbsN13anI27IOpODOvTuLZcqMKlI
TB938DJlq+zKJknJEsBS5vJquhe+PJiPx+qfdDUaka35qAnqb4kxPoXZAkD0ps1k
HG2GxAgR+m4JVXtVDkrIJtCTIlBy1Q1lDOm2JdNdoKu3D/wYvsuxDGIequu2MMD0
qeTJtrikFJkHgkLrxulRy4vCxLI/JamjsmN2tXneZkPrPhsYXN3EWzbGbs8WMmjz
uHahW6RuQ438WuJdj1dk7rUAF77R8FBc1CGfX8XY9+I61nvoKt9bMXu/OtjgYZy7
C5dcTJPSI+2jZ8zO7TlQ//VJz/BzM/0IPUEwsFQSSbAOyViCd/lVUOxkPqxuRWpp
84Fef4Ls1xws3ezen0vbSf0deWUQ/Ovlp82S6H9e09EC+7Cjb0yhUGWEJ6ScVp9u
SawqLBBtOMiugmDG73pw2hMRY/OayQV8kCDSGrHjm52L4DVGlCg=
=ypuU
-----END PGP SIGNATURE-----

--=_meinfjell-4181865-1731844329-0001-2--

