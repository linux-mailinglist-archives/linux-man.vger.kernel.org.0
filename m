Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A56187E485F
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 19:38:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbjKGSit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 13:38:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjKGSis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 13:38:48 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E31B9
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 10:38:46 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 274AAC433C8;
        Tue,  7 Nov 2023 18:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699382326;
        bh=RNbI7MQCj5E692cgxXmBErJa+HtW08nJCXI0hRyMPA8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WEheUmdvc5vkX05h7VY+g+5fcn50BEIa1wRkdcHEiztDI7QW6Vzxv/KMVrXusrDhF
         NFeagNAvteHSswUFktMYlZgIQmwtKOJj8M209TmEb1UlWhZ2C/e0v9iXaXICSVOZKm
         QLzbhEJ2BWz3i/tyBsGaquqnwBFfL/Dwa3DzkkIqxhxxq2GGHxWBCvnhifRVNHeJ4E
         RXIuvAIgWFeN43xnKDKh+SOz9Vm1g4OGvoksCu5fnlGGkHpNCO/uIgAMLKLQxv0nJP
         SNBf3ymggHdCNkiezkaWH28o5k0XRZc8h572M7If8gkcaYsuUiQl0z2VzhXFPgbTgr
         EaXu/2OZwkRDQ==
Date:   Tue, 7 Nov 2023 19:41:48 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man*/: srcfix
Message-ID: <ZUqE7LZha8VLFl4s@devuan>
References: <20231107183144.a4ieq3dy5ukvvzb6@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Na6bYVBXCraMhKZQ"
Content-Disposition: inline
In-Reply-To: <20231107183144.a4ieq3dy5ukvvzb6@illithid>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Na6bYVBXCraMhKZQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 Nov 2023 19:41:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man*/: srcfix

On Tue, Nov 07, 2023 at 12:31:44PM -0600, G. Branden Robinson wrote:
> Clean up in preparation for "MR.sed".
>=20

Hi Branden,

> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 2b2fc2596..5f68f5204 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -32,8 +32,13 @@ .SH DESCRIPTION
>  Given a list of parameters,
>  .BR perf_event_open ()
>  returns a file descriptor, for use in subsequent system calls
> -.RB ( read "(2), " mmap "(2), " prctl "(2), " fcntl "(2), etc.)."
> -.P
> +(\c
> +.BR read (2),
> +.BR mmap (2),
> +.BR prctl (2),
> +.BR fcntl (2),
> +etc.).
> +.PP
>  A call to
>  .BR perf_event_open ()
>  creates a file descriptor that allows measuring performance
> diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
> index cf4ff678c..a938e4ad7 100644
> --- a/man5/proc_locks.5
> +++ b/man5/proc_locks.5
> @@ -10,10 +10,12 @@ .SH NAME
>  .SH DESCRIPTION
>  .TP
>  .I /proc/locks
> -This file shows current file locks
> -.RB ( flock "(2) and " fcntl (2))
> -and leases
> -.RB ( fcntl (2)).
> +This file shows current file locks (\c

s/ (/\n(/  please

Cheers,
Alex

> +.BR flock (2)
> +and
> +.BR fcntl (2))
> +and leases (\c
> +.BR fcntl (2)).
>  .IP
>  An example of the content shown in this file is the following:
>  .IP

--=20
<https://www.alejandro-colomar.es/>

--Na6bYVBXCraMhKZQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVKhOwACgkQnowa+77/
2zIFUhAAo5pLRngF2tnLHx8AumYkVoUvdqOXS0Wpf2hHJvfjF9vqFZviVSb+4LF6
grUW19zFyiefoQvanJ/r8TH6KiAIjN4a0s5c28e7mYp1SStsuqWG6wHqIn4xCa94
pGtGXrxIWhVTAMpMe8dZdeSxMzWsfJ4dCeixCmBYh0nIuAaR/Y6OaE2m02oRKp1R
MpzJrW7p4NTKb4as4QeNBmCu/E5aQHLlLFaRvt4+1d61hvQTOsZVlvva0ffvsHKI
pEo2DgLftlUqBwCuOnoIeNh3+Q7u2x5L6CJ/bm9VlLfR2qK0eMrvMpP4zmWu49FS
/HQBcmC/nf77FN0IrbfP8XjgeV7Zs+CFJNKmyVX84B2Xs3UUfP1su1/RWqyTXnTp
RlDS/CXMfdvY/ZafQPHR/fHWjAduEx7ny+2uSYs7GKBTu+sc6cIwXBS+HDMsrRae
JipBjcd23lyFfjIXqkvod4tdYXvaE9ncykiSPItR11ByIBzNARhXbO7fk+qerd9w
4lwzgJAy0x6GGTeug97e+MRoLKd7dqtHy0VTNiymInB+1iM9YStjdC8KsmoWNrng
qnpOic3TQSaZr+W0FeX5WLifsoFxO0Lb4BBTAjMydaao3CENZuiPiY4rQMAhzUWf
70aQaBxZIIHbvdB7gOMXh46aqJzIVaRoyYVMl/ExCjqvywwEBXY=
=a6Sv
-----END PGP SIGNATURE-----

--Na6bYVBXCraMhKZQ--
