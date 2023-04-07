Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8CD6DB75A
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:47:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230024AbjDGXrL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:47:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbjDGXrJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:47:09 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FEADE19A
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:47:08 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so7947919wmb.3
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680911226; x=1683503226;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cF17mCQo0M1NGSMbWyVihattBEhrBwmZV7pyUqb4TCc=;
        b=jEbNADPVYPqdeWfsW7sx2gTTmzjVnkPBTvVHGgbs1TvD7RwUSN9cejoJzOhoWrCPmq
         NLLXU/s0Xlh45eER2tsn1yzcjmcyBwkD1X4C8otaZCKud+EjnAQ4I7yU9xnDOQYvJW7s
         ylDVwSTPekYT6zAEv/hSaTAhnFyqftICgxTRDKP3dvZuNDeMO44IzAFlGuz7bgQWNHYu
         UFSy+UBxdsBVIcfa+YpJvdmoyz+cFh6FynehJROr6FF7j70mQRM4VOlyyY8YBdR4yDHz
         uKz+UjwxQhYV9LiXAfX87AODbc174wJunnQ4fG0hQ2xRnUlaT/UovMn/I2OeINn6ta6W
         aUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680911226; x=1683503226;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cF17mCQo0M1NGSMbWyVihattBEhrBwmZV7pyUqb4TCc=;
        b=r2DVof/TcY4+HVP/j6GzmsVu4GhoNdKu1tSOzK0TOYNFf238mERdNtLS+ZatO4m0/f
         9Dg4FZziM+1A1pwxP7IEXkb+9F+J+j37xJQsCnZ6g2o5XXXpXcHvGVYuXRPNpx1bitIf
         C8ik2Rp9G3DSqoAb9amb2dgHhMVpBKNm1nIOErlWVUuOI8Yif0u4bSWSGrvSzzcJ9rBp
         d4ldPIL9YVhhUsv2RKhz6zQWC9+m4BPihYnOOG4g/1uwGgzOzwhOi/WPVrk03aenYlu3
         26oq6/WSETLoQaJkScENHHmJXrJdHzZHnFGSCuLAUN+yN9UGVfqOCnyoGjHFUC0gGsCb
         HBJg==
X-Gm-Message-State: AAQBX9fkEZPADLQJ9XcfV5DpBOAwGIMGyDSp8+/iUMb0sAH6mffyWjkk
        SyhvOMgJno/AaVkV504PnEix7lsxDLU=
X-Google-Smtp-Source: AKy350bPJeoICKbbnxAoIsF9pDxnQH6pEGBmetrc5h+nGKpazuvEVZ9ESTsvc7u/stYEkDmGs1dmJQ==
X-Received: by 2002:a1c:6a13:0:b0:3f0:7147:2ecd with SMTP id f19-20020a1c6a13000000b003f071472ecdmr2464869wmc.7.1680911226619;
        Fri, 07 Apr 2023 16:47:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c205300b003ee63fe5203sm6086757wmg.36.2023.04.07.16.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:47:06 -0700 (PDT)
Message-ID: <9a5b4560-3691-1b36-d31a-f54ea83f15e8@gmail.com>
Date:   Sat, 8 Apr 2023 01:46:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
Content-Language: en-US
To:     Linus Heckemann <git@sphalerite.org>, linux-man@vger.kernel.org
References: <20230406084445.1416637-1-git@sphalerite.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230406084445.1416637-1-git@sphalerite.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------C7n0tk7JLBR2FTV08IP2tXRI"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------C7n0tk7JLBR2FTV08IP2tXRI
Content-Type: multipart/mixed; boundary="------------eVJtiTBiLUqQDypfm503eu9r";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Linus Heckemann <git@sphalerite.org>, linux-man@vger.kernel.org
Message-ID: <9a5b4560-3691-1b36-d31a-f54ea83f15e8@gmail.com>
Subject: Re: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
References: <20230406084445.1416637-1-git@sphalerite.org>
In-Reply-To: <20230406084445.1416637-1-git@sphalerite.org>

--------------eVJtiTBiLUqQDypfm503eu9r
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On 4/6/23 10:44, Linus Heckemann wrote:
> ---

With some minor tweaks, patch applied.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
e10078cd496e5471b2fe10773b5ab373a75ceaae>

Thanks,
Alex

>  man7/rtnetlink.7 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
> index 2ce541c37..6061b5fd4 100644
> --- a/man7/rtnetlink.7
> +++ b/man7/rtnetlink.7
> @@ -105,6 +105,7 @@ IFLA_QDISC:asciiz string:Queueing discipline
>  IFLA_STATS:T{
>  see below
>  T}:Interface Statistics
> +IFLA_PERM_ADDRESS:hardware address:hardware address provided by device=
 (since 5.5)
>  .TE
>  .IP
>  The value type for

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------eVJtiTBiLUqQDypfm503eu9r--

--------------C7n0tk7JLBR2FTV08IP2tXRI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwq3IACgkQnowa+77/
2zLH+hAAj6YzUfT6LxXUV/XprXvDLj15+P/s6pJdLHfqm0idp0NwbHJd95/zhRFp
q8sO4P4/ym7gCom0KezP3zSsoTxG4SSpjA8AX3liuqH2Eya2EE6ZV0tD3EjNARMC
7mKSJq5JWwNzpLrYTsXOIBlLt+igptWZk37lvOyB9+cPLxOTX7wn8MKZCZUhqiWG
5eoRSEy3rKnJTYyod1gXG0aQW/iIGZaV6LJPDhTdrK+Nb/pKWFuUhFvXsMq5majb
+fP1QWIeaSsY5myflnO2Jy6MqDYZr0uGg/I316btEk/kray2N/U+kPMuDOKr4PjT
MECDbwRr4aXf9ZOfV/Xo7fey4OEnAXZzb/0au3nSQeakXZPCTZX7fl1qSCdZiCRr
nLEwfz2HqI4IiMoMNXEcAEPHfr0ZPQ6Nalp9/m7NjADZ1Lza1F05Q89dBXibaai/
sGgReX0PV852qJ3nNlU44cWwB7k39wdAWzyFxiZ9sq+sztjdNpH2AYO94r+c6AwQ
+bwR7WsxUIskDvUJMpUPqxTSlTk0m/mD6+HgrOs0iU/5CmOro/3HgIY1VvQcG53g
Abb4ivvm+JbyHDuapayFLlEth0XT14NtilnZEhGg6oG+aWhhjmDyPWrMTP82sCfF
QC5SoPwSEqK9K0ynV5elz/qyaSduXY/rY8A5DuDqIosgaL7qi9A=
=aANN
-----END PGP SIGNATURE-----

--------------C7n0tk7JLBR2FTV08IP2tXRI--
