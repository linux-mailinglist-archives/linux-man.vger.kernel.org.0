Return-Path: <linux-man+bounces-5407-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEpAFicM7mlmqQAAu9opvQ
	(envelope-from <linux-man+bounces-5407-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 14:59:19 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0020B469DC8
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 14:59:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A3E530022CE
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 12:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC6E35DA68;
	Sun, 26 Apr 2026 12:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfpNA9pl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D443435AC1D
	for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 12:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777208356; cv=none; b=QRdZLb+W/y5Pvb9aSSdflNd7EfBG8NTv44XMq/bGjRoZwvBGHI1+emvqwA5eNc/vl97j8a/kJRWeKJ68xg9jkznrt4dQsQpPXy7KXOxeRn/d319Vz4q3gs1CyFaWXEXyJT6kWv9DYYxg8VGEub38Fb7duun16ADzfd8RqkeWrmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777208356; c=relaxed/simple;
	bh=Oj3Yyc0VsOQWqjTv0xkvVbSGyFlBL65eDSz+LemqMwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nD8Vmrro04rAVVVIhjCpS55ItjpoBd4HbG/Zms9lxf+zzQACk+18iNuzVbzxL+PIck/cHKWzpzrU12cz1HbYmMQlRI8kjJQCM2YO1fWAKp3KW+Lls+VHRHY5PL4UApM9XdRmwzOif/ChwynYqOPR+5Q+PUtJB6AFF//snw8LoR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfpNA9pl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F192C2BCAF;
	Sun, 26 Apr 2026 12:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777208356;
	bh=Oj3Yyc0VsOQWqjTv0xkvVbSGyFlBL65eDSz+LemqMwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZfpNA9pldMQXKOWFeRSl/ikyutm/nbg3QGkXmZzRgzOlSR4CfqdJp+Oe1YBaCdoqd
	 kTbJ4ibAzI/V42X2tEZZ75bUdPKMKs9/4t9+wVlEbVVD9nE4fd1KuVQNWYbB93y82+
	 Av2G6GoWAD2CYv2fOHLk0NhPLXJGRN6ovgMJuA+5JzXp0iWnzJuYFYGo/FbhECastA
	 tzqQQf++trlOW45fvzmm11QE1nqzpm00KtXpmcAlQKh3SyW4J+p5Ka5Zzaq0rHWisN
	 zbhpWl+5Eqgm5n9vgWDnyek6rjLM8U5fEuo4BuJCi2pzMnpZG/PpUX6Kbq/XwTg88p
	 LWsvgEfB6wXfA==
Date: Sun, 26 Apr 2026 14:59:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/2] man/man3/errno.3: Document EFTYPE error code
Message-ID: <ae4K_5f1g3zgSNkC@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-2-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xymnubgbhbnjj3tw"
Content-Disposition: inline
In-Reply-To: <20260426111707.36541-2-dorjoychy111@gmail.com>
X-Rspamd-Queue-Id: 0020B469DC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5407-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]


--xymnubgbhbnjj3tw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/2] man/man3/errno.3: Document EFTYPE error code
Message-ID: <ae4K_5f1g3zgSNkC@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-2-dorjoychy111@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260426111707.36541-2-dorjoychy111@gmail.com>

[CC +=3D libc-alpha]

Hi Dorjoy,

On 2026-04-26T17:14:25+0600, Dorjoy Chowdhury wrote:
> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>

Thanks!

	Reviewed-by: Alejandro Colomar <alx@kernel.org>

I will wait until glibc adds this error code to their <errno.h> before
applying the patch.  This means either you should write and send a patch
to glibc (if so, please CC me), or you should ask them to add it
themselves (if you're not comfortable writing glibc code).


Have a lovely day!
Alex

> ---
>  man/man3/errno.3 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man/man3/errno.3 b/man/man3/errno.3
> index a070dabca..ed3578b07 100644
> --- a/man/man3/errno.3
> +++ b/man/man3/errno.3
> @@ -590,6 +590,9 @@ Invalid cross-device link (POSIX.1-2001).
>  .TP
>  .B EXFULL
>  Exchange full.
> +.TP
> +.B EFTYPE
> +Wrong file type for the intended operation.
>  .SH NOTES
>  A common mistake is to do
>  .P
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--xymnubgbhbnjj3tw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnuDCAACgkQ64mZXMKQ
wqlHNA//Z2Irl2v5WRouzh+90d8GevdpxPKiX3sAoHcAtWYKV8hgMdIx02nJGNGL
pxva63J4pCyQ+jQGT6KEYvwaUVexBKeFG+cecpp/WLkPO1wdhlru76Plhz410GjV
Dc0oJ5BX9BFxNHP6TQo/eNYaRzYpCow50+J/yI3pquLmT0IR19Km3M8Fwh4gZUxE
HKHnJsn7TumPKG8aq2jVX5IJyD4W9pnsJUWWpjVgyO6S592FOFMsn+zOh7wEmI93
7C74iZskSCJsB2TgBTdlXgT+tJOGOtUolWa2Ay0An+iyHy+vTbuxcA6NuKip1kWB
/xP5qegewgUzHPpZIAIdgj2w7EEADA+Yi7QcglbJwfFKqeCAZ6joldGaiKdSq7FT
3YlCxmuhGLpg0fLIeS9WutSVZ0gTOfXvxbJ3JPctk36kg9epsxwAjqKHZWg+iXXx
fxzcJTkE8VsEbGbIohFgJpu1Nmo/VvW5U8iSzBz+ZzOH/BdyctKUe1Pqushy2XnA
O/bD0G9IZ3Ws7Kr41vLWR1ieMLSl6PIpXa8sgSS6Qjn9usKfu5ktABMspLZmAGSO
CPQeDj6Vs+eHKiDyN31easdpBE9kdrTfTcxtGYc/I+vw3LIcA3qS8QjkcCsZl+GU
vM9iMsJp/p0OJWzqsYti6zbT+N4kckT0oJFqP8q1pC3bQk49X6k=
=4OR0
-----END PGP SIGNATURE-----

--xymnubgbhbnjj3tw--

