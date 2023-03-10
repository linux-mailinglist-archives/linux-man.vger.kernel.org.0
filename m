Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F197D6B342F
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 03:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjCJCWZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 21:22:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjCJCWY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 21:22:24 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6475A13D45
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 18:22:23 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id g3so3730237wri.6
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 18:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678414942;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDF5HpHQ4iIAbE727fHoaSR9E+6JR93XgJWFvpbgI1M=;
        b=UqQGJvogQ2SiKAKCFzWotMUY3iJLAIDGyJXJKKtZvxgmV4yvvddvd2mRpLU/lYsPVy
         MF3XTyAQri8Q02mroGmWEgvBMVZjB8s4pJUMOV/kp5uZTKfvCbONvEzNFyBi/IZQJXa/
         7jj++L5XUK1FILHO8Lgu/G4TX22ikcGBVy9USvDXrR1mxjE4UNj7tqZhrrape+O4Y/4P
         KzsNjSZhto7DV5wTsm9EXzKoiaa8XPGxaBKEFUhw6rqrwM7IoXVomgtHuOwB9IdaPN1K
         Qg78l3kZnAZO2xuNFgMBw3bpApq33zybE01oYepcbXGofAegaR1s+GlArSIAVwK6wAWh
         6Nrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678414942;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BDF5HpHQ4iIAbE727fHoaSR9E+6JR93XgJWFvpbgI1M=;
        b=hfROCgw3a3gx1AW8Olre3Z1FgLhr1OpVlphzSgTN5uW1kdshlF1Z12nOmBcoNuJOf7
         ajvt5sCY26FVS8lmBq3Qml5zIFyqzCQ+X632EF7d/pvTjl1xVl3hy0GmkgIDhmsqd3wn
         cNl2Es6xd/cLzODyMMrFYaolMhmzwAhRCfvcuQhtovk2RLnt2hzBHn19D2385NbqTX01
         FAAhB/vS++S/C4y29f7PqcRiTPAprpQBLpRA+2elUJ5Q8TQnrH4ALCAcCOBUJzhOf7tE
         noZPjIvxxYmvZY7jJ1lFtyf1Mt6MOaGld8eBlAZ0GE0ErkK9Wmtu+ObDeupwNJilMAoy
         kw+w==
X-Gm-Message-State: AO0yUKUohfUu7iD4foMrgEzezfU1EbbFgQPEXaFpjLTp9xLdxIcGljFh
        m1M92A342nYXmiNx9uHdCPCiIA9STQs=
X-Google-Smtp-Source: AK7set/h6x7cjam6zzNRRsOpeE+hNPdR8+f/Cc/v57xjAUaaU0pNyTCgUBDA5Ax3JjpXl2HjnDK3SQ==
X-Received: by 2002:a5d:6284:0:b0:2c8:c667:1bb4 with SMTP id k4-20020a5d6284000000b002c8c6671bb4mr15128153wru.48.1678414941858;
        Thu, 09 Mar 2023 18:22:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p1-20020a056000018100b002c54c9bd71fsm793418wrx.93.2023.03.09.18.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 18:22:21 -0800 (PST)
Message-ID: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
Date:   Fri, 10 Mar 2023 03:22:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8KK7fExDYmRcPGcjVnJZePbR"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8KK7fExDYmRcPGcjVnJZePbR
Content-Type: multipart/mixed; boundary="------------cBZp0vFb2KNMTYPalj07aukE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Message-ID: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
In-Reply-To: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>

--------------cBZp0vFb2KNMTYPalj07aukE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Matt,

