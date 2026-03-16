Return-Path: <linux-man+bounces-5262-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kh9dGmBKt2n3PQEAu9opvQ
	(envelope-from <linux-man+bounces-5262-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:10:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A02931A1
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E1653007650
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 00:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A001E4BE;
	Mon, 16 Mar 2026 00:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCwO9/pD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C703C8E6
	for <linux-man@vger.kernel.org>; Mon, 16 Mar 2026 00:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773619803; cv=none; b=E/wY8kh9C2tAk7cVhQOXHnCqyhYN7lqkYiRaalv7mDn8VUbA1Jc2KABtDHGFdUVwSpgN8PBgHmgXsg4/5WZH1UUaeyOmGCuvIgRtBlOPYFXZuDvtaBgNHvVkJAtjqyHCmtYD+V6E8lupcGFi6DPtYp2ZjFsizTC84QcMHvBe384=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773619803; c=relaxed/simple;
	bh=iEhrPR86GwLV3F9tFrxTy56wuiJf0qPjMs0RU3YFjJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ss4YPDc5ZAM8UEsecvKqU/LfVtxLtChWVjvyMqN4NykcbmgSAKHreA4THel06uU84v5yf8hIhvCptyKZPQUDYs8ZeL0pGVVEoB9dlSIS8UP7FDqrFt+mDyUjcETURejWGksbN/iv1AQ7O6ZwxSkFtemM0JpY0epsC7C6LA9XT5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCwO9/pD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 761D0C4CEF7;
	Mon, 16 Mar 2026 00:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773619803;
	bh=iEhrPR86GwLV3F9tFrxTy56wuiJf0qPjMs0RU3YFjJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iCwO9/pDTIhNOKb8oUBF8keZ/iAF7DfqWEGKAZgZq4YQTHpIq7uLMLOMQzEVWffH0
	 2aEGfAzsMaiDI5KK/+MuQ/RFIKJ8e7tmRHM5SqRUdTjrhEwOWgTP6qvhWJYyBHLXwi
	 v5lOdrTSTMQFHcO7GIAw9k+XUSRGx+VYgzLtA8gsbUHs/fLjWFReYZV6XNAmCVrmZt
	 ezP3oTySIaB/TpVw8UZEBNV2xBSIUlPsr/H6+lmjR9lXPXkT4t0EwriZFD9VqODLtC
	 MBHaSVli3ACfI+qXoXkZgXnGHGPJCH0VPQY9KxsrM1ze7yAznVgd57PmUOQQeieslE
	 5pTKi4XnWfZ4A==
Date: Mon, 16 Mar 2026 01:10:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ran Benita <ran@unusedvar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT
 on client socket
Message-ID: <abdKRDr5sWcWKT14@devuan>
References: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
 <777621b7-d204-4476-bf98-23a703250db2@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ftuy57z7a7fj7oe"
Content-Disposition: inline
In-Reply-To: <777621b7-d204-4476-bf98-23a703250db2@app.fastmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5262-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: BC1A02931A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--2ftuy57z7a7fj7oe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ran Benita <ran@unusedvar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT
 on client socket
Message-ID: <abdKRDr5sWcWKT14@devuan>
References: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
 <777621b7-d204-4476-bf98-23a703250db2@app.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <777621b7-d204-4476-bf98-23a703250db2@app.fastmail.com>

Hi Ran,

On 2026-03-13T11:26:12+0200, Ran Benita wrote:
> TCP_DEFER_ACCEPT has an interesting little-known effect on client
> sockets. I don't think it's very useful but should still be documented.
>=20
> See here for reference:
> <https://elixir.bootlin.com/linux/v6.19.6/source/net/ipv4/tcp_input.c#L67=
81-L6796>
>=20
> Signed-off-by: Ran Benita <ran@unusedvar.com>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
> Thanks for taking a look. I fixed the following:
> - Change non-zero -> nonzero
> - Use semantic newlines
>=20
>  man/man7/tcp.7 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
> index adfd6623e..80b91ffda 100644
> --- a/man/man7/tcp.7
> +++ b/man/man7/tcp.7
> @@ -1091,6 +1091,12 @@ Allow a listener to be awakened only when data arr=
ives on the socket.
>  Takes an integer value (seconds), this can
>  bound the maximum number of attempts TCP will make to
>  complete the connection.
> +.IP
> +On a client socket, if nonzero,
> +delays sending the final ACK of the three-way handshake until the socket=
 has data to send,
> +in which case the ACK is piggybacked on the first data segment,
> +or a delayed-ACK timeout is reached.
> +.IP
>  This option should not be used in code intended to be portable.
>  .TP
>  .BR TCP_INFO " (since Linux 2.4)"
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--2ftuy57z7a7fj7oe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm3SlcACgkQ64mZXMKQ
wqmvWxAAsW1pn40+ZiZ2Iis3zA1gAr/o4Z9Bknbk7UoD+GVfVToTzEwQxdsNzcEO
UDjM8OSLxonh6UKjjI9ru+U/xrq9/y3eXVhITDGNzfo93342XP5cZjIhBqIueHxZ
joqK6/k9kT5L1ajP+IqMZwEiEG5obK/LFtvZ6aeQrIRvebdrST9y+I5wRGM3bvww
FN6Ei3KrYaIrRA6pjqILx8GIN0wupw6t6BYkYXCflVK8rXw5Wmr0iyqjwpMzW0vs
rOUU97EoYsqafmojDJDex41e1qRfeyQgfRV67v9CXdwP9Jiazd4DKcJ/v/zGqveb
DfBWiGf81Gw9fV8EtUDlLyFdg/rW8VgoRSAuU7ZkKRoRDEfxwlGrIXDTfdhkEaPf
4WC4bSB1GqNh5krKKEBJUhOYtfiuiwANbeHc2+FOWN3uO2lIUv3mT48grgC8qZ6o
02SS6t7tmpeMMMdnaazA3FrCKfUS7vgVIN9xSzuxHH7/C1WVVviriqNWsa3yuiw7
oS8RxgFw15H62FAHZum5WlbwKeD3H9FCBtL3CIyLLj8WkpfpbG+km6a8qOvVx5VI
hBT90Tn8zuGtS60CoaQkygi48JWVu0o6Sl11KPBlCVZXpJH1gE8JdiKCX8eXmEm0
Z7RFcwpU1/mnY+Rb5w55QHZI2QPs54BuZmT01u/w2TnGbUaAeAc=
=uuMm
-----END PGP SIGNATURE-----

--2ftuy57z7a7fj7oe--

