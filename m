Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8F06EA9D3
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbjDUMAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbjDUL76 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:59:58 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A47A3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:59:57 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-2f6401ce8f8so1024009f8f.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682078396; x=1684670396;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZKOgbajF4ed1ueqINBh8Q9+tFUL6C9gXQvNYNsC7q8=;
        b=MUBxTe858BBAY8KkQ4Tc1h8lzD0v94h4R2BVhf1VkSYK1pgjLI5/9A872/bKa/joDL
         MSptgAhx0JN3LCDPT/9KEQ7Or4qdH3RDRe7cJO+9Ep5uOhomcT6104hz+57jbybBycAH
         nCGvhsyGuR2xBC58gqGHZBHb5Qh63XY5TJrOlYHxGvNz4xmFiDvXFtENsveFNdJNdChT
         qWN9jy1mPBrn1RqGpAI22av7jYILOUHCUx6JT4t/QYVnPjibTLbF3aGbDRdXkfawrFbL
         Iq68FVjxPkj9c/897ZKoxAdOXdPHRoOX56sJGatVIgvVF3HF4FCsb9ivtcBbKb0/d4fq
         m8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682078396; x=1684670396;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yZKOgbajF4ed1ueqINBh8Q9+tFUL6C9gXQvNYNsC7q8=;
        b=DYQy2sgdh5ABVmZ+jYqMyyYQeQaPPx7UmPEx3HX73N7rOKf0aJQ6qv1gouYw19zfVl
         7fsc8exvGrWbBhgKxOW/0/Dg3kBeZBovirLfWtRyI1Wl3CZhGE0AGvnWGu7RhvSVPrQr
         OvDwetbphkEB7v30xYTkZf6i4ut1oUh7If7M0k4ML2/Pzr2Ol/XWdc9Uh8bO7O6aeomT
         XT/ZjM/CzrrFdDGFwNejDLR3WULsReypCJvEorqwhujgmci4083ZizNbkH+Q15x4c5nd
         PCNmh4xYR0UTKXROTfEyFreFCB1IXb/I5E4sjmIHbeHAHODSEdvjwkHf++20WIQOYdWA
         3q4A==
X-Gm-Message-State: AAQBX9dWK7a67nGPXCVMaRNvw8/Wov3kyTAxuBOUk15Y0EMoNwemCXwj
        TEZTJ3kBu9vAgb96lthgnRPzBECEg0k=
X-Google-Smtp-Source: AKy350YP4NuFn494TDoBtnD5MsszzI5Q/XuYvJtrzXFTIgPlHzIlqj89HJwLH60MdkGBCq0HBHGOXg==
X-Received: by 2002:a05:6000:1201:b0:2f2:c46b:1eb5 with SMTP id e1-20020a056000120100b002f2c46b1eb5mr3748183wrx.59.1682078396420;
        Fri, 21 Apr 2023 04:59:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c450e00b003f0a6a1f969sm8099514wmo.46.2023.04.21.04.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:59:56 -0700 (PDT)
Message-ID: <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
Date:   Fri, 21 Apr 2023 13:59:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Content-Language: en-US
To:     Ralph Corderoy <ralph@inputplus.co.uk>, linux-man@vger.kernel.org,
        groff@gnu.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <1d2d0aa8-cb28-2d7f-c48b-7a02f907cb5b@gmail.com>
 <20230421115735.770B9201A5@orac.inputplus.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230421115735.770B9201A5@orac.inputplus.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wX2TbelLgaPvGp0DAr8XSSYj"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wX2TbelLgaPvGp0DAr8XSSYj
Content-Type: multipart/mixed; boundary="------------a2MtyNG50wcfIHzCjTgCEmNW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ralph Corderoy <ralph@inputplus.co.uk>, linux-man@vger.kernel.org,
 groff@gnu.org
Message-ID: <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <1d2d0aa8-cb28-2d7f-c48b-7a02f907cb5b@gmail.com>
 <20230421115735.770B9201A5@orac.inputplus.co.uk>
In-Reply-To: <20230421115735.770B9201A5@orac.inputplus.co.uk>

--------------a2MtyNG50wcfIHzCjTgCEmNW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ralph,

On 4/21/23 13:57, Ralph Corderoy wrote:
> Hi Alejandro,
>=20
>>> (a)  Use .nf/.fi for the function prototypes, and .EX/.EE for the
>>>      types.
>>>
>>> (b)  .EX/.EE for everything, as you did.
>>>
>>> Please have a look at the PDF versions
> ...
>> Which one looks better to you?  I've attached two PDF files
>=20
> The Synopsis should not be in a fixed-width font.

I know and agree most of the time, but when it has structure types with
multi-line comments, you see what happens in the first PDFs I sent
(mis-aligned comments).

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------a2MtyNG50wcfIHzCjTgCEmNW--

--------------wX2TbelLgaPvGp0DAr8XSSYj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCeroACgkQnowa+77/
2zIJVA/8DUIGIDq9j2WRKvIqTHKH275J+TuQRNCLnL0BviFttWgk1ekWFl//crmg
hZ/lcJyFTtD7TrglWAvUH3JiH64+l+QVYh1MCA33aTj/FfKI/C13ReT0276pGP1R
jNqr+QtzMWNRk3AknKS3Y7iR2gPROE8lYixapinoYaVE/RjawugooikVQLuEDvjt
Qk3G6TqzW/7QDqtYWq8Cc/x17X7+OkbKqFuphrnGFBuBME0JG1f3/majaBNm5fYH
BOAIeW19psp8ewUBAaPVJigIgeFHft6gwDUXkVY8gj6018QHdlu6w46MvqzmEbbi
wdiztH44U9jllsLpax/9brI+hsJn6q0ySBcO/gSBvoi9YNWFd9B8IxMv5lQjp2UY
xWkvdz3yycgyDB4nOSvdqPjqI4dOudWBhf7j9EYrdcDtC65C6de9S/zdbv1oSNtQ
m4fQxrVBRY2gBxgnCE4k6jUP7N0qOPsSlJ0svutGqUuszR08YRlW5A3QvL70461+
ndXyTOWuC/JK/ApXIGShnUXOs+lO35qHbhbW4taDFmBdD5Myye20CNzeqbfreoOS
8hD3XYmz5uDFwP1i2TVAHBEGeTUhGSeiq0sFkepqjgQu+ye35qIyTWw9QB2uzdK9
EsYHpfWL45rLUbloWU2grSztSGURry+jyA2uNq7COGh/tZcl0po=
=OEKt
-----END PGP SIGNATURE-----

--------------wX2TbelLgaPvGp0DAr8XSSYj--
