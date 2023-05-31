Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5888718E58
	for <lists+linux-man@lfdr.de>; Thu,  1 Jun 2023 00:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbjEaWUR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 18:20:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230058AbjEaWUQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 18:20:16 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 680F6125
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 15:20:13 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f6094cb2ebso1724205e9.3
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 15:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685571612; x=1688163612;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JxHrbS3VupIQhkVxrtO9IC3VE0gF/5dApyJ3xgD/Moo=;
        b=K81wrR6MB++XTdLby0xYkKEi/77mGEFaoxI5bPm+JMW4uY8Ui/deedOwM62C6HU32L
         vzgZaFDrXrSN0HZT/wK2zgtJ4dkWzQ9Q7HaR4qoNpHKwN9ILFALK52rce9mxeBok+c5q
         64xiIvm+jyKN1c7XIj4hmcfT5c+mCOC75KgIYHZkKA7Le6thUyCkeN05wPGEML1Xj4DP
         iKPb+mSpKPjhlsC/GCEh6tOM6USLGGbdUcBmL4c0smh+0XRGx5Ne/t8U8oJxO12ziWI4
         2rElSv2ablaZzh0GGaBmTde52GOZP731SxN1Qcnq1fpMpCykBOYQfEmvtNRX6vYH9Z1R
         DmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685571612; x=1688163612;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JxHrbS3VupIQhkVxrtO9IC3VE0gF/5dApyJ3xgD/Moo=;
        b=W0OjqWBvwFMwzPlGCKF8oZvqwbf8NHM0PDaOq7vMiNeBLdhWh3occM5GYo3tzTwUFL
         TfY8dSjLwAOJxcUrSsD1Qvp61zTwKtVRGAox3uIjmckLDGk8hfDH8ZCLBdXMNVq6iqLJ
         SYzj0MEjMAaEr+gtQNvX+eLtcCviWiw840zcn/SESnBN9SdN+UY5gFgIqebRKU8fBVcf
         aezNrI5m+ZnQHAhp9VU8FSYv8jRUX+w4GsWOQMPdrxMuYmdTVA5/uzIxkarNGGJrI5a4
         7CElF6yA1b8OueEEDGpH85JEN9iP1sq0PZS3QhHnSGlb74SyKZVq5em41ksrE22DPoDD
         S0HQ==
X-Gm-Message-State: AC+VfDxyAaXHtsiHw4fLlj9tAK1u00IiZIPLARlkZBNNxPo9ql/n5b30
        L5845ivacA0yBYP2Pmhgh3LL79mJMZ0=
X-Google-Smtp-Source: ACHHUZ7mylcwe2C2LLnxdD6qnVr+5e6tbzOHEe45E0Lo4MWnJLTR8NZm7b0A+IGB4PcOWxhzr+woqg==
X-Received: by 2002:a7b:c8d7:0:b0:3f6:7e6:44ea with SMTP id f23-20020a7bc8d7000000b003f607e644eamr462241wml.18.1685571611602;
        Wed, 31 May 2023 15:20:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o4-20020a05600c378400b003f195d540d9sm87810wmr.14.2023.05.31.15.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 15:20:11 -0700 (PDT)
Message-ID: <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
Date:   Thu, 1 Jun 2023 00:20:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
 <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
 <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------D0JAVJe5A5weM7THgai0DADg"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------D0JAVJe5A5weM7THgai0DADg
Content-Type: multipart/mixed; boundary="------------YLp0eGY48mKEjektZWurY4iy";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
Subject: Re: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
References: <bug-214885-11311@https.bugzilla.kernel.org/>
 <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
 <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>
In-Reply-To: <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>

--------------YLp0eGY48mKEjektZWurY4iy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 5/29/23 10:50, Mingye Wang wrote:
> Hi Alex,
>=20
> I am still struggling with getting my mail client to send through a
> proxy. The attached patch is the same as the bugzilla one, except that
> the commit message has been expanded.

