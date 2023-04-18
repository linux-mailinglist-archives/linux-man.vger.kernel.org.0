Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4272E6E6DC1
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 22:55:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbjDRUzL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 16:55:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231403AbjDRUzK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 16:55:10 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 338CE2108
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:55:09 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id q5so16135673wmo.4
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681851307; x=1684443307;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9IdntMH6raNig+8RjTTpGTLEv8s7E/C09Qsb2TqgQ3E=;
        b=EzDNhNdMZwiYuslVqHFruJXvUn5b2eR64fhnIg4XApYG/BM7D+p5Iddgg9tqw1wkew
         DYa6yI3BcVs1DaBk/OuqGw3PKQMvBhuq5BCaJKXjdVAUbuhVCIoUdtMapu6PLW2WNrxF
         RMHi6MTSRYEajvaxV4/DVSKnTFncDRFXwcLFixk6jvqFomJ1hnRkiB7Fmrri9+/y1P7Y
         0V4M6c/UEp9Rv31B9pYxbxCwE2DD0mfobD85dUuqq43DaqLRJXQ+k37Uu6qBzcxU20l1
         wc9X97Yb/3yGwehzdxm7p3oR5cGaFB8FiD9M8i6ZaPX72T/McyYAi9smFRovB861cAtD
         6xAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681851307; x=1684443307;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9IdntMH6raNig+8RjTTpGTLEv8s7E/C09Qsb2TqgQ3E=;
        b=QrQmsdcqsodSy2MAIqXMHRfz3LI+hA7EfyOjLc0y1PQ+BTgyjQmkuAsjh4ka6TXMdv
         vDi9hHs5OuKHGQT9PlvfY9odKe6ErVej1ik6dk6UOYZEwMlgSXYxQdbbh39gZIRQo9jb
         MdUh5FBf8W9T5QruDwhm4zfbMri3xhtz1ZY527MDn1E4l4Xhy4Uk5g41gdjHT/DnQJDc
         60bq7h19ZdOtkwOmXu7o+ITiLm47Gh/BNacT+8aDo6lEcCkE8q6GImozOxDp3DxAQHzb
         T+Ajy7Z73fW//E4Ng2Xdh55EgoLpSf+vSIxDgx5Vz65oUuseFwwKhVgLTZqvkNHsFEye
         +lnQ==
X-Gm-Message-State: AAQBX9dbsFN4P1zispTaVsYbEGzBCTraXxa3VwWaXyQysA/KR89UJhmk
        lgqjEw1An8XuGzhZDAyFo9RNunynG4c=
X-Google-Smtp-Source: AKy350b7wtg9ZgWO3d1UpTyaXWRQM7i7C0IREFJvwgsHW6B3z9syJOWvEPGPYIGd0/r9QhMKyMNLeg==
X-Received: by 2002:a7b:c386:0:b0:3f1:72f8:6a9c with SMTP id s6-20020a7bc386000000b003f172f86a9cmr6453267wmj.6.1681851307473;
        Tue, 18 Apr 2023 13:55:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w23-20020a05600c099700b003f17af4c4e0sm87743wmp.9.2023.04.18.13.55.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 13:55:07 -0700 (PDT)
Message-ID: <e750dece-5c14-c6da-004a-7b26829135f8@gmail.com>
Date:   Tue, 18 Apr 2023 22:55:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
 <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
 <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
 <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>
In-Reply-To: <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jfTbgRould1hmzHRwmZvctJx"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jfTbgRould1hmzHRwmZvctJx
Content-Type: multipart/mixed; boundary="------------0o5SfX0WJJr1WeeqbPwnMOID";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org, =?UTF-8?Q?G=c3=bcnther_Noack?=
 <gnoack3000@gmail.com>
Message-ID: <e750dece-5c14-c6da-004a-7b26829135f8@gmail.com>
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
 <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
 <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
 <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>
In-Reply-To: <b2b27819-1af6-2ee4-f6fd-691277fd7d3b@gmail.com>

