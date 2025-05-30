Return-Path: <linux-man+bounces-3059-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F32DCAC8BD0
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 12:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0944C17FA44
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 10:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14C9221566;
	Fri, 30 May 2025 10:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnuGjPnW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EAF21CA04;
	Fri, 30 May 2025 10:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599403; cv=none; b=ol5UgQUw8p9KRYADBip/gic6W7Qpr4lz5Zr+y9VKSZ8dUm/XtlgUh9s58K7CXQ/g8k7rOIliYy5MC1aWa6Yq3rmdONcXIHWjSOYWfzLXi/Vwz21YmD47gRoA5uRha31lLTW+ROKbc1CCqV1vGIB1sGZZQSoOpAMAi5jVu4b255Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599403; c=relaxed/simple;
	bh=u+nTd3xfKrjFwrar8NjW54gsKZHDKaBEN6i8+8wX8Tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VAAhtiMXH418Cn3xwTGLGB44J/JS8lIkEC349ZFP5b016/+okuK4iv1TnzkBDMZ+W6tklPt2it3stCfiT48VtoMkhZj7HlJnpiuOzWHkmkGuB5geHjbKcTVql6YZUYDunrIetnNEvxyn7y9SE9fdgWvjFY8nq42BMYAxTesB5hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnuGjPnW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66A17C4CEEA;
	Fri, 30 May 2025 10:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748599402;
	bh=u+nTd3xfKrjFwrar8NjW54gsKZHDKaBEN6i8+8wX8Tk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DnuGjPnWdWsvxqQdUjTYxJfrxDxPK+qpfaxOuSWF1G3yCDXZbmlg40J7IACtp+6u1
	 neDI3mEiga+GJh4MswNKpG368AFrxLp5n8O8Md48DbmP+5IwCf09EULmqTmaxJ3L/e
	 6CSq2d6tbnx+Y6NKfBHg+Gs+tw5tuPeAt8vlv+MLMbp+dNSmg85hSCA7+9isWB+X4c
	 hnNBaS4QsDYXGWbox84+FiwL/OIaO4j6md58aa8ooQjWQA6U8f2HTnRZ7UUilpP9+J
	 smKEYnQb6QMNllQKBiYwn+8+xiLvbfbBASXcz32PMv12FcXTaice8CJbzd/mMwLhON
	 b1GmLhoI+xZcQ==
Date: Fri, 30 May 2025 12:03:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 3/4] man/man2/prctl.2,
 PR_FUTEX_HASH_GET_SLOTS.2const: Document PR_FUTEX_HASH_GET_SLOTS
Message-ID: <ltof7edtili2ozjdlyslpcdckeoccvhtjt6hh5hsdz5smtqvyu@4ryc6myy4dwa>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-4-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7h4r2p6mgkxqsicv"
Content-Disposition: inline
In-Reply-To: <20250526155523.1382465-4-bigeasy@linutronix.de>


--7h4r2p6mgkxqsicv
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
Subject: Re: [[PATCH v3] 3/4] man/man2/prctl.2,
 PR_FUTEX_HASH_GET_SLOTS.2const: Document PR_FUTEX_HASH_GET_SLOTS
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-4-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250526155523.1382465-4-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, May 26, 2025 at 05:55:22PM +0200, Sebastian Andrzej Siewior wrote:
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

This page LGTM.  Thanks!  Please resend when this is merged into Linus's
tree.

Reviewed-by: Alejandro Colomar <alx@kernel.org>


Have a lovely day!
Alex

> ---
>  man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 37 ++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_GET_SLOTS.2const
> new file mode 100644
> index 0000000000000..f5c6380ef1fe7
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
> @@ -0,0 +1,37 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH_GET_SLOTS 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH_GET_SLOTS
> +\-
> +return the size of the private hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
> +.fi
> +.SH DESCRIPTION
> +Return the current size of the private hash.
> +.SH RETURN VALUE
> +A value of 0 means that a private hash has not been allocated
> +and the global hash is in use.
> +A value >0 specifies the size of the private hash.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const),
> +.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
> +.BR PR_FUTEX_HASH_SET_SLOTS (2const)
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--7h4r2p6mgkxqsicv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5gmUACgkQ64mZXMKQ
wqnK5w/7BKXZ++Q4DsPCNx4byiGSZK+HCrloeLfTQmgk/wkvwpy/fWlYkKljR9S/
kxe2F1hTZzBg6cFZEcgLvy+GeYpNgGVva5v6O6oFG7ti5Jk6YItoO0o+1+1aA8cR
x/GZAUZjIwRz+Dm0GjFBrrZ+SAaWKydko6j51Te7y18O6SoNAzZNo/edfU6HfT0R
A2cWgNLGEqbCu9aMW+itYVx7byGVyCCR9kCIcqa4l+xXVoEotlLL9b5FZLB4Wp6n
k8lt43YiSjPc3AUCpsppSFOeGqU0GEBbGwP661NO+lDE510Spr08GQAX/Y6AVlX7
q3Mao7HfZs3idCc/L22ZgttsR93n+sTLE7Jo/b7sVG9KVSOIAGSq1vIuQCsHN+wN
j0Nmc4CzqUDKW9rG3IG925G9yo3w9o8LWguq67yAOMou0+ijtgiKdtvwqYisslKF
/ckHPwPiaTLIWD6EHorxbXeKyVIMZhPDx0QKBac4LjA5cvVi119UBv+bPQRZ/Gqe
zC5bjx2cTA84wN2reFKDbUsdVlMDzPBtGyLt/kMisLI0Zy0KaKuBG2rJT8LlGG85
AV08x7j+IU5VRd+cptARsiI6FgPZBwUXxvrqvl8+4wk9cqJSYZbTQt4tR9pXLrds
HBcbHOx4bSzkGWQcGvcEmd0dqn91NFSKrudtSJ1tyraWm4Ch2ZA=
=h4wj
-----END PGP SIGNATURE-----

--7h4r2p6mgkxqsicv--

