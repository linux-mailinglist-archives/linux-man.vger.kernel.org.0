Return-Path: <linux-man+bounces-5254-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KtpH6tOs2mNUgAAu9opvQ
	(envelope-from <linux-man+bounces-5254-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 00:39:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F16AB27B4DB
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 00:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AB9693078168
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 23:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3EA401A0C;
	Thu, 12 Mar 2026 23:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnRrrmHR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFF7397683
	for <linux-man@vger.kernel.org>; Thu, 12 Mar 2026 23:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773358736; cv=none; b=CXmziCVJI9ED9Lw8ZsNkmTMYTkpSvFNqUb7I+voEwWsKPOcdpwabBgSvsv/J5K6P75kaYYdkBYD59WemAupu4C7Sha8o8y0JJ1ln6jZQFjRoFhphmdEXXgKWQivCF0Oxeg/gmU5Q54ADKvaRhsApWxG+fYlXqtoYQ7q5v6vMmRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773358736; c=relaxed/simple;
	bh=IPK0bTGic97ZbsE/BIReHp6uSowQtyaKx7IR5DTdOY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ARLLJTVbQTHdFuJHt777Gt2lQgAWkk7YuKuboCIfmm5RzsKwA0XS0NJ1mpz8y9rLdb+E0w/hKqIznEAU/uvkKFM1Y/EbvIv70oH1tDhv7fZyNRjAegO+Cc91LcLNfIgLCWBWIzYbGsCcRJBFJ2PWNvOWs/FGDb8no4IFOdDvNW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnRrrmHR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 470F9C19424;
	Thu, 12 Mar 2026 23:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773358735;
	bh=IPK0bTGic97ZbsE/BIReHp6uSowQtyaKx7IR5DTdOY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mnRrrmHR0RyNKCJgUpJiJBhBiXDqBKd9N0aUlVYgid9CS62fiY86NDJ+RgxdN8Kql
	 lLUKn/Rkj4HtRlLMHKqpE4jr5oDayylCj4eAZhDMxibeMC8QStVzm1yFF7F0XBF0Bg
	 b6B/DZrKv15PJXbMmTtAI+MVuLZ1ot1XbMKLuqeJOvOethqL/lDyXNhh9Of3QsS0Z4
	 tTqUmWyuntkCSmGCxb80LKE7mS7qJaZgriN49p+XvVBQJ9LTZIviVhvDm0IFJtjZtg
	 VQhghHhvLDnt9nbZTaxbL6fwq0v7tCAxHHG0g2TNIVDZfUgu21sJFDhpS4Dhjg93pl
	 jWxzUKjbRtvpg==
Date: Fri, 13 Mar 2026 00:38:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ran Benita <ran@unusedvar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT on
 clientsocket
Message-ID: <abNNg0RZSfQIPhAp@devuan>
References: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="73dmxzs6cgonkw5n"
Content-Disposition: inline
In-Reply-To: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5254-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F16AB27B4DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--73dmxzs6cgonkw5n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ran Benita <ran@unusedvar.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT on
 clientsocket
Message-ID: <abNNg0RZSfQIPhAp@devuan>
References: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>

Hi Ran,

On 2026-03-13T00:25:53+0200, Ran Benita wrote:
> TCP_DEFER_ACCEPT has an interesting little-known effect on client
> sockets. I don't think it's very useful but should still be documented.
>=20
> See here for reference:
> <https://elixir.bootlin.com/linux/v6.19.6/source/net/ipv4/tcp_input.c#L67=
81-L6796>
>=20
> Signed-off-by: Ran Benita <ran@unusedvar.com>

Thanks!  Please see some comments below.


Have a lovely night!
Alex

> ---
> man/man7/tcp.7 | 5 +++++
> 1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
> index adfd6623e..85f6c631c 100644
> --- a/man/man7/tcp.7
> +++ b/man/man7/tcp.7
> @@ -1091,6 +1091,11 @@ Allow a listener to be awakened only when data arr=
ives on the socket.
> Takes an integer value (seconds), this can
> bound the maximum number of attempts TCP will make to
> complete the connection.
> +.IP
> +On a client socket, if non-zero, delays sending the final ACK of the thr=
ee-way

s/non-zero/nonzero/

$ grep -rho 'non[^ ]*zero' | sort | uniq -c
     72 non-zero
      4 non\-zero
   2119 nonzero
      3 nonzero	non-zero
      2 nonzero/non-zero
      2 nonzero\h'|\n[3cl1]u'non-zero


> +handshake until the socket has data to send, in which case the ACK is
> +piggybacked on the first data segment, or a delayed-ACK timeout is reach=
ed.

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +.IP
> This option should not be used in code intended to be portable.
> .TP
> .BR TCP_INFO " (since Linux 2.4)"
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--73dmxzs6cgonkw5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmzTowACgkQ64mZXMKQ
wqk2Mg/+O5Lm8jg/hGB4ANSaaqxl6iCbJB2SxBIaUaabGNhW8S/lcs787vdvetpH
MzUi+QWh9pa5PMakRJbnK4wUi6rIUzdFzl0MNu465ewbzoSYyC1h+i7YOuheCdHP
LhmJ/UxNL8x0C+hFly2/IMkquaOrSYWgb4VcA7NvZHel2f2lmscRptc23ijiyR7V
3e/woMd5fXcoohOf+uP16ncnM0lDy7r+K8TyMX6nTPTTufA28rzoH5PrIf98hQfr
k6eBRO9T5UO9d5P3T8RMmVndhLyv7NcXKGPT+62RX/WZOKq9XNCH3J0tuc579pfk
Os5c5cLa6+8Vl7hB9EvyzWwn+S7iLRxTPdcypHGRDM6dbiLJAEHbo36h7fpu7pDq
S9Y6cgxigws3hAw9nZcw3K96xuIdp/LHM2bM9WrVto4DVDmpMiFt30nOdIwvfI/B
HxQGmadiprM6V8jq0109NN31PWGPs5NxGx1geQr505UyJ8uYISZmQHEK5DX/WL9E
qUBIpV2XkdaMCiMBedIN3ZKb1BkOx8oxVFPyH0Nj3sy3SphAJXBOSYy9BzJ9RYeg
EmGzDFc+Is7w+O2ub1k5EJmon5rG5DuWPlHT/PjdqYAZAzZL6RquVcyi+m6cuvNc
M/bj0Do5CrednGH6lRihAsSsjfnaQd0cFt5Xcawa6UyTaVCURps=
=B4/a
-----END PGP SIGNATURE-----

--73dmxzs6cgonkw5n--

