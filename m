Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9607DD637
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 19:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjJaSk4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 14:40:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231676AbjJaSk4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 14:40:56 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E67B4
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 11:40:54 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBC33C433C9;
        Tue, 31 Oct 2023 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698777653;
        bh=V+tPJ5+9if9xaWKR2DcAp9VCXEV6dglY1o4dfX78RdY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GpSSm5kW+YDYuqbKxmlvx/0XLACBU1AhWijh+NVsKsoSbDCYkoJJNaaiOOlklWYCB
         7fXq938l7mf/DBmJXMeafqAEtqXHAR5a+dLsiMAt9uj4fiPwVJJjnKz2S57MVmsmpX
         Qbl8UClbkPldW7vUDDaZtLMOcu0dkJ83Ep5R9CsfRIoZUjcgaLqkxI8c7cHr+11FBa
         1GF91NFfp1zF1ok/h6V6Qdu0Ffilr7m3PUeMPPPdBs8dz4k2V1ZtUDoni8ezh2DJNW
         QbFFXVGFHcv8qSv8i3MQF9czamnAkwdHL3PcABuMt/4YwsVXQ3Qs1GUXUqLl5LAB2l
         qV24VKlD5/MfA==
Date:   Tue, 31 Oct 2023 19:40:50 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUFKMkXrsvahfK3k@debian>
References: <4678853.9Mp67QZiUf@nimes>
 <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian>
 <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hBnhJgtZG3OH+Ee1"
Content-Disposition: inline
In-Reply-To: <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hBnhJgtZG3OH+Ee1
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 19:40:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Bruno Haible <bruno@clisp.org>,
	linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo

Hi Elliott,

On Tue, Oct 31, 2023 at 09:19:56AM -0700, enh wrote:
> > I think a consistent use of operation instead of option would improve
> > things.  We just need to make sure it's consistent.
>=20
> i certainly like that idea philosophically --- i actually tried to use
> the minimal number of different words when naming arguments in
> bionic's headers, to minimize the number of words folks who don't
> speak english would need to learn.
>=20
> looking at man7, i note that ioctl() and ptrace() have "request".
> fcntl() has "command". flock() has "operation".

Hmm, interesting.  I think operation would be the most accurate one.
What do you think?  Should we uniformize by using operation in all three?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--hBnhJgtZG3OH+Ee1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVBSjIACgkQnowa+77/
2zLpng/5AUVCUL70rfAdEWLi7zmXpKPmB5LNaL43AEUecNZQ+PWzpOtK48wjXVlG
zQmwIjqNpcYIPN5CelfwaC8HF2upBGO8Uk/Utn8vddUkxHvdYLbaztUKfEmNcRI3
vOjY/WgsCO4FLDwo2SznlsUBtbAk+DitKk52a8mmvQ2jU2aNFJL84POB8l6tT9TG
moeo3XEcxKCEyXedyjBDenbN2aOu5gbp3x+u7izmRugp7IWFsTwzihVp2aDvfDbo
gwHqeWD0goUp89Y+Th95ddbjjNI1xNom8BTuBRKrvWmk/+nkLYbXy0mby4GQFUMI
Vw+VsVrL/xJBSiAigZSQaOwBTmnELTqTChIdX1jq2pG47Rjc6M8i63BFamvXeZsB
rHY84LqWbdvWOMSAjWnIyz8p02q3LxNe9Ah1DO5qnn5P/sYYegd4jw8WpRH5ZR+D
1ATwERuTWCXR4de8vUU7nGlhFNmCfhOvB6P9/68/muk08WXoFiJrRzGh0Z/9gUIz
e+jOZDbs5DpUMFi5zwCP6ScHZ4XICyFqPWeR1dwSeDtUB6rIDqHU8U4FDWK+K7NU
Bav6rwmy202o1lcW71E3Z3LqDg7eqyWmLcf6wcnc97h3kN4T45w9ZGM9K2Yy2stn
+U/5f3hs5USexrDocn0zWbeVMi/9uJryUskYS34Joaq5bWEwBrQ=
=WK5l
-----END PGP SIGNATURE-----

--hBnhJgtZG3OH+Ee1--
