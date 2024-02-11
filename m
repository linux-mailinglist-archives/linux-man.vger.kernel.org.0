Return-Path: <linux-man+bounces-420-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1028850AD7
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEF052822EC
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4A61E4B8;
	Sun, 11 Feb 2024 18:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daAVu5Oy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D682BFC19
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707676728; cv=none; b=I6Ao8hB7Q8kEHM7b3kPOKXMLcGFooa8s71KK29lXRr8o1BmAgYjPdBnfs8VV7A9k8peT8jYnzuW512e/riN+vUjB/IqQfW1PEbcWe930ZyfdYolzto86GE7z8pFfVXitfiwrVI3JUbsW/ZVyuNOCX28y2ZtuCa0uJM7k0Wo+KVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707676728; c=relaxed/simple;
	bh=qOJfcESHQL1d441ra7I9O0Z6TNamEBKhdhJbYcYaFV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idS6pxE99qsSQctkD2n1RIEsAibFZmtzBsvniza133XmGbC2RiMTAUqYeDisguehGAC7Xj2rt8V1A1+SVh6Gzok5uGmJNxW0F/pXeL09fCzrTpoOZ2wCyAnIVxWeuofWyKYdX2tJpDjd3kAeAcCPVMWyRyI7CDS1uWp0gZNMgjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daAVu5Oy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1D92C433C7;
	Sun, 11 Feb 2024 18:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707676728;
	bh=qOJfcESHQL1d441ra7I9O0Z6TNamEBKhdhJbYcYaFV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=daAVu5OyFqYbgjLHIYpShkRgexgvqMr8DtsLiPD3RYTD+hemnR9B+WKY57z7hudu6
	 XLmTYkJxvhmXhCOLe/21zOniSWBIoFlExRyoV1Vt+7lIxuRniWe54UDnStw/mEWJTn
	 58LW3vWUYu+E75tTBjBrAzckqI1CiMFHDY9acFJ5cYHWsHzETRi2JK4eNKM2BzvcPd
	 3iJbtoAooqqhiOqwei2HemBDJbcGMV5+9oY/2ww21n6+dv1Cg8PXIicDRoKCifYcUT
	 47piHiPH8MLbb+lUfutsAvaTu3oKcp2JTFZh1fXFXO2Xo4xc+4Sk9efCjT62ba9lCQ
	 /dUuAiXzuSYcQ==
Date: Sun, 11 Feb 2024 19:38:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZckUNXHtp2xkqr02@debian>
References: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FugM/HqXxhxKQG6c"
Content-Disposition: inline
In-Reply-To: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>


--FugM/HqXxhxKQG6c
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:38:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX

Hi Charlie,

On Wed, Jan 24, 2024 at 06:59:04PM -0800, Charlie Jenkins wrote:
> I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> for prctl(2) to LKML. It has been reviewed and is expected to land
> during the Linux version 6.9 merge window. This adds the relevant
> documentation from that patch.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

This patch triggers a few warnings:

	$ make lint check -k
	TROFF	.tmp/man/man2/prctl.2.cat.set
	an.tmac:man2/prctl.2:1155: style: .IR expects at least 2 arguments, got 1
	an.tmac:man2/prctl.2:1157: style: .IR expects at least 2 arguments, got 1
	an.tmac:man2/prctl.2:1179: style: .IR expects at least 2 arguments, got 1
	an.tmac:man2/prctl.2:1196: style: .IR expects at least 2 arguments, got 1
	make: *** [share/mk/build/catman.mk:54: .tmp/man/man2/prctl.2.cat.set] Err=
or 1
	make: *** Deleting file '.tmp/man/man2/prctl.2.cat.set'
	make: Target 'check' not remade because of errors.

See <CONTRIBUTING.d/lint> for that.

> ---
> I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> flag for prctl(2) to LKML. It has been reviewed and is expected to land
> during the Linux version 6.9 merge window.
> ---
>  man2/prctl.2 | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++
>  1 file changed, 58 insertions(+)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f1604a7cb..2889a7195 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1147,6 +1147,64 @@ For further information, see the kernel source file
>  (or
>  .I Documentation/security/Yama.txt
>  before Linux 4.13).
> +.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
> +.TP
> +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
> +Enable/disable icache flushing instructions in userspace. The ctx and the

'ctx' isn't a common word.  The first time you mention it you should
probably say what it means.  For example:  "The context (ctx) and
the ..." and later just use ctx.

> +scope can be provided using
> +.IR arg2

This should be I, not IR.

