Return-Path: <linux-man+bounces-4552-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A196ECDDD55
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F37530010D4
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BA3156237;
	Thu, 25 Dec 2025 13:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUITYiNE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7629EEEAB
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670363; cv=none; b=qkSCkjvCcgKMR7Ks6mjpYivRiUCE0s6vH2O3IbBPldgh/FehxsRgJiNuIvYAWZ9pfhQx/n4BtQkCaQZqQ0APtPJt1zyT/9tgvjZ1gnk8wptRuWxcNM5Z7g1aDvnriyDd4dHpDy/LUYkF9bwE1dZ22zbEB3TJdp6+U4A8AE+G6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670363; c=relaxed/simple;
	bh=azHGZy3UBhBDiL3e/20S9F5h6+8mi91VQTKWtEtyXkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pWhPbUu/gl8ShtdZGEVtGicNNIzix62jNMtnpsPcxoIuve61dPWdkOqiqrZhKA+5jngU9WsJMiTuWrkaVqRKV2JimPGi4f2u+Egd/iHVtV7gZm5QUFTC55AUlxVVEtVih5KMgsX+oW+FW8+R3DdQ5XhPq/s8WAr+b5RP9DXFFNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUITYiNE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28B49C4CEF1;
	Thu, 25 Dec 2025 13:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670363;
	bh=azHGZy3UBhBDiL3e/20S9F5h6+8mi91VQTKWtEtyXkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FUITYiNEUOjHRiZdkfJs3YLOsHE/cI2fO34plQ8Y1xjAySzKx+vFaJKlncY1s39e+
	 KdrJSTRnSaNu7PqBitnmLl3DFkjK+yqeg374pfTyHYa5PLx9lWNTurkQlQhdxnY55q
	 RJfwaAnsxI95wIgO8PmdcEoNBZh15Qczu6xCAuYbTucYIlsDOwlpbNybGANTIxAoqb
	 xg/FmYHfR/MM814WSZODWYRaInzgKv+3cRURBbRA5F7oSD0RBnLMDlvSZ+VHuNHg2H
	 2vWWNsdE0gzcyWg9RjhYTG3LGrO1D1EaGxaxvkhSKV2yk03X4O4Gk4Oz93P+xNHgxj
	 Dn632B/WztrlA==
Date: Thu, 25 Dec 2025 14:45:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MM_EXE_FILE.2const
Message-ID: <aU1AELF4sdrkaqu-@devuan>
References: <aUv634z31AeeWkuI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n5drw2tdrtttnf57"
Content-Disposition: inline
In-Reply-To: <aUv634z31AeeWkuI@meinfjell.helgefjelltest.de>


--n5drw2tdrtttnf57
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MM_EXE_FILE.2const
Message-ID: <aU1AELF4sdrkaqu-@devuan>
References: <aUv634z31AeeWkuI@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv634z31AeeWkuI@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     This the =E2=86=92 This is the

Thanks!  Fixed.

>=20
> "This the second attempt to change the I</proc/>pidI</exe> symbolic link."

--=20
<https://www.alejandro-colomar.es>

--n5drw2tdrtttnf57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNQBcACgkQ64mZXMKQ
wqmanQ//cg4dKCKX8hfYPoqwL3PGyRRLZVEOy8tAJugqywWl0nlqwZmFbDUtaicc
idJZPzKeqP67fni496W/kcWUQBzsG6LBEOYTgWr7lGZhJCd9UQ7voUMITp5d/NAV
D2s1OBx4m6M4UWFBamVvITTPCWu8LXIh8o1+QrxN9s/77IlHHSLor6RXXYh7SPfk
pdXS9HdoH4KQ42moxmliEsmm9FIJlS5KCc/ra1gA5UJwZjGP07ngsnGRpag/Hbas
cPqcn34X+1msScpe9CV8djV32TaX9rriQboT0+ylcYVNe+zzRM9es37ncLJIGB7W
p/en9PQmKSCXaxd98lm5OsE7M6XUIFxfgfjPpJBkTAUWv+iPZfs3VbZuK0be1xPM
b12Zlggs+7cMhJbF4TG4fasEJpXzEXF9DjLMLeBkkD24k9wjpbK2iFaWQ4p9Yg0I
xXgF0r9X7agnq726BNyEwaWgqfxXl5OA6q+BXPJYZv+M/9ASHQu7npYqQDDTLI4g
f6d5WLb/4Ch6cJHgmgpnxtz/tYbMZdVJAV+DNnp+2hKHPutAvT6Rey0aEjVuTO26
JMROJku/47gqtBIlYij3k98FmEYRLd6Jad24LIxjqPgGxrICCZ2fqtHQdr0JReMp
AwtnkI0My4sIVb5sKziTRvp9P0I4MgLEhz3HTJc+DfzxmX8K7Rw=
=dpK3
-----END PGP SIGNATURE-----

--n5drw2tdrtttnf57--

