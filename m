Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A614679EDD5
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbjIMQAg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:00:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbjIMQAe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:00:34 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4CA792
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:00:30 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03CE8C433C7;
        Wed, 13 Sep 2023 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694620830;
        bh=lQ0ujORtgFHBSq+Q5UR+Li4udVMeoC62f47nfDem0jM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=sH+CjQ0LlTz+0I5qHX+nwrqZVPvgTBpEoxxcHnILUyS1ttAbb7vozmjKHbrOW3QqP
         vrALjpWsaLw07Kplm/pdCHyGaNTUB85CRwaf8yFRsCIgAt37gfiSWAzU2PKCITQiIG
         9JNdit62LXMxUc5eHEJycuaUxSs8S9S8BQmL+Cgn2aUm5nqXuj4zq9VlQi0RbPWNpW
         HxGsdOEaUVFgGU2ilAXMFi/hNEKQSnD0PtsuMJ6SG88eEAU4p14MQC7fDZaBOtGp1O
         9+3n5vu+yNK2efRC7fNk+QBewvsS5e1+4mpDKlgwNqlERw8kUfDYKL6R5PB524nUOS
         CrGjYKCT898jg==
Message-ID: <856ffe52-5fb0-4228-a7d6-e52505ffe47e@kernel.org>
Date:   Wed, 13 Sep 2023 18:00:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] fmod.3: add example section
Content-Language: en-US
To:     Jan Engelhardt <jengelh@inai.de>
Cc:     linux-man@vger.kernel.org
References: <9a0c757e-b5e5-873c-a545-a8ea5e292394@kernel.org>
 <20230904185405.89180-1-jengelh@inai.de>
 <20230904185405.89180-2-jengelh@inai.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230904185405.89180-2-jengelh@inai.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------60fHeea0Zkyys5jv2gxrbU0j"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------60fHeea0Zkyys5jv2gxrbU0j
Content-Type: multipart/mixed; boundary="------------0mlvi8rZTNiTg0cObGz0rzlv";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Message-ID: <856ffe52-5fb0-4228-a7d6-e52505ffe47e@kernel.org>
Subject: Re: [PATCH v2 2/2] fmod.3: add example section
References: <9a0c757e-b5e5-873c-a545-a8ea5e292394@kernel.org>
 <20230904185405.89180-1-jengelh@inai.de>
 <20230904185405.89180-2-jengelh@inai.de>
In-Reply-To: <20230904185405.89180-2-jengelh@inai.de>

--------------0mlvi8rZTNiTg0cObGz0rzlv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jan,

On 2023-09-04 20:53, Jan Engelhardt wrote:
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>

Patch set applied.

Thanks,
Alex

> ---
>  man3/fmod.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man3/fmod.3 b/man3/fmod.3
> index 944bf4167..13236c425 100644
> --- a/man3/fmod.3
> +++ b/man3/fmod.3
> @@ -165,5 +165,11 @@ to
>  .B EDOM
>  when a domain error occurred for an infinite
>  .IR x .
> +.SH EXAMPLES
> +The call "fmod(372, 360)" returns 348.
> +.PP
> +The call "fmod(-372, 360)" returns -12.
> +.PP
> +The call "fmod(-372, -360)" also returns -12.
>  .SH SEE ALSO
>  .BR remainder (3)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0mlvi8rZTNiTg0cObGz0rzlv--

--------------60fHeea0Zkyys5jv2gxrbU0j
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB3JUACgkQnowa+77/
2zKViQ/+PqVYuo01IyFu95wAR2A36XwNCkTznaAeoB2XEScOL/mBPi7zsxNcJBQl
V3Q9mMxjJTXoTjvhKGtHg2QAK6KLy7sP6H+NN66c17OoxaaCwaux5ipHWGFpEQsm
TKh0y9pxrn7SKaQnTEzzIi5n9FsU6sCU6aueaDe5Loq1m05vhvU9cnh+aa4H9BEa
r4sOwrsm5dUjqhEIOHVPTj7Px6LI4sYELMogVS87cyQw1PSQk+sWHnm/LXAtvrc8
goF0DWXXNx0N35ut42uLkbPFXQR6VMxZn0rK+51rXI7bcF6qCreQI38dVsslmeDP
wT6FgfEiEgurKPNxogps1BYS272b876iu2WeGT8hoXPIX9QshukasxV6HjDUVY7J
QZYtTCH4zEgwZ6n38v/kXnPdqNbnIvnfeEvu3WZJ+RWKSpMlAUO8YF31yqY7rZ3w
6GUs7jlJfafyB/uqSXOkUsrbytz7xkobWSY3QkXBY11BcFSQNwxQwnwmuu/WNZpx
W8bN/200TZOq0auzqRf+8nJJ5LFu0aPHOLiOxaIzHOFWfA3K2rZoRuCZI4iJmUUl
/SPKakAYuzPjMu5oxPsVsA2yavuYJcf+pJ2la7EUgn/3VxEpUFWItdhFWK1sVm0A
0MN+5BdbpJH2dd0oEbg4k1UCNMgK744rgSxSiRZAKmLOLpesCss=
=QLqQ
-----END PGP SIGNATURE-----

--------------60fHeea0Zkyys5jv2gxrbU0j--
