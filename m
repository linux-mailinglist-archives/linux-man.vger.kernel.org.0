Return-Path: <linux-man+bounces-5153-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vYQuAU4IlWk2KQIAu9opvQ
	(envelope-from <linux-man+bounces-5153-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:31:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 649E5152465
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 459D43034CBB
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 00:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24CB1EB5F8;
	Wed, 18 Feb 2026 00:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY0jX+/j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A9417C211
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 00:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771374665; cv=none; b=P8UywsLetK8MDxcyD4XU25DZy94rxCIznB7Vk0jh+h+TxZ1ekPpxahfCNosqURtHJ4nX4MyOay17itK7BiubTQk3b1c4QaLA+6pMN3/BF/inRRTBVNwgJ8YFeCjn1eDgHAhvTImudsRnUg9EkfCyhfLxrp2UwopSZjo0r02gxfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771374665; c=relaxed/simple;
	bh=eIpUHpxrlVS/XjTTatE02UCR6KEypG1WtKfQZrxLVCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z54n+c8ej/y2/w0EhjAwWEHya6qX9zHXeHSTbBuAUQb8pHR8mbtlWbWiOrlpUVlRwejjP8HcTbb5ZJrIvDRypiTY/6DMGqJSGlsY0jUkWd3/Sp2bEz7mC5FcjEuYr27Z1cBtrfqNhYeRmU4HUKt9hr02nhdoxvmTYwM9U2GYpSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY0jX+/j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 640AAC4CEF7;
	Wed, 18 Feb 2026 00:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771374665;
	bh=eIpUHpxrlVS/XjTTatE02UCR6KEypG1WtKfQZrxLVCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LY0jX+/jppMh3b8v2at3sdq3E/Y7z6JaYz5UT7FsII5QQKlCMMcsHajrBTuSad/1s
	 OnqQRQZN6FYVIfWUCh7p3m5yMsm4pmmeZILxn0InrxW2wB7mmbbWNNLpnrTtBI1NJw
	 DQzDA6BJ3C+EFLDdMRZz7ZQfSzOvzCCgu9n70AISuYDaXNtpVXwNfnDzfYYQYzrOVA
	 DHWV0jS9Kh9JTG717QmyUkFEe4HDWgKrTSTZlE1g+YBJ/LE1pYCdhDioB18ajUV9IT
	 gHF4otAuqn6qqu7PZwdKT97fEcWpER34IfaLfyIVBa3PHut3FL+QV18apG/WdmTlUq
	 ggiLOkw68A2tQ==
Date: Wed, 18 Feb 2026 01:31:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v13] futex_waitv.2: new page
Message-ID: <aZUIDEVpG1t9sIp6@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
 <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
 <aZSK5oo7o_jF85zP@devuan>
 <wxji2qjbiexzhd7ckmvyussimy3j44gaedm77zczycvn7esn4n@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h2qbxpgtmmpowwr3"
Content-Disposition: inline
In-Reply-To: <wxji2qjbiexzhd7ckmvyussimy3j44gaedm77zczycvn7esn4n@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5153-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[alejandro-colomar.es:server fail,tor.lore.kernel.org:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 649E5152465
X-Rspamd-Action: no action


--h2qbxpgtmmpowwr3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v13] futex_waitv.2: new page
Message-ID: <aZUIDEVpG1t9sIp6@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
 <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
 <aZSK5oo7o_jF85zP@devuan>
 <wxji2qjbiexzhd7ckmvyussimy3j44gaedm77zczycvn7esn4n@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <wxji2qjbiexzhd7ckmvyussimy3j44gaedm77zczycvn7esn4n@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-02-17T17:17:03+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Feb 17, 2026 at 04:46:28PM +0100, Alejandro Colomar wrote:
> > silence; let me know your opinion:
> >=20
> > 	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:36:13: error: implicit use=
 of sequentially-consistent atomic may incur stronger memory barriers than =
necessary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
> > 	   36 |      usleep(*futex * 10000);
> > 	      |             ^
> >=20
> >=20
> > 	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:37:13: error: implicit use=
 of sequentially-consistent atomic may incur stronger memory barriers than =
necessary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
> > 	   37 |      *futex *=3D 2;
> > 	      |             ^
> >=20
> > I have little knowledge about atomics, so can't judge, but the code
> > seems good to me.  Please confirm.
> Yeah, that's okay. Worst-case is it'll be marginally slower than
> something more verbose that specifies... acqrel? which would be minimal h=
ere.
> But that doesn't matter for example code.

Thanks!  Applied and pushed.  In a moment, I'll send a patch to refactor
the page, to see what you think of it.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--h2qbxpgtmmpowwr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmVCEUACgkQ64mZXMKQ
wqk6HhAAgwxQJ1wcquS6HnhzwkN7vpl5OvlPYw0klpCkPZXBxFh/qYlYlIwgTwDd
uuiDnW7vHY+sTQCgdhyT91HPZhyTmdsmgy5PmRXNqUxmJXRgZNoTFvcfuusSvuUu
q0wdL7p0cY76YboWt4Kg3H2JrufKFRaaM3lztq1LhryQAXSRwCypl4G12VycBH/L
rI3qeJHatpAjE5yqvkXR2b90IfUImPNCzsRQe2NBlyEDuxncDj79iT0V3dKRSXNU
VglqLCMKHZInjKv8Kl/bKGcQ7fZf/+imEzn216MEtrUDIdx3bR10iMwhTWA0pJN9
K1bl7dOIRyH2+FOTN2VC4srfA6PAwTV8wGI2SqufHH7xRbqcmdE830l2OFYTK8sr
7C8SK/7iXTilFDtDcECe3MUA215OGxzeR2Td/SFUJOB42IwpqdYmXDYtgS8PRUKZ
Q1KDdtupOi+7dj+0rQ+M6AU0kMGa/sTqk3awm2lXxndJ2odAoBWfAEKJFdCm48Iq
n7xzFAQxpCWGEPAmVl5bXTwixxV7MAoU7xDb06cwvFVUcbmoLRzBJnGG96iFgEWo
nKKRjNqLxwvpoRgxmmEEPKssWFjRy9EqCYaAdhrto55lvG+BEkteGdEVNydNAXV+
lLWl5/6TqlY+9z102hJIaGaI8B9P9pWaTDVwsIipRp1xoE9jSVk=
=0y3o
-----END PGP SIGNATURE-----

--h2qbxpgtmmpowwr3--

