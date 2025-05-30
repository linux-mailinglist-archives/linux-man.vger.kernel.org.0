Return-Path: <linux-man+bounces-3058-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F360AC8B8B
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 11:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A7371689E7
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 09:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F70C221287;
	Fri, 30 May 2025 09:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2g+y9QM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFB221CA0A;
	Fri, 30 May 2025 09:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599177; cv=none; b=GqAaei+rM2x31HSdR64O6wwj4nZGMBUrAc3JRLuQ0Vg4YWS4/MUitxmRl5ZnhNtmMY2XGlY7jIpab4125GtdfEN/JPhK6kJm5oV4bNagtdpG0mNkzYtzU3qvXwUr367afrcBvTpPKdhJnFsdPcLeUHUu5iY8SFyAkAUnSHNUK2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599177; c=relaxed/simple;
	bh=c/wRfGUo7994mtTfsIZ5fqiWUV3tX/nCuwbClp8Qolc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rVG3wp728cVWLGZLtVvFR68ltFx40TjZtP2DXZdbZPAphmCihYzFPBlvkYp8nexgvWA0LwH+n+toJxoQUDDmMW0oA8Ht2HxfHWzJGFh9jg5Q26JCrSxBI+umT4RL2uOL9oVFVvm4am8j1q2eFrCDiipfnXROQ77/sl4lVcyOpKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2g+y9QM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE0C8C4CEE9;
	Fri, 30 May 2025 09:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748599176;
	bh=c/wRfGUo7994mtTfsIZ5fqiWUV3tX/nCuwbClp8Qolc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M2g+y9QMSUwwV5gOYFDPMTYwih4zxS2n4UFjrQl4OS50ONKxVB/HTzu0uNUQR90zn
	 5TC/VCAlTmw7XUOAK3c6QSOdTqiq4Nmj+UjRKidvOafeFSJcrmD7LE4bePr9d8VgGz
	 t9p6Pe1cen9Cyg6te4IM5yo6YOb4IleMnjJQOM59Zznilje1Cf/GYMc45pPa2SHMMF
	 qP4w/CDeTHN3E+/skV/qzy+E3+kIJsx5aARmM21P2J56os1lfB7MudHr1GMXSmUieh
	 fL1YNaffFXSeAyyRGxMa4dt6V+aD+swshRcJ1JzlC92vHayW003he/4sTAqhn2i2hr
	 XqhGSM+iQVAmQ==
Date: Fri, 30 May 2025 11:59:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 2/4] man/man2/prctl.2,
 PR_FUTEX_HASH_SET_SLOTS.2const: Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <b6sst5trs54mco6ah4wnk3ntnj6wi7diskothhell7yc4ppph4@5pugtx4mzljx>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-3-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vm2mjwvobsfgp52t"
Content-Disposition: inline
In-Reply-To: <20250526155523.1382465-3-bigeasy@linutronix.de>


--vm2mjwvobsfgp52t
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
Subject: Re: [[PATCH v3] 2/4] man/man2/prctl.2,
 PR_FUTEX_HASH_SET_SLOTS.2const: Document PR_FUTEX_HASH_SET_SLOTS
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-3-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250526155523.1382465-3-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, May 26, 2025 at 05:55:21PM +0200, Sebastian Andrzej Siewior wrote:
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 83 ++++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_SET_SLOTS.2const
> new file mode 100644
> index 0000000000000..1f08d1bb30485
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> @@ -0,0 +1,83 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH_SET_SLOTS 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH_SET_SLOTS
> +\-
> +set the size of the private hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
> +.BI "          unsigned long " hash_size ", unsigned long " hash_flags "=
);
> +.fi
> +.SH DESCRIPTION
> +Set the number of slots to use for the private hash.
> +.TP
> +.I hash_size
> +Specifies the size of private hash to allocate.
> +.RS
> +.TP
> +.I 0
> +Use the global hash.
> +This is the behaviour used before 6.16.
> +The operation implies the
> +.I FH_FLAG_IMMUTABLE

We format constants in bold.  See man-pages(7):

   Formatting conventions (general)
[...]
     Special macros, which are usually in uppercase, are in bold (e.g.,
     MAXINT).  Exception: don=E2=80=99t boldface NULL.
[...]
     Expressions, if not written on a separate indented line, should be
     specified in italics.  Again, the use of nonbreaking spaces may be
     appropriate if the expression is inlined with normal text.


> +flag.
> +.TP
> +.I >0
> +Specifies the number of slots to allocate.
> +The value must be power of two and the lowest possible value is 2.
> +The upper limit depends on the available memory in the system.
> +Each slot requires 64bytes of memory.
> +Kernels compiled with
> +.I CONFIG_PROVE_LOCKING
> +will consume more than that.
> +.RE
> +.TP
> +.I hash_flags
> +.RS
> +The following flags can be specified:
> +.TP
> +.I FH_FLAG_IMMUTABLE
> +The private hash can no longer be changed.
> +By using an immutable private hash
> +the kernel can avoid some accounting for the data structure.
> +This accounting is visible in benchmarks if many
> +.BR futex (2)
> +operations are invoked in parallel on different CPUs.
> +.RE
> +.RE

I think the second RE does not match any previous RS.

> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +One of the supplied argument is invalid.
> +.TP
> +.B ENOMEM
> +Failed to allocate memory.
> +.TP
> +.B EBUSY
> +An immutable hash is already in use
> +and can not be changed.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const),
> +.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
> +.BR PR_FUTEX_HASH_GET_SLOTS (2const)
> --=20
> 2.49.0

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vm2mjwvobsfgp52t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5gYMACgkQ64mZXMKQ
wqk67RAAoeHoJfOs/w2XFmZRdQIG8Lwz9nY+fyBnai12ndpzM//1hLdqQPZhRD/c
6uJBtTIxw6k//mRbDHcmd5ko9itNoXSJsolvClqCaPpm11zwWuz0U5GlOhmGTeOa
KxPDgaJHCbZHUo5mv+1AG+clNd3Aw8vuuhSxOS/m5wAJkBMxNfLnk0cqxav51JHh
DmLGFdGbK0UeHAJZxM3K9V5dzDk+cY459qeBcm/5/jKlLUv4389+ka2Sc6sfEFJe
KhRx8wwjSDXbKWstQ8K0AA8zOGSLZq5MmTuCrU42FpH4ECY7GK0D125AeQw9ploz
Y/OfF02P2MK8CEDQjtfix1mbn6fL2EaBlOWbgpmi3Uu6UUuOdqOyXXzXSg8jGMid
u22gBcDL+lOVYA/XLcXDvUVmWNfY427HfLdaNfRYkAMjlrOWg0i7jJsd+KhAYRQO
myHxKC5BGRLz59l/4XO5j/Dzhicup+9kwelm8LJKe25RwsITwzXpESz2Z2kOp/6A
E3oQYNS5tfIZmfOAkfl+pgeEFrQ/Ip2j/D9OheTB1796oAyxCgsKnraEHqhVTlQ1
Y+SUayifrfn1X2TxHgUXOHRYO0mph7rHpUrQN6MAdKu5XWfaHgwrIDRbO22kzK85
z0TYERkG4kNiv+gAV0X5kv5nXhMkmguflqx5D+gGfLt+YwpuZMs=
=EnRj
-----END PGP SIGNATURE-----

--vm2mjwvobsfgp52t--

