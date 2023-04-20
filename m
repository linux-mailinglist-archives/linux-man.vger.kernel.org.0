Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB22F6E96E7
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjDTOUU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:20:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230459AbjDTOUR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:20:17 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0F34658B
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:19:50 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id iw7-20020a05600c54c700b003f16fce55b5so1236770wmb.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682000387; x=1684592387;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zglj69uvyFqwE05VuTNtVEWK2BWzlggauQswYy279nA=;
        b=GCHBF9HDNxwjcGuRJb0+zYVo1QYXZytqnhy4zDL0ZM1H646eCxsjQKBb9mXsHsUjZj
         SLt5v3AEmV5Zn0Plg5vlNADTH1sxyelhMSymKXvMNf0kki8gxn6xF2Vf7u9XtLLj56OI
         eNf6HRYRUSr29XDAF1fWB9t6AhvXmXGARMn75W3UDmpqjBzj4GIe+QtAfGWpiIBvFsBQ
         rDpK4yOxhy7ly0Q5Ii+6SVo056s0HNPXxTsoKdE9hX0t7zl12+K3+CSGLDvkfZ5gBn+e
         qelCp1JS1Jsw7+uwU3iXzSTMc3mUNf5uhlCW1dnm8KaN6OObJilbCfjbTTh6J33BaYXI
         tvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682000387; x=1684592387;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zglj69uvyFqwE05VuTNtVEWK2BWzlggauQswYy279nA=;
        b=QqJ3UcAKQPd21rb9DYFEYrg7ZveY0w1l3OEuTqNKYCON82D9rxyM8fPt/JT6gVfUwH
         M6L/NsCqiRQ96wOSHFntkfgpEuNxFp/3yyPaOCmU2RjPmg6sKcw9/WkHHEM/Besoyxvu
         R1P7aL0or2k9kTGwDLsdixgzfEt4SCMj0Bw3qpznAaevDERnZKuost3g67tAKDCdoRC+
         wI5vivM9nJwbI+JkhrYToWiPHz4bt44HrMPKYaJULVGMAuc9lh8BU7oH7aQiiXa/hNQl
         9AcKW+aVCeGqtmQuhAt3v9LH4LSNSVnjyq0dpPw6x23CfMm3fYQIovHcagwvX5i1dk/D
         B5vg==
X-Gm-Message-State: AAQBX9elEyQW8lcz4Fn37N1+bVvQbbLD82R6UogybO8NHoEkMr2WVIXF
        yYdH6zDBcQBfNERwlD+3UDdLAC4euIg=
X-Google-Smtp-Source: AKy350b/9sTMtT+fYRd1BtWv4oDnW92qMYUsZDHSNcxq91ulaTVzA/aaD0MgEsiDs4yku22DMq0EFQ==
X-Received: by 2002:a1c:c918:0:b0:3f1:7264:7dd with SMTP id f24-20020a1cc918000000b003f1726407ddmr1652730wmb.5.1682000387202;
        Thu, 20 Apr 2023 07:19:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f17-20020a5d50d1000000b002e5f6f8fc4fsm2041672wrt.100.2023.04.20.07.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:19:46 -0700 (PDT)
Message-ID: <9059493a-5dbc-23bd-be51-00e04697955a@gmail.com>
Date:   Thu, 20 Apr 2023 16:19:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
 <qzjivps3swm2epxrojx2kmxxb3x3bjcd2wipeudqtvkfjzjiiz@bdz4gc2r2gef>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <qzjivps3swm2epxrojx2kmxxb3x3bjcd2wipeudqtvkfjzjiiz@bdz4gc2r2gef>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5EcW0g3S9v0P0ED0y8j6jlaR"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5EcW0g3S9v0P0ED0y8j6jlaR
Content-Type: multipart/mixed; boundary="------------22VNlQrZnoq1zss9eDAnvixO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9059493a-5dbc-23bd-be51-00e04697955a@gmail.com>
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
 <qzjivps3swm2epxrojx2kmxxb3x3bjcd2wipeudqtvkfjzjiiz@bdz4gc2r2gef>
In-Reply-To: <qzjivps3swm2epxrojx2kmxxb3x3bjcd2wipeudqtvkfjzjiiz@bdz4gc2r2gef>

--------------22VNlQrZnoq1zss9eDAnvixO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 16:13, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Thu, Apr 20, 2023 at 03:03:24PM +0200, Alejandro Colomar wrote:
>>>> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
>>>> index 523347de2..40b05cb0e 100644
>>>> --- a/man2/adjtimex.2
>>>> +++ b/man2/adjtimex.2
>>>> @@ -90,7 +90,7 @@ the constants used for
>> BTW, another thing you might find useful is this:
>>
>> $ cat ~/.config/git/attributes=20
>> *.[1-8]* diff=3Dman
>>
>> And then in your .gitconfig:
>>
>> [diff "man"]
>> 	xfuncname =3D "^\\.S[SH] .*$"
> That's great tech, thanks.
>=20
>> You may want to use a regex that also works for mdoc(7).
> mdoc uses .Sh and .Ss, so:
> 	xfuncname =3D "^\\.S[SHsh] .*"

Thanks!  I improved my config file :-) [1]

Best,
Alex

[1]:  <http://www.alejandro-colomar.es/src/alx/alx/config.git/commit/?id=3D=
4e772e3e3fe0785d773cf702b115dfc3d20d90d5>

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------22VNlQrZnoq1zss9eDAnvixO--

--------------5EcW0g3S9v0P0ED0y8j6jlaR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBSgEACgkQnowa+77/
2zKDZA/+NsQcgYSvp7jRsK/N5WsW+9GPIXYFEMPqPWboqEyRj5D4XTTvhVWpdnxk
JZH4HEAHgEWsnwdOZR2nm1c1L8BA82oFpxyyg1GaYI95WohIZxvlzZxqivUzeZnM
85nN3EzeH1HWx+jL/QTy8/E2yVMzYueMxX+VNPFYqduAzbSdxnjafU0ekfm29yBL
6E8gjX0w1IHhA0oA8dwcXxFXq+BeM+oL2O42/lagWocMUu5WEqwll+xad/xOJ3M6
4KVkAd2qOugVq8BLNdp7KJ3ZgWZ1Y2yDW03A9q+C0HsWTfXQNk3vKqPxCmZyOoG2
oRirNv4m5FmeXnq6ja2A/Z1J2GBb9ILoHJjEev/MhU4Cvpvpzwhh2yqah1DkQmJu
j5IUJmRN+gyFeWtd/Sf+joCmwZgk60aV0wyC9RYAcFntgoX8H5zHp9gkqP/qV1ro
GKbC58whnD15ZdKK//5VJ9Hn7RQRaLQrE5kqfaArIardYxA+asCwy9EK5wTqPCvP
+D1RBp6cb1vo5hfOROTrK9gGB41HQmPJ16y+iEHNTHAHxQBgMxFs5I8wPdUwGhfi
w9jIhd0Y0JsLIm8XjwWKcBjlWzf7doJb6PbjQu6PesfupN5jQCtnPZtr64fPAOID
HidMGRcFnRyqMLQsWCYShgrgklkg5BdVxBD7IdPCLM/hBOlkKXw=
=uYgk
-----END PGP SIGNATURE-----

--------------5EcW0g3S9v0P0ED0y8j6jlaR--
