Return-Path: <linux-man+bounces-5098-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FpVCra1i2kKZAAAu9opvQ
	(envelope-from <linux-man+bounces-5098-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:48:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C255411FD12
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E2F4300F139
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836E52DB781;
	Tue, 10 Feb 2026 22:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDVyaJTp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ECF2288CB
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 22:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770763698; cv=none; b=egeKhiAAgq4VQkEouip+hpTAa+jy+YPdlKQ5dZHNCHRYDnvg5aMRejHnty47E92KWfHzW9E0UbeGdAQITIT9jU2oxF93Ndo7fgHqgcZ0hznTHUChe3dcOYgRjdCOcUA3Cc7QKEaMkoCOWYvu20UuPShzF8T28FQgCoYUC/KPffA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770763698; c=relaxed/simple;
	bh=Da75WUtLCrG8KAaVW0Y76OM/gvWuPUI4RjAvOIRMloo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pQU3TbyUD8kw66Yn8ZYh0CAz2lX0pbd/jJ6udyOsy+cDMfw22e4eZD/z7D/BYCzc+M7c5cSjLzAF5AdYez+XdsF9LUUoAeMXlBtUNFhRQgfikj08aIUo3wCp1ONFgGl+wegFUZCzpKHtCwZn3gBXGmq4RcYfep1MLeFD3SBEC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDVyaJTp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2273CC116C6;
	Tue, 10 Feb 2026 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770763697;
	bh=Da75WUtLCrG8KAaVW0Y76OM/gvWuPUI4RjAvOIRMloo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UDVyaJTp7+8XPOaZo4D5CtfiO0ZFipsvK2kC2hGT+fj/hkNOCdp1PaXp9Ax8X0OES
	 2W/k31xtDviN666H06Ut42xc46C6LcL7gCKREkvWvDgYImN1TPwFslGVlgYDJTbaU3
	 2ev7m1ONsriaFMCpTGms5CiZyn0yMo98Tj6Pg1fG0GfclaLZhB9J6jxQSxxyR7it6s
	 6xdSVgtklAXqx5h2oo7Ra30dKER64JU3/F3lWTMabv0BgGsed2Wrd0Oy2NuYFpxBeL
	 G2U4ARah26j1pIVFf2vTpgwy+n5fxdarIl+uSeNv+oP8pmM/eopk8h+huFDveMjIRL
	 EHf/7L8zsTeKw==
Date: Tue, 10 Feb 2026 23:48:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE,
 _ISOC2X_SOURCE
Message-ID: <aYu1nFlh6RP8I9Dd@devuan>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p2f7ebic6vcttmnk"
Content-Disposition: inline
In-Reply-To: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5098-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C255411FD12
X-Rspamd-Action: no action


--p2f7ebic6vcttmnk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE,
 _ISOC2X_SOURCE
Message-ID: <aYu1nFlh6RP8I9Dd@devuan>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>

On 2026-01-27T22:46:23-0800, Mark Harris wrote:
> _ISOC2X_SOURCE has been recognized since glibc 2.31 (2020).[1]
> _ISOC23_SOURCE has been recognized since glibc 2.40 (2024).[2]
>=20
> [1] <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D777d75fbc07=
b>
> [2] <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D42cc619dfbc=
4>
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Hi Mark,

Thanks!  I've applied the patch.

Have a lovely night!
Alex

> ---
>  man/man7/feature_test_macros.7 | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/man/man7/feature_test_macros.7 b/man/man7/feature_test_macro=
s.7
> index f0d4a51f2..a0c97f2c5 100644
> --- a/man/man7/feature_test_macros.7
> +++ b/man/man7/feature_test_macros.7
> @@ -358,6 +358,24 @@ .SS Feature test macros understood by glibc
>  .I \-std=3Dc11
>  produces the same effects as defining this macro.
>  .TP
> +.BR _ISOC23_SOURCE " (since glibc 2.40)"
> +Exposes declarations consistent with the ISO C23 standard.
> +.IP
> +Since glibc 2.31, an equivalent macro named
> +.B _ISOC2X_SOURCE
> +was recognized
> +(because the C23 standard had not then been finalized).
> +Although the use of this macro is obsolete, glibc continues
> +to recognize it for backward compatibility.
> +.IP
> +Defining
> +.B _ISOC23_SOURCE
> +also enables C11, C99, and C95 features.
> +.IP
> +Invoking the C compiler with the option
> +.I \-std=3Dc23
> +produces the same effects as defining this macro.
> +.TP
>  .B _LARGEFILE64_SOURCE
>  Expose definitions for the alternative API specified by the
>  LFS (Large File Summit) as a "transitional extension" to the
> @@ -692,6 +710,8 @@ .SS Default definitions, implicit definitions, and co=
mbining definitions
>  .BR _ISOC99_SOURCE ,
>  .B _ISOC11_SOURCE
>  (since glibc 2.18),
> +.B _ISOC23_SOURCE
> +(since glibc 2.40),
>  .BR _POSIX_SOURCE ,
>  .BR _POSIX_C_SOURCE  ,
>  .BR _XOPEN_SOURCE ,
> @@ -876,6 +896,10 @@ .SS Program source
>      printf("_ISOC11_SOURCE defined\[rs]n");
>  #endif
>  \&
> +#ifdef _ISOC23_SOURCE
> +    printf("_ISOC23_SOURCE defined\[rs]n");
> +#endif
> +\&
>  #ifdef _XOPEN_SOURCE
>      printf("_XOPEN_SOURCE defined: %d\[rs]n", _XOPEN_SOURCE);
>  #endif
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--p2f7ebic6vcttmnk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLta4ACgkQ64mZXMKQ
wqmxYQ//d3g/F4nKViabf/6HXTqodyqR7r6mQq7wclaxcPsZmyuoRx6d814zz2rL
zH4wBIv4gpS3FujDlLRKSrahpcigmKjle2xeujV0hBxDBIXRtHEB1TZBx2EHQaFq
hxLUoGan2PEeOtlJz3jgsj/a/TeOtqHqqai0o7o4dLJEz7upf9XKTqDvqM1t3fst
g666dAflVP38NQnvpRHbxD5EkAB6fnLqZhESwBYpXEBYEhUqnNRGVoMU+ddDjd8q
64DE3jxyE8GMpqBlmmuJ91P8ZjhWuHE/8tyez3+W+gCW13F+UzTmfP//uCCxP5qF
8b/xNDyzPBHZEkO7+AMWnIOSMA9tLK3ogAUc7PCKr+OLKlrsXqZdh/Dm/6w1TLNi
OGs6LO3FPETxS1OF3sQj6nAMu5FRJMByr2L2k8YcN7tfknMFRETh6ajXJm9+Ht2/
W6xsFvhc//Ym2pdDNzuhheur/jSY44FR35xS1E5j8ziTfY/4vGolTmSVp3vYs05K
TlsmgvhmxCOimVWucxGOzELr3QavNmysabmiq/R3xRytlj3/5RfQMrOyeArTnW4I
Ce3tXKULUkDPk7BWiK1dGKF0utRUkOAWOfQK0u8e9/3AxA1oSDMGMhO+EMHnwgeK
oCaFaIVZE6N8KXA77HmekdLT97FOYs11gZFckh1nW7z4Wh6EEa4=
=wrO4
-----END PGP SIGNATURE-----

--p2f7ebic6vcttmnk--

