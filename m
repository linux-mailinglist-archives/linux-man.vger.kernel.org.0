Return-Path: <linux-man+bounces-4162-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48098BE0D96
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 37A634E639C
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103123016E7;
	Wed, 15 Oct 2025 21:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKolobEF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7112DA77E;
	Wed, 15 Oct 2025 21:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564643; cv=none; b=ri9alecSFGC13OZqBob/0K5FVq4kRF4sH8b24iZORBWVQoVgLHzS+w8BsCu5HPVt7XEqiRRbofjXz4UUavV4VoOVFmVZER46Y3piIHMiCDd6u/sz4DU+yh4OQEyyRSc1kMT7pZRl8iLPadsLfBGR+ascu3Fc1WiRnbU4dwxdOn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564643; c=relaxed/simple;
	bh=zWwm5aXwQnYScwH8ojzm+Dx2TtyJQD+QhNuN3PeUfbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vv3uKXNnxVHQpUTMvftMkRTFheDMONmd+S2IWBXt9oxYIoHRIockb3YGM+fu71sJ2Na69vSYmgjUbjAHI0OD3VxcdAqiV0DsIwwIuN75T1jZLZnRHEtR7sz15/gM+zRExjzrV3MuR30RNMcow3vfgvD7QrizgLcALOb/otg6iHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKolobEF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3391EC4CEF8;
	Wed, 15 Oct 2025 21:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760564643;
	bh=zWwm5aXwQnYScwH8ojzm+Dx2TtyJQD+QhNuN3PeUfbs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iKolobEFxz2r6ubVgFXaMTCkAttgJuwLtJxqNhrr+i0Dkpvj+/65J4XW/voq+UqIU
	 MDzPJ8O7fuSSTgwdmaeMm0TgN9jy+RrdTw57FbiOML+JvCB7gfimYjzwnX2e1QfGL+
	 Q0HoEBJReEvqjgKJ/dRo2j32XDUAHrsqbkjPxxf05Bg/rb5v/NIisk3wVf7ceT6AuB
	 1M8/StdNSP4buveBT8+xWffKdL+dWiENT4C179aNoBl8+hUpQoKwXf94ebpjYDEZes
	 Yfw5U8qPddLDjQCooP2vpXc3qwQ/SbJno0BVtKzKd73rzPHI7Md3krAaoos9T6ytNk
	 o7vfCXgHA6DOg==
Date: Wed, 15 Oct 2025 23:43:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2 3/5] man/man7/sched.7: Update the documentation
 references
Message-ID: <fmoaewvfe2ffafa5iphwm6gkdh4zkhijhhcnk33sbbkfaawcxy@5irl5sylpwl5>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-4-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="44fe27o64kfkh2xt"
Content-Disposition: inline
In-Reply-To: <20250915141305.906440-4-bigeasy@linutronix.de>


--44fe27o64kfkh2xt
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
Subject: Re: [PATCH v2 3/5] man/man7/sched.7: Update the documentation
 references
Message-ID: <fmoaewvfe2ffafa5iphwm6gkdh4zkhijhhcnk33sbbkfaawcxy@5irl5sylpwl5>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-4-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250915141305.906440-4-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Sep 15, 2025 at 04:13:03PM +0200, Sebastian Andrzej Siewior wrote:
> The section refers to .txt files but they have been moved/ renamed to
> .rst some time ago. The mentioned sched-rt-group is inconvenient as
> people always complained about CONFIG_RT_GROUP_SCHED.
> Everything that describes CFS is not wrong but the kernel the kernel
> switched to the Earliest Virtual Deadline First (EEVDF) scheduler.
>=20
> Instead of updating the file links below (and adding new ones), replace
> them with a link to the automatically created scheduler documetation
> from that folder. This also has some EEVDF bits :)
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch, with the following amendment:

	diff --git i/man/man7/sched.7 w/man/man7/sched.7
	index 6efdd90c5..8d37db321 100644
	--- i/man/man7/sched.7
	+++ w/man/man7/sched.7
	@@ -1057,7 +1057,7 @@ .SH SEE ALSO
	 .P
	 .UR https://docs.kernel.org/\:scheduler
	 The Linux kernel documentation for the scheduler
	-.UE
	+.UE .
	 .P
	 Worth looking at:
	 .UR https://wiki.linuxfoundation.org/\:realtime/\:start


Cheers,
Alex

> ---
>  man/man7/sched.7 | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index db7753c9e912c..935ff1fb82db5 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -1048,12 +1048,9 @@ was not possible up to Linux 2.6.17.
>  .I Programming for the real world \- POSIX.4
>  by Bill O.\& Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-=
0.
>  .P
> -The Linux kernel source files
> -.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
> -and
> -.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
> +.UR https://docs.kernel.org/\:scheduler
> +The Linux kernel documentation for the scheduler
> +.UE
>  .P
>  Worth looking at:
>  .UR https://wiki.linuxfoundation.org/\:realtime/\:start
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--44fe27o64kfkh2xt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwFZ4ACgkQ64mZXMKQ
wql1ug//SpVgrIkW6MLv8J9PJ+UBdtRDO+qjFio/OQUOoaxiQ95pBK7CVIOtYNNW
mzbzhrpVK7M+Nz4JweqNMfVMy4yGwJnVytMpR1nWpNGnzrQuu8YkIN7lsPYd+fB3
rIanLDOgTeuggPK6Z3FAOE2OpWJVhmcECShIjOCdaPrjQ8HpiiG9AdCwuT9QF1EY
uQbvkTdtcvpFt1vTykTnI+bDPJtKs+Vd7E+heDg2Gg5KcZdsr2Q12k7kGytogR3/
QkvU+uwpP20DmTTOGymyImt0Mmu2JkRkm7pyyLIcUD580Th4cPFdf3xjBIwP7N6V
yuc8cBOLlVVVi/z7Z5tdbe38HoLXx11uIwaSeCpqYMAHpg8W5AfI9Z7QHxv2QzXo
hIJGZDTJ3twaTe3J6uRWjsurX/ypTaHJt+04vIAsYTUeazfolhqp8tfPJawdNNbb
Wy0pgu1YvXSYeqEd1FA/zQk0WdXaTTR9aZTayLAp4LzjcTmklbM3JGCu5UkhMSur
yp/iCuygyHsk+yPeWILJcEib6wwfarJbVcbd7pQAH8Tv0aMnNVDeM0wscDwtS0kR
hkzGm/VUrXHUUT6iE5jHUEZHe1stTHeqb1tlVlbhdSK35SR25c2RF682Af4r/WLZ
tTaruecTY8quEh5dlibsXU4F06emW+ICFiH25SSssCbiVyESCB8=
=XRvx
-----END PGP SIGNATURE-----

--44fe27o64kfkh2xt--

