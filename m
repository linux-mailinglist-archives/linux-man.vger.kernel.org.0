Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD197CE794
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 21:19:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230499AbjJRTTb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 15:19:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbjJRTTb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 15:19:31 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB14F109
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 12:19:29 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ED56C433C7;
        Wed, 18 Oct 2023 19:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697656769;
        bh=XaXydHjaS/cBsk5rR9Fp1OQ6d6PgBu62BkryVHAof58=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MCMK2EKylGyplM15/MosrTGJYWR0dnbKaAHSRyEEeldIg0QkOFNLUbUdVcIkffesd
         yMtIZgK5tEAFCSWCX1T9HuoPQSkZiRG99hEgSdbk5Jt9pNqVm7pbUuJ10zjQEMyN/e
         syynjgxtVi7QttQM5oHOcj9f/4v2lOHZYL52owhR4V1c3yNc6Flc1K2S6oFrVHNLDz
         jaj8gjIIICXzv2lEeAZfxk3782a5s6QmoFNrl4nqTuLOMBJOB/gRGPRgvNseFWnj35
         m3G2QQaWaxtkh8LWTjppPcv2Eid0ic+noDdG9gM7QHQoMiMFSCxuLgr14t0UFNaNr/
         t8t+OzfMHmIMQ==
Date:   Wed, 18 Oct 2023 21:19:19 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode
Message-ID: <ZTAvvolND_9zrcRL@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-3-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="deou/or5OCby0V1W"
Content-Disposition: inline
In-Reply-To: <20231018172104.1196993-3-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--deou/or5OCby0V1W
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Oct 2023 21:19:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode

Hi Adhemerval,

On Wed, Oct 18, 2023 at 02:21:01PM -0300, Adhemerval Zanella wrote:
> Different than specified, glibc 2.2.5 does not ignore LD_PROFILE in

The text being removed talks about glibc _before_ 2.2.5, that is,
every version until 2.2.4.  That doesn't match the commit message.
Please check.

Thanks,
Alex

> secure-execution mode.  Instead, it uses the default LD_PROFILE_OUTPUT
> (/var/profile) folder.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---
>  man8/ld.so.8 | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 5b5c22825..74286d583 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -664,7 +664,7 @@ Profiling output is appended to the file whose name i=
s:
>  .IP
>  Since glibc 2.2.5,
>  .B LD_PROFILE
> -is ignored in secure-execution mode.
> +uses a different default path in secure-execution mode.
>  .TP
>  .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
>  Directory where
> @@ -672,16 +672,13 @@ Directory where
>  output should be written.
>  If this variable is not defined, or is defined as an empty string,
>  then the default is
> -.IR /var/tmp .
> +.IR /var/tmp
> +or
> +.IR /var/profile
> +in secure-execution mode.
>  .IP
>  .B LD_PROFILE_OUTPUT
> -is ignored in secure-execution mode; instead
> -.I /var/profile
> -is always used.
> -(This detail is relevant only before glibc 2.2.5,
> -since in later glibc versions,
> -.B LD_PROFILE
> -is also ignored in secure-execution mode.)
> +is ignored in secure-execution mode.
>  .TP
>  .BR LD_SHOW_AUXV " (since glibc 2.1)"
>  If this environment variable is defined (with any value),
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--deou/or5OCby0V1W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUwL7cACgkQnowa+77/
2zKL+Q/8DD1JsALU+kKAwRAKkDnUnvQMJWOOe2CYC/XxczMQ0jPd5KLoSO1HZ0uK
zwCIINYW7J+y6vLG/2TTG0NAysXFVPtI/Dr2+tTrUSYBN6LJkgmYzYPUFun5RiUW
p8TrlregrlFc/TZdpMJNf8/BoHQ5TPv3Ww9ubeMMlTpbtaIdqA6R46JoF2dua008
yhYg+EOZ4XtPzU2InpCtMpKQjOzP4mNhwP9nQAeQy+oV+SHxq73AasWkFSGZPb1Z
u2JXNh9RFwGV/bG7EFKrwpQt0xy963yu3OhMCQeumQGDZ4KTuzfDwn2VnG3S07Dr
6tBynkm5Yp3aC1a1DoEM1Z80M/udZw2naDdVgRki9nUpBCYAeM84LLLq+ubMwg+y
jhCWOlNInqsG3R3E3ugSpDNeNdfG+OXerhjmZUX8lAN4nHzUaxGD4MbQejDqmkoC
NwVifbNri6jAkVW5koBTzZ5cuiJwxvS0kqhlGYt8ivOeEWaGdAjF4U4g6g53lZR5
H2RYmQs7p8uLK0rGvoSmbiGJ3G8BF15teGgLPBAzbE7PIL5Sr4xj58i1LDqLH6cv
nXTFDbboiEk8nNuN3q09Ux/bTR8/hxS1zkjlkqcg7LizRez0cVOLf5cbt4HKONHL
b2T8ohX4/qPguD11a7wnKMGEvv2rxOPE8VYEYDLlKYwy1+HabeY=
=BU8u
-----END PGP SIGNATURE-----

--deou/or5OCby0V1W--
