Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 609DA7DD7B3
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 22:20:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbjJaVU7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 17:20:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjJaVU5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 17:20:57 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AAAE83
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 14:20:55 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F48FC433C8;
        Tue, 31 Oct 2023 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698787254;
        bh=q6ovQJZYtr+isrQirAXydaDmagQo94/CFwVuJXtT6d0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Isd12OGiB3E6upY3g3mKHzi/U2G6bL6MIE0WzEFAB0NZp99BqWYUPwBYK/QXOYhfa
         DZf0+ccTHYTrmHPmIZ5CdknkW9LF2WNgUJKE7di7JuS4dBM3a/e37rX7dLR63B7kbU
         6warL+evkThDKSGF+q634ioxbqgzsWcn61VB3yFEegSwRMs1BpUp2tAiG8QpTQ6hSM
         BwitZUH87WLoSxoB4i475xsOHb2HlryfEh5U/XD7tkU1WRtUNKaUTlgcWOry7jJ5bY
         rsAY1vRZWLaoEfhus0neHtwAmr8R2HA5ETprLW26TPbkox0HPNmtf2M7bQzaaPOpJx
         dC1I7iyzjpi9w==
Date:   Tue, 31 Oct 2023 22:20:51 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Bruno Haible <bruno@clisp.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Elliott Hughes <enh@google.com>
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUFvsyVV4QNUjy9u@debian>
References: <4678853.9Mp67QZiUf@nimes>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian>
 <5203882.zE8UqtGg2D@nimes>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aBfaqxOoxus0aS2k"
Content-Disposition: inline
In-Reply-To: <5203882.zE8UqtGg2D@nimes>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aBfaqxOoxus0aS2k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 22:20:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>,
	Elliott Hughes <enh@google.com>
Subject: Re: [PATCH] prctl.2: Fix typo

Hi Bruno,

On Tue, Oct 31, 2023 at 06:08:05PM +0100, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > Yes, I don't think it means optional, but rather a choice from all the
> > available operations.
>=20
> IMO, a choice is an "option" only if it is possible to choose none of
> the available choices.
>=20
> > Would you mind checking the
> > entire page for those other replacements?
>=20
> Done: Find attached 0001, which replaces "option" with "operation" in tho=
se
> places where it denotes the first argument.
>=20
> Also 0002: a paragraph break was missing in the list of reasons for EINVA=
L.

Both patches applied.  Thanks!

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D753a46c6468b327f5885fde5bc2a202a03809459>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfc6c19f2790da12c203a9e0ea4cb6fe178d7da82>

Cheers,
Alex

>=20
> I also updated the prototype of this function in IRIX. The IRIX 6.5 header
> file in fact does not give a name to the first argument: it declares
>=20
>   ptrdiff_t prctl(unsigned, ...);
>=20
> Bruno
>=20

