Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29FE57CE7A8
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 21:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjJRTZ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 15:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjJRTZ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 15:25:28 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 041B7109
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 12:25:27 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 050ECC433C8;
        Wed, 18 Oct 2023 19:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697657126;
        bh=LyVyXeGDxntUUX7AxzM3VyyphIc7wVRtlA50NycTMT0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EZTtBP35bTcxWSxUlQZHYq+hAJX1VM7jSM8H8SpDOf5YnnEwD+9qfmU6nZsPGmHr/
         pIwquWUFfC9KeTg6n+x8j0Eu6UG+rVNLYSwe28nzyfCRlGGoqhMUsLaBQ61VpjFDib
         ZW1rOxYDkD6pQnqpWSDyA271boRXaURb5zme4aCvQLYuSxQtI/ClaI/NAkeERoxjvO
         /xT0LG0Kf2Nd1aGYPkDLdUOgd89OLLsVcMd2IjNTQKZlqRE+0o/QjuWYrC2EQgaqgK
         0G6092q8TERuss6uCm/P4qGy2FS1zBJmdIEeIHLxrsM4qUzMs6b22kVHnKDap/p9hy
         1E0eBCBzYGy9Q==
Date:   Wed, 18 Oct 2023 21:25:23 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 3/5] ld.so.8: Add add filtered out environment variable
 in secure-execution mode
Message-ID: <ZTAxI9whqHqn3Nhj@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-4-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="HV0G9u3uLgLVSfTi"
Content-Disposition: inline
In-Reply-To: <20231018172104.1196993-4-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--HV0G9u3uLgLVSfTi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Oct 2023 21:25:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/5] ld.so.8: Add add filtered out environment variable
 in secure-execution mode

Hi Adhemerval,

On Wed, Oct 18, 2023 at 02:21:02PM -0300, Adhemerval Zanella wrote:
> They are define by unservars.h file in glibc code [1].

s/define/defined/

>=20
> [1] https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/generi=
c/unsecvars.h;h=3D8278c50a84ffda18e28c178d390f1899d8306e26;hb=3DHEAD
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>

Patch applied.

Thanks,
Alex

> ---
>  man8/ld.so.8 | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 74286d583..a0020be98 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -280,6 +280,17 @@ Other environment variables treated in this way incl=
ude:
>  .BR GETCONF_DIR ,
>  .BR HOSTALIASES ,
>  .BR LOCALDOMAIN ,
> +.BR LD_AUDIT ,
> +.BR LD_DEBUG ,
> +.BR LD_DEBUG_OUTPUT ,
> +.BR LD_DYNAMIC_WEAK ,
> +.BR LD_HWCAP_MASK,
> +.BR LD_LIBRARY_PATH ,
> +.BR LD_ORIGIN_PATH ,
> +.BR LD_PRELOAD ,
> +.BR LD_PROFILE ,
> +.BR LD_SHOW_AUXV ,
> +.BR LOCALDOMAIN ,
>  .BR LOCPATH ,
>  .BR MALLOC_TRACE ,
>  .BR NIS_PATH ,
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--HV0G9u3uLgLVSfTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUwMSMACgkQnowa+77/
2zK+jg/+NhB0omJhBYsQ0hg7rg2OZZhehD8bZEBddW0gCJgEpz6fploJGYFRNsvU
D4q5vR4pqPTNAx/lKgbK9bA+RAYSmxiTO3t/ECsdla25OSTl1S0/BJTrDgr/5mj3
QjUcx7MI9ghT2/mt9SkQzN+fGWHry+URUajdcJ+54GrsV1NAIP0kPm2KD+E6JSwS
eFOubU9eNUpTBFTVXu40axKNrrr8M6iB3ABi2Fq5ntcbqxtK6+1Cs1Xnop5upgKX
GKZDtAyaAtRLXGTdiWDPGZsG2050pPsNdiqKsaBt+WqdiXfwQMVqyLiRtHiGt1uG
iH/FK1rMLCicH+yKmVVIU4eeX7ZcFV+OGgCFla4Hjykk0pJEPt7PLmJXnSgwQpYX
hQtmb3MnZROVJDXs2PeoWe/aqjNSFR1jjO0lzaQ594Kpk5exJlKydM9gZIdkueyy
S3uNhluaG1YH5QKo6YhEwiuD036tl2ybn7tDYE7tMbvpGrAnLS/9Vuf9sBudoSXf
spH2k/SEqndSibdHZzp8Qs6AttYlPnbcgH8bcNDeb+x1K3MNLD7CbEtGVJSITtHR
UxJtdKzWxZ4tO1h99DRoFvSz3jqZc19ojoD7TfOzusVSe6hRw9J3v0tYBNOATffE
8Z3uNlpW136VNy+QOAf8fbISKbcZJA0Z1iPu1ttyfVYEoH9Ls8g=
=FlZX
-----END PGP SIGNATURE-----

--HV0G9u3uLgLVSfTi--
