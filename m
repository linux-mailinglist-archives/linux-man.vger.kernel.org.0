Return-Path: <linux-man+bounces-3490-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC74B2BFDE
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:08:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E07B4164CE2
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18E332254C;
	Tue, 19 Aug 2025 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXYV3qfd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9685E277815;
	Tue, 19 Aug 2025 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755601642; cv=none; b=ixxNwAWwUQai6XniLe+lF0NzHksS1WEYNe1TVxfLxnw8xOseyPnK9rprGUITN9jcTmFtocl1o6LpCVcw4rd7YSP8rKFnqRyY8Zn+doZnbATri+PPquRPiaXX6us0QW/ry/Ff0AgFo/O+RWwYZIODppdapPSB7sVcvYqePan95nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755601642; c=relaxed/simple;
	bh=pJtzhFAYvQjFIs+CCGYWmz3nydPq0Xbx2pGJ5roDeQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RhqdOEukCurGwzfeeR2V66zupkjGTfdQK9iZ9v8vT+/GpQZc2q9xn8nxOZ9lWrHvb6tdHSFmkyLJUglkjqEsP18INmCAtz5VCdwhAnlK69KrMneG1/bXIXZ07Le9VWOAHKAD34L1fTuxkFB4FXmQoxBNaxrtqcShOQhmnt38Szo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXYV3qfd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B90BC4CEF1;
	Tue, 19 Aug 2025 11:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755601642;
	bh=pJtzhFAYvQjFIs+CCGYWmz3nydPq0Xbx2pGJ5roDeQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BXYV3qfdXR4mtJ5FXlOgoARhMDJ3hM2K6HxNg1OhYvHU7/2qn+mRjAIgtqgL+z/ha
	 682qHtY20xK6D7J3qPbDkM1klGRTEME8ljHYHW1WhUl7XYMlTwh8/wZfE6M1HZyewp
	 hbAaIPvmZXaXAgGEqCkqvFIF708RMMN4ipjMRJ4p+gdCmqnFHn24ysJm9N57mgL3mq
	 +ta+XOlqmNVq9no3hsqJwdg+zdzWkE0dM9SRSQEpiIFI4ALzM6OHcX2iF1NQT/bvAS
	 7pSPwUsHA16ENMZ8z2u8Pruggc7E8bmuftkTSPySmNn+iKV7KFggJaOKPjg1wNn0fM
	 hI2Mp312xFKzQ==
Date: Tue, 19 Aug 2025 13:07:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 3/3] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const:
 Document PR_FUTEX_HASH_GET_SLOTS
Message-ID: <3ifedzf4hcnbwzlthaiq3khgxk6wtv3kk6f7cvqqo4jul6bwyx@megj652jgyvx>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-4-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o3znhibbzdeqoekh"
Content-Disposition: inline
In-Reply-To: <20250819071728.1431543-4-bigeasy@linutronix.de>


--o3znhibbzdeqoekh
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
Subject: Re: [PATCH v5 3/3] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const:
 Document PR_FUTEX_HASH_GET_SLOTS
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-4-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250819071728.1431543-4-bigeasy@linutronix.de>

Hi Sebastian,

On Tue, Aug 19, 2025 at 09:17:28AM +0200, Sebastian Andrzej Siewior wrote:
> Reviewed-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied this patch.


Have a lovely day!
Alex

> ---
>  man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 35 ++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_GET_SLOTS.2const
> new file mode 100644
> index 0000000000000..dfeffa57930ab
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
> @@ -0,0 +1,35 @@
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
> +Linux 6.17.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const),
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--o3znhibbzdeqoekh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikWuMACgkQ64mZXMKQ
wqldwQ//UCQQu5HToiuouKzTjOUMoWTjFo2wP85S4BxCN0bGX6GSB1XwI1H4Lv8d
Qg1AiIQoDag8XJTZTSvvzM0S2lumMNFgSS8RmPjQBkEOdVTOz5qIFoteru04+tiv
DqFvQFaifIaYkhvrwyZ/aN+Tq6uhmsmuOdjleTH+xsFjcXtzkCNOSWvpXVQOrRYo
6gX4UqtX9a5Ma0OegdqAZhrE+nA5ql55AJr/3NBOO9htfB9w4v0dmlXcP8O1NJ4h
OS0XqIa6KuR7Z/kvme7pN3Y23BB0i5qJQRGegBCUE/45tum+oZqo8clB9ZQsEIp9
NWn2ZT9IS2T9ysjemQZPW0Ne0PJTtjbrF/wlFbyUI9hMH1Up/qmgOGjjSC7cMSkD
9nBPAZZfiWbCOOUgk/XdkE+g+U5Hc/beuwmCLnJiWwdAd1pLxSeBPKWit7KKbCi2
BW3i+x421CcT9XndLgGTSzb7Pieq/PFgdrCZ/jVNJWrdv6POxA0ZGd2eP2FCk9Rw
8YHwoLOMgoGpfnai96cNrBtgq8sjdtRWtpgJmqvQfjqWQEa+1F1TJ9p3pOk8s04W
gsIqoy7syFACAz2K9cYIyrBWrMaTWcN619UJReQRKshMk0H+qjNgBzeEnlbdcocv
jgNOC/dAzE33dYLYQiWlr4PuClHoJuPOFXVY8kxpXQoPB3NBUcE=
=+WFr
-----END PGP SIGNATURE-----

--o3znhibbzdeqoekh--

