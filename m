Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED7AD68F98C
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231971AbjBHVOH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:14:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230525AbjBHVNy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:13:54 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFCC30E9C
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:13:40 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o36so97692wms.1
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LeZ2p1EYJKheBpm+knndqDb9g0LZ6A/KV3qvmA2Yv4s=;
        b=b8q6fVQQuXZdmPk8TwRj/qXcp2l9U6dGkdBOzqAosIKY35VOmr+avwOCltOH9T1ovZ
         l5rxBfmdVY7IG/9HF3hnvEejzZ20Qx32LgER92psWlsnHrYOWHSN+b20gMIluC3g2Xu+
         A4vAmQh9aOixYwV1Hmw+i7f0+vPJP7iQe4RCxV2fjqkcgSW0fbst59R6mmCpzmo5EX+r
         Da3XsOYDPabdZfL13J0Q3w+FwoQvzWRW6iu08a4eS3drefWxVf0Wyg3luG49qdXVzcOV
         cmuZyPYLIocWmYgScuiCiUo1lNlW0Om4/et7+LfkMBwikhCRBEPdvQ2nTuVHFb1Fyb95
         Hstg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LeZ2p1EYJKheBpm+knndqDb9g0LZ6A/KV3qvmA2Yv4s=;
        b=jKxHDGwkmJxMDfFJOXln1aUJC1Ha4xkEsmox3ZDPnqzQ/75SGXx8B5Ygw1UZAOJDlR
         npC4/NQ8tXDN3IIliYZwv2iCNpSwpCMUOohQskQb073G9hNjYGl1lgH7yOU4twOLmGwU
         7tYoawiM1UXCkHBXCWuXtywEM3NYLP60Vq0/Z+2WBnjq9iQB/CORVIGT8ZhLRNKkxKTI
         aPzUK1MMgxhmO78Hz+K6gttAaXb71rQDcx22qza8l4AN3zZYAD54/Bqcc2IuPUgCP+ZE
         1EqpBsJQFDIEawjGqpBF4iB94nIWoO39JMdJT51SWmelgSpLjrNr4r95z9yB1IyLcmrB
         Ix9g==
X-Gm-Message-State: AO0yUKUDDoKnedb0fzxYs7khRIa+uQC/Mtie9bptBTBAvgku8BNa+MSX
        NrX+fOyFtRzjWhWnFwQdxFIS+04W8O0=
X-Google-Smtp-Source: AK7set8vJII7hLaEteGvs89XCFqPFF7s+sRnohhm1km6CJU56q48RgeznQWfeMF3eaEN7/GeX3t3uQ==
X-Received: by 2002:a05:600c:2e89:b0:3e1:bfc:d16e with SMTP id p9-20020a05600c2e8900b003e10bfcd16emr4130862wmn.39.1675890818975;
        Wed, 08 Feb 2023 13:13:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c131-20020a1c3589000000b003dc433bb5e1sm2875496wma.9.2023.02.08.13.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:13:38 -0800 (PST)
Message-ID: <9ec77bc3-aeae-672c-1df4-e66c9b92bea4@gmail.com>
Date:   Wed, 8 Feb 2023 22:13:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
 <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
 <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
 <6d8a77e6-013f-e96a-0b6c-39c238a91831@Shaw.ca>
 <1b4cf8b5-12a1-3f3b-339a-31a8f557cea3@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1b4cf8b5-12a1-3f3b-339a-31a8f557cea3@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4HOIONIvy09egEmtMWrvsR5c"
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
--------------4HOIONIvy09egEmtMWrvsR5c
Content-Type: multipart/mixed; boundary="------------m7TkkIg667vKxiXfWCNv8byo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <9ec77bc3-aeae-672c-1df4-e66c9b92bea4@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
 <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
 <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
 <6d8a77e6-013f-e96a-0b6c-39c238a91831@Shaw.ca>
 <1b4cf8b5-12a1-3f3b-339a-31a8f557cea3@Shaw.ca>
In-Reply-To: <1b4cf8b5-12a1-3f3b-339a-31a8f557cea3@Shaw.ca>

--------------m7TkkIg667vKxiXfWCNv8byo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2/8/23 21:58, Brian Inglis wrote:
> Hi Alex,

Hi Brian,

>=20
> I changed send-email to send 1/minute and v2 seems to have succeeded as=
 a series=20
> with a cover letter and Content-Disposition: inline in my copies, so ho=
pefully=20
> you see them as you expect, and no other project I next send patches to=
 will=20
> object to inline. ;^>

--inline works.  I'm more used to --no-attach, but can live with it. :)

Cheers,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------m7TkkIg667vKxiXfWCNv8byo--

--------------4HOIONIvy09egEmtMWrvsR5c
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkEIEACgkQnowa+77/
2zJoNxAAj3PfMMSRb/3RCa+nCQoDbinfkcIpg+6mBjcb12kJHMY/HtTbvizJeULt
bfYq3Y2imjEMLwBXau5LMfaJRmHZGuCnG+6NFxZz6g9soRrgcaoKPodJcrjrtCbX
QVHxIrDjECF9TqKrRfceutJRnqGBb+y8GgvpeL8/k4Ys1aYOc0dR1jhM1dKmF4lx
2wLOosyCQdW8TKWEmWapJfMBzbhaFHFbTLnTOmDPTnJeOyd7J7Loz2eg4/3Kpurp
wAcCoJXfX1Y2INcMHawjDgXWv6oS4ezQ3xtFe5bYM5AbamBu81iPden9WYW8xxlt
YncVh8ZZIKMwTfcaoQqxK07qRLZsvxmKSNT6P/BFQ1mNcTPOqz5T4kaJhmsoOuZ3
5+GRswsJsuvf9+bUNoRzAPJ5MrhrgmAKjNDKkAATovIHqAgEj8m122ru/+KBFALL
NMzVm/SjLI8R1Dv84Ebhb53aSxgxtlawcTAG3u1T4Gd3uJbxGjqtClLso75DG8of
nSjc9DIhUfQm33zO2+wbGoXSmQKVeumMwwobNivvvxDlNJVqPRONJfApXjesrwOH
1wnpbUD4RabXxTtXc+K4uZ1DLeJmYYH8kUSQHiCoaM9SXxcCyzoZEBqEQtNa9Rg9
SDGRK41Ccv4NFQyr5nsXsiduOM1iFmw0u56kQAakyDInbPqzREA=
=r/C1
-----END PGP SIGNATURE-----

--------------4HOIONIvy09egEmtMWrvsR5c--
