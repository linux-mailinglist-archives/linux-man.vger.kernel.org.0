Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F357D567D
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 17:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjJXPcu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 11:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234810AbjJXPcu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 11:32:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 140D2123
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 08:32:48 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E1EC433C8;
        Tue, 24 Oct 2023 15:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698161567;
        bh=M9hfyZKJCEu9dA97ScSQoVT5aE3lZgfCZ9AGUrw9lNE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h+msafz14soEBozjhn0aXCXWrUgdHGy4Tkjzi29e9c+nQyAo1Iu4Z+xDgG41uNC71
         HmpkqBN0XvYCP3EoU8YoYFXZLdKXxFoZ5tnaO0pG58TU7chm8pkL1JL2NSLtBtMs+T
         tTAB1g3h515C18zMz36yRrtH/QAPMnnCZhI60ndx3PweYe6Xes6BOOJbt/H6RLtX48
         lucFYtfGJ6IIdk3WOjUqt+XrvkmwGQN2GgloOd29K8jRG1oITCMHyCSBssT+iNBHMQ
         Y19RrS5xB6cah97ivsy9w19TLAyXnH5sBJ2vwQJ5BUV0J3TBOTvquPMYnpp2UmzS+Q
         EAzNvOyfsxUHg==
Date:   Tue, 24 Oct 2023 17:32:30 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34
Message-ID: <ZTfjnCHDc_meBr4S@debian>
References: <20231024143144.76490-1-vincent@vinc17.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tZyl3zl0oJar9Uah"
Content-Disposition: inline
In-Reply-To: <20231024143144.76490-1-vincent@vinc17.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tZyl3zl0oJar9Uah
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Oct 2023 17:32:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34

Hi Vincent,

On Tue, Oct 24, 2023 at 04:31:17PM +0200, Vincent Lefevre wrote:
> The glibc 2.34 NEWS file says that mtrace() and mcheck() have now been
> disabled in the main C library, and preloading libc_malloc_debug.so is

Can you please clarify "disabled"?  What is the behavior if that library
is not preloaded?  My attempt to run this program is that mcheck(3)
returns -1.  So, the preload interposes the dummy function that only
returns -1 with an actual mcheck(3) implementation?

Are these functions deprecated by glibc?  If so, we should probably use
[[deprecated]] in the SYNOPSIS.  Or did they just move the functionality
for other reasons but without deprecating?

Should we document the need for LD_PRELOAD in the LIBRARY section?

Thanks,
Alex

> needed to get this functionality back.
>=20
> So the examples now need a "LD_PRELOAD=3Dlibc_malloc_debug.so".
>=20
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man3/mcheck.3 | 2 +-
>  man3/mtrace.3 | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/mcheck.3 b/man3/mcheck.3
> index 285ea946c..e17650a4c 100644
> --- a/man3/mcheck.3
> +++ b/man3/mcheck.3
> @@ -169,7 +169,7 @@ when running the program:
>  .PP
>  .in +4n
>  .EX
> -.RB "$" " ./a.out"
> +.RB "$ " "LD_PRELOAD=3Dlibc_malloc_debug.so ./a.out"
>  About to free
>  \&
>  About to free a second time
> diff --git a/man3/mtrace.3 b/man3/mtrace.3
> index f30511cd0..d0cde42c9 100644
> --- a/man3/mtrace.3
> +++ b/man3/mtrace.3
> @@ -153,7 +153,7 @@ diagnosed memory leaks at two different locations in =
the program:
>  .EX
>  .RB "$ " "cc \-g t_mtrace.c \-o t_mtrace"
>  .RB "$ " "export MALLOC_TRACE=3D/tmp/t"
> -.RB "$ " "./t_mtrace"
> +.RB "$ " "LD_PRELOAD=3Dlibc_malloc_debug.so ./t_mtrace"
>  .RB "$ " "mtrace ./t_mtrace $MALLOC_TRACE"
>  Memory not freed:
>  -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
> --=20
> 2.42.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--tZyl3zl0oJar9Uah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU3444ACgkQnowa+77/
2zLFLQ/9GlGIP41B1YbkVlS68PTPj1c7/55esspcly7ILjgQE1Hfckd8FfugP9gE
3+xPvHg0ytnSmTBlNEF58/RuTGzK8Xo1VZTcsN/PaLJtG3uViV7gSWzBKACg5lLN
pMoKOeheXmcW1nanqXcMUdJH5vHIS+v3kK9XoULOtgX027UOipD7Y/NIU+J5raY0
UkrhDcTmZdrtsf9Q4ZYBAbgALxxJLnHoneblIoOcMwi3S+yztiC0DN+6K7CURgOB
koRat+k8nn2BEjQxUYjXBrwA6+fwnXqdrk0i1tAC/V5yZr+L7fLP+lwOKn4+aVK6
R+CQg4BCx/TA2POuAdzFDAlAP6JcnBww8H24kpNR6ENZuv6vasmhK62wAdG59tA4
AfpWjf4e9ZtW+uwlDHSknSB6R44uv+f6X/JiYYIaWMrMp1kuR2/2SzQbiIFVIZ5f
RxGRzaPgBEDKVl1CmSvyOU03cQmw6p9dbFkOGgZ83Df5ZG+3QUPDzKYHajQsrwMP
ud6atrUPMOszUxtcwniR4oD6zY8ZNQO99L1WEfV1C4PW4fYR9K13ndf532g6Avs2
FFaCMmOPTyLviq2tg5/tkA7N4jWYkI8X0OML/bl6P0DoUHBlk9ZKmHlLKvwdtF+p
vYv6hXooiR4A1GtjBljOiRcf25og+lSl9jp3Z0WZecSxQoAn5MY=
=dCvS
-----END PGP SIGNATURE-----

--tZyl3zl0oJar9Uah--
