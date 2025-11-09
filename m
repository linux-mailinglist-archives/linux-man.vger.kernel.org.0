Return-Path: <linux-man+bounces-4263-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AA7C43CB9
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 12:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 81C704E2058
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 11:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDA42DA76C;
	Sun,  9 Nov 2025 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBssfY1N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4F334D3B3
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762687943; cv=none; b=u67rmYyMoRFk7YZHaV+JtfuAmTKCI4Burwxwpoigjttutx5oBIm3+PEFVTaINpUlhzxuNOtq4eHjkl0nabKhikrSpIF7l4yK/SVLd5+mSp3UvTDad2znWwPP2yT4BhkrRH/HhEyspuxUUclPiUsgy4eYASijxOcDLSvmSL4cuNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762687943; c=relaxed/simple;
	bh=59Uf/ozmAFPCSZwfTTpdFiOIwqmB4zPwoI3Z7Js26OM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lqi7qxVZV52ZdYwCzkUz9IzoqLZEwYlpAJ3X9/UR7xMbgU0jWfYU05bdzEc7jpLueGxyRq86xWN/XeI2yyBi+NwrjE9PlF/abni4ZV6F31TLnBTGjFlBdeK5c5i8bWxjdrtcbJ3GkQ4M6i5c3tbXFOj5m+WKWJgoOGZNHDYxiXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBssfY1N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B80AC4CEF7;
	Sun,  9 Nov 2025 11:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762687943;
	bh=59Uf/ozmAFPCSZwfTTpdFiOIwqmB4zPwoI3Z7Js26OM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OBssfY1N50FOcUBZ3vF/V3CXlpS0gJcu+VTtMWjo3u+cX5JGPQY5JIrApUR6zq0v9
	 bQ+GUccgfHYiGNK9ra9l4J8sak2vEF54RxKy3ECsw3U6LITxz0axpcHB6n3f7SeZaL
	 YFfZymxq9l6Lny4Eg2p7ZYsymLn7MqQCeebuVyaDyxYqCS5/s9qL+MgoN8Mzg2JQ9p
	 ZUP8+4pVat8CKCtWhismRd1cSISlp8klj7aPqWETpPhU4id9+ncL4zrrf/Yvhsw/7K
	 uSm7ZnYPf5bLG2OH92HL5ZOjFMkv+OQP5vkH9q7SQCIFcSa8LkkWbgNc4XZFmIebwZ
	 VTh8yPl4HdlWw==
