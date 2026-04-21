Return-Path: <linux-man+bounces-5356-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Np2H5fC5mk10gEAu9opvQ
	(envelope-from <linux-man+bounces-5356-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 02:19:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8644435108
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 02:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52320301AF62
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B651CDFCA;
	Tue, 21 Apr 2026 00:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ0NfY3O"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0C71C701F
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 00:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776730751; cv=none; b=jfYz+2y+DdONPcUxqXOm6YDH9kyeKWcF6LQK+Vr5voWs9z2nlZ/KaolUXyOu8zDWhwAPHD3Z9MExlSOXKMK7caNpKMHT/ewDrWYn2pl9neJ9TMX60gyBsbRzPWWBrqheSS2Wo5An8nxsafRzYrulCjK9hVWkbW1OaGQxajere6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776730751; c=relaxed/simple;
	bh=ZL9M1f7LKMHgOsc8n3lOqjxFmjoaPqzyW5QaCWuoRzM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RvhwhmzyxFiBqATN8Pz6nqXRhlhbzbPQmMiEahiVbuVhPJ6hwfzWLIA1O1DrpMGgsuLQRFAfVkXNH2Zjgb4tIEGpEXAL3TmZCbCxQQ3PPUomlmVBn1fmoW7/lr1WOymp/azcwwRLi//6/TfprFpVXeyHrzJaX0Olq/5h5jvdy1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQ0NfY3O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5F2C19425;
	Tue, 21 Apr 2026 00:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776730751;
	bh=ZL9M1f7LKMHgOsc8n3lOqjxFmjoaPqzyW5QaCWuoRzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nQ0NfY3OS780ntcFRQUVieiBH4knKopY36LBH9hfg8s/GY/bzmwUzNvVEUOhiMw3I
	 pQ35HOYuX9HZ+TDWjk2eS0BR2o+3m/jWMyMosdO+ypsSeZZJZuJbZUYJ0Q2E4DazMl
	 k0/VimxB/wwGNL2X9FlUMcHbdTQ5AKzjOPaWX1ip6rggfkccvV1TH3AfdqBqQvT4Ez
	 3LKw2L1aohFBUmpLmecR3U9U5yPUUI1LrUQdBOa8uGRJ86Uvz4ZXUIRVERtv+eB/2V
	 blJ5RqjnBPpMAB9uLJB7j2kS9PgYVXmN8c4pLFF9wGrDHHFnbxzexTfGQgpgUNQ4cs
	 LmPrj+h7pAxBQ==
Date: Tue, 21 Apr 2026 02:19:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/4] man/man2/landlock_create_ruleset.2: Document
 EINVAL scope case
Message-ID: <aebCb-P0VSlFqIpE@devuan>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
 <20260420223517.8020-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="edy5td5lybsbax6x"
Content-Disposition: inline
In-Reply-To: <20260420223517.8020-2-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5356-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D8644435108
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--edy5td5lybsbax6x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/4] man/man2/landlock_create_ruleset.2: Document
 EINVAL scope case
Message-ID: <aebCb-P0VSlFqIpE@devuan>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
 <20260420223517.8020-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260420223517.8020-2-gnoack3000@gmail.com>

On 2026-04-21T00:35:14+0200, G=C3=BCnther Noack wrote:
> This brings the manpage in-line with the kernel documentation.  Here,
> "scope" is a field in the passed struct landlock_ruleset_access, which
> can result in EINVAL if populated improperly.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

I've applied this patch; thanks!


Cheers,
Alex

> ---
>  man/man2/landlock_create_ruleset.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 5d64f4c2862c..d4eb5d827656 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -156,7 +156,7 @@ was not a valid address.
>  .B EINVAL
>  Unknown
>  .IR flags ,
> -or unknown access, or too small
> +or unknown access, or unknown scope, or too small
>  .IR size .
>  .TP
>  .B ENOMSG
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--edy5td5lybsbax6x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnmwnsACgkQ64mZXMKQ
wqn6IA//fGM56auvsqPmhytzyv665hhi9xhdEvMuVMSkMw9a6e7KyuQvnMtCGNc4
EoYBwMJ9JxDA1+sHXe/hBPiIdjC6Loh5QuiV48Ka/75PqFeiPmDQvqTrwlaaOpp3
Vb1cCsvCVujFGEUytWdLqM8xAbEkRh3vO7MTAyevyp1ZqxJju+UboYJEXt8meER5
quAqjA0JxOnidKSdE9jBkk7N/Jx0S9t8oLQp7CixK6vONm3Evo5mX83xnZ0Ww4FP
aNx014WDnk/f3qs5oZhNlb2s/jxWKnxzDuMD2BRSb/c/sJEHKf+GjqropNCpwUyw
DES+6gcK7hUrN7YQXABu64nvNQqAzMweQCkO0LsBtXYMcoLYnjyGKxDjqvPeBsG6
LG1LqyN1oQ6Eei+rE7DnS7V0EtQv1RuxKdJY5a7Y9VeagQGuF5gVH3DXLrrmDGn/
5Y7Oa1WB5qUBNMfq/uBqoMCIn7ZYPIMEeScxuhXIABivhfxXlAag/Hy6LT+dC4xN
3UyrrKfcWp5kyqBOSTu/eRVKZ2kMnMPIf/t6Wp8hJmL+Egs/qrP3Gc9SbVf6qsZr
PH5AUFC9oZaZIlyQJuwoQjKGfuoFvPOBqF5F5k04T6vtf//uM58/tvtqPSQM0vr7
xF1tkmV2IC5YuYyARdTeGIZ87IYN5hmKT59B83eC4pi37udC0EM=
=U92D
-----END PGP SIGNATURE-----

--edy5td5lybsbax6x--

