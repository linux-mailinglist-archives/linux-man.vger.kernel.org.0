Return-Path: <linux-man+bounces-3126-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFE2AD4EDF
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F4593A2650
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E279923F40C;
	Wed, 11 Jun 2025 08:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIl+DeVC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD6A23ED68;
	Wed, 11 Jun 2025 08:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631869; cv=none; b=s8jQGPXaBf7u+32hZVotcbzxTHqDw3Me+T7G4j/5i3X9HUKcDEAqeFRKpbvx862S4knK1vx5tkH165/SPrIpHL7cNAmbubTR3gqhnqteZrgiTdlzJHzXOngvzG5u2TclWvCZM8h0wS+/SJXd2YgfVrdaABDBr+NqETgJ2/e+fCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631869; c=relaxed/simple;
	bh=S7v4UHbFoRXXKzDTRmiAaiWxd33sJnUkrYzi5GnDX5o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fi51pVIf9NHbuK+NNAZQtq10/C7g94VKNsZV4zxkbiEH/qlbn6jnvmvdEJJTm95/O0INy5+Hhe2NWKmIe37UvvxnWKIHcTomfdJF9PAsr44rX3HQcnm61Orjqbr8txBUvRDLTMG1SxlYC5bXC/ZWEJus5IRhnxki8QMWgPb7CM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIl+DeVC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAD5DC4CEEF;
	Wed, 11 Jun 2025 08:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749631869;
	bh=S7v4UHbFoRXXKzDTRmiAaiWxd33sJnUkrYzi5GnDX5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LIl+DeVCZwGGS/OmaNST4jfwXzayDu0wE9xe138c77OwFl+ZnZNTfHD5wF0k5/RAE
	 0rdaWaKOLBt3vjBxvczzr0v6BgDUyMItGa6/f5fn1VD+8Uoj3W6x25ok/GbKaqjYFY
	 Y2Z7wgFoCwkn1xO1IKqlgTMxKeR30n2assWpC9SaZWNAMQ3Up5oJueleg4uSFqTvaU
	 vBsnf37v+mLqANE+n/wCIM5oxGHDxVQzgRMXxj3P2GFtq+RNnKamu4+cH6/lXsD7BD
	 xLDefEBKwqkbMg5AHdYLnlE6ERb63a0rx682Xw901ReYYyU07n7sC6i81hyf49jAgG
	 ye+yyMt3f4bNQ==
Date: Wed, 11 Jun 2025 10:51:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 2/4] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <j2we6cegdujxybgz4x2xok5slfmggmcqhipw4glc7kwn2ikwr4@qhekvpmc6jyc>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-3-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="htndli6alwqdtx7e"
Content-Disposition: inline
In-Reply-To: <20250602140104.2769223-3-bigeasy@linutronix.de>


--htndli6alwqdtx7e
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
Subject: Re: [PATCH v4 2/4] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-3-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250602140104.2769223-3-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Jun 02, 2025 at 04:01:02PM +0200, Sebastian Andrzej Siewior wrote:
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

s/Specifies/Specify/ for consistency with "Set" and "Use".

> +.RS
> +.TP
> +.I 0
> +Use the global hash.
> +This is the behaviour used before 6.16.
> +The operation implies the
> +.I FH_FLAG_IMMUTABLE
> +flag.
> +.TP
> +.I >0
> +Specifies the number of slots to allocate.

Same here.

> +The value must be power of two and the lowest possible value is 2.

s/two/&,/

> +The upper limit depends on the available memory in the system.
> +Each slot requires 64bytes of memory.

s/64bytes/64 bytes/

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

One RE doesn't match any RS.

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

This sentence seems to have some issues about singular/plural.  I can't
read it properly.  I think we can simplify to

	An argument is invalid.

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

I think we can simplify this to link just to the parents:

	+.BR prctl (2),
	+.BR PR_FUTEX_HASH (2const),

Since PR_FUTEX_HASH(2const) already links to all of them, we don't need
to cross link.  That'll be simpler to maintain.


Have a lovely day!
Alex

> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--htndli6alwqdtx7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJQ3gACgkQ64mZXMKQ
wqlUNhAAsS5qsGfG4eqfPYcAo1jt9HI7UpTUhSaFNp6Ulo+zwdqJJUZEfnnJJBwB
RYF0rHRQUNocQqtLJW2q3evwFwikhgm+40u+DSjADxQHH2nXRdOEU28/hGj1SvYj
cyVTENPhxTwvjQEfdvSBa1DHx+uRwkxPbFoXRZT3CIW4xYT3lIVYEBJJVhKCq5x+
m6Jk5HrOUcbGCcwASImogaPW8G9nE74QqYQ55Xt59+V05AOADNdmDYsjjTuZ07tj
gRhWpXDXFWoQ/DxjLrLYdli/6KAkZo/nrI/KaQsBqNP2yFcdWRVmXndAZls8wVTq
j3wWoUd068y4Xbk00rA5pkT9Gg1lvQbztuwv0sx/hlWDWrvXyDv/y7JBdVKM8TH7
V9kxNxmcQUMcoikPSqzTgykNBNxM7Kxff4H0QggoS6TQyytVnCaTBiBBxK68mIKg
loO8537fUOd5P0JU50z/Zxm2KuaKwuqgul0MD/emsQqZOJUYRcDy+qSqhJGkAckG
uXccWaizO6oCfT+0siPAd4VvQaY3p8QQ1ghibBBY/0/EIbGk+O9Sbf/oc5bOhkw5
BDrYJojDQkf1RBmVfO5YztWpmQ49adgnOGBMFN9qIMw70biqvY1pqdBN4P37vO/B
cEpN7wbpklS/3CUNUPWiUJaqalwjuHqZI7rpaBlrFxcGAKwTLH4=
=w/eQ
-----END PGP SIGNATURE-----

--htndli6alwqdtx7e--

