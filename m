Return-Path: <linux-man+bounces-5325-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFaPCs2x22lkFAkAu9opvQ
	(envelope-from <linux-man+bounces-5325-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:53:01 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E20F3E4646
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:53:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49972300AEED
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 14:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B0633009CB;
	Sun, 12 Apr 2026 14:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHZPg0Lo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F304BA3D
	for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 14:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776005578; cv=none; b=ccTGO2+J8zZcL45wjtGZ1gLquL3OEaHGJZ6DK6YQ6nKf0Nk12SpZAgX7J2WEFutv7udX3Pc9F68VkWLEKgJ0OVDXIHpkk2rTCHxL2G6d5JE+Ff91Z2P9vrk4CGbRn0abWSBCJETCBrRiauI0TFj4M4eSQ7fu9RA2EohqQXRRPbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776005578; c=relaxed/simple;
	bh=sv9XMsP8ASMIdKfNRZLIWcfC/9a6Y6XgclWkPKR+pMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oS2V3a43mY/oGCPz7fM5vCNIpkcCBeouFmKj3BoxYwehu1DQQD/VpmLggz3isrnzMSLaxYW/JrlnP9MJqEa87ep/ws5GVFA+NW0evdppOx2TEH4s7iTq3EWaEIElHSvst4TlxRdRGUMJXT3LSPvflEw+GIdetIjUa8+OKTMFDJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHZPg0Lo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB55C19424;
	Sun, 12 Apr 2026 14:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776005577;
	bh=sv9XMsP8ASMIdKfNRZLIWcfC/9a6Y6XgclWkPKR+pMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dHZPg0LoAa6apIXwlus8tubzKfZgcPlQXMzlqC5P+KyW71VYCXFbLA/TJvvysZgxy
	 Vn3NqD3hiG8NpQa4i6e6I69DkpoSURf0ec3mP8TdvzMAbJjtye1tRUNxd2XSI5/ekt
	 6Fx4N8DStp6ATn32cAohLtqw6n/KMUckxo4Ort+4wf1A9PSvJkUJczAaai3/Kdo3i6
	 DrKKjWW66QNbRvIiQuppp72gqDYKcH8ORwBdSfZjDnh3qMLPo22hdYqkiCAYn9abap
	 gJfkz6PZyDzaa/rfGJn9NcE6QoGvJk+EHY4710F8NXvBBihWVu2UVo8eLSY1vt0n1Q
	 GEAMskeHN6EjA==
Date: Sun, 12 Apr 2026 16:52:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Sebastian Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/truncate.2: ERRORS: Add ENOSPC
Message-ID: <aduxaV1xheQ5A6op@debian>
References: <20260412144007.27323-1-zeno.endemann@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vzixkbnm2lqzf3y3"
Content-Disposition: inline
In-Reply-To: <20260412144007.27323-1-zeno.endemann@mailbox.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5325-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E20F3E4646
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--vzixkbnm2lqzf3y3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Sebastian Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/truncate.2: ERRORS: Add ENOSPC
Message-ID: <aduxaV1xheQ5A6op@debian>
References: <20260412144007.27323-1-zeno.endemann@mailbox.org>
MIME-Version: 1.0
In-Reply-To: <20260412144007.27323-1-zeno.endemann@mailbox.org>

Hi Zeno,

On 2026-04-12T16:40:07+0200, Zeno Sebastian Endemann wrote:
> This error can be observed for example on a vfat file system that
> does not support extending a file without allocating the space.
>=20
> Signed-off-by: Zeno Sebastian Endemann <zeno.endemann@mailbox.org>

Thanks!  I've applied the patch.

> ---
>  man/man2/truncate.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man2/truncate.2 b/man/man2/truncate.2
> index 946d6aaf0..c576b8329 100644
> --- a/man/man2/truncate.2
> +++ b/man/man2/truncate.2
> @@ -98,6 +98,11 @@ The argument
>  is larger than the maximum file size.
>  (XSI)
>  .TP
> +.B ENOSPC
> +There is not enough space left on the device for extending the
> +file size to the given
> +.I length .

This should be IR (italics roman) instead of I (italics), since the
period should be in roman.  I've amended the patch.=20


Have a llovely day!
Alex

> +.TP
>  .B EINTR
>  While blocked waiting to complete,
>  the call was interrupted by a signal handler;
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--vzixkbnm2lqzf3y3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnbsbcACgkQ64mZXMKQ
wqnz5w/+L0V49Bkd7lmfzp5rWoqr5QWl8wKxKwb90xNo6VQKhUFIiqHWkejKFYJA
DsfbfaQmp5BVGk6D9+oBiRTaN2pLZVzbnjZUH2DCjAMNXJoj5oJXoXa5WdRyDYmR
CQd25lh7a+OPtOi31RSfKNwrgkoJuHP98kJSgoDbkWKzW4diMAoYSYhU58PNGliA
pVc3skVQJGEERb8TE8ETOlQjxLARK/PPczGC9nC/MZJ6UpAK0ICDRr4TL9OL9ykr
0LU3RnNzbd5K6LemqUXhy4/IiHDZ8O1AB9O1SNqmsk3kfRIFbc7QECUplhmF1oZ+
LYNBLiClaKjUbOEhMusugqqpGUi+25VEes2mkZwy3EvHGVvbsiXKh+JgxdYwfmGx
LeHYVDjYYNthRmi8kzmBbw8HYFKgFHzq0iaLWaajdvxQf1u5I4wH0V3Ds4zzs2Ti
DdcnbX/4Doax1gZOklQOQJPLiqsJTixBsfvapQWyKqM8Cuv2nWZx5orOzK2OsPyP
PF7CV8Q/ULiiK9tENR2lDN3ClhKQZWRM1ih1o0WJjcioKyr9ftHIzWlMbo6h6Qnw
eC+EVIGQTViwoZWpuZwxAyrbryMBo00sQzGhnaqVTbeK17jKXsAJmkq7R4iN2wct
L85k+4RYc61vfP50CrM0AKgTczOpv97FnVm2DKRV2wHWEWq0TkY=
=Es0t
-----END PGP SIGNATURE-----

--vzixkbnm2lqzf3y3--