> From 8823af7522ea7e9e2e89774e3ce7b33724ba50bf Mon Sep 17 00:00:00 2001
> From: Bruno Haible <bruno@clisp.org>
> Date: Sun, 29 Oct 2023 21:46:49 +0100
> Subject: [PATCH 1/2] prctl.2: Use better term
>=20
> The first argument of prctl() was denoted as "option" here. This makes
> no sense, because
>   - The first argument is not optional; it is mandatory.
>     A choice is an "option" only if it is possible to choose none of
>     the available choices.
>   - The title of the page is "operations on a process or thread".
>=20
> A better term is "operation".
> ---
>  man2/prctl.2 | 88 ++++++++++++++++++++++++++--------------------------
>  1 file changed, 44 insertions(+), 44 deletions(-)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f72aeb700..bcda079bb 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -46,7 +46,7 @@ Standard C library
>  .nf
>  .B #include <sys/prctl.h>
>  .PP
> -.BI "int prctl(int " option ", ..."
> +.BI "int prctl(int " operation ", ..."
>  .BI "          \fR/*\fP unsigned long " arg2 ", unsigned long " arg3 ,
>  .BI "          unsigned long " arg4 ", unsigned long " arg5 " \fR*/\fP )=
;"
>  .fi
> @@ -414,7 +414,7 @@ so FPU emulation is not required and the FPU always o=
perates in
>  .B FR=3D1
>  mode.
>  .IP
> -This option is mainly intended for use by the dynamic linker
> +This operation is mainly intended for use by the dynamic linker
>  .RB ( ld.so (8)).
>  .IP
>  The arguments
> @@ -2096,7 +2096,7 @@ and (if it returns)
>  .B PR_GET_SECCOMP
>  return the nonnegative values described above.
>  All other
> -.I option
> +.I operation
>  values return 0 on success.
>  On error, \-1 is returned, and
>  .I errno
> @@ -2104,7 +2104,7 @@ is set to indicate the error.
>  .SH ERRORS
>  .TP
>  .B EACCES
> -.I option
> +.I operation
>  is
>  .B PR_SET_SECCOMP
>  and
> @@ -2120,7 +2120,7 @@ attribute (see the discussion of
>  above).
>  .TP
>  .B EACCES
> -.I option
> +.I operation
>  is
>  .BR PR_SET_MM ,
>  and
> @@ -2130,7 +2130,7 @@ is
>  the file is not executable.
>  .TP
>  .B EBADF
> -.I option
> +.I operation
>  is
>  .BR PR_SET_MM ,
>  .I arg3
> @@ -2141,7 +2141,7 @@ and the file descriptor passed in
>  is not valid.
>  .TP
>  .B EBUSY
> -.I option
> +.I operation
>  is
>  .BR PR_SET_MM ,
>  .I arg3
> @@ -2156,7 +2156,7 @@ symbolic link, which is prohibited.
>  is an invalid address.
>  .TP
>  .B EFAULT
> -.I option
> +.I operation
>  is
>  .BR PR_SET_SECCOMP ,
>  .I arg2
> @@ -2169,7 +2169,7 @@ and
>  is an invalid address.
>  .TP
>  .B EFAULT
> -.I option
> +.I operation
>  is
>  .B PR_SET_SYSCALL_USER_DISPATCH
>  and
> @@ -2178,12 +2178,12 @@ has an invalid address.
>  .TP
>  .B EINVAL
>  The value of
> -.I option
> +.I operation
>  is not recognized,
>  or not supported on this system.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_MCE_KILL
>  or
> @@ -2197,10 +2197,10 @@ arguments were not specified as zero.
>  .B EINVAL
>  .I arg2
>  is not valid value for this
> -.IR option .
> +.IR operation .
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_SECCOMP
>  or
> @@ -2209,7 +2209,7 @@ and the kernel was not configured with
>  .BR CONFIG_SECCOMP .
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .BR PR_SET_SECCOMP ,
>  .I arg2
> @@ -2219,7 +2219,7 @@ and the kernel was not configured with
>  .BR CONFIG_SECCOMP_FILTER .
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .BR PR_SET_MM ,
>  and one of the following is true
> @@ -2259,7 +2259,7 @@ resource limit to be exceeded.
>  .RE
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_PTRACER
>  and
> @@ -2269,7 +2269,7 @@ is not 0,
>  or the PID of an existing process.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_PDEATHSIG
>  and
> @@ -2277,7 +2277,7 @@ and
>  is not a valid signal number.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_DUMPABLE
>  and
> @@ -2288,7 +2288,7 @@ nor
>  .BR SUID_DUMP_USER .
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_TIMING
>  and
> @@ -2297,7 +2297,7 @@ is not
>  .BR PR_TIMING_STATISTICAL .
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_NO_NEW_PRIVS
>  and
> @@ -2311,7 +2311,7 @@ or
>  is nonzero.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_GET_NO_NEW_PRIVS
>  and
> @@ -2323,7 +2323,7 @@ or
>  is nonzero.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_THP_DISABLE
>  and
> @@ -2334,7 +2334,7 @@ or
>  is nonzero.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_GET_THP_DISABLE
>  and
> @@ -2346,7 +2346,7 @@ or
>  is nonzero.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_CAP_AMBIENT
>  and an unused argument
> @@ -2371,7 +2371,7 @@ and
>  does not specify a valid capability.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  was
>  .B PR_GET_SPECULATION_CTRL
>  or
> @@ -2380,7 +2380,7 @@ and unused arguments to
>  .BR prctl ()
>  are not 0.
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_PAC_RESET_KEYS
>  and the arguments are invalid or unsupported.
> @@ -2389,7 +2389,7 @@ See the description of
>  above for details.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SVE_SET_VL
>  and the arguments are invalid or unsupported,
> @@ -2399,13 +2399,13 @@ See the description of
>  above for details.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SVE_GET_VL
>  and SVE is not available on this platform.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_SYSCALL_USER_DISPATCH
>  and one of the following is true:
> @@ -2427,7 +2427,7 @@ is invalid.
>  .RE
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_SET_TAGGED_ADDR_CTRL
>  and the arguments are invalid or unsupported.
> @@ -2436,7 +2436,7 @@ See the description of
>  above for details.
>  .TP
>  .B EINVAL
> -.I option
> +.I operation
>  is
>  .B PR_GET_TAGGED_ADDR_CTRL
>  and the arguments are invalid or unsupported.
> @@ -2445,13 +2445,13 @@ See the description of
>  above for details.
>  .TP
>  .B ENODEV
> -.I option
> +.I operation
>  was
>  .B PR_SET_SPECULATION_CTRL
>  the kernel or CPU does not support the requested speculation misfeature.
>  .TP
>  .B ENXIO
> -.I option
> +.I operation
>  was
>  .B PR_MPX_ENABLE_MANAGEMENT
>  or
> @@ -2460,7 +2460,7 @@ and the kernel or the CPU does not support MPX mana=
gement.
>  Check that the kernel and processor have MPX support.
>  .TP
>  .B ENXIO
> -.I option
> +.I operation
>  was
>  .B PR_SET_SPECULATION_CTRL
>  implies that the control of the selected speculation misfeature is not p=
ossible.
> @@ -2469,7 +2469,7 @@ See
>  for the bit fields to determine which option is available.
>  .TP
>  .B EOPNOTSUPP
> -.I option
> +.I operation
>  is
>  .B PR_SET_FP_MODE
>  and
> @@ -2477,7 +2477,7 @@ and
>  has an invalid or unsupported value.
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .BR PR_SET_SECUREBITS ,
>  and the caller does not have the
> @@ -2489,7 +2489,7 @@ or tried to set a flag whose corresponding locked f=
lag was set
>  .BR capabilities (7)).
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .B PR_SET_SPECULATION_CTRL
>  wherein the speculation was disabled with
> @@ -2497,7 +2497,7 @@ wherein the speculation was disabled with
>  and caller tried to enable it again.
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .BR PR_SET_KEEPCAPS ,
>  and the caller's
> @@ -2507,7 +2507,7 @@ flag is set
>  .BR capabilities (7)).
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .BR PR_CAPBSET_DROP ,
>  and the caller does not have the
> @@ -2515,7 +2515,7 @@ and the caller does not have the
>  capability.
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .BR PR_SET_MM ,
>  and the caller does not have the
> @@ -2523,7 +2523,7 @@ and the caller does not have the
>  capability.
>  .TP
>  .B EPERM
> -.I option
> +.I operation
>  is
>  .B PR_CAP_AMBIENT
>  and
> @@ -2538,7 +2538,7 @@ or the
>  securebit has been set.
>  .TP
>  .B ERANGE
> -.I option
> +.I operation
>  was
>  .B PR_SET_SPECULATION_CTRL
>  and
> @@ -2558,11 +2558,11 @@ with prototype
>  .PP
>  .in +4n
>  .EX
> -.BI "ptrdiff_t prctl(int " option ", int " arg2 ", int " arg3 );
> +.BI "ptrdiff_t prctl(int " operation ", int " arg2 ", int " arg3 );
>  .EE
>  .in
>  .PP
> -and options to get the maximum number of processes per user,
> +and operations to get the maximum number of processes per user,
>  get the maximum number of processors the calling process can use,
>  find out whether a specified process is currently blocked,
>  get or set the maximum stack size, and so on.
> --=20
> 2.34.1
>=20

