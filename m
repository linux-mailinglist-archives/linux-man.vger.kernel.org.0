Return-Path: <linux-man+bounces-4039-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF70BB8B82
	for <lists+linux-man@lfdr.de>; Sat, 04 Oct 2025 11:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B550188B340
	for <lists+linux-man@lfdr.de>; Sat,  4 Oct 2025 09:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF2B21ADCB;
	Sat,  4 Oct 2025 09:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHYZ6lXm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1151D90AD
	for <linux-man@vger.kernel.org>; Sat,  4 Oct 2025 09:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759569370; cv=none; b=jl5/oKluvkCLnSgYsJXf9yZqPftW2cdizvvNU93BGurEQ9QpxsG9xa0YUVfLm5wX2d+KBJ9m5JZSRUy6R7emSignZRcbItxw9MOiFICwjwWHMjbOzccvfneod/2LY0A6EVMGyZFZG/QWPLVPmOQZdWAKF8V3ABAPV5Gd+qGoz34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759569370; c=relaxed/simple;
	bh=V82PgDKUJ6G6esEs3VxJI85IAIUmKK8Sos0kh/RR1L8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rnrIVkWyN4LdP2CQycD/oLoqS6SObMa8mzGg2U2KkDJzr1zPQSJnM8vxfC1PsJUwPjWuKvb4udbO/SoJEGcgrwZV9/8k7RCKhbogqYXTjeINjUY3junAQM8Sc8O9Oky9CvWVQ4xD9xDKleJ/oGgOS+vFHTm4T/yI/1pYkdjANNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHYZ6lXm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08292C4CEF1;
	Sat,  4 Oct 2025 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759569369;
	bh=V82PgDKUJ6G6esEs3VxJI85IAIUmKK8Sos0kh/RR1L8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WHYZ6lXmgRZ2QYshsEvYeYP65q4BAjU3jZuVb0HtL/TxMZ4HX22oTYONLtjvWjY9Q
	 I0jnO5N+b6e63fWYzKhYhEUnZY3a+k7W5z/hIUeIkX8cSp79nM2W6PAP/TRMerUvVC
	 QCWBSzRBOwMG0tRmVJYAGz3+smwT0ohWpQfmXQ/1uzk67HQFuvJoOw+cC2PSY9q2FI
	 C3x8lLXNp9Efa6prFFSJ92ip0YmdY7wKNJuYkpmeOMU2TmcXGmPoNk751pdqBTGCcc
	 Xswxq27+UFwW0BOlZouZABB0o5uAXOzLJ7+7naeED/rYGst+ZwFaBZAZIAlVe5dHjM
	 cZqjK8SwJRShA==
Date: Sat, 4 Oct 2025 11:16:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2pdafsnmq3lrf5y3"
Content-Disposition: inline
In-Reply-To: <20250930194004.btcbo4xspyo3j3ua@illithid>


--2pdafsnmq3lrf5y3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
MIME-Version: 1.0
In-Reply-To: <20250930194004.btcbo4xspyo3j3ua@illithid>

Hi Branden,

On Tue, Sep 30, 2025 at 02:40:04PM -0500, G. Branden Robinson wrote:
> ...but my recommendation is be the following.
>=20
> diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
> index 0dc8bf6f2..750119996 100644
> --- a/man/man7/vdso.7
> +++ b/man/man7/vdso.7
> @@ -141,11 +141,10 @@ .SS vDSO names
>  .BR ldd (1)
>  output.
>  The exact name should not matter to any code, so do not hardcode it.
> -.if t \{\
> -.ft CW
> -\}
> +.P
>  .TS
> -l l.
> +Lb Lb
> +L  L .o

For consistency with the rest of the project, I've used 'lB' instead of
'Lb'.

