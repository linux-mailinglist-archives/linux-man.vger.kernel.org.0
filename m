Return-Path: <linux-man+bounces-3488-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B7B2BFCC
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:05:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EDFD5E6841
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED9F322DCE;
	Tue, 19 Aug 2025 11:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq0zgPCK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FF532255F;
	Tue, 19 Aug 2025 11:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755601362; cv=none; b=D9W+JuzSq2TTOjgSMxNehvZ7wWIWLRG2cSh9ZHFI/vp2cZzdlFqNuSlHhANDtVwulZrMj/QuP+yYDJEixgX0GfbZrG5epxYXRIZ44vbw7AFWPBsJeMz8STh9Z7nj/6DUOQXt/PF0RI7Xw/TR47IoQmIabbmxi17FGQWOFwpLFPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755601362; c=relaxed/simple;
	bh=Q41odl4rDDF6bjO31+wZCInT0pT/j91ECLSRoOHDu9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LGaoaH326beXYM6Xwy7U4ek0zvXfQTrcXuwIh2bn7EynEaIxTgBlV8U5Tgn2zM+dRXBMQltOB3j8YHkFWTXq/mZfZ95hAnZ1Cv8GotfhVmOoEDnY4QRwcgNT5sqLbDGOWlZVfrStfaKKWCMTBVMXV7rYtzJiyDHqHKpAMgijiA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq0zgPCK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 972F4C113D0;
	Tue, 19 Aug 2025 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755601362;
	bh=Q41odl4rDDF6bjO31+wZCInT0pT/j91ECLSRoOHDu9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tq0zgPCKJy79CH55AKOpJRi5M/bbcr2gG5cPITN5k8vnoQBgUXscFZFcMgpARhGPX
	 40G+v+7yn3abFTHgW5dquleiIqli+QCJvRMmjqrG9PzsTMetfwupyFG176fCvMJvk9
	 3hIJ3NyHL6Yda5LoUD8jOPJgql5RsVtjWxq8vUdEyQgLzz7rZqPc8FjvIFtANhtpA7
	 sFI/ymWBHbbqK0jR6iIG+RWydnu7AfgSqgepqrV8j4lmBOXAee7kd7HudkwaPuDIHV
	 fJvcnvQakElR92KwtyKkPwCILaTNfQLvlJyNDAL6Uw3XWEc9Eoacqg9vH8pLiwcy0L
	 d38DbITNVvG9Q==
Date: Tue, 19 Aug 2025 13:02:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vhc34fkseddmatog"
Content-Disposition: inline
In-Reply-To: <20250819071728.1431543-3-bigeasy@linutronix.de>


--vhc34fkseddmatog
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
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250819071728.1431543-3-bigeasy@linutronix.de>

Hi Sebastian,

On Tue, Aug 19, 2025 at 09:17:27AM +0200, Sebastian Andrzej Siewior wrote:
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_SET_SLOTS.2const
> new file mode 100644
> index 0000000000000..93af27cbd5e5e
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> @@ -0,0 +1,67 @@
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
> +Specify the size of private hash to allocate.
> +.RS
> +.TP
> +.I 0
> +Use the global hash.
> +This is the behaviour used before 6.17.
> +.TP
> +.I >0
> +Specify the number of slots to allocate.

Should we rename hash_size to just 'n' for simplicity?  Or maybe size?

> +The value must be power of two, and the lowest possible value is 2.
> +The upper limit depends on the available memory in the system.
> +Each slot requires 64 bytes of memory.
> +Kernels compiled with
> +.I CONFIG_PROVE_LOCKING
> +will consume more than that.
> +.RE
> +.TP
> +.I hash_flags

And I guess this could be just flags, right?


Have a lovely day!
Alex

> +.RS
> +The argument must be 0.
> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +An argument is invalid.
> +.TP
> +.B ENOMEM
> +Failed to allocate memory.
> +.TP
> +.B EBUSY
> +The global hash is in use and can not be changed.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.17.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const)
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--vhc34fkseddmatog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikWb8ACgkQ64mZXMKQ
wqkVCBAAjLwweSmUUDEk6hNjIlMLLA/3D4viQkTYwUMFRzEBef31sEqi6QjM9sW6
GeTjnCYqjIwMd+zcHlWtmfQityheoTnLF3xTf4e7v+CZTgjGeykv9AWlUW+C8SWH
SXYxF6TZV0Y+SUJClid/+bpUvYo43ztfBkFqldcW4T0NQHc3WqVMcP7Ukmv/TPP5
j5Oyu07gVgB4peAujn33/cvA/7s2A2dIOjyfXIOrt/fOw2+8l3uPIDLjYhO6BmDK
FVi+KJX95omBJCN7A3lDjW9lMOOxeWZn93WxNzUAv3cxWvVEDyegf7DpM3LGyyrF
O6OKl10iPED4CPJ48UI7jKiloCUuDBZ+1zNL3tcZOHsy9kZK4gbjViX5iQx/T87+
0ehS3+H5xRc2JTA6tOYfNV5IjLd5h/Nn4uMUeMp898QP0MTSX1ET/vbHXvtnTkc7
xth+RfkI/EHLlDwx9VeVPdDZzqsCqkDli7fanCCTe42PeiFLM8zlo8Ws0+KMTDJW
NduBKj6AUBMacs9lJdRcQEAyDhkb75LJd0cjqlYgH7VbaUn8gPbRGhcaaQmgQkZt
s16S5+UKU/nFaPBIRPCaJjZYacKAX12XURqGPbSyROFvVhY89AAqja4iggOJ6/Ux
xpomQO/pv51O3SzLjmLwxQQ0vIBr88qMn/sPKcBiBoHriF4lzjQ=
=PX1i
-----END PGP SIGNATURE-----

--vhc34fkseddmatog--