Okay; no problem.

> From 343b2ad76dc6d78daa529405f2ec7f9a3e2e65bf Mon Sep 17 00:00:00 2001
> From: Mingye Wang <arthur200126@gmail.com>
> Date: Thu, 25 May 2023 20:21:08 +0800
> Subject: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
> In-Reply-To: <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
> X-Unsent: 1
>=20
> Linux kernel 5.6 no longer has a blocking random pool.  This commit
> updates all relevant references to reflect this change.
>=20
> * random.7: Remove references to the blocking pool in the table.  Add a=

>   note about the blocking pool.
> * random.7: Revise "choice of random source" to remove any recommen-
>   dationof the blocking pool.  Stop suggesting that the blocking pool i=
s
>   safer (it's not after initialization).
> * random.7: Add table entry for GRND_INSECURE.
> * random.7: Weaken performance recommendation following the Linux 4.8
>   CSPRNG speedup.

If some changes come from Linux 4.8, I prefer having two separate patches=
=2E

> * getrandom.2: Add flag entry for GRND_INSECURE.
> * getrandom.2: Add removal note to GRND_RANDOM.
> * random.4: Split DESCRIPTION paragraph on /dev/random into two, one
>   for the new behavior and the other for the old.
> * random.4: Adjust size limits and /proc list for 5.6.
> * random.4: Mention blocking resolution by high-precision timer entropy=
=2E
>=20
> Changes not made:
> * random.4: USAGE section largely unchanged.  Old kernels will stick
>   around for a while.
>=20
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D214885
> Signed-Off-By: Mingye Wang <arthur200126@gmail.com>
> ---
>  man2/getrandom.2 |  9 +++++
>  man4/random.4    | 30 +++++++++-------
>  man7/random.7    | 89 ++++++++++++++++++++++++++----------------------=

>  3 files changed, 75 insertions(+), 53 deletions(-)
>=20
> diff --git a/man2/getrandom.2 b/man2/getrandom.2
> index dbd23a0a6..fb2e948be 100644
> --- a/man2/getrandom.2
> +++ b/man2/getrandom.2
> @@ -64,6 +64,8 @@ argument is a bit mask that can contain zero or more =
of the following values
>  ORed together:
>  .TP
>  .B GRND_RANDOM
> +.\" commit 48446f198f9adcb499b30332488dfd5bc3f176f6
> +Ignored since Linux 5.6.
>  If this bit is set, then random bytes are drawn from the
>  .I random
>  source
> @@ -105,6 +107,13 @@ does not block in these cases, but instead immedia=
tely returns \-1 with
>  .I errno
>  set to
>  .BR EAGAIN .
> +.TP GRND_INSECURE
> +.\" commit 75551dbf112c992bc6c99a972990b3f272247e23
> +Added in Linux 5.6.
> +Request best-effort, non-cryptographic-quality random bytes.
> +If this bit is set, then
> +.BR getrandom ()
> +will never block or fail due to a lack of entropy.
>  .SH RETURN VALUE
>  On success,
>  .BR getrandom ()
> diff --git a/man4/random.4 b/man4/random.4
> index edd047b77..6ce9992fe 100644
> --- a/man4/random.4
> +++ b/man4/random.4
> @@ -58,16 +58,20 @@ If this is of concern in your application, use
>  .BR getrandom (2)
>  or \fI/dev/random\fP instead.
>  .PP
> -The \fI/dev/random\fP device is a legacy interface which dates back to=

> -a time where the cryptographic primitives used in the implementation
> -of \fI/dev/urandom\fP were not widely trusted.
> -It will return random bytes only within the estimated number of
> -bits of fresh noise in the entropy pool, blocking if necessary.
> -\fI/dev/random\fP is suitable for applications that need
> +.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
> +As of Linux 5.6, \fI/dev/random\fP is identical to \fI/dev/urandom\fP,=

> +except that it blocks during early boot.

Just wondering:  how is this description of /dev/urandom different from
GRND_INSECURE?

>  A jitter-based seeding technique
> +added in Linux 5.4 should help to reduce block time.=20
> +.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
> +.PP
> +The pre-5.6 \fI/dev/random\fP device is a legacy interface which dates=

> +back to a time where the cryptographic primitives used in the implemen=
tation
> +of \fI/dev/urandom\fP were not widely trusted. It would return random =
bytes

Please use semantic newlines.  See man-pages(7):
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

> +only within the estimated number of bits of fresh noise in the entropy=
 pool,
> +blocking until additional environmental noise is gathered.
> +This old \fI/dev/random\fP is suitable for applications that need
>  high quality randomness, and can afford indeterminate delays.
>  .PP
> -When the entropy pool is empty, reads from \fI/dev/random\fP will bloc=
k
> -until additional environmental noise is gathered.
>  Since Linux 5.6, the
>  .B O_NONBLOCK
>  flag is ignored as
> @@ -116,15 +120,16 @@ A
>  .BR read (2)
>  from
>  .I /dev/random
> -will return at most 512 bytes
> +has the same maximum size since Linux 5.6. Between Linux 3.16 and 5.5,=

> +the maximum size was 512 bytes. (340 bytes before Linux 2.6.12)
>  .\" SEC_XFER_SIZE in drivers/char/random.c
> -(340 bytes before Linux 2.6.12).
> +

Blank lines are wrong.

Cheers,
Alex

>  .PP
>  Writing to \fI/dev/random\fP or \fI/dev/urandom\fP will update the
>  entropy pool with the data written, but this will not result in a
>  higher entropy count.
>  This means that it will impact the contents
> -read from both files, but it will not make reads from
> +read from both files, but it will not make reads from a pre-5.6
>  \fI/dev/random\fP faster.
>  .SS Usage
>  The
> @@ -145,7 +150,7 @@ soon as it is reloaded in the boot sequence, and pe=
rfectly adequate for
>  network encryption session keys.
>  (All major Linux distributions have saved the seed file across reboots=

>  since 2000 at least.)
> -Since reads from
> +Since reads from a pre-5.6
>  .I /dev/random
>  may block, users will usually want to open it in nonblocking mode
>  (or perform a read with timeout),
> @@ -246,6 +251,7 @@ It contains the value 4096.
>  .RE
>  .TP
>  .I read_wakeup_threshold
> +Removed in Linux 5.6.
>  This file
>  contains the number of bits of entropy required for waking up processe=
s
>  that sleep waiting for entropy from
> diff --git a/man7/random.7 b/man7/random.7
> index 69e6c2403..e80a1328e 100644
> --- a/man7/random.7
> +++ b/man7/random.7
> @@ -59,17 +59,16 @@ The kernel collects bits of entropy from the enviro=
nment.
>  When a sufficient number of random bits has been collected, the
>  entropy pool is considered to be initialized.
>  .SS Choice of random source
> -Unless you are doing long-term key generation (and most likely not eve=
n
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
>  .I /dev/urandom
> -device or employ
> +since Linux 5.6. (See the table below.)
> +.PP.
> +On older kernels, either read from the
> +.I /dev/urandom
> +device or (especially if you are concerned with early boot) employ
>  .BR getrandom (2)
>  without the
>  .B GRND_RANDOM
> @@ -77,18 +76,6 @@ flag.
>  The cryptographic algorithms used for the
>  .I urandom
>  source are quite conservative, and so should be sufficient for all pur=
poses.
> -.PP
> -The disadvantage of
> -.B GRND_RANDOM
> -and reads from
> -.I /dev/random
> -is that the operation can block for an indefinite period of time.
> -Furthermore, dealing with the partially fulfilled
> -requests that can occur when using
> -.B GRND_RANDOM
> -or when reading from
> -.I /dev/random
> -increases code complexity.
>  .\"
>  .SS Monte Carlo and other probabilistic sampling applications
>  Using these interfaces to provide large quantities of data for
> @@ -99,6 +86,13 @@ need cryptographically secure random numbers.
>  Instead, use the interfaces described in this page to obtain
>  a small amount of data to seed a user-space pseudorandom
>  number generator for use by such applications.
> +.PP
> +.\" commit e192be9d9a30555aae2ca1dc3aad37cba484cd4a
> +.\" commit 48446f198f9adcb499b30332488dfd5bc3f176f6
> +Since Linux 4.8, the random interfaces are backed by a much faster
> +NUMA-aware ChaCha20 CSPRNG.
> +It is still discouraged to use the random interfaces for sampling,
> +but if you do, the performance will be much better than before.
>  .\"
>  .SS Comparison between getrandom, /dev/urandom, and /dev/random
>  The following table summarizes the behavior of the various
> @@ -122,9 +116,9 @@ T}
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
> @@ -149,17 +143,6 @@ Blocks until pool ready
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
> @@ -171,21 +154,45 @@ T}	T{
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
>  T}	T{
> -.B EAGAIN
> +Returns output from uninitialized CSPRNG (may be low entropy and unsui=
table for cryptography)
>  T}
>  .TE
>  .ad
>  .\"
> +.SS The old blocking pool
> +The above table describes the behavior of the interfaces since
> +Linux 5.6.  In older kernels, the
> +.I /dev/random
> +used a separate blocking pool, and
> +.BR getrandom ()=20
> +had a
> +.B GRND_RANDOM
> +flag for reading from the blocking pool.
> +.\"
> +.PP
> +The older blocking pool was a vestige of a time when the CSPRNG
> +was not trusted.
> +It assumed that entropy can run out by reading the CSPRNG.
> +This has never been the case.
> +Instead, programs using=20
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
>  .SS Generating cryptographic keys
>  The amount of seed material required to generate a cryptographic key
>  equals the effective key size of the key.
> --=20
> 2.40.0


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------YLp0eGY48mKEjektZWurY4iy--

