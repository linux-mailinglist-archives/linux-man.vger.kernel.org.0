Return-Path: <linux-man+bounces-5273-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O4qORcHummmQgIAu9opvQ
	(envelope-from <linux-man+bounces-5273-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 02:59:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A5E2B5134
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 02:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7E79304416F
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983DE24677B;
	Wed, 18 Mar 2026 01:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdgG9L+K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C665450F2
	for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 01:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773799188; cv=none; b=Eet9nKUZRTvt5DnHKb7wKy5gfSm3xfrpbI0cNLaalFqtflhbk6qH+8kWKlyQBRv+ZQs7Q6IlelfUTBPPLZ/PXdwCsxPdq1Uqq8LtfuhuE+vUheFLvuugOYzn804ua95nINrYHI/pJyJcfZdkXIYjEmRv3NDljcTFphJ/rKBjX0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773799188; c=relaxed/simple;
	bh=5VD+/A5foZ//TGAka5jDveYxBXUSGdGm34aUKDl5ax0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FStMDTjR4ss09CrfhgqLy1G7ixJVy8S9VUc5C74dDiFahI1qRzocNQptqxMNiELHRTLEntixVmIcB3FXdTc9oCuYa71C0boCQM3QUieLRMlU8/nsbS4MkAD3p9BoIv2OAwSM4F71fxy0ycgAacU5o3l42z+WcQVN5d+M1y65d3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdgG9L+K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB938C4CEF7;
	Wed, 18 Mar 2026 01:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773799187;
	bh=5VD+/A5foZ//TGAka5jDveYxBXUSGdGm34aUKDl5ax0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XdgG9L+Kz7sUpXgjK8PGcZ2jNQ+2GzlW2rahnearscm+5DCVi+MiNvUXYhXJ+Tq4N
	 JWg4GbUibBPVjPJJIGT9v0ck6JbSiY3PXnrSxa9AJTgt7xW9TZQHw27nWuNz/YMTsh
	 Xl9oQ/8Fe3ALLJfGVFeOgHqT/adv/nptzuhTtRz+jIDAImUzWiExf/SYDw9sXCP0j7
	 VZLpSJUsy8LiS0/seR4H024MIjRHXW3qyjIKVq1Pa57SCDdPj3wOYN609Q7E3Ui1yS
	 lNZECoJpzndvINiIWGRkc1E84U/xA1Fr7+Ei0N6MXW0WrI+SVjfHfNW2zOoDjM9ydr
	 OuL8LD1NFhpjg==
Date: Wed, 18 Mar 2026 02:59:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [dramforever@live.com: [PATCH] man/man5/proc_pid.5: Clarify
 which user namespace affects permissions]
Message-ID: <aboGopJ4ismAmjFM@devuan>
References: <abn3rJaXlmU1Zr2i@devuan>
 <940af389-453f-49ca-b412-0c5c2937748a@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2hxjjbx3dawql7r"
Content-Disposition: inline
In-Reply-To: <940af389-453f-49ca-b412-0c5c2937748a@iscas.ac.cn>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5273-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[live.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 47A5E2B5134
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--q2hxjjbx3dawql7r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [dramforever@live.com: [PATCH] man/man5/proc_pid.5: Clarify
 which user namespace affects permissions]
Message-ID: <aboGopJ4ismAmjFM@devuan>
References: <abn3rJaXlmU1Zr2i@devuan>
 <940af389-453f-49ca-b412-0c5c2937748a@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <940af389-453f-49ca-b412-0c5c2937748a@iscas.ac.cn>

Hi Vivian,

On 2026-03-18T09:43:07+0800, Vivian Wang wrote:
> On 3/18/26 08:56, Alejandro Colomar wrote:
>=20
> > Hi Vivian,
> >
> > Can you please confirm this is you?  I received this patch from an
> > address that doesn't match the one I see in your kernel commits, and
> > when I replied to <dramforever@live.com>, the message bounced.  I'm just
> > checking.  See patch from the @live.com address below.
>=20
> Hi, Alejandro,
>=20
> This is me.

Thanks for confirming!  :)

> Apologies for the confusion. My idea was to use my personal email
> (dramforever@live.com) for dayjob-related stuff, and employer email
> (@iscas.ac.cn) for work-related stuff.
>=20
> I've started signing off as "Vivian Wang <dramforever@live.com>" in
> OpenSBI first, before being employed at ISCAS (see [1], firstly done in
> [2] after someone complained about me just signing off as "dramforever
> <dramforever@live.com>"). In June 2025 I was hired by ISCAS and started
> doing primarily kernel work, which was probably where you saw this.
>=20
> I did not realize that apparently kernel.org mail bounces on my free
> Outlook email - I wasn't even getting it in my spam box. Unfortunately I
> don't think I have much control over the behavior of Microsoft's Outlook
> servers.
>=20
> Next time I will use a different personal address - with a reply from my
> apparently more well known @iscas.ac.cn address vouching for its
> authenticity, to avoid confusion.

No problem; I'm fine with your personal address.  (At least, if it
didn't bounce; that's a problem.)

So, I was saying I have applied the patch.  Thanks!  :-)

>=20
> [1]: https://lore.kernel.org/opensbi/?q=3Df%3A%22Vivian+Wang+%3Cdramforev=
er%22
> [2]: https://lore.kernel.org/opensbi/TYYP286MB1439C5C64BCF8E9DB7883772C69=
F9@TYYP286MB1439.JPNP286.PROD.OUTLOOK.COM/
>=20
> >
> > Have a lovely night!
> > Alex
>=20
> Thank you.
>=20
> Vivian "dramforever" Wang

:)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--q2hxjjbx3dawql7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm6Bw4ACgkQ64mZXMKQ
wql/vQ//afzDtc+TiBalcmdYn6uMVb1PqScnNDWfu6VUAxHoIBDVdYzTjmH6dzHx
95vMHyFiuCKFdV96mknS10ueOmDxIBmsWiJ15iM4Fy7XqNc+bA8AX225qHA7Osh1
aOKvh5R2nPlIV70DZU7rYj5ufwOaTl5nC3+0VyHErJfTvZ4JcDKOGK5VHfJcO5/w
rkflJvpcVFQcIiQys4UUlu5BY0NwDRHh7WsBOSQcDdzXWUz+IY1grRAYYS1IoOu6
Gt7YS03taJrIQX5NaC/wRTSU7diaLNTZRQWonMXPsO0C4345l5bmcCPk9tl26aCZ
/2MyeQklIpMBPecCT0CGszUY68sEXhuHFQJJq0t1rD7toLrKvkCdgj6Rb5wJFmp4
YnCyOJJzH6CXAtuN16cpHO6LG/Gac2LrAaOk5dJ+8lnNRUawXkKGEk23+XHfElRL
U4ge59WKw6Np5Yibp/m6to4ztsNJXaj2LxyxKoAYh0At7JXGieB4n8iYV8OZ8Fut
oRfag29z+1li9CrHLf+Pg1QnPAvOJ3HKC4eQGB8YCG89P6VVK6sSEXXGA7ItqekT
Y83cYMWTgeQ5HyX3OwP9xSkyW6mtC5AnsdIqNsZu+N3acg/IS7FqIqiEwcodNswB
/2iyiy+t7zOp0rOh8zASGC+7wW4geziOJwzefCMByia9bTfQkFo=
=64U6
-----END PGP SIGNATURE-----

--q2hxjjbx3dawql7r--

