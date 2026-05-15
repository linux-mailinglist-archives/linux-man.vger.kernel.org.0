Return-Path: <linux-man+bounces-5520-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEPDHUqlB2rP/QIAu9opvQ
	(envelope-from <linux-man+bounces-5520-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:59:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A955928C
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 804F23004C71
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 22:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B731EEA3C;
	Fri, 15 May 2026 22:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ0cNv3g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77A5395243
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 22:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778885676; cv=none; b=m8hx4bN2odFNZF3viFnAQ/kQD4jK5EbfRR866R4GxDDy79Y1/0qJBn0sEQppWtbmA+lG013SH+7b2mpGLOa/qvhAKptzh5MRyYNiCtsi5ozTkvWsTHIPBQMUPeJx5gjB10BHilglwgIZavlp/6iT8EEJ1E/6EzboxV9eJSXay4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778885676; c=relaxed/simple;
	bh=O3Qq2hNfCr5LDh1TLL9DCNVQ+7rUFFlLn9U5XQOcCnc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B3J+nzofRZeOpL+sLpaaamxXsGwhBtiE8U9JJom84mMS1gWe003vcW03kiMGEsBTqtu1woltQiOC00Bhd6xzwmmk7wHyFWZydwBrRQVKeWLGP1dUBMurUlSkSPW+kTM62Karh0VwlzVIBWE+LLaefHXdVAvmoCjVl73zyo01fqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ0cNv3g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2B9C2BCB0;
	Fri, 15 May 2026 22:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778885676;
	bh=O3Qq2hNfCr5LDh1TLL9DCNVQ+7rUFFlLn9U5XQOcCnc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VJ0cNv3gJOjHiXn6OcH7tmbVSJtsVRuzWb4HMz1QLzEV4LB1/kfDHHr5hELrAZ5Qz
	 D763qjABOTNUkUiibixD/f5s1FdhHQj6kfBSV8xAhxaEqTaDsp3FcYPJ/L+fBr9zYA
	 Myt5xIptvwuJYDeWqGWLWanNonuigHZPArlqvajtkSS7kzU2ULr/KZiHUuVijncL6/
	 OLv6wQ/jerP/QR9JbM1+0EkiSJLBGdwQjEL1v3RfJQnOe2TKV07u7nwgLXBiVCOJsA
	 SZVu4oKzWy8QazYt9F8s1SS+3rMIMzquYHfTmA1Jljypnr1740MqWSra2r42iSuktP
	 XUUZcNpHK54eQ==
Date: Sat, 16 May 2026 00:54:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] man/man7/landlock.7: Simplify references to ABI
 versions
Message-ID: <agekFCPOqkvmgFL_@devuan>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
 <20260515165753.8830-3-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yai5zuu4kl34rwsg"
Content-Disposition: inline
In-Reply-To: <20260515165753.8830-3-gnoack3000@gmail.com>
X-Rspamd-Queue-Id: 203A955928C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5520-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--yai5zuu4kl34rwsg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] man/man7/landlock.7: Simplify references to ABI
 versions
Message-ID: <agekFCPOqkvmgFL_@devuan>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
 <20260515165753.8830-3-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260515165753.8830-3-gnoack3000@gmail.com>

Hi!

On 2026-05-15T18:57:52+0200, G=C3=BCnther Noack wrote:
> * Use cardinal numbers for referring to Landlock ABI versions,
>   where possible.
>=20
> * Adopt the format already used in landlock_restrict_self(2),
>   where the ABI versions are described next to the flag names
>   in their tagged paragraphs.  For example:
>=20
>     .TP
>     .BR FLAG "  (since Landlock ABI version X)"
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Patch applied; thanks!


Have a lovely night!
Alex