> From d1ae2b0b32e837476467397ce1f9d81e347621da Mon Sep 17 00:00:00 2001
> From: Bruno Haible <bruno@clisp.org>
> Date: Tue, 31 Oct 2023 18:02:43 +0100
> Subject: [PATCH 2/2] prctl.2: Add a missing paragraph break.
>=20
> A paragraph break was missing in the enumeration of possible reasons for =
EINVAL.
> ---
>  man2/prctl.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index bcda079bb..b97f3fb53 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -2379,6 +2379,7 @@ or
>  and unused arguments to
>  .BR prctl ()
>  are not 0.
> +.TP
>  .B EINVAL
>  .I operation
>  is
> --=20
> 2.34.1
>=20


--=20
<https://www.alejandro-colomar.es/>

--aBfaqxOoxus0aS2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVBb7MACgkQnowa+77/
2zKyUg/9FrUcdS/meiCHp1IuaXABnWeDSW+D/CAchA49JMp0EnZKdBGj43klTzG1
DQHbqsJcxEHr+VbF7C2YCmRItpGAM6+eCkFQdOgRJHKX4Uf+VBHp5ww79Z8NdeBp
M8ujlgOH+t0Q1yk94pveVL1Fmy3m0FOxjTyKefAhCh5gP2nGCUZlteL7yEPPjC8e
ds9pLNv2kpgZJWn0ibf2unDphiPcuQAcfEigM55BOYDrCxWQ1VeTb5oEulSgMH5Q
loU782jQQlT2NmaOMNlOWn3K1ZpaJlB5aa924tD0hDcLC4EQWR+odPFwLfugNpbW
AxExgaQYsh9sno/z2h2AEp3VnWdE/znSWgzXO8krsEsP4tvqVtU6ynJ1SSoIi4+j
m3cPOhzLbQzUoBZOKnzilcGTp195NY2FyjKn6oRiA8ZNrt7I2TC7z63LW7Ffmpdv
kba0pLvAinNFs/nfXWwfP+i35pCXfosQGi6O6WKeJ88Nc1o50UOZg1j2mq+s/Gm6
MNyRTtWCZVEn11d1+9XhytdUypuvRwDqZ/+9gKw92Imh6qrlMpGnRsOa0hsRiHAj
gtE5PrOX97PU1eyrO35/HHuXbswt5mTlrDdWolOTI05+IBh9uVsDslP6VbiV0sMu
eHlIcsJjAVBd5wTB+LXNThrA00XaXO50c69E+HIRP8ey6SBLxMk=
=ePA3
-----END PGP SIGNATURE-----

--aBfaqxOoxus0aS2k--