On 3/10/23 02:51, Matt Jolly wrote:
> Hi All
>=20
> I hope this email finds you well. I am writing to raise an issue that h=
as been causing inconvenience
> for me (and potentially others). The recent removal of C89 information =
from man pages
> (72b349dd8c209d7375d4d4f76e2315943d654ee9) has put me in a difficult si=
tuation.
> As I continue to work on code that adheres to the C89 style, such as cU=
RL, I am unable to quickly
> determine if a particular function can be used or if it was introduced =
in a later standard like C99.
> This slows down my workflow and hampers my productivity.
>=20
> Therefore, I kindly request that we revert the changes made in the "Man=
y pages: Remove references to C89" patch.
> Furthermore, I urge everyone to recognize the importance of this inform=
ation and ensure it is not removed from man pages in the future.

The main problem was that the existing info about C89 was not consistent.=

Some pages declared APIs being standard since C89, while others didn't.
Incorrect info isn't much better than no info.

I'm curious about cURL's real need for C89.  I see that cURL uses GNU
extensions (-std=3Dgnu89), which actually pulls most of C99[1] (I think
it pulls the entire C library, and most of the core language).

Virtually all (even MS, which has always been the last in this)
systems support C99; why would you consciously avoid it?  Is there
any system that doesn't yet support it?  Which are the C libraries
that you need to support that don't provide C99 functions by default
(or at all)?

I'd like to really understand the need for C89 in 2023.


Cheers,

Alex


>=20
> Thank you for your attention to this matter. Please let me know if you =
have any questions or concerns.
>=20
> Cheers,
>=20
> Matt
>=20
>=20


[1]:

$ cat llabs.c=20
#include <stdlib.h>

int f(void)
{
	return llabs(0);
}


$ cc -Wall -Wextra -std=3Dc89 llabs.c -S
llabs.c: In function =E2=80=98f=E2=80=99:
llabs.c:5:16: warning: implicit declaration of function =E2=80=98llabs=E2=
=80=99; did you mean =E2=80=98labs=E2=80=99? [-Wimplicit-function-declara=
tion]
    5 |         return llabs(0);
      |                ^~~~~
      |                labs


$ cc -Wall -Wextra -std=3Dgnu89 llabs.c -S
$


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------cBZp0vFb2KNMTYPalj07aukE--

--------------8KK7fExDYmRcPGcjVnJZePbR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQKlFQACgkQnowa+77/
2zLxLg/+PGPv/ggfZf2QTmQmvuZ+Y1/5VkUvRFB/IOxJngN76mqMqgF2Ch+F45DW
WAPh4NmUguY8Qcc6i/uwnvC7BRGlpRLqDdI1wU8Y59TC+9uzk4XMlKwCUenfUL77
NB3spgdHgpsVsB2PojhkM1tozfz5ZfegZy0ZKVzjrxreJMb+01OSzppgMk2k7U4C
AWrqkbp1T2LALs/IEqshdJBNOAK2Ph1I+W6QUWxz53U4Hmxrnx56x8faL3rSqsq1
ndQBImTv2SJxcPPRd+VvqQgtxtmZ9UFmKuoxHLpeCK6OrAo6qiI9IeOqCWPuU+nY
Sh1YlWL7bZaeH2JyisX3hKd0UrrGYZnESRPDqGKiLOzpYu8Nm2r7HEXEF/urfLGh
1BpuNVHRevfgFJNIiC5dfGwCklliTYb2heeA41gwimRs2HtVGcCgcdyPFbnrR2ur
wHLfoGP8b0AVkm0UfU/SuRcwwUvd11p7zCnzRou4uSPeuZhdS6CFvHiIA22pAUQL
DmOJEC06h6m5Iw/coaxWZHjsS//Ar1gZiQYO4YzztnYGKOZny009MR7CxTVVgg2q
xHy+aHJrxi7uvHOG5RT3PDOm9UGelxcuQgXVsLePEyGztP14fZTWbBHC7azwfPAH
V5jwycchiC4Aztm3a1JofvzDZRwHJaOxVe0eHQpXyud3LCZ8wBs=
=tNYr
-----END PGP SIGNATURE-----

--------------8KK7fExDYmRcPGcjVnJZePbR--
