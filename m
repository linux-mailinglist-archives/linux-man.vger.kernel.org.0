Return-Path: <linux-man+bounces-5075-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ME2JDadhimleJwAAu9opvQ
	(envelope-from <linux-man+bounces-5075-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 23:37:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA3115146
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 23:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D89530160F8
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 22:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1E2262FC7;
	Mon,  9 Feb 2026 22:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pztl8NFD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3188C163
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 22:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770676642; cv=none; b=Ib74e5QhyzDT5slovMCGSN0hzkj2aWMQmI48mjJUyqCvGFxoz0ijee+FNQvNFPHzDfy1sFcPx/n51SRqiBvrQDxxOIuc8+jhtoBl5vzYFrtR/b48zl0Vk1rk2+ZUnvp6SR4ItU0sud8pULPbZd/zrhHEMBORKZHZdEktyqX/gsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770676642; c=relaxed/simple;
	bh=Jqzghn9jaZB9mO7kkCBP+qR7Imm5IWv0uM3HT2/uWDA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMAuNXvdMuZchsdAvIfrsPRE33qTqpN7TDIokw2dB7nU2maPpcpj2EPYJsYBc+XhnFUQuQOHpGKnUMuy1kS4g+LTw3O2ofjVyKe3tEPlsXOKj7wnUCKqT3lv8CWroYEX3+t2Tntf8+E96NFVe7Wek9mXlXF+lyK2qm10r2Boz3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pztl8NFD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C5F2C116C6;
	Mon,  9 Feb 2026 22:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770676642;
	bh=Jqzghn9jaZB9mO7kkCBP+qR7Imm5IWv0uM3HT2/uWDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pztl8NFD/unwDFtwzw1Lek6yWe9sfqege//aYZ+56eIaBJ+A9vxbPONph3RNKTHxy
	 gzR5wokf9AcaCDLxAVEkegSh6lcjqjMIIfMKmU2v4XIFd3RyNf8rt5UBa9LFAS/n57
	 tsEMyXAtrwfnwqIrF0W5nPAtuRvjUF+CLVWwqI7sOcdpfT8SpHfYaIqdWUgDNvfURT
	 8UxVbkBcO+9bLf34ox/n1R+RdK3bnFEyMgERcFDpshNbxoHFrlzLs6pZfeta0Dc/Rw
	 xdGwUis60uUBmLHAXhnSNLlxtvdu4ZAOQNimm5LR29SrFkCWDyc5xZCLhyZhOqxGU/
	 w+yGMnqL+aMBQ==
Date: Mon, 9 Feb 2026 23:37:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYphfw5rQFeW_txe@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lhg6lbdjrtjp5y4g"
Content-Disposition: inline
In-Reply-To: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5075-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 91DA3115146
X-Rspamd-Action: no action


--lhg6lbdjrtjp5y4g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYphfw5rQFeW_txe@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>

On 2026-02-07T20:18:38+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

I see the same issue applying this patch.  I'm apt-get upgrading to see
if that's fixed.  I'll come back in a moment.


Cheers,
Alex

> ---
>  man/man2const/FUTEX_WAIT.2const            | 10 +---------
>  man/man2const/FUTEX_WAIT_BITSET.2const     | 10 +---------
>  man/man2const/FUTEX_WAIT_REQUEUE_PI.2const | 10 +---------
>  3 files changed, 3 insertions(+), 27 deletions(-)
>=20
> diff --git man/man2const/FUTEX_WAIT.2const man/man2const/FUTEX_WAIT.2const
> index 7d6681c1c..94cf4a997 100644
> --- man/man2const/FUTEX_WAIT.2const
> +++ man/man2const/FUTEX_WAIT.2const
> @@ -102,20 +102,12 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I timeout
> diff --git man/man2const/FUTEX_WAIT_BITSET.2const man/man2const/FUTEX_WAI=
T_BITSET.2const
> index be40d57c6..5f165adb4 100644
> --- man/man2const/FUTEX_WAIT_BITSET.2const
> +++ man/man2const/FUTEX_WAIT_BITSET.2const
> @@ -147,21 +147,13 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  .RB ( FUTEX_WAIT_BITSET )
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I timeout
> diff --git man/man2const/FUTEX_WAIT_REQUEUE_PI.2const man/man2const/FUTEX=
_WAIT_REQUEUE_PI.2const
> index 0ac1cebe5..4fa1520f6 100644
> --- man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> +++ man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> @@ -72,20 +72,12 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I uaddr2
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>

--lhg6lbdjrtjp5y4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmKYZ4ACgkQ64mZXMKQ
wqmwXhAAgyOZQLZTapp5kWCmKeLNixgl0RkJ8zsTe0NRlkpyY9tupkVPTy2XWACF
DGXWOkd77QVPcfFP/o9ulZFM85TfQGXkfwcB4rSmOifpF9KCSx+LtE6Ie6W1uHGR
AGbAni1/7o1opXUHx7YrtDY182s1TJEFUmWEHndF1Haf7aSfMfJ64RSBoJ0zQ/sP
n4jv8RDFcbD9QircOVP5cjJsYOWWcIuHLkycPeOyZqGeMFA14/cc29pWXqP+UtXk
Gs2rahBAmsU1AQ/y1XviG/1oMPRgrnuVtR34Gn9axwXyEdCDRs/vAwCzdm4Z+nfE
fW77CKcr9BPHVHPwdFihJD3+y+EhTcKYTq73fLMbSYx9QWJ7DUMTU3KcDbKJKgqr
+pL+BeGP7jM5Pq+hJcMKT9ozVg4T6prHTU8ED4r4G5WOu8p6BzVVaeA6lZo9r1IN
jj4v1Q7dM9G4dhvH90sKBXQ1vH2/pCMJZHxg3ImG2KEbwuBUUE6/xYvVecxxm9Zu
yRf+V4AhVbzMZhyQbACA2O9IR0T7KcgRJGsW/7eaGaJi6R9Ok4rcrQIDR7i16Qie
6x/+ATv/+F/hluQrXtQmHi/pFTlW8SE3vmd+1LexDma1lgyR2Iq7mv6BpuhwB69S
3h23T1tEbZT0Kt1vzJZ0i6CVJaRXFqjoCd42YQmOQj0cFclR9OQ=
=savq
-----END PGP SIGNATURE-----

--lhg6lbdjrtjp5y4g--

