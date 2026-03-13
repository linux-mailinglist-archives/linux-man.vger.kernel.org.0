Return-Path: <linux-man+bounces-5258-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DUZDf11tGmUoQAAu9opvQ
	(envelope-from <linux-man+bounces-5258-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 21:39:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4542289D72
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 21:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 356D2301FB87
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 20:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4978437DEB8;
	Fri, 13 Mar 2026 20:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=natalenko.name header.i=@natalenko.name header.b="BLjxCh2I"
X-Original-To: linux-man@vger.kernel.org
Received: from prime.voidband.net (prime.voidband.net [199.247.17.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B88377EC0
	for <linux-man@vger.kernel.org>; Fri, 13 Mar 2026 20:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=199.247.17.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773434361; cv=none; b=lTFhaMI67HhpKxMwMam1RCtzuCo5HQhg7Pq5ClropFY/WECz/Mfa+ae1zrvKRpsbIr+lHepmtU8GeOpABxcgCxk85JiuFP8wDmTHpS/nrcI+Ue4mAv474SzcrOEuum9cZ6Cs/cTSq1HziFrLjxPfUXC5P3pFxnM33u63FE2UdNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773434361; c=relaxed/simple;
	bh=U2G4eP1kfpnsnQOA70+U9Z2jlbk2jBk2j3mH/AbzVXs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Yhx0YHbl1RZWwf1ryK7fO8nUkJzYGrHbgeijkzt82s/PioZpgRFpzjffiqH1JNM5qMMOAiDbL+PXDmGG/h4GUU3YKRQTPGuqly60tVnrpKdJtURH3hRDF08CKMS7cRJgfw+iLpCvAv++pREWZ8wnAGoM0MzF8HlX/yXp6kGtU2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=natalenko.name; spf=pass smtp.mailfrom=natalenko.name; dkim=pass (1024-bit key) header.d=natalenko.name header.i=@natalenko.name header.b=BLjxCh2I; arc=none smtp.client-ip=199.247.17.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=natalenko.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=natalenko.name
Received: from spock.localnet (unknown [212.20.115.26])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by prime.voidband.net (Postfix) with ESMTPSA id 5F973635B044;
	Fri, 13 Mar 2026 21:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1773433782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=naQ1rAy9Lz8g3/ngM00oTTSHd5GrrNNwbYqDz0S9hzM=;
	b=BLjxCh2IA2UE3k694gKE8SSPJ4KaC5KXX/bO9O5AH+dlPQQM+b8GZg1+sq7/ET/J77tnuX
	lBbXdo7UX6+1Sa+HAoZc3WWm9zFez5V1OlWJG+AiHYAcNqhpz+N7e9MHZcJtkoYtUognhU
	4LoDU5InA/9EoB7SZqpQDAZEm3RLsfg=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Alejandro Colomar <alx@kernel.org>,
 Emanuele Rocca <emanuele.rocca@arm.com>
Cc: linux-man@vger.kernel.org, Lepton Wu <ytht.net@gmail.com>
Subject: Re: [PATCH] core.5: document the %f and %C core_pattern specifiers
Date: Fri, 13 Mar 2026 21:29:24 +0100
Message-ID: <4718783.LvFx2qVVIh@natalenko.name>
In-Reply-To: <abRiap_UrhFzNxPs@NH27D9T0LF>
References: <abRiap_UrhFzNxPs@NH27D9T0LF>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2401979.ElGaqSPkdT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
x-ms-reactions: disallow
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[natalenko.name,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[natalenko.name:s=dkim-20170712];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-5258-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[oleksandr@natalenko.name,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[natalenko.name:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,arm.com:email,natalenko.name:dkim,natalenko.name:email,natalenko.name:mid]
X-Rspamd-Queue-Id: C4542289D72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart2401979.ElGaqSPkdT
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: linux-man@vger.kernel.org, Lepton Wu <ytht.net@gmail.com>
Date: Fri, 13 Mar 2026 21:29:24 +0100
Message-ID: <4718783.LvFx2qVVIh@natalenko.name>
In-Reply-To: <abRiap_UrhFzNxPs@NH27D9T0LF>
References: <abRiap_UrhFzNxPs@NH27D9T0LF>
MIME-Version: 1.0

On p=C3=A1tek 13. b=C5=99ezna 2026 20:15:54, st=C5=99edoevropsk=C3=BD stand=
ardn=C3=AD =C4=8Das Emanuele Rocca wrote:
> Whilst going through the relevant kernel code in fs/coredump.c, I noticed=
 that
> two core pattern specifiers supported by Linux are missing from man5/core=
=2E5.
> Document them now.
>=20
> Signed-off-by: Emanuele Rocca <emanuele.rocca@arm.com>
> ---
>  man/man5/core.5 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man/man5/core.5 b/man/man5/core.5
> index 8c26aa07e..4da5819b6 100644
> --- a/man/man5/core.5
> +++ b/man/man5/core.5
> @@ -154,6 +154,11 @@ A single % character.
>  %c
>  Core file size soft resource limit of crashing process (since Linux 2.6.=
24).
>  .TP
> +%C
> +CPU the task ran on
> +.\" commit 8603b6f58637ce196d68f7749633ea81af196d66
> +(since Linux 6.2).
> +.TP

=46or this part:

Acked-by: Oleksandr Natalenko <oleksandr@natalenko.name>

Thank you.

>  %d
>  .\" Added in git commit 12a2b4b2241e318b4f6df31228e4272d2c2968a1
>  Dump mode\[em]same as value returned by
> @@ -179,6 +184,11 @@ Pathname of executable,
>  with slashes (\[aq]/\[aq]) replaced by exclamation marks (\[aq]!\[aq])
>  (since Linux 3.0).
>  .TP
> +%f
> +Actual filename of executable, which may differ from %e
> +.\" commit f38c85f1ba6902e4e2e2bf1b84edf065a904cdeb
> +(since Linux 5.9).
> +.TP
>  %F
>  PIDFD of dumped process
>  .\" commit b5325b2a270fcaf7b2a9a0f23d422ca8a5a8bdea
>=20


=2D-=20
Oleksandr Natalenko, MSE
--nextPart2401979.ElGaqSPkdT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmm0c6QACgkQil/iNcg8
M0tvURAAm6EHLeh+n9qINClCAhxhus8qjqt2o21f3v7jzpgeYPtYIrlXng1vsYOJ
Ojh91P9NRrjocbdD3fJvHwVOvKKRQIknoLtYl2qBxzixB/bf066TQmdrz+oTm5Mw
8vvWDLH3GDYNYgtAyKPG92nbmdRS1hI/d/NJJ5+tKIs67tIl9i+n3OK2IEmXgmm/
lZikSB2aS6U63fNxvAtVFOtTHr1CNbGsLqvcmq6P6w9n+pGEabrJaVNgIYGvYrvc
VnGyRHpy2Rk+2fhU5F3NY6sCZqDujpi+ICkRTlQoudnwcc5ZYcLjUIHkYTRuGsva
qeZzmPfvGbN5uAjHEz5ivsoMN/78oMwAJpTGsz9EKYIAIji7Yn/ZwFIsNM9vkmmw
VxuMRgu7/XG8Oqc44PTq2UxcQHDIYJyI1Kld68YaD/YvZdcfSTUAaSbaEgiN02Hh
LRrg2z4KSDOo2wJIAzZhjOjDhwoChSE1R/mJJ/DiBxXRD2Tgk4qRmxgdDXiZ/Fiw
XRYin0tfM/Oap9hnIDHFDiIMr1j5LYl5+AZDcQuXziXq96jPWEG1z6iBxaxCRnPU
/O+kRNr+CveSgvJ8Z1i9TYZMT1UBOyz+ELICSEw/74dCIBFVbD7BcafdtlfabtMa
cWiNAKbOh6Ms1ktnsB3AsRbvU6SGTYMS9kSUw3h1EeYl74nsuEs=
=MRSX
-----END PGP SIGNATURE-----

--nextPart2401979.ElGaqSPkdT--




