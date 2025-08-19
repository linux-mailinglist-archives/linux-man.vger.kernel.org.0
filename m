Return-Path: <linux-man+bounces-3489-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3EAB2BFD3
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B099E5A2AB4
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E75277815;
	Tue, 19 Aug 2025 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIHoK44E"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE825DCE5;
	Tue, 19 Aug 2025 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755601412; cv=none; b=jxzkHvNy7RjNxWKoEoq9EfpjV7wyx2ImPKYDFjCT3G2ilNSnCylxNf3IrPj850VMB/P93eBmKnkz7Ke/wb5KloIl/R11ckAcGb+Blji6qD7FbGjvQ1q8diSN75NgsOyhca9p5WGlUGlysbsGO1lE+pUhL3hPNrLV9OeZJAudMDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755601412; c=relaxed/simple;
	bh=RwaI5rWeSqki3uwSlw7UPR5rBkT/Q6XfALG/Q5Ogins=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NKaKTx8BSzKhI7yRon+VSBC0U2aSzFgzQ5laRyaaNa5K8u9g39w/2JOXUlOZGuKrMeJt+q0A8eSuo6ul0ZoJsCebXMMwSeHBAF0XzBJ0+4e++8175csSsXYPU1PYj1ORJVkJwjHGlj8e0VZayvqwCtXqFYatvO7wKMDNI7a89lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIHoK44E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE065C4CEF1;
	Tue, 19 Aug 2025 11:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755601412;
	bh=RwaI5rWeSqki3uwSlw7UPR5rBkT/Q6XfALG/Q5Ogins=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cIHoK44Ehi93EMRJdRJ03VgXPBDtxto3UjfogkiDTVYJ8P1W+Up2MlHB9S+3qrTsQ
	 wO8gophFydeOLYaw3CQzon/46+HUrhwBTEcNxpZYNcH0DOCtWcoRlNcFh2ZWuaMjTV
	 SJgJR3yXBfSYnbpQA6nS7PDodV0Cs5tUtG9/da/z8CHIK/kfft4pfUNFaH6nIacqOo
	 qIgEEGSGqOVupIrU5lNGVb+KfOm81ZjklN+7EO+aCyETyD+s8hThX+A4yfuQFuJjIg
	 teyWwZPLxrFUObiJD9q4skCVapAluFTQi+SFtMpzt51TpCK3n47+afsaHlPy1x5Wlg
	 4amM/ccZt/yXg==
Date: Tue, 19 Aug 2025 13:03:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 1/3] man/man2const/PR_FUTEX_HASH.2const: Update as of
 Linux v6.17-rc2
Message-ID: <q2got5wbyhqm5bzxao4haixwrnpoaqdxykxf5carzb25rfg3ah@khvkd44ejiia>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-2-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2y27u6cx23bjkvoi"
Content-Disposition: inline
In-Reply-To: <20250819071728.1431543-2-bigeasy@linutronix.de>


--2y27u6cx23bjkvoi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 1/3] man/man2const/PR_FUTEX_HASH.2const: Update as of
 Linux v6.17-rc2
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-2-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250819071728.1431543-2-bigeasy@linutronix.de>

Hi Sebastian,

On Tue, Aug 19, 2025 at 09:17:26AM +0200, Sebastian Andrzej Siewior wrote:
> The PR_FUTEX_HASH prctl interface was updated shortly before the release
> of v6.16. The changes are:
> - the functionality was disabled in v6.16 and enabled v6.17-rc1 after
>   some updates the address performance concerns.
> - the "IMMUTABLE" functionality was removed.
>=20
> Update the page accordingly.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man2const/PR_FUTEX_HASH.2const | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_=
HASH.2const
> index b500c943bf2cb..bc05226cd1594 100644
> --- a/man/man2const/PR_FUTEX_HASH.2const
> +++ b/man/man2const/PR_FUTEX_HASH.2const
> @@ -44,7 +44,7 @@ since random processes can
>  share in-kernel locks
>  and it is not deterministic which process will be involved.
>  .P
> -Linux 6.16 implements a process-wide private hash which is used by all
> +Linux 6.17 implements a process-wide private hash which is used by all
>  .BR futex (2)
>  operations that specify the
>  .B FUTEX_PRIVATE_FLAG
> @@ -68,8 +68,6 @@ The value in
>  .I op
>  is one of the options below.
>  .TP
> -.B PR_FUTEX_HASH_GET_IMMUTABLE
> -.TQ
>  .B PR_FUTEX_HASH_GET_SLOTS
>  .TQ
>  .B PR_FUTEX_HASH_SET_SLOTS
> @@ -82,10 +80,9 @@ is set to indicate the error.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> -Linux 6.16.
> +Linux 6.17.
>  .SH SEE ALSO
>  .BR prctl (2),
>  .BR futex (2),
> -.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
>  .BR PR_FUTEX_HASH_GET_SLOTS (2const),
>  .BR PR_FUTEX_HASH_SET_SLOTS (2const)
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--2y27u6cx23bjkvoi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikWfYACgkQ64mZXMKQ
wqmm+w/9Fuuz+rPy6PpzCBiHlUkNKX/bDYmUgtCOGwY71jHgOLPfTDC/Vm4MOBO8
XI+pBDoYWGFc7P1+pp7xXM8YiePff+zdyVqtCgcBo4Rz5pQrCfsmi/xTv+0/6sQv
djtnkhGPauaU15lBxq+OqXdccO0xwrJgCggROvCxAbGJVr/4ruIZc022Yjds81Rl
cOiIZBBbOu5RwmaANPV4mVTLo+bOxUgLBIH+0jgdoacVDsxc3fqBRZCMdh/SfLKq
K006s48cSk+FnxlZBl7rM4JMCCYUbhtlOMUQ2b7d/dr2hFUPLG1rrP77lGXMUlTZ
nhcdMLD5QIGvIvgg9+FEbFczihwAOQfPfd8mtLaYYKxX+pRG6DuRKybosRefaMVE
DdJH1BaR2fofQ2i8kHq5O5rknJq5O1yN2H72Te1O7AjvcwMzfg8kSNk4mzbukh7q
bUMyMvkv1XnLc1AREnRAQHQHo2sE92RlDG4IqZ5fnTGL+P1i3vSuiW2bHXrG5ITM
LMcdo5tUewg8VMJfzos7aviqBVblg3qgtGWdkqKfz4LK1FyFqq+WmK2A9IeyytQa
CEHX8sj4MN3yp/ldXO/eTnB1v8oSxoBtJ6b3/DFc4xiAPfPGpA94ipI3oAhVuhAx
wnf6x2sKFeOZGoeZyzsXYUDgf79TcfyztF1c2Ih7dBwLiSFeU3o=
=LOSz
-----END PGP SIGNATURE-----

--2y27u6cx23bjkvoi--