> +and
> +.IR arg3
> +respectively. When scope is set to

Please use semantic newlines.  See man-pages(7):

   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

> +.B PR_RISCV_SCOPE_PER_PROCESS ,

This should be BR, not B.  See groff_man(7).

> +all threads in the process are permitted to emit icache flushing
> +instructions. Whenever any thread in the process is migrated, the
> +corresponding hart's icache will be guaranteed to be consistent with
> +instruction storage. Note this does not enforce any guarantees outside of

'Note' is superfluous.  You can just remove that word.  "This does not
enforce ...".

> +migration. If a thread modifies an instruction that another thread may
> +attempt to execute, the other thread must still emit an icache flushing
> +instruction before attempting to execute the potentially modified
> +instruction. This must be performed by the userspace program.

We say "user space"; two words (see man-pages(7)).  In this case, since
it's an adjective, it would be "user-space", with a hyphen.

> +.IP
> +In per-thread context (eg. scope is set to
> +.B PR_RISCV_SCOPE_PER_THREAD )

The comma should go with the parenthesis.  Otherwise, you'll see a
spurious space in between.

> +, only the thread calling this function is permitted to emit icache
> +flushing instructions. When the thread is migrated, the corresponding
> +hart's icache will be guaranteed to be consistent with instruction stora=
ge.
> +.IP
> +On kernels configured without SMP, this function is a nop as migrations
> +across harts will not occur.
> +.IP
> +The following values for
> +.IR arg2
> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
> +Allow fence.i in userspace.

"user space".

> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
> +Disallow fence.i in userspace. All threads in a process will be affected

=2E

> +when scope is set to
> +.B PR_RISCV_SCOPE_PER_PROCESS .
> +Therefore, caution must be taken -- only use this flag when you can

Use \[em] for an em dash.  Although in this case I think ':' or ';'
would be more appropriate.

Also, I think 'only' would go better right before "when".

> +guarantee that no thread in the process will emit fence.i from this point
> +onward.
> +.RE
> +.IP
> +The following values for
> +.IR arg3
> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
> +Ensure the icache of any thread in this process is coherent with
> +instruction storage upon migration.
> +.TP
> +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
> +Ensure the icache of the current thread is coherent with instruction
> +storage upon migration.
> +.RE
>  .\" prctl PR_SET_SECCOMP
>  .TP
>  .BR PR_SET_SECCOMP " (since Linux 2.6.23)"
>=20
> ---
> base-commit: a81e893f2b9316869e6098c3a079c30a48158092
> change-id: 20240124-fencei_prctl-c24da2643379
>=20
> Best regards,
> --=20
> Charlie Jenkins <charlie@rivosinc.com>

Thanks for the patch!

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--FugM/HqXxhxKQG6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJFC8ACgkQnowa+77/
2zJcqQ//Syahg8aKDe0fOU/WLgvE1ajgCzTvtHaY4WDmA6q4TIOj9U8psyobslHN
td0io8WSe1XI7kTpy56SyPRXK2cZqKed2aVbk8YPC4z6X3ltICY/2ewZO5WZfoIr
MfiKOg5QUGSRcZKheMXj1KLySV0OMgRADZNU25Ak3+BS4+0ylrk2XgJ2EVdaY0DB
Ar1uldCRl5FdpIACnM8mGphnz9WV6rL+9MTNQjxKH+MLVYddHTxIg1LEo4P1H+8u
0Ia4kDW0BIssXmJxo2zRyfe+nn+v1zVb/wMSvGaUlJrJyLhwvwkNzgZ6iIyYXU21
NQZ23XU2Oyp4jJZCFxX/ozGEfTa7hGMZeGxY/U+gsVrSxfy3pr5acWvw2B88nRXz
BC5NnosBCT6A5whMIatSlsCpwabp3aM3EWIOKOERFLoNORtd8qLZ8K9r/i+6Vq1P
wPC1z0RDloe8FP+44TYvKA2IG1N0S32KkCLlvZqhrljbD3bFEEkW48yC30126mUs
LF79fFLwFwbp6wqWDtMQzPBDxdVRVUkbVJOcjvlfYcOPMyOwDTFud1KDCs2ZeVpS
Cd6apYS5wnPTctQuuApSogwcxTBGnQyHlMZebf7AiHfqoOMsgsY4ZqmUEQyRJgG8
9rlHgggwEPuo++2pB5o0TSAtFKdRbbrJd9NGdJUV+6rhADFFS1w=
=NNxq
-----END PGP SIGNATURE-----

--FugM/HqXxhxKQG6c--

