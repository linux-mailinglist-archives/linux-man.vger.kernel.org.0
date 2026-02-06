Return-Path: <linux-man+bounces-5043-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLvYD273hWnHIgQAu9opvQ
	(envelope-from <linux-man+bounces-5043-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 15:15:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31225FEAD7
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 15:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAC81300B132
	for <lists+linux-man@lfdr.de>; Fri,  6 Feb 2026 14:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A843EF0BA;
	Fri,  6 Feb 2026 14:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LO3MJP8l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FB72FCBE5
	for <linux-man@vger.kernel.org>; Fri,  6 Feb 2026 14:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770387259; cv=none; b=erkTgHorFskbMlhj7imRYKiZj5cj86Neb00v6w5nKG32oqxjRcL1TZou5es98vnNN031w5Is9ekRpxQDT25S01bio/iloXgDtfKVunM7x7DdChuWJ+yAdkMFmf5xX4WXNGvXxeV0vsJSL5WrjW0DwBXgnz1YSPislMYm/gn3BjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770387259; c=relaxed/simple;
	bh=CAlUnPam3okZHjSvGGHvGeWXQUyTS2knC5toqgCvrvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NXeWldlHcUX4zLaZMZR6mp3uqfjbRELMp2o0amwDgLeOLMUkdOhqI3EdT7H70zZatEU2jzOYXRH+Oelkv21dL2tgzYHjjvWXRa4d6JsTw1T5zlSh97vlOoktqB4MJoQK7Ho787/le8EImjmBlzQ9n1+y2YDPDmaBYujyp5oKZkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LO3MJP8l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16AA7C116C6;
	Fri,  6 Feb 2026 14:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770387258;
	bh=CAlUnPam3okZHjSvGGHvGeWXQUyTS2knC5toqgCvrvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LO3MJP8l1zWiYOOCG+zwsR3EEQxRy2U6/ZlYSv/LEyh6ldTlTZ7sOpYeOhcfIGRjj
	 jBw1H2W/h2BzshnKuJKf9fvff3lw1XgugmGmzpnb5igx9rQ70kwQzfUctRpVMhhz93
	 mQagAdYCt+QeqzaoA6CpK/799l3YU79op3sIAP3i89aXCrvUuxByoGKifdN2o0ZTw+
	 WbP9KM8M0phJrWbvC7wj3WnbHIEQF8pJt8Y5LhmegRnyhV5FDIYG0eH5qnuySUw9Xv
	 cn25WBsKFsTSkZlqgEhhAV8klzZ13eG7HCPA/fxMXNp6IA8LHimmSui7E6fZFt2UPU
	 vANgGqla+oNuQ==
Date: Fri, 6 Feb 2026 15:14:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYX3INyXGoKUqIzk@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
 <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
 <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
 <65b65d5f-aae6-410c-90b3-dbfe3c84d865@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="de576gek4a5mtwqq"
Content-Disposition: inline
In-Reply-To: <65b65d5f-aae6-410c-90b3-dbfe3c84d865@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5043-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 31225FEAD7
X-Rspamd-Action: no action


--de576gek4a5mtwqq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYX3INyXGoKUqIzk@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
 <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
 <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
 <65b65d5f-aae6-410c-90b3-dbfe3c84d865@redhat.com>
MIME-Version: 1.0
In-Reply-To: <65b65d5f-aae6-410c-90b3-dbfe3c84d865@redhat.com>

Hi Carlos,

On 2026-02-06T09:09:21-0500, Carlos O'Donell wrote:
> On 2/5/26 10:53 AM, Alejandro Colomar wrote:
> > P.S.:  Carlos, I remember needing you to review a patch from a guy that
> > discussed with you.  Do you have that in your TODO list?  That was a few
> > months ago.
> No, I might have missed that. URL? I can review today.

<https://lore.kernel.org/linux-man/frpbzpltwr34qs3v4mluajb2czznm3ebog34uhuj=
4a4qi7yft3@h6rj3y7c32qu/>

Cheers,
Alex

>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>

--de576gek4a5mtwqq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmF9zcACgkQ64mZXMKQ
wqkBOw//YtGfU/1PAZSwyJDX2wl6ZVX68o/TyPt6cxDWfYCjXaL9WpIqg1Kb7bTn
VyaHlhqvpDP70vU7PHNXLmC5uer5GohxVufkP91FkR5U0VwdIGA81wQcM+zUN2q4
i7rIn2a/Q7xjMytup++gSri0fwP9UdN3YlNuks+M7mhlxjEEA6GOwGugNp5Pckr1
BhqCPurQD+igbj6N4pS7DLEIR8kUedWZ+0kG5u2ZRwmQ/AJaTS5xc5RJeFjxzzj5
FZiR7WM3orRTcd26+FYHod0eOTIlUdZDg7Y7x+oZla1pw4au0PQuWwNe9I8Ysu+g
N0rZb2LGRTUdMIO3E9t4nPmJvUHtubd5ntkNehEDycIJkIR7HPtJ3GAA65D3a0ew
l2sh+2i3EEXAsJg1t9ArBoOJ4NGteWD4wYD+petsEtPke8Pn4fFreixVy9MhDN55
TgF7MHapR9N7hpjSUfucnXi4Lust1mLIoG0ITsJuPQvFQBCpZ+5qjHtc8A2Uq/l2
eBIy+GSZ2cEHEEd3Aa7u7W4NTC+UW2Jmf48DgplAgMCpG1tDEwuvmTzZ98vpIAO6
K33GBCpoBfU1qyOirD4nSI8wcf0sdh9yvQlhCg5BfaW/x6Rt+Ho73ce9v/SXSevt
S22ikA5050fLhddElDlNoE6jUdcVQnpM5UDfvnt4n0DwC5NbeC4=
=+OPx
-----END PGP SIGNATURE-----

--de576gek4a5mtwqq--

