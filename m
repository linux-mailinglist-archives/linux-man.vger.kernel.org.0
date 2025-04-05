Return-Path: <linux-man+bounces-2748-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5902A7C8EE
	for <lists+linux-man@lfdr.de>; Sat,  5 Apr 2025 13:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F248188AFCF
	for <lists+linux-man@lfdr.de>; Sat,  5 Apr 2025 11:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799F01A23AD;
	Sat,  5 Apr 2025 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9HrgAe9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3918E18027
	for <linux-man@vger.kernel.org>; Sat,  5 Apr 2025 11:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743853096; cv=none; b=CDcEXyqMGKMHz169sW1zU+ofz5nW7hmuhMemgDG8ihwcyRFE5TtsVLIy1592ru9TEiBNGxPk0/t4rJXAK/HEn4k3X3cTsQNCb5FrLZEdSsGSxgIqq/cJKWdA10mYsu0OUP+piI7gSJpcdCGLOC6P4EBarUD2UPZSsqudS7gDX1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743853096; c=relaxed/simple;
	bh=GD+gmcJs7jtbH70/hbE7cR/CtMhFQpQvgYhS3RCisfw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ayMqTIBwLywqD58VxVPiU7g7730/3BCBXSeXA9HI3PHoxAUcJK04xYdJHB7cDCAfXPSVEm0FiQGLFESXt3f62qYwGhi5RDfbsBifhY308+YMkQKvNEqy2ZyCDVAfE3+mweTVAOyMty27pCd2dECbQN0ZOTbdahOSAdOKFTgXX4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9HrgAe9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA020C4CEE8;
	Sat,  5 Apr 2025 11:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743853094;
	bh=GD+gmcJs7jtbH70/hbE7cR/CtMhFQpQvgYhS3RCisfw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C9HrgAe9nJbWH5zBjNapfjt7SFAfADlncVpIdf1+Me98vZIQ/4HpqG2gLfNvTR2fa
	 73TXsydjrj1nKhRIEgbkz8Ww4iJYBPjkaHyiUyaP18S1FZri2MKhU2upEcW+7pKisN
	 AIYDM6poqHkwH10rBNifAjTA81uw0VMv6QtezsTxMN1x0bfpYljpZ+TzCodWJyjHlF
	 +gtgVeOLKSOdpzcCbT+SHETV2kS2zS18oO2JpFRJ0I3TKO7VGqOSfQiGG59zOyh0z1
	 cqAbtgArV+X3EA/5ecVmMCCYNj/ZeGEQsrcg8vzon6uNONiUiUIIgoJWt96mQesmCv
	 +iWsAE8+IZ5YA==
Date: Sat, 5 Apr 2025 13:38:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
Message-ID: <h7g7jiwesfucsqs4rswkj3yhqs6bjfpf6epzowl3xx5isde7yu@2x2ubqb3eixy>
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iejc5jfcxauejlyn"
Content-Disposition: inline
In-Reply-To: <20250404104723.1709188-2-amir73il@gmail.com>


--iejc5jfcxauejlyn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250404104723.1709188-2-amir73il@gmail.com>

Hi Amir,

A small doubt below.

On Fri, Apr 04, 2025 at 12:47:23PM +0200, Amir Goldstein wrote:
> @@ -99,6 +100,20 @@ If the filesystem object to be marked is not a direct=
ory, the error
>  .B ENOTDIR
>  shall be raised.
>  .TP
> +.BR FAN_MARK_MNTNS " (since Linux 6.14)"
> +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> +Mark the mount namespace specified by
> +.IR pathname .
> +If the
> +.I pathname
> +is not a path that represents a mount namespace (e.g.
> +.IR /proc/ pid /ns/mnt ),

Are there any other paths that may represent a mount namespace?  Maybe
we should change s/e.g./i.e./?


Have a lovely day!
Alex

> +the call fails with the error
> +.BR EINVAL .
> +An fanotify group that was initialized with flag
> +.B FAN_REPORT_MNT
> +is required.
> +.TP
>  .B FAN_MARK_MOUNT
>  Mark the mount specified by
>  .IR path .

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--iejc5jfcxauejlyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfxFiMACgkQ64mZXMKQ
wqngnA//RW+mnmBnOeH7kIhunaCP8xQGyQBB70gfW6k62SA2eoRwTT7AiACW48lJ
kFjOTC3ieliMJeIpHMtp6o3rrVztvlw8NXTUGJH07DOzZzJe0nDtaFCZOl03m1uG
e76V6N2jsv/VrMroER5xp5oCfaeVpUMz3kCxnZG0+rFolCgFl9q1VNs6RcsVpMVU
qQpULODKYxpF/Mo3LDFrm4CfjhUAbSEaqMKWRBAa0u2qiGDL7Lfw3dKj3a98WEP5
n5iHr1P6Kg+buGaoQlf/y8u0DS/aS7tt9yDgOw2GFXyvPkHEqyYay7GKgaB2uYdh
f2WsX83PV4WIyDRhoqz/ZrsaXtc4IxHcBiaguSKtDWydTRL/ClvHcsMkkwH0Uw07
ZUv/W70nPZyAulSspnd+E20gMgVOU3l3K9fopiPPNciZVGPqyQWE3IIdCgOWg/3X
osGg9fcWhynXiC1LffXV+hH3qezLSLyLIp7gpOpJGSd21etBYrC5wGf28vslmyoR
+WU2aWviLuvaLl+bz/QlUhU3orZqrqM4w7qqtO9ToigZW0+93lRmO6RhBREx7UBY
SEqzuaBVp66UN+Ai9xLkxbjtOV5DVc10URNuAVdjNarclZxGuiseQ8SPYcmMZBO1
dgcu5AvbmVSb1mcRZMdulmk4v7IFYJIZYBw68+UYRiQS/Cf9k9s=
=YKZg
-----END PGP SIGNATURE-----

--iejc5jfcxauejlyn--

