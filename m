Return-Path: <linux-man+bounces-5347-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDfaJRM35WlcfgEAu9opvQ
	(envelope-from <linux-man+bounces-5347-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 22:12:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF98425643
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 22:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40463300B3C1
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 20:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66672E719B;
	Sun, 19 Apr 2026 20:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLet+Jjo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A22C13777E
	for <linux-man@vger.kernel.org>; Sun, 19 Apr 2026 20:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776629518; cv=none; b=D2hCPtb/raDI3/im21klyw//jwDiUFzq+QodD9yUWPQB5qZ1mcPUblbsAv+1Vl5YYQVwgwFR1RQoqOlnmqS4NrwXk8+gZwjcdOrCnxNa/faYs+wGMj262F2S8ExVtCtEMUK0qo56yZOASckYiPtN1wKIfMzd54LPvE0sNSkRlQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776629518; c=relaxed/simple;
	bh=9Hv1trSgjwZiR06KIFQ0OHV6i7Br+qeyE0FC2fizZeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D+Br30N0AeNatTJombNVJTwg4i/8qTDkisC4qdLz+5OE/MdAeV20pBB5TD5sFHjj/VtEfIDJxn1Dm+QEfL1g92+hhJ7T+r/GfPD8B3xuG5fNIjocACqwav/SnfsEbxm/6YN4cYL0VK0hXo/t1Lzlidg/PVUvO/woxFuZTTyd+qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLet+Jjo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63842C2BCAF;
	Sun, 19 Apr 2026 20:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776629518;
	bh=9Hv1trSgjwZiR06KIFQ0OHV6i7Br+qeyE0FC2fizZeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SLet+Jjo8DWLNzHpIpZiIT7UuZwD2/Q8a0PjW6K3EDdmq9HLZFvzToc/blCiTQe7b
	 j+f65XKfecKiF7sqLMC9e4QZX0BwvW3tNvf9oLXet6lmV5/l3VDxAJST4fa0N6ZJG2
	 o1DSJ2WEs7UTwvP1X/1fOoaKTo5IT3sp8+6vifbkqSv/maZ2MSyH9We4vTGTDNfcp4
	 CMSDOX8u18nqrvQs2RXh1uS7vzfsy2v/BU1ZE/4F3GKFVzhpCTvlAIfersFlJYTwXP
	 f55IyTJiRbJAyyvWzZ8/BjAY8KJuEd0FValCLcOCmyjs7uDDtZ8n55cn+M1CkHaDHo
	 +wwe9ZNVWPvAA==
Date: Sun, 19 Apr 2026 22:11:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}:
 Document LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <aeU009YvtkZvFyeJ@devuan>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
 <20260413193446.24328-4-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xpdsc6g2dredl3en"
Content-Disposition: inline
In-Reply-To: <20260413193446.24328-4-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5347-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0FF98425643
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--xpdsc6g2dredl3en
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}:
 Document LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <aeU009YvtkZvFyeJ@devuan>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
 <20260413193446.24328-4-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260413193446.24328-4-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-04-13T21:34:46+0200, G=C3=BCnther Noack wrote:
> Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
> bitmask of fixed issues for the current Landlock ABI version.
>=20
> This mechanism was introduced in Linux 6.15, but backported to all
> older kernel releases where these errata fixes were backported to.
> On official Linux kernel releases, if landlock_create_ruleset() with
> LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
> the case where none of the known errata have been fixed.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man2/landlock_create_ruleset.2 | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 7bca831cbd65..90d0341d2682 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -129,11 +129,34 @@ version.
>  Unless noted otherwise,
>  all features documented in these man pages are available with the
>  version 1.
> +.TP
> +.B LANDLOCK_CREATE_RULESET_ERRATA
> +If
> +.I attr
> +is NULL and
> +.I size
> +is 0,

You don't say what happens otherwise.  Is it an error?  If so, you
should say so; or rather, specify that they must be NULL and 0, instead
of having a condition.

> then the returned value is a bitmask of fixed issues
> +for the current Landlock ABI version.
> +If bit N is set (i.e.,
> +.IR "errata & (1 << (N - 1))" ),
> +then erratum N has been fixed in the running kernel.

Are those bits documented anywhere?

> +.IP
> +In addition to ABI versions, Landlock's errata mechanism tracks fixes

Please use semantic newlines.

> +for issues that may affect backwards compatibility
> +or require userspace awareness.

I'd reflow the above as:

	In addition to ABI versions,
	Landlock's errata mechanism
	tracks fixes for issues that
	may affect backwards compatibility
	or require user-space awareness.

> +.IP
> +Only check errata if your application specifically relies on behavior
> +that changed due to the fix.

> +The fixes generally make Landlock less restrictive or more correct,
> +not more restrictive.

This sentence seems inconsistent.  Is more correct the same as less
restrictive?  Otherwise, more correct could imply more restrictive in
some cases.  If more correct *always* means less restrictive, it should
be parenthesized.  If it doesn't, then I'm not convinced by the
sentence.

> +.IP
> +This flag is available on Linux versions where errata were fixed.

Is it possible that future Linux versions don't have any errata that
were fixed?  If so, does this mean that it won't be available then?


Have a lovely night!
Alex

>  .SH RETURN VALUE
>  On success,
>  .BR landlock_create_ruleset ()
>  returns a new Landlock ruleset file descriptor,
> -or a Landlock ABI version,
> +a Landlock ABI version,
> +or a Landlock errata bitmask,
>  according to
>  .IR flags .
>  On error,
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--xpdsc6g2dredl3en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnlNwoACgkQ64mZXMKQ
wqnOQg//fhdgq5Bnq7H7xWt3Y7GCWS+knSPB+rCO6+63dxaPQqTwkS/+oQaxuKut
VWAX0l0Wk2ePGlWguGxvWWe9PX7xrKCbCxWDlm+nwohFOtfR//UiD/HOzi/t6wdO
5JlmDc1hrGRPWG8Zz5uTOj0cy7QN5D3mZ4U2w/NgkRXaFk/8zVyB/4Pc+jPUIulI
go9HlNT3ItVOcwHcqZY8RIWbTWacCeAlQ1TQ0IPSh4ZFzn0BkivsqG6oDqYWhT5M
WOG5NnQQ1FsdW80OR8fl4Sky91FD5YRkHvmfjYm/PJ0q/fp1iSCH+QIIy06MpjsJ
wNoO4a5vu5pTbitAg/8tMqCZE1biDlXv4jhyg0ktHTVgkwgMphAcj9CoduZNIMXu
oTQSYy9uVokeDjDA25nLIZ/R0APXOos4lP5Fx0OW+QBwaC9ryqLYt4EEMbp0JYgX
zQp3ItimyGJct5yTuY6B76lHLR5hcTe1DvysJvFbsjyxMb4OvMbEiLSBQiKdSrjq
P0eL+0DUew54l2ZyVhznfu6JA3hHMVQRNjDjZLFF4bE390VnX5/eTtk7LXa7DCVb
jtahf4g1v62hO9yD8d/0dPk6Dle1CANgZWbNUfDmvll/f4zilYfN5I21aLkZ01cG
X978zpHzm05z1ZsatCZuQloU+RkC2JdifBl4684Xyqy3DFhemKc=
=GELU
-----END PGP SIGNATURE-----

--xpdsc6g2dredl3en--