> ---
>  man/man7/landlock.7 | 26 ++++++++------------------
>  1 file changed, 8 insertions(+), 18 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 0e3a11489af2..60915bdd9728 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -89,7 +89,7 @@ these system calls truncate existing files when overwri=
ting them
>  .B LANDLOCK_ACCESS_FS_READ_FILE
>  Open a file with read access.
>  .TP
> -.B LANDLOCK_ACCESS_FS_TRUNCATE
> +.BR LANDLOCK_ACCESS_FS_TRUNCATE "  (since Landlock ABI version 3)"
>  Truncate a file with
>  .BR truncate (2),
>  .BR ftruncate (2),
> @@ -98,10 +98,8 @@ or
>  .BR open (2)
>  with
>  .BR O_TRUNC .
> -.IP
> -This access right is available since the third version of the Landlock A=
BI.
>  .TP
> -.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> +.BR LANDLOCK_ACCESS_FS_IOCTL_DEV "  (since Landlock ABI version 5)"
>  Invoke
>  .BR ioctl (2)
>  commands on an opened character or block device.
> @@ -137,8 +135,6 @@ whose implementations are safe and return the right e=
rror codes
>  .BR FICLONERANGE ,
>  .BR FIDEDUPERANGE )
>  .RE
> -.IP
> -This access right is available since the fifth version of the Landlock A=
BI.
>  .P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
> @@ -191,19 +187,17 @@ Create (or rename or link) a block device.
>  .B LANDLOCK_ACCESS_FS_MAKE_SYM
>  Create (or rename or link) a symbolic link.
>  .TP
> -.B LANDLOCK_ACCESS_FS_REFER
> +.BR LANDLOCK_ACCESS_FS_REFER "  (since Landlock ABI version 2)"
>  Link or rename a file from or to a different directory
>  (i.e., reparent a file hierarchy).
>  .IP
> -This access right is available since the second version of the Landlock =
ABI.
> -.IP
>  This is the only access right which is denied by default by any ruleset,
>  even if the right is not specified as handled at ruleset creation time.
>  The only way to make a ruleset grant this right
>  is to explicitly allow it for a specific directory
>  by adding a matching rule to the ruleset.
>  .IP
> -In particular, when using the first Landlock ABI version,
> +In particular, when using Landlock ABI version 1,
>  Landlock will always deny attempts to reparent files
>  between different directories.
>  .IP
> @@ -245,14 +239,12 @@ error code takes precedence over
>  These flags enable to restrict a sandboxed process
>  to a set of network actions.
>  .P
> -This is supported since Landlock ABI version 4.
> -.P
>  The following access rights apply to TCP port numbers:
>  .TP
> -.B LANDLOCK_ACCESS_NET_BIND_TCP
> +.BR LANDLOCK_ACCESS_NET_BIND_TCP "  (since Landlock ABI version 4)"
>  Bind a TCP socket to a local port.
>  .TP
> -.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> +.BR LANDLOCK_ACCESS_NET_CONNECT_TCP "  (since Landlock ABI version 4)"
>  Connect an active TCP socket to a remote port.
>  .\"
>  .SS Scope flags
> @@ -260,16 +252,14 @@ These flags enable isolating a sandboxed process fr=
om a set of IPC actions.
>  Setting a flag for a ruleset will isolate the Landlock domain
>  to forbid connections to resources outside the domain.
>  .P
> -This is supported since Landlock ABI version 6.
> -.P
>  The following scopes exist:
>  .TP
> -.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> +.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET "  (since Landlock ABI version 6=
)"
>  Restrict a sandboxed process from connecting to an abstract UNIX socket
>  created by a process outside the related Landlock domain
>  (e.g., a parent domain or a non-sandboxed process).
>  .TP
> -.B LANDLOCK_SCOPE_SIGNAL
> +.BR LANDLOCK_SCOPE_SIGNAL "  (since Landlock ABI version 6)"
>  Restrict a sandboxed process from sending a signal
>  to another process outside the domain.
>  .\"
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--yai5zuu4kl34rwsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoHpCgACgkQ64mZXMKQ
wqllSxAAq2MMWMu5jijcoGXo5qS3L6vZ4zSl0sqDv8pDStpmB1eDJjaIr9hyVrLd
1dLBvGbFWibmYNLBehfZPaOh3lz2BDDuLL79Z5OF6K0c7iP95AC4DhrKkvXLtlOR
yrv/l5JHCz4FW+t0yA2R8amrSdp8xtS6+53TJpDjXOz6zI+QytA6S/F3xtRqFri1
7Q5o+ei8/7WvigQoAXrsAef4V6cL+0IkKJUiOtbNrL7WYMDVwIgXcPrI4IcdoPhk
DM63eI/ULwN6jcTdfsuPkx/6tvM+AQ5BI17rb5bs1jK7qMDGXWAn+9QYW45M3B4e
9yjq+HktGHeM++7n5wdU5PRDmG9qcI9Cl0jR2MbPcdZDvnc0Pb+6z+WGqzJbqiUZ
rUks+3/P86ZeayDsweXopzIAUvBVOdj4vpDBq3rYGRAZo5q4r3xsv3KrFVN9AiHw
tTXUegVYS19421dF0qJgJMsit8cMiDcqWns7VTf7z4bkTd4nmBWusHH5eY1NGYPB
U/hpgKvVjjBGAmy/h60NzsYVOvAdjykP1U1c76dhT16+xCOsqc0ziOYze1PGxJJd
T5hyBgjHuItfPvsNn+30pPqPsVq9d/ghI6Cm4Y4CwADJuGivZDc6qETTv8SzvMTU
ms826wlkGRZqbkmMRNkig4bBQI9ro+ZJwlT4WiXoMseP+Rg/iiA=
=Q+oB
-----END PGP SIGNATURE-----

--yai5zuu4kl34rwsg--

