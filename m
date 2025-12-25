Return-Path: <linux-man+bounces-4543-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6260CDDCEC
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F201300A379
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D590155322;
	Thu, 25 Dec 2025 13:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVac3VvT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE3CA55
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766668840; cv=none; b=tDWfWgHkSu0nqLoRV/ri64ULUuk8CK2VUYbMYcw7UEFPdQqb7/fgsqmonuwgCjU0BLSiyFWklmpbNZHYjGjSCen8osJDZRZmT/9S6lNNJN4EXgPdTM6sSXApi4AStLLloHhhS4FOuXqBZfVTHc0S/MigdobuTdjnm12JkN/eqjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766668840; c=relaxed/simple;
	bh=QtjOMWXlNXc7/a0/qQveJButAx0ccTqdj6MxR1Lrwjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iYvor/reaHqTeRdy2JoLKIgwea8vhW8Oy66xRsoeFsCAeunq83gHsofUZJoCOJnW+hNbrOrVuNwuFhQA+BAfvGZ9tKMfls+3gJJX1/e419ALsaLPZM7ixgsHhzM+kKqN887U1kjIHCtxRvWULOJOblYVoNBq7XVgLV9jXUCgRfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVac3VvT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAA59C4CEF1;
	Thu, 25 Dec 2025 13:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766668839;
	bh=QtjOMWXlNXc7/a0/qQveJButAx0ccTqdj6MxR1Lrwjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mVac3VvT6tegrXc1MEvIC5BNfXZEHwHYaZDdGu1sXdQYx7+yx0XGLbA3xDclA5SYv
	 SUxK1hC8wY8o0yGsPf0v72ov/u61VGxeWIvUyCj09C/bFyi90V0kWtlDi2w7iDCo1v
	 P8MydU6SNAv15nAOeuiEn3kT8QSILGwiUzcKRo0a5QHqIYgI44nmnTwcZV9k35ssrP
	 ze1ulqTwbAkdv5w0nO9FIyshjAQ2MYIibEbtzN12h9pxAle+QhduawsAOvzAgIM335
	 UTKZMWjDW+qK8CsByIE/fUwhaCeZYoMC90f/eLpnmO4dPs48KcKt2tALOZxFxFVWCI
	 npQ8dMDLgSuKA==
Date: Thu, 25 Dec 2025 14:20:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU05v_HKTPPwb71k@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h65unhml7mlef4ol"
Content-Disposition: inline
In-Reply-To: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>


--h65unhml7mlef4ol
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aU05v_HKTPPwb71k@devuan>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:26PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    multiplexor =E2=86=92 multiplexer

I see both used:

	$ grep -rho multiplex.r man/ | sort| uniq -c
	      4 multiplexer
	      4 multiplexor

Which one should we prefer, and why?

I don't know if any one is more correct than the other, as I'm not
a native English speaker.


Have a lovely day!
Alex

>=20
> "B<getpt>()  opens a new pseudoterminal device and returns a file descrip=
tor "
> "that refers to that device.  It is equivalent to opening the pseudotermi=
nal "
> "multiplexor device"
>=20
> "on Linux systems, though the pseudoterminal multiplexor device is locate=
d "
> "elsewhere on some systems that use the GNU C library."

--=20
<https://www.alejandro-colomar.es>

--h65unhml7mlef4ol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNOiQACgkQ64mZXMKQ
wqm5pQ//fYz61+iUFEy2WiL4hu3HasT3nmzxhTPSJ2oHjPZRfO4IwfqlIFH9skTs
IbIJxtO/JhUVeD5qPqqUGBtV2hf+40HNbig6/E2zoFhfsAHA1IMxzkGFG6kf5vXD
IuC4x57QHZ7R4Xoo4oP28dhKM7XnkFSA2wdijWxfSs4wU1+Zh83c9+qXxo03NVD3
kdqKpH9q/pi3RsGofY6es5sHadOzXVV7lB52/RzZQ4nyBg15sze25ipYduMVGDUu
2aqtFBFI0f8WvrgdQZjybxhzEiTJZPURiTuwCn43gN3aRa25c8mZ1etfFoxkKr0Q
HBcSFMbSXDYfp0emhGIrKB8LkcIxCv1TMUnXyazzOSdhiUwD2tC8Fhrt7fKq8YFb
GxUXv/rPN7s7dRjdjp7sXRuQE2eZyh+MSyq4KgD9rc+887Y2hIbGlTSDspCICp3m
KBeL3yA8uWlvPyPeOVwBRPCzSvikNndE+dUFqRl3UbCfXvF0hS7PmdHBpJt3O3Z/
EIXdSuZ6y+ZqfpjAAEUh7T0YkXSB+KsqKM5CeLHEiqgiFrFeUS+Wfn3DYJGP8NOF
uueuzkF/9TW/nM3l3nokjDP9Dy+pbFYsGZeUdzgGnGfJrC2xh+VidiTlpFgEuC8l
cRzf10h9+2NvVp5/aNgo3/WR1Pgd7v1Z2LyvrBmegf4xmmIhFow=
=pjDz
-----END PGP SIGNATURE-----

--h65unhml7mlef4ol--

