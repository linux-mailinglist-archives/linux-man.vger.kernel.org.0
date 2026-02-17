Return-Path: <linux-man+bounces-5152-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLfDHouUlGl3FgIAu9opvQ
	(envelope-from <linux-man+bounces-5152-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 17:17:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A111314DFE3
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 17:17:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D3443007222
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 16:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D291E36D515;
	Tue, 17 Feb 2026 16:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="F3w1zAFi"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49FD36B07A
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 16:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771345028; cv=none; b=kv9Nm4ywEIKfHTEgQ5I1FiskdgkT6/LVWMUE2Vd9gM3bKS1A4SufGycygGPn94Y828R7tAwxy73sOkjqR1UGKNNsS16ZGfKuJZuI6i31CssB8L9k0Hbd6Tag9pAOJF5G/4T+35ZdrXfu+zyf4FSj3WVrN5DlDMz37APBHOpTiW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771345028; c=relaxed/simple;
	bh=lOLWCuAb1KhYH9K1PbOvWMalYBu07Pye9yrsZ/97XuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nN6LSl/C4LSexa59vYBfMuFoqDxjrsT7T1nk9ZlcPpqBUGfEsAUth0r4ZQw2CkW/ZDP5FJgF+t2eOFuCQr+3nAsPEqDMNHNZ57XYzCsoLIMgBGE57zHMF+PI0EnPgB5I1h3/F93fmj0KlI2zVFBSsKPVTjjVvHrOf4IhYY8yyeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=F3w1zAFi; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1771345023;
	bh=lOLWCuAb1KhYH9K1PbOvWMalYBu07Pye9yrsZ/97XuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F3w1zAFijdvf6SbXxndbA/d343J9pDjR+6uZN9DcCWxuJOePWUZq6sqOJT6jGGhWM
	 AmWttOrhNuqymO3xp22VbZndfUj9/zVFNDsz92jo39PwcudCgZ61VUlNjJ5T1/N5Jk
	 UYyDBOPPdkeL8t8gdr81SwYjrL8E0j/2ADCAKtYTFF9o0NXrfXRdzQKUAWdC1sieBT
	 wD1WRQeVRfZf8+eWhhoKF5Lb3cvPJ1Dm9Wu/GjjTkY5Bvdf23BD13Dzd+oQVEHi6SU
	 5ID8KLdtbrsNAurkDlJ5RrQAAOwblTjmcQuiLiHc6FcWUS6dj3ulsWUnPRUP4UUOBr
	 VyUUG5xb2H6Ng==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8C8162740;
	Tue, 17 Feb 2026 17:17:03 +0100 (CET)
Date: Tue, 17 Feb 2026 17:17:03 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v13] futex_waitv.2: new page
Message-ID: <wxji2qjbiexzhd7ckmvyussimy3j44gaedm77zczycvn7esn4n@tarta.nabijaczleweli.xyz>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
 <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
 <aZSK5oo7o_jF85zP@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="keucpt2mupawv6hc"
Content-Disposition: inline
In-Reply-To: <aZSK5oo7o_jF85zP@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5152-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A111314DFE3
X-Rspamd-Action: no action


--keucpt2mupawv6hc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 04:46:28PM +0100, Alejandro Colomar wrote:
> silence; let me know your opinion:
>=20
> 	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:36:13: error: implicit use o=
f sequentially-consistent atomic may incur stronger memory barriers than ne=
cessary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
> 	   36 |      usleep(*futex * 10000);
> 	      |             ^
>=20
>=20
> 	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:37:13: error: implicit use o=
f sequentially-consistent atomic may incur stronger memory barriers than ne=
cessary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
> 	   37 |      *futex *=3D 2;
> 	      |             ^
>=20
> I have little knowledge about atomics, so can't judge, but the code
> seems good to me.  Please confirm.
Yeah, that's okay. Worst-case is it'll be marginally slower than
something more verbose that specifies... acqrel? which would be minimal her=
e.
But that doesn't matter for example code.

Best,

--keucpt2mupawv6hc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmUlHwACgkQvP0LAY0m
WPEIUA//VImxAQF9ugXU9mQphz4wlFnWjmBLkap810bm0G13JzT0AB8tXsnHnTlB
ELvb7mlO42owYagmFkA4ia+uCfjd35EuEkPFO7w63nKC3heW2p1rg1vZROSmJAOa
p7/1iLq77+kjad7Sht3Ag/1llMDY9QWuE9N7h9jVIMpEL034mmR/ZgXIwTScxNYT
yxUA93fDznw1GIxg5zhSCTawfY2QKjh1J6AE+CfI8h7RbDW+uTuA2+wnJAjxMAQL
tWrYwSL8CsN2Tz4mtRU8IIvfwdGDM4jnKJxOwDwoYPDjspKuDC4J3Uz13MehDEfx
9mSbOVydbWAFZNDuLthdbmrU+KX0eWilDVPA9+43N1nTWDvVqrEedGD0YpsUCHfR
ogZ3b5m4hbIZZvL1YrBFOdagdrMmDktTclS8rcoNUnWJrTw21NrHxQYNL+FLRv7t
/nK+IPkFNCYYRw5LjebFMjcaynm+dP27S5N6EQOD/X19Or/bo2bPuQoctwevoD8j
AdeQ+DKH5F3ZTdPjSunG955KcrBU/6534iDYuBwhcOqkSgec0k/7Q2S+o+zlwchU
P4JqwiGulHMzoVLfdE35vXYkZVmt2EKOLTWhNDhbrk9gfE4sgum7WzmTvJGExV26
0u1YE1fs3Q6+zzEQ2GrZFYZhxb1QyCYRMO3RxY3ejeA+JOt8dE8=
=0HOl
-----END PGP SIGNATURE-----

--keucpt2mupawv6hc--

