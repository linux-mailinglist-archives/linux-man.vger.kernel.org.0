Return-Path: <linux-man+bounces-4935-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENVxEl41d2nhdAEAu9opvQ
	(envelope-from <linux-man+bounces-4935-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 10:35:26 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BB38614A
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 10:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36B4230037F1
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 09:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921F1329C6A;
	Mon, 26 Jan 2026 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOJ35mef"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FC630C371
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419945; cv=none; b=KzRx58gzDqo/UpbBo/LuML/wCvh/NygciRgM3hgYHPerxmiVSVK+lp9GK/z37GU2ZSxaPONVvZKpcOn/yghVikP+HHLSXL66rNfTqofJ0p+FbUq17PwP80LXyj3PPH88FZ8y8cWpZyOCX2TPhd5PLPjJlnOTryGEDoY9U+Yg1kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419945; c=relaxed/simple;
	bh=mtDdLsFDe99Jq6Mm8LVzwcMrC3311GnF+i7Jolt3AYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PJ9T+iZ0XXLIw/81W1qPDyGGtjOzfZHZulnUaO6LI1kxtLuUY7XpyJsk9ERo+HHKQqKHAPdAC8llF3AjlxAgzzq7NxZKyIyIBezQyjDutd/pfZmLR4wXurOCRZw0Utdsa1xHVNqZQJ2Qk8EIdFqmZkKMYi0jM/XGHyOLwDy32Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOJ35mef; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC372C116C6;
	Mon, 26 Jan 2026 09:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769419944;
	bh=mtDdLsFDe99Jq6Mm8LVzwcMrC3311GnF+i7Jolt3AYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qOJ35mefbKncmCajPM832f2YKCL9ATas996xcIXma8lVh4Uh0/OrReyaIMcp0A4V2
	 Q+vaLDqbcCEmeX9ralp0LqyL/ZT4clSYVhLfgxSQlNFintNmHgXaOFtZlP7gizTbvw
	 TNJrXAK3IaEamgU5CWCy6OMA3H0ywQpffeMghYyoglMbjbrMxIiBYtiyLQbsFTgOwu
	 NgmGmPKD7WqSTpxstKIzazB9L9mofwU+akogPBW0C5PAK16Tc7RzHsuU9GJAvyYVvB
	 QTSXj4twWJod58gMIl4FbdX7OYKixSG1sO11Cp/PZvn8p1O5uggf0CMPtYlV3qx/DJ
	 //lZtt4vQ2UtQ==
Date: Mon, 26 Jan 2026 10:32:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VmxhZGltw61yIMSMdW7DoXQ=?= <vladimir.cunat@nic.cz>
Cc: linux-man@vger.kernel.org, mario.blaettermann@gmail.com, 
	debian@helgefjell.de
Subject: Re: Issue in man page resolver.3
Message-ID: <aXc0Lm3NToqK7ZX0@devuan>
References: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <ade376ba-13c6-4abc-9b28-6fb53c9af36c@nic.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ammggx5opufv2bnf"
Content-Disposition: inline
In-Reply-To: <ade376ba-13c6-4abc-9b28-6fb53c9af36c@nic.cz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4935-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,helgefjell.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A2BB38614A
X-Rspamd-Action: no action


--ammggx5opufv2bnf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VmxhZGltw61yIMSMdW7DoXQ=?= <vladimir.cunat@nic.cz>
Cc: linux-man@vger.kernel.org, mario.blaettermann@gmail.com, 
	debian@helgefjell.de
Subject: Re: Issue in man page resolver.3
Message-ID: <aXc0Lm3NToqK7ZX0@devuan>
References: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <ade376ba-13c6-4abc-9b28-6fb53c9af36c@nic.cz>
MIME-Version: 1.0
In-Reply-To: <ade376ba-13c6-4abc-9b28-6fb53c9af36c@nic.cz>

Hi Vladim=C3=ADr,

On Mon, Jan 26, 2026 at 10:21:38AM +0100, Vladim=C3=ADr =C4=8Cun=C3=A1t wro=
te:
> Hello, just my 2c.
>=20
> > That is quite confusing, at least to me as a translator
>=20
> I believe the forward syntax is confusing to C programmers, too.
> It's not standard C and it's also not commonly used in code,
> from what I see.  (at least so far; maybe in future)

I can see it being somewhat confusing (as any new syntax, I guess).
I hope in the future it is not, and using it in the manual pages could
help with that.  And hopefully it also helps people use it more often.

> Thanks for maintaining man-pages, by the way :-)

You're welcome!  :-)


> --Vladimir

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--ammggx5opufv2bnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml3NJ8ACgkQ64mZXMKQ
wqloKw/+NrYvekthRF8XVDn12GYPoqNcL7pjuGEFpbG2IINMnBP9u6k90C9I6wjh
4ttHyrx57XIxTh7IO0JBIOhxXmUEPMmMroBq+NqK4muVI2W11PCrSfY+lk2aSaOh
wcYt39QkTLOH8Qao06RiswGu0MXS61fDSynk9L4JtwzI6ufEhWj1ngupQ5gxwSCi
iWB1mvDBQKRshN1nqGWAGAAzRqHm1daBR+z/tqukBElWiG6LzFIwP0A+cFI8ivS+
tGAqIfMoprYvFShe+cE7ZIcULGb9Lzx0LKEsynJa9hc80ysUft5ljlWgqIFQ2AfJ
KXwCuBeYf5QKsjGStNV9Qbmo25E5wtzCMDIfOACLm08HrEY60Y4Vk/fAe4ZFP4Yx
e5ueP/ykGf4fXsX8CXKoy44HA+2+T9GUWugka9T8i5XC3cWdhCq/aanRAn1Tt80M
BPJrFMdUj2ArW7ZRzkiG7bx73i0X7xElwvK70F+k0Lh1HCrtqgl6d8dFasrl+CEd
yjCgf7deVnSb/9PWU6NcZIfxl0ZdhQCNzFSIKjhKwZYb283L8u2MrY23O6PbRTe2
mqowwbOWJRi0xkSCindoqKaWXRrBDN4qz7w/3T5TJ8doS1yP/JxiW4hoH3hErog9
GY4m5fU7h2Ux7OwVuG7Y/Bi3Ks2igY4/sVVTbBD/8P4XX3IeyHo=
=5O0T
-----END PGP SIGNATURE-----

--ammggx5opufv2bnf--

