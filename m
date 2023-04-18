Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8534F6E6748
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 16:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231384AbjDROhZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 10:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbjDROhY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 10:37:24 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1FC86A63
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:37:22 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f1728c2a57so19633235e9.0
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681828641; x=1684420641;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=soDgPH0arS5AayIBPVM3DxZxHMoEDHGVCfYWrx2ZCig=;
        b=eFSvlmIN/fXT1xlgsMECCdEhhPVLAgD7rycn2Q27MsWyqS9conlIQbegc+wuz0Qnas
         vaDdH6V8ASdOqu30SE9G09ppxIXTLazFu/OH5TWtccoCWTVtjd0iBSJrbs/uz6EC7ZDY
         aZjLLUy1BpjyR4WqDsjL0hiWDOwOcEVyHfD5qzuLJ/G98w+0M3euE6etZ6gCUdA1XkCc
         qgty/DW23Mzu2vihquhA1s0AC5gbaxiHrva5+HydMhxNe/1IkSGCVLUI1voU4AFvE5SS
         BYDJbohkh2fOcSyZmJQhOw53D1WvVUCBXiRt8xwwuBXvWwb4a4P7tUaIiHvPJzuRR6I1
         x1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681828641; x=1684420641;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=soDgPH0arS5AayIBPVM3DxZxHMoEDHGVCfYWrx2ZCig=;
        b=Oo+eD6BZG692q1krYruMzJPCYQCHb+UB0TE3HeUhMDdfjWSG3Zxeq9yIfDPh6Rb30/
         FoAYXOcQVQtMfW38OyFGyLnzO3ugf8AxwT2FGtdrYuv9cOik8NkeDCOlzpEVl+Q3cyEb
         3sAHrQGduFUF5SISA3FepAdDghTzJMweQX/HfPXWJhufMTR7hq65VGLNy82XXV6yd8Ih
         +2v8Rf70FMK5MMP2CrJ6NnHZuC2xHftc4N7PaNjtiGn9tRYbxvRVjM6s+xylNX1UktBU
         1EMEbl5g2WseMGq3LtbX+MJJX59808lVP4tOjyEl0Sr0ZGDjNJOyZ42al0+ntQlZLFtq
         cDAA==
X-Gm-Message-State: AAQBX9cVXMa10+y07wbdqcpPX8tgq5E5y56oz/ofj+jx/b4egun0wKU3
        QqIoWO3nuHHnIjXqiQFcSZk=
X-Google-Smtp-Source: AKy350a551RuZL7gXiuTjKAaF5T6Mn2nyMKLwskeT0Q8TuoWyQ362T0OeEoxz1OGRqYbM1xqaKrVMA==
X-Received: by 2002:adf:d84e:0:b0:2e2:730a:c7dc with SMTP id k14-20020adfd84e000000b002e2730ac7dcmr1886857wrl.25.1681828641348;
        Tue, 18 Apr 2023 07:37:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k14-20020a5d66ce000000b002f103ca90cdsm13329319wrw.101.2023.04.18.07.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 07:37:21 -0700 (PDT)
Message-ID: <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
Date:   Tue, 18 Apr 2023 16:37:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zwKJrGSrQvHkjOIPi34UO0Y5"
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
--------------zwKJrGSrQvHkjOIPi34UO0Y5
Content-Type: multipart/mixed; boundary="------------9zoKx40zOvy7YNkAbpEEkuxi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
In-Reply-To: <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>

--------------9zoKx40zOvy7YNkAbpEEkuxi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Micka=C3=ABl,

On 4/17/23 22:54, Micka=C3=ABl Sala=C3=BCn wrote:
>>>> BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
>>>> equivalent, in POSIX the latter has a connotation that it's about
>=20
> For Linux:
> #define	EOPNOTSUPP	95	/* Operation not supported on transport endpoint =
*/
> #define ENOTSUPP	524	/* Operation is not supported */

$ errno 95
EOPNOTSUPP 95 Operation not supported
$ errno 524
$ echo $?
1


$ grepc -k ENOTSUP /usr/include/
/usr/include/x86_64-linux-gnu/bits/errno.h:30:#  define ENOTSUP		EOPNOTSU=
PP
$ grepc -k ENOTSUPP /usr/include/
$ grepc -k EOPNOTSUPP /usr/include/
/usr/include/asm-generic/errno.h:78:#define	EOPNOTSUPP	95	/* Operation no=
t supported on transport endpoint */


Is ENOTSUPP a kernel thing?  User space we doesn't seem to agree with
that :).  I'm on Debian Sid.


Indeed, it seems a kernel thing:

$ man -Kaw ENOTSUPP
/usr/local/man/man1/checkpatch.1


That page is one I wrote extracting info from checkpatch.rst.  It seems
checkpatch.pl warns about use of ENOTSUPP.


>=20
> EOPNOTSUPP is not only used for network error, but to identify generic =

> unsupported operations, while ENOTSUPP was initially dedicated to NFS=20
> error (but now also slipped to other areas)
>=20
>>>> sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
>>>> instead of EOPNOTSUPP? >>
>>> EOPNOTSUP is also used in Landlock's kernel documentation,
>>> we'd maybe have to update it there as well.
>>> I'll have a look at what is more common.
>>
>> Thanks.  In the man pages I see both often, so maybe we need to fix
>> consistency there too.
>=20
> No, ENOTSUP*P* is not used by Landlock.

But should it?  I mean ENOTSUP, not ENOTSUPP.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------9zoKx40zOvy7YNkAbpEEkuxi--

--------------zwKJrGSrQvHkjOIPi34UO0Y5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ+qxoACgkQnowa+77/
2zIQzw/9HMJYdfMeqsZM9DJvwPK+ybrZQG5UliL35s/2lRwqtnZY4sd/L+Z4C1ip
KhD6uzAtR4fNtpCvyMQ8e+WUCODf0vFsv1XAII6GuJavyShxB+tPETAEvB6jDbep
EnJrv7kTXWS7kif4B+3KGy3TeibnKAy6s9Wf+yxJdqhhIVs1+CIVxOdrf/+IxHh0
NXKVGjQ4rpQoqxvgxkVI6xFdo4NaqabR4ARz7ynpdSJuGsmx8RxKENCc3kGO0Br+
V5rOxDRV1lqdETBGJ0HsnDHDx4wA2wiaWBImdWD7iJkm1ZBPny253jAxjY7eBtVx
NZhJqzpHlUBaYQCbkl4i70A01uPXtKqWfjcjSLAnwh3k61Tds12s9IovkAyKMD+r
2YrbZDsosmdMeW7QuWa89ek1vNjn9+0eqgstoK1w2Cm3ypXi+Wy6fhLt9BiO1FoB
UxDEd9Ma9SB3UKynuEZA1hH3qw2epqk7Rh2Y3g4qRIULj0FsyyUothYVeqbWZjFE
2YopQf3kH2r3LE3Eblub1t8T5R92RmkZ39sxgG9kBxdXd2MZWHcyrgngxZfcs3dy
SV/tANFoOXyXo8dGow0iHGMtXC1+DmTIFmH4QVHl7Cr/c+qDniOkpKlnQpquD+4a
zDS8zfCzYkFzB681NLeX9VHc31qdju0fDP/uWvHL/kGcnpDhsXU=
=St6D
-----END PGP SIGNATURE-----

--------------zwKJrGSrQvHkjOIPi34UO0Y5--
