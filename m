Return-Path: <linux-man+bounces-451-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2AE8593CC
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 02:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8DB0282479
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 01:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3077FF;
	Sun, 18 Feb 2024 01:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnwG7B1j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02A6393
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 01:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708218958; cv=none; b=jm1Ale8wI7lShWBXGjnvX9w7aZyz2hgm+/S1UGlZtgwnVnSwKOIZvTIxoxSWVKOBUhf43vHtYuRx29ZzVsFYK5WXj09zehCVwbxh7GGHuqdhK3VtXZbpIZM2cpZTyq2K3U9u4rgvcdjht8Ih+hmJzWdjwd9lcxhbpPgb3JxvYgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708218958; c=relaxed/simple;
	bh=4BqIjTMD3awhmFm4/jJu4M3ZtL9VRPOwjnPVOclzc/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hwJ4YZZZy/jPSPoJ8rrWU5ueWtGrHb1iYfT7T5vMAoTJqZFy4FFijTRfiGHZjK2u3APi+wdZvc6BeVgpRDLwWc6+sJniqGoQLKNe9CkMjszPMpeh3w84YM1GFN8o9twjEtToXDV2q38qnVOvEfL6JEKaBeKRKzLLiVLnaiPPYqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnwG7B1j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A976C433F1;
	Sun, 18 Feb 2024 01:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708218957;
	bh=4BqIjTMD3awhmFm4/jJu4M3ZtL9VRPOwjnPVOclzc/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QnwG7B1jbPm/rraynuNFHpLE1fgiOSVpyTZxHWwiJYFWZzYTyvb37qcfGYYpGzXYr
	 AjmaCHFUGNGdTGALof1ZmNKspj4CuYegNpF4P1pqRW1087yRDUDDVsbH2LpT3SER45
	 /PWXndD5U0PLHItSYfwF2RNwkXHtuHuE4KKqfSHxi407S/1Gtn/KMGXlQqQw3qjqds
	 l4SZ3Jlx+1RlAB4qlTkHkEAzw0JAAWvWoOxrO+F3VJzvz69KXqskBkJ8k6PdIM+J0f
	 NHyInYxlkfsPi7rqYXomgbU6e97WGXXuXs6I1C4PjGUE6A3n+dwGCSMjNJhH/jJ4CE
	 /wSWarQEdr7+w==
Date: Sun, 18 Feb 2024 02:15:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZdFaStMt83D-i8yH@debian>
References: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dbX+QYcmzIy3ySpQ"
Content-Disposition: inline
In-Reply-To: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>


--dbX+QYcmzIy3ySpQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 02:15:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX

Hi Charlie,

On Mon, Feb 12, 2024 at 09:19:21PM -0500, Charlie Jenkins wrote:
> I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> for prctl(2) to LKML. It has been reviewed and is expected to land
> during the Linux version 6.9 merge window. This adds the relevant
> documentation from that patch.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
> I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> flag for prctl(2) to LKML. It has been reviewed and is expected to land
> during the Linux version 6.9 merge window.

Can you please ping when that happens?  The below LGTM.

Have a lovely night!
Alex

> ---
> Changes in v2:
> - Update formatting (Alejandro)
> - Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddaf=
cef331@rivosinc.com
> ---
>  man2/prctl.2 | 59 ++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++
>  1 file changed, 59 insertions(+)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f1604a7cb..32ce8474f 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1147,6 +1147,65 @@ For further information, see the kernel source file
>  (or
>  .I Documentation/security/Yama.txt
>  before Linux 4.13).
> +.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
> +.TP
> +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
> +Enable/disable icache flushing instructions in userspace.
> +The context and the scope can be provided using
> +.I arg2
> +and
> +.I arg3
> +respectively.
> +When scope is set to
> +.B PR_RISCV_SCOPE_PER_PROCESS
> +all threads in the process are permitted to emit icache flushing instruc=
tions.
> +Whenever any thread in the process is migrated, the corresponding hart's
> +icache will be guaranteed to be consistent with instruction storage.
> +This does not enforce any guarantees outside of migration.
> +If a thread modifies an instruction that another thread may attempt to
> +execute, the other thread must still emit an icache flushing instruction
> +before attempting to execute the potentially modified instruction.
> +This must be performed by the user-space program.
> +.IP
> +In per-thread context (eg. scope is set to
> +.BR PR_RISCV_SCOPE_PER_THREAD )
> +only the thread calling this function is permitted to emit icache flushi=
ng
> +instructions.
> +When the thread is migrated, the corresponding hart's icache will be
> +guaranteed to be consistent with instruction storage.
> +.IP
> +On kernels configured without SMP, this function is a nop as migrations =
across
> +harts will not occur.
> +.IP
> +The following values for
> +.I arg2
> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
> +Allow fence.i in user space.
> +.TP
> +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
> +Disallow fence.i in user space.
> +All threads in a process will be affected when scope is set to
> +.BR PR_RISCV_SCOPE_PER_PROCESS .
> +Therefore, caution must be taken; use this flag only when you can guaran=
tee
> +that no thread in the process will emit fence.i from this point onward.
> +.RE
> +.IP
> +The following values for
> +.I arg3
> +can be specified:
> +.RS
> +.TP
> +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
> +Ensure the icache of any thread in this process is coherent with instruc=
tion
> +storage upon migration.
> +.TP
> +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
> +Ensure the icache of the current thread is coherent with instruction sto=
rage
> +upon migration.
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
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--dbX+QYcmzIy3ySpQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXRWkoACgkQnowa+77/
2zJrHA/9F6vVBfLpoalBtwxJWP9LhVDgUcQTENB2Grk6hI7+g8sKTFSZd5pTYQyl
RjwTq6h6HHve6s78eYOx2bcVS9OjeBgymrsUSfz20UN9e/Y88pC9eVVNGr89z+vf
TW1N1EcuvZ6xStMtQUs4i3KBZTj6eGkpxYeKYCUf8Wftrf+c6MWoL77Gra72tcQH
kVXZ5gwzc4gsGrXygkjVduerlvjbszlFayadE7Yqry1GyyagUiVOd/Dt4p3oNb+s
WV98yZqUS5mV9+wSKnsw7njTV7ePdhEOsfzYM+KwxZmz5oryjIqL6QKpqBHWvRmz
AJZpSAGw7v0j4qqyXsjaKdYJMzLNWo3mvVlsQPoCwzI6Uyz4u6tkYadrjD2F81OM
ouFMBgY0PezlS5ltMmMlvYqov+GHLcZjJ+4POJ5zf91IeO4OV4UIzT0hh/5hqBIU
CbF5Z/GP96/faK6BqhSq1hHX5PqvnedcPymnbWgZVRnjyzKWrzKsqpiDpujUuf4h
SH9N32sK3yN7mGf7PgzvO6Fr1WG8yOP/snVXA/Yef66zXP82vAbOie+wO7y5wdiD
LwXGaE01wFYHn0vtaDCHkT+ALvzZat2KhY+h0yFOkkN+1Cvj9iWJIu70yYYcvLVv
kSwOGTYwg/6aObXYlDIQKdeJ43hS3/Ez9FNBmWuVfRGr6bU6G7I=
=dAwf
-----END PGP SIGNATURE-----

--dbX+QYcmzIy3ySpQ--