--------------0o5SfX0WJJr1WeeqbPwnMOID
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/18/23 22:54, Alejandro Colomar wrote:
> Hi Micka=C3=ABl,
>=20
> On 4/18/23 22:50, Micka=C3=ABl Sala=C3=BCn wrote:
>> Indeed, ENOTSUPP is a kernel error type, only EOPNOTSUPP should be use=
d=20
>> to return error to user space. ENOTSUPP is not used by the kernel, it =
is=20
>> only defined by the libc:
>>
>> # ifndef ENOTSUP
>> #  define ENOTSUP		EOPNOTSUPP
>> # endif
>>
>>
>=20
> [...]
>=20
>>
>> ENOTSUP doesn't exist in the kernel source, so it is legitimate that=20
>> Landlock and any other kernel interfaces use EOPNOTSUPP.  ENOTSUP shou=
ld=20
>> then not replace EOPNOTSUPP for Landlock nor any other kernel interfac=
es.
>=20
> That sounds reasonable.  It's a bit confusing that many man pages docum=
ent
> ENOTSUP (user-space).  I'll take this into account for when I see some
> patch that touches one of those ENOTSUPs, and ask why, and maybe remove=

> them all in favor of EOPNOTSUPP.

I forgot to paste this:

$ grep -rl '\bENOTSUP\b' man*
man2/clock_getres.2
man2/clock_nanosleep.2
man2/getxattr.2
man2/listxattr.2
man2/setxattr.2
man2/removexattr.2
man2/timer_create.2
man2/chmod.2
man3/pthread_attr_setinheritsched.3
man3/dirfd.3
man3/pthread_setschedparam.3
man3/pthread_attr_setscope.3
man3/pthread_attr_setschedpolicy.3
man3/pthread_mutexattr_getpshared.3
man3/errno.3
man3/pthread_setschedprio.3
man3/pthread_attr_setschedparam.3
man7/cgroups.7


>=20
> Thanks,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0o5SfX0WJJr1WeeqbPwnMOID--

--------------jfTbgRould1hmzHRwmZvctJx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ/A6oACgkQnowa+77/
2zKwdQ//YSMFX5hRoZ4Uoidc0VVIC5uSFVBYDT+pT+k3A19ZnMcXCMqU94UEQtQd
SmrsIkZN2UN4dis8zF4eL9sVFc2TsyF+Pw7NcfycMcnN3Gj6PoeWqo3f46ewpc4e
6d66MpV+UQq1peyAYv/akZuD7XR7TX0TSimTDGJPjc3p/R/2xAEYfbDFtkJWNNV7
Tum3jxEHZKLwY5240Td39VGoVOQnAbueKBhwhsGqz+/38eGxYJthESjNuKgmiYG6
rLqiyN0lXvHlPo/O1eT888HlmkI6AqPTKKR7ieAsz+9Eufjtp1nH1apRfG4Vn9sl
ECdffkbBWtjK5XKRc29fAde4U+m+I0Kv+dXNq3Wsdi5cvVxkZm+Ph6aPii3vxBH+
MrRFmz217NNf1B9QuwJRQO5JBAAa2eBTOzP8elsYVohXyACJD5XtDKChik5qDJGA
jZlCY9YPPuuL0Ha2E0LhfxlZO5uKPMTv4dU3F0udSTzL4ixFVND/bk/1J8dRai1P
uBESNeg03iSTzuyXHE3MgTd8+2IRHdotCSqaetiASJaEChH8ohaYvP7vBGwi5jL/
MEimsuhm0XI430FtaoLnbtdwnb4MhCQKwJ4Q+XUA79I3AIQGnK1cioz37zVWQYyH
DjzmnRmZY2pODSD70oDLQhLR0vxcqctxNNfB1/H9YfYkoUCvLNs=
=oC4b
-----END PGP SIGNATURE-----

--------------jfTbgRould1hmzHRwmZvctJx--
