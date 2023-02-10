Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7FF9691633
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:27:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjBJB1X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:27:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjBJB1W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:27:22 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B075D3D5
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:27:21 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so5253531wma.1
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tx9Ocnheai44KWxtUp2rl+WUfYKuvihHZ7DGzIF9FDI=;
        b=SMOdcW2TrHXEuNyu2bi9KfzL0ulw8sxNZ+y0IcJhrQ6HPC7LCJi7qHTo72yesdtsqE
         nMVg/TcVb2S2dH6WuBWVvbIBN451XGng1170oUPxtaVPUu6a63mTuMSTtkgiUU+MB4o2
         uK7oa6u05YZwGXOZA248K2ojOlqr7szTU9KrG+BEmN8ADT00f8dwZ+tFmW73SKcyem2t
         gmg25eXF7BnoQGZZDjOXEsvV8F9NXg9MBZrv90yHndmcsDc1/DPHacYYAVIN2y7Yv0Bk
         q3JKwSGEKpJhkW6N7A94PHGzmQ+k4Fl8eOUb2hbExXU2P+I8OWq3rvFmh83ypiuuoz05
         vpMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Tx9Ocnheai44KWxtUp2rl+WUfYKuvihHZ7DGzIF9FDI=;
        b=Ps7ztluMenx8AmAp6klFvvdjvLEfD22UiL2hdrO2wiLiD7XXbn5EbL5u4U2JjYVIr0
         0J5Kq5mOGpc4hzfDkNefyuShGyrlcj9ShZTxw006XSN1x2noLSdNsYJMpWfKNHJqVgcJ
         CHVkmtPbRHG49/aE8ioH/DMf58oDI/C98KRJ0B+C1U/w2476lic1pftR1f30fMqTKyut
         PBbN1tMdvAacC5vebzWK2hpTWfY6l3feVZJZcStTSouNEdUrIAp2EPdyaxf4cfPgyllx
         OyB5mLM0byRGzbI3p4bpws3wG1acgBA2sYqMelxixMBcn4eGK3UwDf9WvMzpLWh1c8vk
         H4VA==
X-Gm-Message-State: AO0yUKW28cxwsC+w+0wwF6HYVpPXLBhm3P/T4GxSdXamCLIT884Pwsuo
        NQ/ti5zvdFjDkdZljzQgorH9ao2duu8=
X-Google-Smtp-Source: AK7set9Nqoku8UdxmcE5HpwQtHJkrX8Zc1qkfbDov8z6wAvbUUuBNUvqw/2I6bQVRrUtro6L6DLGsg==
X-Received: by 2002:a05:600c:a291:b0:3e0:1a9:b1e0 with SMTP id hu17-20020a05600ca29100b003e001a9b1e0mr15007835wmb.25.1675992440514;
        Thu, 09 Feb 2023 17:27:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x10-20020adfdd8a000000b002c3f0a78e39sm2378796wrl.9.2023.02.09.17.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:27:19 -0800 (PST)
Message-ID: <6c566059-b886-e4f0-dd7b-1425fafcf5f7@gmail.com>
Date:   Fri, 10 Feb 2023 02:27:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 09/20] signal.2, utf-8.7: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181020.m27pdmwwmnjzy7hp@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181020.m27pdmwwmnjzy7hp@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xL9Sq8vbu4fo0n9lSMRhDh8W"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xL9Sq8vbu4fo0n9lSMRhDh8W
Content-Type: multipart/mixed; boundary="------------DNCWjkZ5YtNupJHr3QW0oNb5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6c566059-b886-e4f0-dd7b-1425fafcf5f7@gmail.com>
Subject: Re: [PATCH 09/20] signal.2, utf-8.7: srcfix
References: <20230209181020.m27pdmwwmnjzy7hp@illithid>
In-Reply-To: <20230209181020.m27pdmwwmnjzy7hp@illithid>

--------------DNCWjkZ5YtNupJHr3QW0oNb5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden!

I applied patches [01, 08] so far.

On 2/9/23 19:10, G. Branden Robinson wrote:
> Use `IP` macro instead of `TP` for paragraph tags with no semantic
> value.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man2/signal.2 |  9 +++------
>  man7/utf-8.7  | 21 +++++++--------------
>  2 files changed, 10 insertions(+), 20 deletions(-)
>=20
> diff --git a/man2/signal.2 b/man2/signal.2
> index b21abc3b8..63b81e50f 100644
> --- a/man2/signal.2
> +++ b/man2/signal.2
> @@ -51,20 +51,17 @@ or the address of a programmer-defined function (a =
"signal handler").
>  If the signal
>  .I signum
>  is delivered to the process, then one of the following happens:
> -.TP 3
> -*
> +.IP * 3

Hmm, how did I miss this one? :/

Please check in man-pages(7) the new subsection about Lists.  You'll need=
 either bullets, or letters, but '*' has been proscribed :)

   Lists
       There are different kinds of lists:

       Tagged paragraphs
              ...

       Ordered lists
              ...

       Positional lists
              ...

       Alternatives list
              Elements are preceded by  a  letter  in  parentheses  (a), =
 (b).
              These represent a set of (normally) exclusive alternatives.=


       Bullet lists
              Elements  are preceded by bullet symbols (\[bu]).  Anything=
 that
              doesn=E2=80=99t fit elsewhere is usually covered by this ty=
pe of list.

       Numbered notes
              ...

       There should always be exactly 2 spaces between the list symbol an=
d the
       elements.  This doesn=E2=80=99t apply to "tagged paragraphs", whic=
h use the de=E2=80=90
       fault indentation rules.


Cheers,

Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------DNCWjkZ5YtNupJHr3QW0oNb5--

--------------xL9Sq8vbu4fo0n9lSMRhDh8W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPlnW8ACgkQnowa+77/
2zIEMg//SQnAXU0lTneILz2CnEJHGoDiFvT/CaKWVH7sDV828mMxqOEWNKRbGPT7
bAkx+RyPYSBbwrohKuoA7l45zfwmzg0wR2qkegqrY0P4Jui+LWk2c2CNPcJf1l0J
VBhABEWFt03A4Gt81VlWiNEyOOhtNT8hlrIKgU1QDznjn3z+WQQTCt8FLWtP+FZJ
ADnui642NfNAGOrWGyoyNua0+xiJY2eo1//5UONaBTE+E/K2pduEoNGEQQrQOSOd
wy/r/QQAIFfkzXgOWun8j0RXo84OS9trrv6OgpE3jisgPa/qhz1WWo4cSVxYcCRV
3HHmTY/N4gTrZFusFJbG4ALDUMHgQKFTrdR4/E7hpj79kVivP98MneHXv+zSGP8r
c9G/LYU0kfh/ZUAi2HROWihfUsF6t6TXsXWzCjb5zqOHFxrJIW55Tb3zEu/GBYdA
nlTaPZMy++hkfgj/Dw7Skx8nMBEdcOLfNzDRbKuNrcZPbxqMhXinkzLJdQoWNeXC
aLKdWGie4kqjnsZ+Rz3awPniDQqeDjAMQvOe7Bn4/m+2IHA5XH1mbzNdMi9rgQCU
V4029Z5/dKuVJ/z3uMvueP3eCpw4Zb7aWtQQIA8fy/edpdTRgdjgYCG4gHACIl90
UT6Uei0Hmf0tWA8gKnlTJZJ6UuFD3OZ2eIykb10nES5Ybo9HAiI=
=R+pl
-----END PGP SIGNATURE-----

--------------xL9Sq8vbu4fo0n9lSMRhDh8W--
