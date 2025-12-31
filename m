Return-Path: <linux-man+bounces-4596-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 467DACEC094
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 14:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B9E33011A63
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 13:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3477D3233E8;
	Wed, 31 Dec 2025 13:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S59UqFy2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E924231691E
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 13:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188787; cv=none; b=fhi4zoAHVqS/nP1abYdsslB0+9cHFktwPBOAW4HRQOMrOQ4kdOvJItVMOtpwj2rv/9Hgq1PtJGss8hOjNbpAN+gY+ukIyz9G9fuHOT2UNysCNGSnW+WivNiA6x/dy6McVlDkxNEx1ZflVACFMFb6G4oSCO7wxsLXUn0+IH3sEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188787; c=relaxed/simple;
	bh=4Th42fAfbQ3uPb5LV6Zeakb9F02vg68Scx+KJmG7f/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E/2RDs42OIKbPohdmQEZdrU3LV3PBq57dvuaxnsAVgPGpgRDPVCpvuVNMSe6NNO0dZLeNvBeR1mtVCEHdZsXPs737+xS51d+nsRZjK8NxufjOmrXokqVqPnY1gW/ORF7rTmT5+bekLmN3H3Vy66EpNso+SHF9zroQC3pSU0Vkyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S59UqFy2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B28E8C113D0;
	Wed, 31 Dec 2025 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188786;
	bh=4Th42fAfbQ3uPb5LV6Zeakb9F02vg68Scx+KJmG7f/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S59UqFy2qfcV5gK9fyCH2A+3kL9ejrZZeHWNWEc6wW96dZG+4hHEbKY+QUATbfyaO
	 AEEBQ8KVAUpN1ZpxCnGkR4mPLPZ5VjGPPmEtIO+TnzaFEHPjUykLiv55Nh097Y/Zkk
	 t2y6OxztPw4rorAjg2knh+UR1wW/ltUHT45X//38C9e0fbV/DoxZt81vziI/kqUso1
	 YaFL196W+mxVAuvT/uXZ6Ckrno7P1jjH+ExHdshYtXX99941OQw3zmEQjZLBmksiJS
	 TCDKoYIRgTAkwFhOYmn3sqSYM/9q2wU+silr34J8kMKm+aam4IypBz1Bvq5UiaTW4B
	 x1Q8cDq5OXeTA==
Date: Wed, 31 Dec 2025 14:46:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <aVUpHL_0ZjWZGWpb@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ddq7kpu4gl4etka"
Content-Disposition: inline
In-Reply-To: <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>


--4ddq7kpu4gl4etka
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <aVUpHL_0ZjWZGWpb@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>

Hi Seth,

On Tue, Dec 30, 2025 at 04:42:01PM +1000, seth.i.mcdonald@gmail.com wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> Include 4.4BSD in the initial list in HISTORY, rather than stating the
> function's origin in 4.4BSD as a full sentence. This is more concise and
> consistent with other man pages.
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Thanks!  I've applied this patch.


Have a lovely New Year!
Alex

> ---
>  man/man2/sysctl.2 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/man/man2/sysctl.2 b/man/man2/sysctl.2
> index c59acff553..6566c4f5be 100644
> --- a/man/man2/sysctl.2
> +++ b/man/man2/sysctl.2
> @@ -73,11 +73,10 @@ .SH ERRORS
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> +4.4BSD,
>  Linux 1.3.57.
>  Removed in Linux 5.5, glibc 2.32.
>  .P
> -It originated in
> -4.4BSD.
>  Only Linux has the
>  .I /proc/sys
>  mirror, and the object naming schemes differ between Linux and 4.4BSD,
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--4ddq7kpu4gl4etka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVKS8ACgkQ64mZXMKQ
wqnYkw/+Oy5cMbw8vhMIllaMUKXTpRHf2LFNyB+qB7fC37KNU16+23z4/tWMOThM
idQMiVPddZVuNTUJkyi3lLiFUpauHbTIQYqhArDZ9dwWD3BZ4GAoGVep3kn+BSfH
Zi6FlZzDC2Q4ZGUQe/6T6Tb2WZsreMfgaB4vFh0sZXKSI6yAUDga3xbODcKP89O8
tkctsQiIKSSQtF4mzCzjCMp3JtBJeX8CQvqM9/XfxvRCZjRkpxbEQkXLM4be/qAg
OtVRXgV0zOqIMeKCr1vhhgw0g2C7F7Xz5JooyIvX6dCC1/YQx6P3BTsdDRil0th4
Yr5ezsTo7dbVAkI7sWwnwDOyYWlYpfG/rBTNQGEgj+Njrv1//VQxzDyxmz6Pdaya
IGDiBGQ/Fww4mhNrYaGeL4sI6wpIA4OBOC5YvZMsY31Bl9GJKUFLA56XODG+t9Ri
k2PqDnLhGlBfpwwl88c0HDxPcjC9eExP9XKZu8vrmWezRdQ7oQth3Xjn7RkyFKef
8IHP39S9VYsBdi3lp9x0FIolFvnuwGQRMJNOwHKcNnLjkiSYUqNlaqf+RRxH7ydf
EhZdQRiCkQNt7bLfHoQOIYZcwgs9o15aTVBtQfwWe50WdRQxhWCDb6Y4o8y7aAQP
IlUuJzORYcdUBULjFRLY9bo5fRVT7dlJ3IPTnzOqHhPkgqW1tcU=
=KNax
-----END PGP SIGNATURE-----

--4ddq7kpu4gl4etka--