--------------D0JAVJe5A5weM7THgai0DADg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR3yBEACgkQnowa+77/
2zIhYQ//dgL6vXvkf9GyXs+TQ6HKUcOrFS6Dvlh1iGp7ol7v1G75B5R3y/Q3xNVa
0TE9E81pQnDUj/TrpDxik+Pc5d1J2qDvTSihwY7cUF+1D6hpFeDdSO0v/Qa9GGrk
KCi2K+kE8f4eAYgXHZdMKiMzV4pu6Al+smovUaLhuoY0iyu0P8UXoiFh+tOsSwlR
gQy98R0FWTypg9emgSE4Moq/SR61TY4o1tfv035uRhrbC1mKf1WINWoPF3gwUiiH
kgieO7jsS5vEgidGLVeo+t8ETQDY9tf12XGzkWC0Zg7/HC8465/1hjiGLl0miaO0
RHsxSSyCkAdhMj+UatU238MEw0pDkKb6JY2pUa0feMR5TXMHXH1iRxJj2akwGsPM
p6+72BRVajiLTqbNoRC3FXy1DNFrNLJ5oAOpHYsjLqf5PgDt987+wm2dF2IfSraX
anQVteClYcXuYD5d9whoENeqOh9zAS8rDOPiAx/393KbSZnd+ej/SNHqSiZvdMzB
JawP46YhaFxTd1wf6E2BUdfvkh2+ec6+YWXlCzg4ZQOhMaK4QfbzjMSkZ07+aNal
/iseVFK1MzbImk+2WH35urWADIEiGWnHpSHfmzKZHjVaxZ7rPLPMRlbyjGpFJBmY
7V97Q4vBwd24eZgbc7F+bccV4ZCSloBYIrhVchDRQs5QNlzQ0B0=
=CXxP
-----END PGP SIGNATURE-----

--------------D0JAVJe5A5weM7THgai0DADg--