Date: Sun, 9 Nov 2025 12:32:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ted Ts'o <tytso@mit.edu>
Subject: Re: [PATCH 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
Message-ID: <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3usjzyxtncfvkpkm"
Content-Disposition: inline
In-Reply-To: <20251109023632.8515-2-arthur200126@gmail.com>


--3usjzyxtncfvkpkm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ted Ts'o <tytso@mit.edu>
Subject: Re: [PATCH 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
Message-ID: <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251109023632.8515-2-arthur200126@gmail.com>

CC +=3D Andy, Ted

Hi Mingye,

On Sun, Nov 09, 2025 at 10:36:00AM +0800, Mingye Wang wrote:
> Linux kernel 5.6 no longer has a blocking random pool.  This commit
> updates all relevant references to reflect this change.
>=20
> * random.7: Remove references to the blocking pool in the table.  Add a
>   note about the blocking pool.
> * random.7: Revise "choice of random source" to remove any recommendation
>   of the blocking pool.  Stop suggesting that the blocking pool is
>   safer (it's not after initialization).
> * random.7: Add table entry for GRND_INSECURE.
> * getrandom.2: Add flag entry for GRND_INSECURE.
> * getrandom.2: Add removal note to GRND_RANDOM.
> * random.4: Split DESCRIPTION paragraph on /dev/random into two, one
>   for the new behavior and the other for the old.
> * random.4: Adjust size limits and /proc list for 5.6.
> * random.4: Mention blocking resolution by high-precision timer entropy.
>=20
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D214885
> Signed-Off-By: Mingye Wang <arthur200126@gmail.com>
> ---
>  man/man2/getrandom.2 |  9 ++++++
>  man/man4/random.4    | 30 ++++++++++++++-----
>  man/man7/random.7    | 70 ++++++++++++++++++++++++++------------------
>  3 files changed, 72 insertions(+), 37 deletions(-)
>=20
> diff --git a/man/man2/getrandom.2 b/man/man2/getrandom.2
> index 9e782e6..5f0a2da 100644
> --- a/man/man2/getrandom.2
> +++ b/man/man2/getrandom.2
> @@ -62,6 +62,8 @@ argument is a bit mask that can contain zero or more of=
 the following values
>  ORed together:
>  .TP
>  .B GRND_RANDOM
> +.\" commit 48446f198f9adcb499b30332488dfd5bc3f176f6
> +Ignored since Linux 5.6.
>  If this bit is set, then random bytes are drawn from the
>  .I random
>  source
> @@ -103,6 +105,13 @@ does not block in these cases, but instead immediate=
ly returns \-1 with
>  .I errno
>  set to
>  .BR EAGAIN .
> +.TP GRND_INSECURE

=2ETP should have the tag in the next line (see the hunk above, for
example).

	.TP
	.B GRND_INSECURE

> +.\" commit 75551dbf112c992bc6c99a972990b3f272247e23
> +Added in Linux 5.6.

We usually put this either in the HISTORY section, or in the same line
as the tag:

	.TP
	.BR GRND_INSECURE " (since Linux 5.6)"

> +Request best-effort, non-cryptographic-quality random bytes.
> +If this bit is set, then
> +.BR getrandom ()
> +will never block or fail due to a lack of entropy.
>  .SH RETURN VALUE
>  On success,
>  .BR getrandom ()
> diff --git a/man/man4/random.4 b/man/man4/random.4
> index 0a651b0..95200bc 100644
> --- a/man/man4/random.4
> +++ b/man/man4/random.4
> @@ -56,17 +56,29 @@ or
>  .I /dev/random
>  instead.
>  .P
> -The
> +.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
> +As of Linux 5.6,

For consistency:

	Since Linux 5.6,

> +.I /dev/random
> +is identical to
> +.I /dev/urandom

Missing comma:

	.IR /dev/urandom ,

> +except that it blocks during early boot.
> +A jitter-based seeding technique added in Linux 5.4 should help reduce
> +block time.
> +.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
> +.P
> +The pre-Linux 5.6
>  .I /dev/random
> -device is a legacy interface which dates back to
> +device was a legacy interface which dates back to
>  a time where the cryptographic primitives used in the implementation
>  of
>  .I /dev/urandom
>  were not widely trusted.
> -It will return random bytes only within the estimated number of
> -bits of fresh noise in the entropy pool, blocking if necessary.
> +It would return random bytes only within the estimated number of bits of=
 fresh
> +noise in the entropy pool, blocking until additional environmental noise=
 is
> +gathered.
> +This old
>  .I /dev/random
> -is suitable for applications that need
> +was suitable for applications that need
>  high quality randomness, and can afford indeterminate delays.
>  .P
>  When the entropy pool is empty, reads from
> @@ -121,7 +133,8 @@ A
>  .BR read (2)
>  from
>  .I /dev/random
> -will return at most 512 bytes
> +has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,
> +the maximum size was 512 bytes. (340 bytes before Linux 2.6.12)
>  .\" SEC_XFER_SIZE in drivers/char/random.c
>  (340 bytes before Linux 2.6.12).
>  .P
> @@ -133,7 +146,7 @@ will update the
>  entropy pool with the data written, but this will not result in a
>  higher entropy count.
>  This means that it will impact the contents
> -read from both files, but it will not make reads from
> +read from both files, but it will not make reads from a pre-Linux 5.6
>  .I /dev/random
>  faster.
>  .SS Usage
> @@ -158,7 +171,7 @@ soon as it is reloaded in the boot sequence, and perf=
ectly adequate for
>  network encryption session keys.
>  (All major Linux distributions have saved the seed file across reboots
>  since 2000 at least.)
> -Since reads from
> +Since reads from a pre-Linux 5.6
>  .I /dev/random
>  may block, users will usually want to open it in nonblocking mode
>  (or perform a read with timeout),
> @@ -262,6 +275,7 @@ It contains the value 4096.
>  .RE
>  .TP
>  .I read_wakeup_threshold
> +Removed in Linux 5.6.
>  This file
>  contains the number of bits of entropy required for waking up processes
>  that sleep waiting for entropy from
> diff --git a/man/man7/random.7 b/man/man7/random.7
> index fda408d..c5e959f 100644
> --- a/man/man7/random.7
> +++ b/man/man7/random.7
> @@ -54,17 +54,16 @@ The kernel collects bits of entropy from the environm=
ent.
>  When a sufficient number of random bits has been collected, the
>  entropy pool is considered to be initialized.
>  .SS Choice of random source
> -Unless you are doing long-term key generation (and most likely not even
> -then), you probably shouldn't be reading from the
> +Unless your program may run at early-boot, before the entropy pool
> +is initialized, there is no longer any palpable difference between
>  .I /dev/random
> -device or employing
> -.BR getrandom (2)
> -with the
> -.B GRND_RANDOM
> -flag.
> -Instead, either read from the
> +and
> +.I /dev/urandom
> +since Linux 5.6. (See the table below.)
> +.PP.
> +On older kernels, either read from the
>  .I /dev/urandom
> -device or employ
> +device or (especially if you are concerned with early boot) employ
>  .BR getrandom (2)
>  without the
>  .B GRND_RANDOM
> @@ -117,9 +116,9 @@ T}
>  T{
>  .I /dev/random
>  T}	T{
> -Blocking pool
> +CSPRNG output
>  T}	T{
> -If entropy too low, blocks until there is enough entropy again
> +Never blocks
>  T}	T{
>  Blocks until enough entropy gathered
>  T}
> @@ -144,17 +143,6 @@ Blocks until pool ready
>  T}
>  T{
>  .BR getrandom ()
> -.B GRND_RANDOM
> -T}	T{
> -Same as
> -.I /dev/random
> -T}	T{
> -If entropy too low, blocks until there is enough entropy again
> -T}	T{
> -Blocks until pool ready
> -T}
> -T{
> -.BR getrandom ()
>  .B GRND_NONBLOCK
>  T}	T{
>  Same as
> @@ -166,21 +154,45 @@ T}	T{
>  T}
>  T{
>  .BR getrandom ()
> -.B GRND_RANDOM
> -+
> -.B GRND_NONBLOCK
> +.B GRND_INSECURE
>  T}	T{
>  Same as
> -.I /dev/random
> +.I /dev/urandom
>  T}	T{
> -.B EAGAIN
> -if not enough entropy available
> +Never blocks

Does /dev/urandom block when reading with read(2) before the pool is
ready?  I assume it blocks.  This probably means the pool of
GRND_INSECURE is the same as /dev/urandom only after the pool is ready,
and before it uses a different pool.  And because this flag is intended
to be used before the /dev/urandom pool is ready (IIUC), it would be
important to document this difference.

CC +=3D Andy, Ted

>  T}	T{
> -.B EAGAIN
> +Returns output from uninitialized CSPRNG (may be low entropy and unsuita=
ble for cryptography)
>  T}
>  .TE
>  .ad
>  .\"
> +.SS The old blocking pool
> +The above table describes the behavior of the interfaces since
> +Linux 5.6.  In older kernels, the

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +.I /dev/random
> +used a separate blocking pool, and
> +.BR getrandom ()
> +had a
> +.B GRND_RANDOM
> +flag for reading from the blocking pool.
> +.\"
> +.PP

Should be '.P'.

> +The older blocking pool was a vestige of a time when the CSPRNG
> +was not trusted.
> +It assumed that entropy can run out by reading the CSPRNG.
> +This has never been the case.
> +Instead, programs using

Instead of what?  I think it reads better if we just remove that word.

> +.B GRND_RANDOM
> +and
> +.I /dev/random
> +had to deal with operations blocking indefinitely.
> +Furthermore, dealing with the partially fulfilled
> +requests that can occur when using
> +.B GRND_RANDOM
> +or when reading from
> +.I /dev/random
> +increases code complexity.
> +.\"

Have a lovely day!
Alex

>  .SS Generating cryptographic keys
>  The amount of seed material required to generate a cryptographic key
>  equals the effective key size of the key.
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3usjzyxtncfvkpkm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQe70ACgkQ64mZXMKQ
wqkS1xAAqm+euBJS5iNghpRK/LTwd3FYv2I3ICxhAOkuPQ/sIV8Ht/iiYCb0MZZb
fXHyHUY8wP+cAyMYu6p8yY5dJaqmsWnVuSqNRlyHyDipZrEPYPKUEMGE6vZN9qSI
5BntTdWY9puqJeiKilCAgWVfcr9lw5VTqkTrVQSMllF+lOLzjvB2lpZ+/P0IY6oG
xdB0H/08TGwmpK9/OrtYCwlqWsgRtGhwlwnN1n5G8raygeRm9PB6fHKqJJxRB1lu
14Jw950PpOMzoEDpl1lrKx3K392Sep7+phQriRervINcEjYfZcWMSlrM6bwyt37e
iRD+mwdEyW9KgLOYQ7rDzvQ7cmH5VsVLDAODQC16O/Ql5Uesvlz6+flROKrCdxW3
z/lVoQJLUljXheu0jcvZb2GFYXPeYPrPRjEZssD8qyIs4pzaLdIripJTC60NX794
T9Ua225KePap5vmLYr22Qh8K0jVB4P5mJYpRtlTzndUq9LjiXhySd4pTKdXCCiVH
Q9OXBhHoVjC6I8Zg0cHJ7i7vTIQglwZtt5Epr17peTnVSo4F5P9y1Lqgg9Z1X/uK
cNKa5XU9UghBiwhi+kfuJF+V4V8lETFs2E/O9UMLk1/cU1EnRkBl7c1JhKH1BL8e
ne9l79KeW14bd9iesT6Fb4o07xprTjyU+y0B2fUJ2PP2fnT+cIA=
=ViWf
-----END PGP SIGNATURE-----

--3usjzyxtncfvkpkm--

