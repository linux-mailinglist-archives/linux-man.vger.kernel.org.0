Return-Path: <linux-man+bounces-4542-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6BCDDCE9
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D02BD300ACE1
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4444A13C8EA;
	Thu, 25 Dec 2025 13:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3/zlzdu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E5AA55
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766668649; cv=none; b=mYOc8Ql6t/bqwM9Caoqpt1ua4Lh4wQFr3EWg9UieCrpYVLB1tpGiJhwzNSnjQjoc9Wk7BUbWyP/oM88wRwqjZhU55VTqmdm8KVgUON4D8qRc/mG6FlVqQ6RjHmzPr+bP681WJ3SZcINndPRKGRt0I4Gn2TE95/muL8xxep/8eME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766668649; c=relaxed/simple;
	bh=EjAmQPMlLkzzUAjX0S8NRFMKpP2jZrCT+EzOZfzVyEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OMkB6h17eFw4VYVJkT5JVy0S3I52YcaHi9vfLwwVnFs4xTi69DYukaqozE4YIyYy93WUsIFudc8SykDIJRnSYRNe7WK7aQVeEao0XtmgexFWe+yN6ETz0VJXopAOYwS8h9ckGigEisJMimosC6fIHeBrFUIpTaxSB6NnngFwGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3/zlzdu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A32F7C4CEF1;
	Thu, 25 Dec 2025 13:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766668648;
	bh=EjAmQPMlLkzzUAjX0S8NRFMKpP2jZrCT+EzOZfzVyEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W3/zlzduMiedHBqeepSunYo6ejb4sa87Fu3fAhyFceIT1H6XPg+sfN0RrekO40M6S
	 xcmvX8nNWMI4LmvcktIvIxLC8TEr1tYgFeBbTgd6AsAi65HkaQuhTliQmqt2lLpAs8
	 3ZTTUTzwHwv/lL3XP+eparluBjhf/+UoqsCQoeOvUplSI9+BrmM7PPX9A9wLFO6H6G
	 BlIS6DM1cleHDHzUCu+iusuujsrAzSDM9iY70/tAeNcjDJxU28Gd2LlASKrTQahC/p
	 aOkLMJ3T27kjFvtw9otO0Wt+pWo5tuNeYPZ86mG7OjL427ApB2TEeFCjN3l1ENToz3
	 jnGFAh0PVoPWQ==
Date: Thu, 25 Dec 2025 14:17:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU03nbimYcA5kn8J@devuan>
References: <aUzjslUS92HiUBEI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ddrr3i7eciluqbxj"
Content-Disposition: inline
In-Reply-To: <aUzjslUS92HiUBEI@meinfjell.helgefjelltest.de>


--ddrr3i7eciluqbxj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU03nbimYcA5kn8J@devuan>
References: <aUzjslUS92HiUBEI@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUzjslUS92HiUBEI@meinfjell.helgefjelltest.de>

Hi Helge,

On Thu, Dec 25, 2025 at 07:11:46AM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     The 2nd sentence is incomplete
>=20
> "This directory contains one file for each module parameter, with each fi=
le "
> "containing the value of the corresponding parameter.  Some of these file=
s "
> "are writable, allowing the"

Huh!

That happened in

	commit 6df684e0d3e9129d27d2f37a35226bacee92f62e
	Author: Michael Kerrisk <mtk.manpages@gmail.com>
	Date:   Mon Sep 11 12:14:44 2017 +0200

	    sysfs.5: Various additions and improvements
	   =20
	    Drawn from Documentation/filesystems/sysfs.txt, P. Mochel's OLS
	    paper, and some naive investigation.
	   =20
	    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

which contains

	[...]
	+.TP
	+.I notes
	+[To be documented]
	+.TP
	+.I parameters
	+This directory contains one file for each module parameter,
	+with each file containing the value of the corresponding parameter.
	+Some of these files are writable, allowing the=20
	+.TP
	+.I sections
	+This subdirectories contains files with information about module sections.
	+This information is mainly used for debugging.
	[...]

Luckily, there's another similar sentence in the same file:

	$ grep -C2 allowing man/man5/sysfs.5=20
	.B sysfs
	filesystem are read-only,
	but some files are writable, allowing kernel variables to be changed.
	To avoid redundancy,
	symbolic links are heavily used to connect entries across the filesystem t=
ree.
	--
	This directory contains one file for each module parameter,
	with each file containing the value of the corresponding parameter.
	Some of these files are writable, allowing the
	.TP
	.I sections

It seems he wanted to write that.  I'll apply this fix:

	commit 318b197cd7cd76c05a753e467ac8468676f9f344 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Thu Dec 25 14:14:30 2025 +0100

	    man/man5/sysfs.5: /sys/module/parameters: Fix incomplete sentence
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Fixes: 6df684e0d3e9 (2017-09-11; "sysfs.5: Various additions and impro=
vements")
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man5/sysfs.5 b/man/man5/sysfs.5
	index c9dbab772..971b7aa32 100644
	--- a/man/man5/sysfs.5
	+++ b/man/man5/sysfs.5
	@@ -239,7 +239,7 @@ .SS Files and directories
	 .I parameters
	 This directory contains one file for each module parameter,
	 with each file containing the value of the corresponding parameter.
	-Some of these files are writable, allowing the
	+Some of these files are writable, allowing the parameters to be changed.
	 .TP
	 .I sections
	 This subdirectories contains files with information about module sections.

Thanks for the report!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--ddrr3i7eciluqbxj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNOWUACgkQ64mZXMKQ
wqkRAQ/9ErzWP2VzjCiqsrx8q5SyKZu+XbLRBHnTE2lKZtlE0ktFXbWSyovw/6Rl
xuLEccLHng5bHgWTcspdaCuZmgiJSJCwmjdzFLivlF9vWJ6VHurrN+np/sTcdva1
9kQSXN0nbg1OR4zKPViiBoT/cGlvaF4WT6inP2Wif6C0+61InoF1L/j6jfO+UsKw
izLF4qVHrar8Rwanvhhbuu1dPwIF6LnrF6PkGk8LQwzRsN5fvwSVSQfYXEMsz9Oq
OioBaFY+AmTQpwVf3DqrBBpCMaHfF08n0j3kYdnWzGUVK2e2qbyYeAfUi59hbK6C
+wK3n7qkDaADRIp9FEDbx5+66bT8MvqMrg0mQzDgdBGLtwhT8tuV4I+e2MzvZGtE
h4A3agLsZh2/ELSu4Qo80j8IQDJrbiuuCyJDxA34D1Xcu5gKcpXSM+3g7mkJY3+V
fcEj7phikX8oGGwvv1qhcYWLUiFmEjyp91fnAdXWL54lfTT8we4dWa2/S2iiETpn
j91+LuxKrK5BWXAgRkso3D/74T/G8jSesvhLtQXHuHKJ9PkrhTiMLPaOkbf2sm4P
ZVC3vqg0xGAij3yBDWcRUtW2x1q80mM+4QkWMDEdbOXaDEU9kbva6tcSWoaA4aHQ
EtzsQ9PnOqJT4LfQOzxf9rC+l3dwXBjZ4GyncvXIOg1bGhNEh3c=
=vO37
-----END PGP SIGNATURE-----

--ddrr3i7eciluqbxj--

