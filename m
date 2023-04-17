Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC87D6E5069
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:50:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbjDQSut (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:50:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjDQSus (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:50:48 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79E48F
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:50:46 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id gw13so14310879wmb.3
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681757445; x=1684349445;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HquLBHE7aZnBFI8SjM2JQI9RxAgibqmw6qMgq+70Yus=;
        b=DXCDivfYnIxyhiWkaiANvtYBpOI9wccVJs6GybGED8uGVR5ajxl7NFM8oixgonOgDz
         yu97xTiY0BDZWCYoH/wMPOchv3kwpm1WLQV9UxwOWIPQptqVc87DAFVnLcF9G6SGyrXZ
         k6Kr0KUu8QaKiQhWv8b3All1XwtstIoyasAiasZvJ3pNmKo2iA8qNq5JV52a0ofNXD7/
         917Jhiv2c24XB2+4JxnyoxJn4ZjwhytCodT+9SxisUU4mX9kfIuVKnJK+E0mit6oSFcS
         5a1i4tsFjeaKaiTt5V6SctYJ2UrCr6mSpHrYr5SL17ybjM0fBnA4PfDX24hl7uBlq61l
         Y8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681757445; x=1684349445;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HquLBHE7aZnBFI8SjM2JQI9RxAgibqmw6qMgq+70Yus=;
        b=c2uvkN+B6Exk0FX5qcwwBtFNJGNVtdskceuxJ8bPEsTh6jhyzz+7p24ihjTJBqNWMw
         AvbRzbRwbePMSKBC0f4D3345tsc0ltYTpNjJcWgwNPrnDy4+vsNjIDz7PLncaWOwMw6A
         ogSWaKU6vzOCPBgheh+o657X7TX3bwNydW2BzZSmvWMOnSSxg+lLOiUOGkWRjKP/KQ+p
         7bZOK33+CdcK7xHI5qtvFUELFN6AsL1UhlrYVHsF79TaflYf8oNB56pCv7ftN1vxwIXP
         6jQu55kHrM6xH2m+7ogBtOBTSqE2jrCkNUfAGdPuoH3kd59f637FfgChF1V13/R7Robp
         Pznw==
X-Gm-Message-State: AAQBX9cOaYX3KqU9Cy/j/lKljW+hmGpNYyWw52AHZzlSWUArpevBYd4P
        tr69+B3/8W5Epros3fvp9lB3YyT7Wko=
X-Google-Smtp-Source: AKy350bsnXORhvLIKPZC3M3aIrcfdtJ12LcyUuQVDxcepC4OBnoF9AIgn1q4miX930wdE2fh9PKEiw==
X-Received: by 2002:a05:600c:6017:b0:3f1:6ebd:d995 with SMTP id az23-20020a05600c601700b003f16ebdd995mr5302711wmb.0.1681757445259;
        Mon, 17 Apr 2023 11:50:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k22-20020a05600c0b5600b003ef64affec7sm12593001wmr.22.2023.04.17.11.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:50:44 -0700 (PDT)
Message-ID: <4b71fa54-8007-eb33-e8fb-c8c3ddaabf15@gmail.com>
Date:   Mon, 17 Apr 2023 20:50:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 0/1] landlock.7: Explain best-effort fallback in
 example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230417172513.5731-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230417172513.5731-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bmLjFkCJ8HLgEgpNMVl7FajO"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bmLjFkCJ8HLgEgpNMVl7FajO
Content-Type: multipart/mixed; boundary="------------hqBlhd00PMmgNBaOjl50VzxB";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <4b71fa54-8007-eb33-e8fb-c8c3ddaabf15@gmail.com>
Subject: Re: [PATCH v7 0/1] landlock.7: Explain best-effort fallback in
 example
References: <20230417172513.5731-1-gnoack3000@gmail.com>
In-Reply-To: <20230417172513.5731-1-gnoack3000@gmail.com>

--------------hqBlhd00PMmgNBaOjl50VzxB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hola!

On 4/17/23 19:25, G=C3=BCnther Noack wrote:
> Hello!
>=20
> Same patch as before, with these changes:
>=20
>  * Use the MIN() macro instead of an explicit "if".
>  * Point out in a comment what the error scenarios are
>    when we can not retrieve the Landlock ABI version.
>=20
> I'm avoiding to spell out the exact error codes,
> as they are already documented in the respective man page
> for the syscall.

Makes sense.

>=20
> =E2=80=93G=C3=BCnther
>=20
>=20
> Previous mail thread:
> v6: https://lore.kernel.org/linux-man/20230414155926.6937-1-gnoack3000@=
gmail.com/
>=20
> G=C3=BCnther Noack (1):
>   landlock.7: Explain the best-effort fallback mechanism in the example=


Patch applied.

BTW, it would be nice to use --range-diff in git-format-patch(1).  :)

Cheers,
Alex

>=20
>  man7/landlock.7 | 73 ++++++++++++++++++++++++++++++++++++++++++++++---=

>  1 file changed, 69 insertions(+), 4 deletions(-)
>=20
>=20
> base-commit: 6263befb32fdc99dd5d02b6afdd5613db9df4c3b

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hqBlhd00PMmgNBaOjl50VzxB--

--------------bmLjFkCJ8HLgEgpNMVl7FajO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9lQMACgkQnowa+77/
2zLTxw/+MsHznJTXCgebTW57nmhOprrWuKF9H3oYumhI2+5Iu42hrXMySOpu0MkN
0Zzn0hE1K2g1cyQpFHUjdI5P60amFwutEJIfEsrNzeWc1OtPZ1/xf1dEyhu369yX
AdFzBn7Vu1E+1//JnI0cIV6E1pTN3tsIx32Xd6Hd5ERbAPsjszQxsFq/YoadtyKX
XV3jq9vL7tGzKhk+dYLK/Qh6QsGENHTvTV9P5NCZAlJvjnvTGuYoVHD4iR7Qxep9
Wo56sE5TBTGlvvPwKgn7xwDUvX+jpAabugobIs7NsKb7nOO6E3oqBWEHFkPHhea0
pzt4GzC0ZtPxfzKcazIvvoePEG96ujXM/B38/lsizp7j+rRVOvbQLQAQBXIk8t1M
/obl+tBaf2p0+dIwi1vsTZBxdtbHUMe2Lu2/aib/Bko+nGWwBCMOwYea5oADLEiQ
4VN8r2kUAc9riVzVAqxS9mbCk/bhrw1pwsCQjWi1xOd4NDdqjWUnSj4K0aspQGXm
sk2bNjmZzTspkov0bwiVJDs3FpfLLarJoAz/zC+symsrVYNX/ujZLJ+RktWakXVy
nrOCMpK6BCGHjQ/uWwZwfzOUyyjtbZRF9HPIkfLLzXbXl4yruDL2b7mgf+zAR8K+
hKLIqigePCWvvBji8OGMd/nSbr4M1nqLBhPOUPKFam5q3D8Ov80=
=APd0
-----END PGP SIGNATURE-----

--------------bmLjFkCJ8HLgEgpNMVl7FajO--
