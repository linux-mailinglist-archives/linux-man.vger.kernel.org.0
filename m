Return-Path: <linux-man+bounces-5644-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v1XaLmnDHmpUUwAAu9opvQ
	(envelope-from <linux-man+bounces-5644-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 13:50:01 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0455562DB41
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 13:50:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eumxCKGR;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5644-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5644-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0FA7300CC00
	for <lists+linux-man@lfdr.de>; Tue,  2 Jun 2026 11:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13D43DC878;
	Tue,  2 Jun 2026 11:40:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B509B3DB647
	for <linux-man@vger.kernel.org>; Tue,  2 Jun 2026 11:40:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780400414; cv=none; b=NrJt37O506eqzRWmakwZAd0TyslizsaOOx42fYzsa53Muc2t47Owlqud+uz9Khry6Zoh/cz83cptI2fvW452XMn0/uvCfC9vDClozzAVFnE8BvXGsWJyIgsjhZW9ygzrMVs0AsrpZeyq75Z1DSiNOJ/JpLNxXYd0RNNeurb+7zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780400414; c=relaxed/simple;
	bh=Mhv2qlABFB1MrroYSqkxMXaYiU4vjK/rPp20Ai461a8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mc3iHs2gozWh8slMIii3Onov6mybFndkgjTYOit6KLR+ioPYrSrrrOTULjbZ7ABDWiu6pZAKhunFQs6/2mORSXcTyu3qTDES9hWGCQG0WJAfjrkp9QT0+lcx4MyViVr0lP06uTfuyhbSEqRJ+a4buqkPCty1jhT600Idr8NGz3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eumxCKGR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80DF11F00893;
	Tue,  2 Jun 2026 11:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780400407;
	bh=vj3j1KEGAONgsVrFetdLg17yDqVHB3vdJRCOxa58/pY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eumxCKGR6JSs+xUjpvhdroUZonbYY7PM6WSg0nY2s76V2AV61YnuwHz3COzdGoUWJ
	 6/v11jOKmYsOa9kwClmRJ5ys4c0BBfZfV+wuPwkZkKxGaHoU40Wsj1zbFfNLdiaIKW
	 FgpK4Vu7epKvG6SH1AlNd0vUQgBBflPMMhJnFItWgaqRz5BKFPcZZzg1khjJJe+khJ
	 tTQC9GsIOGRqzcS7YkRFBrqaDWVsXfSV5Or03/kyBgSWGB4yFfXODiLBEaPicdc61o
	 jJcJ7ebb0kgxzLbIPLehLnUGJHV3MOwwewt3vrY2slxPLSmZWvMkSx0UWys+Y3JuWL
	 ksFn6e7ouo6NQ==
Date: Tue, 2 Jun 2026 13:40:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Zhai Can <bczhc0@126.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-posix: possibly a typo in sendmsg(3p)
Message-ID: <ah7A7gW9zfZ7gX6s@devuan>
References: <0119ef36-2034-4c78-a0a5-86537f31468b@126.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ajoi73f3mfreqzlo"
Content-Disposition: inline
In-Reply-To: <0119ef36-2034-4c78-a0a5-86537f31468b@126.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bczhc0@126.com,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[126.com];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5644-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,opengroup.org:url,devuan:mid,austingroupbugs.net:url,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0455562DB41


--ajoi73f3mfreqzlo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Zhai Can <bczhc0@126.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-posix: possibly a typo in sendmsg(3p)
Message-ID: <ah7A7gW9zfZ7gX6s@devuan>
References: <0119ef36-2034-4c78-a0a5-86537f31468b@126.com>
MIME-Version: 1.0
In-Reply-To: <0119ef36-2034-4c78-a0a5-86537f31468b@126.com>

Hi Zhai,

On 2026-06-02T15:02:40+0800, Zhai Can wrote:
> Hi,
>=20
> https://man7.org/linux/man-pages/man3/sendmsg.3p.html
>=20
> In the EXAMPLES section it states a "Done." which is weird here. I suppos=
e it
> should be a "None."? A quick grep shows the whole 3p manuals (2017) only =
have
> the one occurrence.
>=20
>   ~/man-pages-posix-2017/man3p =E2=9D=AF rg Done.
>   sendmsg.3p
>   281:Done.
>=20
> It's an upstream issue. Also in:
>=20
> https://pubs.opengroup.org/onlinepubs/9799919799/
>=20
> I don't have an Austin group account unfortunately so could someone give a
> help and file this?

Done: <https://www.austingroupbugs.net/view.php?id=3D1983>.  Thanks!


Have a lovely day!
Alex

>=20
> Thanks!
>=20
> --=20
> zc
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ajoi73f3mfreqzlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoewREACgkQ64mZXMKQ
wqnK7w/+PZdQLcYPZd8Co+z4CfZyJBY/kTpiVUV9I/axAfu0B3Rxltt8TCfXORt+
0zrlWvs5FidUOFta8lADlu8kpWMAI9UsT21jOdjxOaEORzNCD2obPX6kCoedSiBs
eW+O35QCuXIZFiT1BcXlTd7T+2KUpHGDPWDVe9vPAlCZWixgHNrgyW1QE/tY0Lkz
pMLi2xMzu7rL9p6gczANRJaY1WIfU+rxpSiGAIX/LoJw6AsLpTUmFR47hn42FnJN
L6x8ZSqsko7gxYzw+hU0Uee6NNKwo/BsZajekz8lEhZnotBSRo9sQM5Au23vAy4A
P6N7skRSrkPLw/TGY8wCciigQYojN/nVE57JdGJEMbWTF0ueSC4yCxqhBxlAklLv
FT+viwy9EFT8e62uqh1ZG3jYHUuK+ghIps9JcaT4eNvFs5aJU3hI35GoLIF5qqSP
832QX90YZb8mE/Smh6bdcV62COqwFa80j6lYX4cQUzP8QuAzdzVCAVTks1Hc4CSe
31tyXwx35IyVwmziqrSWWl5OLVGUgfN5xEuNnA88L5P4KooBxundYM0s4A/muJY1
Abg1FQ2apQNyG3q2RWwGrg1im33KxzjBhvfgso4EyrhkSDAnYdMVUJco+nnqRzom
BFJdncJnvR42LfWDC6u61P6w4sWvzxyWJo8U/0RAgjitr4Tf1pE=
=wuNT
-----END PGP SIGNATURE-----

--ajoi73f3mfreqzlo--