>  user ABI       vDSO name
>  _
>  aarch64        linux\-vdso.so.1
> @@ -162,10 +161,6 @@ .SS vDSO names
>  x86-64 linux\-vdso.so.1
>  x86/x32        linux\-vdso.so.1
>  .TE
> -.if t \{\
> -.in
> -.ft P
> -\}
>  .SS strace(1), seccomp(2), and the vDSO
>  When tracing system calls with
>  .BR strace (1),

I like this change.  I've applied this commit:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfa940b6d17791a166c793b74a50cd72926d14b50>

Here's the head(1) of it:

	$ git show | head -n40
	commit fa940b6d17791a166c793b74a50cd72926d14b50
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat Oct 4 10:48:02 2025 +0200

	    man/man7/vdso.7: ffix
	   =20
	    Reported-by: Bjarni Ingi Gislason <bjarniig@simnet.is>
	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
	index 0dc8bf6f2..8c8d00514 100644
	--- a/man/man7/vdso.7
	+++ b/man/man7/vdso.7
	@@ -141,11 +141,10 @@ .SS vDSO names
	 .BR ldd (1)
	 output.
	 The exact name should not matter to any code, so do not hardcode it.
	-.if t \{\
	-.ft CW
	-\}
	+.P
	 .TS
	-l l.
	+lB lB
	+l  l .
	 user ABI	vDSO name
	 _
	 aarch64	linux\-vdso.so.1
	@@ -162,10 +161,6 @@ .SS vDSO names
	 x86-64	linux\-vdso.so.1
	 x86/x32	linux\-vdso.so.1
	 .TE
	-.if t \{\
	-.in
	-.ft P
	-\}
	 .SS strace(1), seccomp(2), and the vDSO
	 When tracing system calls with
	 .BR strace (1),

BTW, in the PDF, the '.P' doesn't seem to be working.
<https://www.alejandro-colomar.es:80/share/dist/man-pages/git/HEAD/man-page=
s-HEAD.pdf#vdso.7>

I don't see the space before the tables.  Compare with the old PDF:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.=
15.pdf#vdso.7>

> ...and so on similarly for the rest of the tables in the document.

The only other one I can see is syscalls(2).  That one is a bit weird,
so I'd like you to have a look at it and tell me what you'd do.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2pdafsnmq3lrf5y3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjg5c8ACgkQ64mZXMKQ
wqlv6Q//fOgJTFsOwEjnMyX9tRhjDF/mSLb9QDzM5ihXNIjfhBevxwMJZLwycn9v
85TfCPUEwL64JbfaAlZG9G7DWVg1E5a0fayCb3Qc++grH03ECJfIzZiVRGFZF+tv
3TcLWRT+loiOBZ3bpZuDMv3z9c/Og+o8qpdGwpm87XzeKbxolA8qYgyWdVjhU05n
CKBryxUa1OnKtponNScUF+cgib623P5hkfRizUrdbnqgInbUs1uurFQsWQjQZ6Oe
1eINRfBZzwhFT8D1Jea1lfVeZOvcdpYDxrkN+uTtK9WN7vfXiSf9jR//UrTSpsW+
A+6h3ADVNE46MvuYIv5iq2dWrRFz0f2783CexLj5zy1Td5uguaWw/QCohtR5whL8
Z0pWrHSNEw/UsxRHNAZCJqZBux8SCX1UsbpfFpgmuqJGfirm06EXbqdwTLlQL9iz
15c04iwLnwFAb9qP8u/pUSmLr/LcolvYZb1RCpOleM3SauGwdHsurj81FyrAufTU
Yke6X+9U2/seZsFiGN2fIgoXRCmJA2p5vEkeXOp6k4izEzfEJ9w4hNxkhu9nf4D3
FdmWMnavCawiYPL5FCwF8Tz0scMBFGU1ukGwzL+gFV7Fh0+28p8RFC+Lq+C0uGta
1H5GaR/uqRsFGMigt44zS+fIsb5WzeBnfZOX/MOU24pZqKb6QAE=
=Xnpi
-----END PGP SIGNATURE-----

--2pdafsnmq3lrf5y3--

