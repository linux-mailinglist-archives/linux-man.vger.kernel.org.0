Return-Path: <linux-man+bounces-5521-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBVQGrukB2rP/QIAu9opvQ
	(envelope-from <linux-man+bounces-5521-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:56:59 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D255921B
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C035300CEBE
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 22:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2E9E38F629;
	Fri, 15 May 2026 22:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk/4UbgE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FB635E1A9
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 22:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778885809; cv=none; b=H/J3Kq0hnf1XaUj+E+cvsHkeT0GR1hwm5sGNJG0/5X75fZoBw9do3v0WSszTpPr6VtfmQArhpIP7hjv3EaJgz/p5DlLgi9ARHT0eyExMYq+J1SvT3t6znmGmXWyeikYFj8+Ht7Om167UICivF/dTT8IHYf1ElWZ8sxJZfW0KMms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778885809; c=relaxed/simple;
	bh=0EL1mIAwNcCGTzgNqccXrUKjBRddXZvNtqM2sJ8MbPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u9TrQSySW4HZZNcm58grJPNCzwzbBUDjDiCplZ15D9TtyQzGucSX0hF8fqkSeyF4LDKNm/8a5qCv0LGsGZrjxJ3vk1/vpkOv5BtFTaiV68WU+wvAQXIBihXddH6MzkyDMP9K4zScvLXyl7/cCuKXiCvK4QdQDi7+4NveALTUKS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk/4UbgE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C93CC2BCB0;
	Fri, 15 May 2026 22:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778885809;
	bh=0EL1mIAwNcCGTzgNqccXrUKjBRddXZvNtqM2sJ8MbPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nk/4UbgEho86VYIX3zWLGriqgxmCpiYaNLPblkY4S/IpyoMbtGZ7MI5dNQ9ICG6QT
	 Mp9+kQPWyAKZrb7JtfKzPNKH6fNEoXwWiLl+GCEOrAHwcFGgVn7Xq1Qjvm1OJdl5b6
	 SIh1aH3M8Rz0seHMdDAzG2rzIbEGYASCxRQLKj1KdVJaT5esYbqWEG3S7E5iChMa7g
	 Vg0qHqOkBQDb+Ovdx+rRrIYBCagtnU2azWv8ILqIPPvUIpmkTv3LNusUYkNXCKCKos
	 3/icu/Jz52N/xZLlvoRcRbf1HezVdiyEwT1ZTS6vP6oVJGhv7iAZnbWaD7a3u3oa4r
	 AGIbmvgV+AW0Q==
Date: Sat, 16 May 2026 00:56:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/3] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <agekjdIfWwu581gH@devuan>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
 <20260515165753.8830-4-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5lmiultddoxftf36"
Content-Disposition: inline
In-Reply-To: <20260515165753.8830-4-gnoack3000@gmail.com>
X-Rspamd-Queue-Id: 0F9D255921B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5521-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--5lmiultddoxftf36
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/3] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <agekjdIfWwu581gH@devuan>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
 <20260515165753.8830-4-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260515165753.8830-4-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-05-15T18:57:53+0200, G=C3=BCnther Noack wrote:
> Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
> which controls lookups of pathname UNIX domain sockets.  Restricts both
> connect(2) and sendmsg(2) with an explicit recipient address to UNIX
> sockets created outside the Landlock domain (same semantics as
> LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.
>=20
> Available since Linux 7.1 (Landlock ABI version 9).
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Reviewed-by: Alejandro Colomar <alx@kernel.org>


Cheers,
Alex

> ---
>  man/man7/landlock.7 | 54 ++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 44 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 60915bdd9728..55cd002d5789 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -135,6 +135,36 @@ whose implementations are safe and return the right =
error codes
>  .BR FICLONERANGE ,
>  .BR FIDEDUPERANGE )
>  .RE
> +.TP
> +.BR LANDLOCK_ACCESS_FS_RESOLVE_UNIX "  (since Landlock ABI version 9)"
> +Look up pathname UNIX
> +domain sockets
> +.RB ( unix (7)).
> +On UNIX domain sockets,
> +this restricts both calls to
> +.BR connect (2)
> +and
> +.BR sendmsg (2)
> +with an explicit recipient address.
> +.IP
> +This access right applies only to connections to UNIX server sockets
> +which were created outside the newly created Landlock domain
> +(e.g., from within a parent domain or from an unrestricted process).
> +Newly created UNIX servers
> +within the same Landlock domain
> +continue to be accessible.
> +In this regard,
> +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
> +has the same semantics as the
> +.BI LANDLOCK_SCOPE_ *
> +flags.
> +.IP
> +If a resolution attempt is denied,
> +the operation returns an
> +.B EACCES
> +error,
> +in line with other filesystem access rights
> +(but different to denials for abstract UNIX domain sockets).
>  .P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
> @@ -468,6 +498,8 @@ _	_	_
>  \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
>  _	_	_
>  8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
> +_	_	_
> +9	7.1	LANDLOCK_ACCESS_FS_RESOLVE_UNIX
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> @@ -553,7 +585,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
>          LANDLOCK_ACCESS_FS_REFER |
>          LANDLOCK_ACCESS_FS_TRUNCATE |
> -        LANDLOCK_ACCESS_FS_IOCTL_DEV;
> +        LANDLOCK_ACCESS_FS_IOCTL_DEV |
> +        LANDLOCK_ACCESS_FS_RESOLVE_UNIX;
>  .EE
>  .in
>  .P
> @@ -568,14 +601,15 @@ and only use the available subset of access rights:
>   * numbers hardcoded to keep the example short.
>   */
>  __u64 landlock_fs_access_rights[] =3D {
> -    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
> -    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
> -    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
> -    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
> -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
> -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
> -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
> -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
> +    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  // v1
> +    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  // v2: add "refer"
> +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v3: add "truncate"
> +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v4: TCP support
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v5: add "ioctl_dev"
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v6: same
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v7: same
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v8: same
> +    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  // v9: add "resolve_un=
ix"
>  };
>  \&
>  int abi =3D landlock_create_ruleset(NULL, 0,
> @@ -588,7 +622,7 @@ if (abi =3D=3D \-1) {
>      perror("Unable to use Landlock");
>      return;  /* Graceful fallback: Do nothing.  */
>  }
> -abi =3D MIN(abi, 8);
> +abi =3D MIN(abi, 9);
>  \&
>  /* Only use the available rights in the ruleset.  */
>  attr.handled_access_fs &=3D landlock_fs_access_rights[abi \- 1];
> --=20
> 2.54.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--5lmiultddoxftf36
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoHpKoACgkQ64mZXMKQ
wqklkg/9FoVopi80kEpetqfD7Kz0MPaB3PZzzVydpaHkgSH1gmd27dddvlciqdqy
Lux/UCwge/aUcFdX1r35P3BhVd1rviu3LSMnghqj6Tp9rZNKiQ8Mpg5XBPqhjj5V
UPDC5olgX2jElAM7yuj/TsjBwel8Ia/V7RVjobZofblHKVJLoAYZEq4EjhzdsHBO
QjSR8c4EAWmMlWLztoWEu736v4FVR5S4zF+PHO9abz/v0WQOae2z/PLyacSwtbwm
ejcaQrTFiJH1Svgwat4B5rx+SMX7ty5K9NjXH9S1/+9Oueh6D+QgnUUzWqciCSYh
qnpu8ztzIZ+RWHmP+8B/AAX+7DRhFWuVGlPUqm9GXCNasYSlxZiy2P8JUHhJDJlE
TCu46eqvZC8UceeXC0sAMruJbZbnxm3n9Yo6FyaH1zZyMJ1rfjXzXAGLrQLWmDPO
z8FGBACaY4YKTvPyqQa6brNurYyo4Uf1biQccB2VIWe7JGWQa9P8ch5xOzuSK/2A
tLlVgcQm1Gy0cR4Xiev0ret89Gl67Mj8ioT86O0SozAAGPeOv5zBP3UiICJNZ8ae
8s/F+F+dL4CrS1ryhrJcQvISJt1qGQVV++IJ+kYoM1R99p/EKovbh+938gmmrBSq
QQ7RPzDHxAkysY1VT4a4/aB2d9dgqxKfVjZLTL8vLH+9W5mecow=
=YfJE
-----END PGP SIGNATURE-----

--5lmiultddoxftf36--

