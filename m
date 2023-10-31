Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 185237DCEBC
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 15:06:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233002AbjJaOF6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 10:05:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344308AbjJaMlG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 08:41:06 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CAF797
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 05:41:02 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53E7EC433C7;
        Tue, 31 Oct 2023 12:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698756062;
        bh=JXTFK2uEV1Wx5leC/02pLKP5YIpI2eCyRihNuqb/bZQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IDvCFKaDTvw3Zn+CmPPAw6i3HDZGS1p7BC/eW6tfKRNSU+aKjKQvcjrcfgK2+TTJw
         cbmLwl9KRR1U+/a8A4GsoPOVOIP80kPEoRXt8RCxm0iVUDj8Heq8cEsYI1PrRJhQVn
         KNjO8eQhZ7bUewR+WksSagDNGQOTC1qxqrZzRZMZuyktA1QOcgQOy6FPyAcY8hC6Wc
         aEXzVwK/vGI+agIuebkvsCs26IRxr2UDg2WVcsBaAYik92xD4Bx2xZ3Npl3P+o3qVF
         IoWlfheL5bmu9eqXKFM6zOTgXaYfWXHV3inQLLJxoRCDlWnjTjN6r5zxCfuEHK1fzW
         7Ow42fuW4pBOQ==
Date:   Tue, 31 Oct 2023 13:40:58 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Bruno Haible <bruno@clisp.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUD12kxqzd0PsT_E@debian>
References: <4678853.9Mp67QZiUf@nimes>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ImsisF+M0VBUYjNz"
Content-Disposition: inline
In-Reply-To: <4678853.9Mp67QZiUf@nimes>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ImsisF+M0VBUYjNz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 13:40:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] prctl.2: Fix typo

Hi Bruno,

On Sun, Oct 29, 2023 at 09:51:55PM +0100, Bruno Haible wrote:
> The synopsis of the prctl.2 page has:
>=20
>        int prctl(int option, ...
>=20
> This makes no sense, because
>   - the first argument is not optional; it is mandatory.
>   - the title of the page is "operations on a process or thread".
>=20
> It is thus clear that the first argument indicates the operation to perfo=
rm.
>=20
> Find attached the correction.

Agree.  I've seen there are other similarly incorrect uses of the word
"option" where "operation" should have been used in the same page (but
there are some that are correctly used).  Would you mind checking the
entire page for those other replacements?

> From a373bed1d7cd571cffc5ea1a8c6377efbe8fa51c Mon Sep 17 00:00:00 2001
> From: Bruno Haible <bruno@clisp.org>
> Date: Sun, 29 Oct 2023 21:46:49 +0100
> Subject: [PATCH] prctl.2: Fix typo
>=20
> ---

Please include the explanation from above in the commit message.

Thanks,
Alex

>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f72aeb700..b5be0def6 100644
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
> --=20
> 2.34.1
>=20


--=20
<https://www.alejandro-colomar.es/>

--ImsisF+M0VBUYjNz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVA9doACgkQnowa+77/
2zJKZg//d/aQ8tBxupTMq9fV5j6/5qv0JO0YdENlYDjeWcHO91Mw0m7QdMWSVbLK
58NGfJpy0WOfMYa/WD8yJ22+RrE6TvpPfDBQz+deL0LZz6emalN93dVf55HnP/Z4
WsXKMk25z8hDAf1zzTnnPeEOu6P95C5yVZRAX5P06Iebz3c40SwRjJcBjrvFCSQq
X60Y8JsBpk/0rg/kGanmydXrF4OWCkuT5MAmbBZ+cmtSVzkxbDfDS26ItBQO69aN
LmTi+8vgJTSOL9EutvCISSTQB667GXmxeWFXyKYcJW+6+Fb+8Vjm/YTJBaJ4VAD4
ub/GrAA8tV1tQ9zFNOZcHmqHlxvE7oLtpNV/nIvkWiaTCmaZ0m3wdaTpSkG9nSlt
gyo4IzDOdL59benT2l68aoy+JqB0QLQFzPTaP3MvZTNN9hdOcZH49RCfz+dlS3U0
C9M+bpW2Dmd20WfaNEk6pEcNkgne8XtnuVMjIER6tVmOAX0P0NPdSjjo3pMUT0t4
OQN52KGGrJ14J+zMJyLBvZmkWrBx3743caJLSu4GZRQEymCaAELq8qzUSADVvRv/
/jgdHhjmNmkSwIecIOGrlKytjaNko27n3T5pclg8DMpzzG5YOlNJPodANBt8X8tH
FAlnrS9t6tXjWxFOfwdAlDvmoxVn5qN/2hp2fhF1OQoo5Vqbj74=
=OJF6
-----END PGP SIGNATURE-----

--ImsisF+M0VBUYjNz--
