Return-Path: <linux-man+bounces-5408-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGbCCBUN7mmEqQAAu9opvQ
	(envelope-from <linux-man+bounces-5408-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 15:03:17 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70905469E15
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 15:03:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 009A3300B058
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 13:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94FE2E888C;
	Sun, 26 Apr 2026 13:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pyfs5ziN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E24D1F16B
	for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 13:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777208594; cv=none; b=J1DZYGpxRK8FIK8sIHOO+Y4QEUCKG7nsQgNLGi18OBPWb97RWO+b3/ywSMboDog9uscAqUp5Oikzx90KuihsLI6m7rfMFvkYlG0Np3DZCvU3whJ1G6840vWgxR5ypIepQEVvtNbudkWX+17d3voQ6NR1pqUUfD6QZm8nmyfYGHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777208594; c=relaxed/simple;
	bh=sz9MfekbXMJdZ02XzEqku+xl0gMNw1QtsA7bi8p0bkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BXuLtNqD6NQ2b6O1bZX/dECOTgWDrSu9TovN9jB7dm8kMBsersgzwQfZJCtbMyU3qwhhehqRZPZRlkCIFjQSCXx9RYVRYR5HLGMo3Df9C3xxVga+tJlMsKsHNL9VfD4bUXJkb+EBFMMGuWFTmDVOp+jq43+HAFKXezqV7OqgBJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pyfs5ziN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C46C2BCAF;
	Sun, 26 Apr 2026 13:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777208594;
	bh=sz9MfekbXMJdZ02XzEqku+xl0gMNw1QtsA7bi8p0bkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pyfs5ziNasM3Gke+2jLsgn8GUVrWnNE7gC3N7MnY86FeBBdRh+JWD/2wi+ogiJ9tM
	 Oa3oVgAQS4CGcD4mMaPPAL/1/MuXc3NuMfd7C+h5R5SpAXsI1z0yJZb9FKavBB0IFJ
	 bixbxfhN+BT5sTBB0MKnElJ/h3bJI08aAMjVyTL2d9uy1aHUqlBYeG7nGjY5QGrYLP
	 e9S+NcqGYbWrwR3hFgJX6LL0znwi6VDjdIAVb2JEkIJcLtLf/JBi98XYNav4r1t+5D
	 twuj3sULv+sOUURNsKKOeLsg+el0J+pRhN4zmF/rKpZ30l4FUm/1KgTz1AMMq7kIsG
	 cXfEgJNmV9cpA==
Date: Sun, 26 Apr 2026 15:03:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <ae4MinC7edJZRGFF@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="blar6ej7wpldhofo"
Content-Disposition: inline
In-Reply-To: <20260426111707.36541-3-dorjoychy111@gmail.com>
X-Rspamd-Queue-Id: 70905469E15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5408-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--blar6ej7wpldhofo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <ae4MinC7edJZRGFF@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260426111707.36541-3-dorjoychy111@gmail.com>

Hi Dorjoy,

On 2026-04-26T17:14:26+0600, Dorjoy Chowdhury wrote:
> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>

	Reviewed-by: Alejandro Colomar <alx@kernel.org>

Thanks!  Please ping when it's in Linus's tree, so that I'll merge.


Cheers,
Alex

> ---
>  man/man2/openat2.2 | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
> index f0770f3a0..ea3d9ac7b 100644
> --- a/man/man2/openat2.2
> +++ b/man/man2/openat2.2
> @@ -133,6 +133,20 @@ argument,
>  .BR openat2 ()
>  returns an error if unknown or conflicting flags are specified in
>  .IR how.flags .
> +.IP
> +.BR openat2 ()
> +also supports the below additional flags:
> +.RS
> +.TP
> +.BR OPENAT2_REGULAR " (since Linux 7.2)"
> +Only open the file specified by
> +.I path
> +if it is a regular file.
> +If it is not a regular file,
> +.BR openat2 ()
> +fails with the error
> +.BR EFTYPE .
> +.RE
>  .TP
>  .I mode
>  This field specifies the
> @@ -471,6 +485,12 @@ and an escape from the root during path resolution w=
as detected.
>  contains
>  .BR RESOLVE_NO_XDEV ,
>  and a path component crosses a mount point.
> +.TP
> +.B EFTYPE
> +.I how.flags
> +contains
> +.B OPENAT2_REGULAR
> +flag and the path is not a regular file.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--blar6ej7wpldhofo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnuDQ4ACgkQ64mZXMKQ
wqkgqBAAu615PFGi5NhGeWfk/n2myqYsG207trDIMzi+Wbq45nZhEsH4nFyg7+By
fOJvwfAk2l+J0EpCSfrh7vyEDqCmC6gymAjALlOeQ0TNNOcPSKNUxt29EIeAcg5z
tA9IYEpi3VU4ASRBM4WOaY8z1eRD+S5UTraopOPeQYNW67nwOTzrGKGBU9AXTm4o
4BqwwaZ0XWMidu5eN1qxt/ze79FIZgEGKMcw/S3QoLPpiqiID0nj1hzCnDwdo18o
kmGAlpheHVzCUgWtpAjcHFNwNyr4k7PGWsJToyMClkJafxDskrjOvUgqYsSnL4OD
JyfFwUlhWecV2XIICCrSM4W1dvuuvd0x8x6rhaYNllbLnwTwE8fiGQx9wnyKpTdE
TbD1pPeqjvENI5Ozw57G31f1kzRsQFi7JMdn2jHn7cfKx2B3twggPXx9JYTet5U2
qrdgxxojk3DPcRpciFABQu0Tb6OPIPMUlqTnwUQnCJo02Jm5QAPUb1IzThMMe93A
srQtFuKSfi6QiVYFu7cpXY001jTUmngc6jeNkmdrJmfr+zHIqlsxnieNAdR6lvMq
Vqv1dpPyUFr7GidQcaByhn2tbJSsotsli0sYKpBhOcE1IBrbtuscLR+hBV9JjDGB
Nh7svpzKPxASx9i7qVNZsrsqAUqauSdUVl8CKIm4DV0bTeXZHow=
=HPIy
-----END PGP SIGNATURE-----

--blar6ej7wpldhofo--

