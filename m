Return-Path: <linux-man+bounces-5503-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM7SH4W+BWpLawIAu9opvQ
	(envelope-from <linux-man+bounces-5503-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 14:22:29 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F654189E
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 14:22:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C9053060324
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 12:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B693DD85B;
	Thu, 14 May 2026 12:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGUjLZlS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A1B3DD84B
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 12:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778761278; cv=none; b=ZJoPGDiHt+AaWlyJejNFVcY2BX0gW/GUuh9Am2IIVqTOQz7lk0RPJUXcxfkPEaFe5Lbv70E5JpnJGneKGaU91COqKmxen1FMe2GS7hkRII0tRbIV8on7E1Ijvsfv3xQs6z6Lx3wOEgIvnPeLHcJ6QmFTl9XtO6hqmxVMNKhtDxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778761278; c=relaxed/simple;
	bh=ihIjycoXPeDnfNcqgPI5OMcHDO+guDdWu2qekdHYRWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DtmynIG8TFFxWW9xjtNq22C1GHlwGlOXxn0v17eLEI+N/j8zt7Szpjq7vCWvwOkkKFvHZpi6XAMisDUeZoQ3ktgwWX48THanw/iWG03yGPVkV/NYjzwf8vwI/yhCrs3gH85yFT51VuuZ4V6p/pUKvRV/y0gVLOrQz/6EBB0xkM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGUjLZlS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28B3C2BCC7;
	Thu, 14 May 2026 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778761278;
	bh=ihIjycoXPeDnfNcqgPI5OMcHDO+guDdWu2qekdHYRWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gGUjLZlS8aYQM3IIeKGQNgRbZMeiAqFlZu56d2+gG8Lu1h5rh5QIVLeBqbYAUJt82
	 4xZghfTvanwhfi9yy/X1lwIZ+AMG8yLwf7va1UpqfsR9LdBOpU5SyiyLXdcU51oxEO
	 AW/Ipa9FUGaPSPhkzCQ9QzCMVB0zCPer2MEbAwOvxH26kMSg05owj3nU5n0I3NtISF
	 IPf/3QtxJ3nedfu4hoaIPMOi5BaIkoNysR7kzTVZp6WJzfl+sgyB308UYGdWZFJaxO
	 OqMvJ4Oa8Qz/OfntE6SbkMRyebHRPzA37JJtt0OK/esEEBzR58DYoJxCGQZyEG/Se7
	 KWdsbKV61MjIA==
Date: Thu, 14 May 2026 14:21:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <agW4yMK6CinJGqXt@devuan>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
 <20260514070417.7923-3-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c6vkqroithuhthlj"
Content-Disposition: inline
In-Reply-To: <20260514070417.7923-3-gnoack3000@gmail.com>
X-Rspamd-Queue-Id: D08F654189E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5503-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--c6vkqroithuhthlj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <agW4yMK6CinJGqXt@devuan>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
 <20260514070417.7923-3-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260514070417.7923-3-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-05-14T09:04:17+0200, G=C3=BCnther Noack wrote:
> Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
> which controls lookups of pathname UNIX domain sockets.  Restricts both
> connect(2) and sendmsg(2) with an explicit recipient address to UNIX
> sockets created outside the Landlock domain (same semantics as
> LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.
>=20
> Available since Linux 7.1 (Landlock ABI version 9).
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man7/landlock.7 | 56 +++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 46 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 0e3a11489af2..d0d9c720bfaf 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -139,6 +139,38 @@ whose implementations are safe and return the right =
error codes
>  .RE
>  .IP
>  This access right is available since the fifth version of the Landlock A=
BI.
> +.TP
> +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
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
> +This access right only applies to connections to UNIX server sockets

s/only applies/applies only/

> +which were created outside the newly created Landlock domain
> +(e.g., from within a parent domain or from an unrestricted process).
> +Newly created UNIX servers
> +within the same Landlock domain
> +continue to be accessible.
> +In this regard,
> +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
> +has the same semantics as the
> +.B LANDLOCK_SCOPE_*

* is variable part, so it should be in italics:

	.BI LANDLOCK_SCOPE_ *

> +flags.
> +.IP
> +If a resolve attempt is denied,

'resolve attempt' seems weird.  Should this be 'resolution attempt'?

> +the operation returns an
> +.B EACCES
> +error,
> +in line with other filesystem access rights
> +(but different to denials for abstract UNIX domain sockets).
> +.IP
> +This access right is available since the ninth version of the Landlock A=
BI.

I see this is consistent with the rest of the page, but we should change
all of these to use cardinals instead of ordinals (and in digits, not
letters).

>  .P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
> @@ -478,6 +510,8 @@ _	_	_
>  \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
>  _	_	_
>  8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
> +_	_	_
> +9	7.1	LANDLOCK_ACCESS_FS_RESOLVE_UNIX
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> @@ -563,7 +597,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
>          LANDLOCK_ACCESS_FS_REFER |
>          LANDLOCK_ACCESS_FS_TRUNCATE |
> -        LANDLOCK_ACCESS_FS_IOCTL_DEV;
> +        LANDLOCK_ACCESS_FS_IOCTL_DEV |
> +        LANDLOCK_ACCESS_FS_RESOLVE_UNIX;
>  .EE
>  .in
>  .P
> @@ -578,14 +613,15 @@ and only use the available subset of access rights:
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
> +    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  /* v1                 =
    */
> +    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  /* v2: add "refer"    =
    */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v3: add "truncate" =
    */
> +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v4: TCP support    =
    */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v5: add "ioctl_dev"=
    */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v6: same           =
    */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v7: same           =
    */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v8: same           =
    */
> +    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  /* v9: add "resolve_un=
ix" */

We should probably use C99 comments (//), to reduce the width, and
alignment issues.

Feel free to send formatting patches for these side issues.


Cheers,
Alex

>  };
>  \&
>  int abi =3D landlock_create_ruleset(NULL, 0,
> @@ -598,7 +634,7 @@ if (abi =3D=3D \-1) {
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

--c6vkqroithuhthlj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoFvjQACgkQ64mZXMKQ
wqlNTg/7B8FJ62cEx3kqj71eUimnuBsXlj0lUmqP9DcOMNl92ucOFaKCf72CeNP+
+4++7IloTJoG2HI+a+DMX1GOIafeQgkqAwVSMOBBJJV9lD0LJ6rAzznc61v5VjmC
2n9asNl6c5cQqLNnsaa2UurqQRobGCxspbD95FUOqGOooeJrX0M0lKOoqv+rCxdb
4lNzb6ope7X47VwcUOYqTl37GqMVzPR3Fzwt7RvsK7m3FqS3K/4Q7G6Vb7f0zCfe
V45dfN34rev+69bC4JaeSOzKSwgw6hF9m7g21+GDKbEiMsS09aCS0ucysBj/G+Br
UMJa7V98xQqFqjfAci6OjMeISD74JBSVs4Pt1NUH6umpzT23XAqk+Buess9izmMQ
wQOs9ydlTbnVGJs6tIv7ALkcvmyvwB+NZFAyWrJEx/MrCdxw3+WEw/b9bgRgJTSf
ft8yMzbSpIZjRtC/nZafWSkYmfT+k9eZ1uNHE3jsiLZ8LQK4Yjjqs1E8E21wg3XC
UVOni0A4uk0g0lVxnpnFsfZYIZC4EFnpCDMTe/PA0YXGOaf+cEsgn3C6UXFvdEWM
T6FNKMFm6O4jhw99800GbpfcqFo1+zMhvAijJQ7tBR0T2qJqnVpTthdDFAWiS3wa
BbZPPDkWsYDn6ZTHAI32dTZKclVWhcJ8Jp/FUd88aaZo+xZFCxM=
=Ah9R
-----END PGP SIGNATURE-----

--c6vkqroithuhthlj--

