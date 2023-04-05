Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84BEE6D7288
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 04:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236546AbjDECf1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 22:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235178AbjDECf0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 22:35:26 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E133E69
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 19:35:25 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v1so34708987wrv.1
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 19:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680662124; x=1683254124;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9m8f3SebZkDz07hNyzudI0Bnz5/oJ1iTXwiX2RArtRQ=;
        b=oKP5TEmmajoRopHwnU8RHK021ZSGcEt5SFQ1WL+wXYOQ5j+gQiYHvIgS6q9X4vQ90M
         ZgXAIUM1MiaLlYeOJmJXrMeJZLiCPQKL0Ggqj4nFZfg4bp6xiQCmnvznK9wooe/DC7W0
         +ZS2qBFRvqkJTvN1DbC6mzFA/aofIvZTOHCAaKOR6NalU2iNd8ECcKxz6FI/fYoOzMx4
         EMyyPPgrEJSRfZKw/UmKi5LkGqJ0G5Ol4ICFInlX4GrNfGWIBab/PG7hPMw6c79vu1Lt
         415T4OWZ6JTarTNvk+NFUpT/4/v6tblGMwd0TSwVDcKTJfdmFn6JohLrMjCVqCzElXMy
         TFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680662124; x=1683254124;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9m8f3SebZkDz07hNyzudI0Bnz5/oJ1iTXwiX2RArtRQ=;
        b=b/v2oxXI2kty116rCRtDLCzXx7bAKh8rK6/jyFZTDzi0qhKPUjxuw02eZt8lo0LYUc
         J0hoSLDh26YMs1UdXSYZIIH6FxfPhfcyxMo0hW4iLVGpu74TYFqTaD+VpidCugXhk1S8
         cDQVTMEmGivxaiFqDJjQjVYSHVB9+6ivODl0vnxRSSkKzBYlLpUHQW/1RVE70T4x6BSH
         zsiHYD5wCZDWZ55b71nxN7yYElq83uR/QCxK3RaOGdgm1LRylxEffLS7ipfvoOGl4AcZ
         z97ZcyVEVykRODO+OIB9FLRVSAx0Hy00B1I2vFpewTAcgzFn7IkxnGLrDkvCcL3L9CRw
         MvUw==
X-Gm-Message-State: AAQBX9ezzA47A+3rqFd+RlYeHYI5ry7WU8hTEZZUC6OCKILTrZu1iGAQ
        KCMiuLjwqpSKqGPohaNL5JY=
X-Google-Smtp-Source: AKy350aatBqe546+0JC2Vpu+nqHKI51amZs0tV0LXhhcdMwJtbgl0IHM2QFIplo7vZGqiTZXNj6NsA==
X-Received: by 2002:adf:ffc9:0:b0:2c7:fde:f7e0 with SMTP id x9-20020adfffc9000000b002c70fdef7e0mr2421568wrs.65.1680662123700;
        Tue, 04 Apr 2023 19:35:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 21-20020a05600c025500b003f04646838esm592994wmj.39.2023.04.04.19.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 19:35:23 -0700 (PDT)
Message-ID: <62c2e2dd-fe20-774d-cecb-3c629336e87c@gmail.com>
Date:   Wed, 5 Apr 2023 04:35:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
Content-Language: en-US
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>,
        Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>, Sam James <sam@gentoo.org>
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
 <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pzyNtUEDlNdFDict3k02PTYc"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pzyNtUEDlNdFDict3k02PTYc
Content-Type: multipart/mixed; boundary="------------FMdplsq0Ke9T1qHURce5dXQj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Siddhesh Poyarekar <siddhesh@gotplt.org>,
 Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>,
 DJ Delorie <dj@redhat.com>, Sam James <sam@gentoo.org>
Message-ID: <62c2e2dd-fe20-774d-cecb-3c629336e87c@gmail.com>
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
 <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
In-Reply-To: <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>

--------------FMdplsq0Ke9T1qHURce5dXQj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Siddhesh,

On 4/4/23 13:42, Siddhesh Poyarekar wrote:
> On 2023-04-04 01:52, Mingye Wang wrote:
>> Hi all,
>>
>> In (somewhat) recent discussions about _FORTIFY_SOURCE level 3, a
>> common snag to hit seems to be abuse of malloc_usable_size(). The
>> attached patch is my attempt at making the situation easier to sort
>> through.
>>
>> See siddhesh's comment on GitHub.[0] I wonder if the language needs to=

>> be stronger.
>>    [0]: https://github.com/systemd/systemd/issues/22801#issuecomment-1=
343041481
>=20
> For more context of my statement, please see this discussion:
>=20
> https://sourceware.org/pipermail/libc-alpha/2022-November/143599.html
>=20
> which continued into the next month:
>=20
> https://sourceware.org/pipermail/libc-alpha/2022-December/143667.html

This might be useful to you: I happen to comaintain a code base that
uses malloc_usable_size(3).  I have no idea why it was added, and it
seems to be used in a test, but not in the actual program, which makes
me happy to not have to fix that :).  Maybe it is useful to you to check
that code to see why would some heavily-optimized code base want to use
it.  You may very well find that it was not really used for anything
useful; there's a lot of dead code which I haven't been able to remove
yet due to discrepancies.

Here are all the mentions I see to this API:

$ grep -rn malloc_usable_size
src/test/nxt_malloc_test.c:54:        nxt_malloc_usable_size(p[i], s);
src/nxt_malloc.h:37: * memory than is requested, so malloc_usable_size() =
allows to use all
src/nxt_malloc.h:52: * with small cutback and then to adjust size with ma=
lloc_usable_size().
src/nxt_malloc.h:53: * Glibc malloc_usable_size() is fast operation.
src/nxt_malloc.h:56:#define nxt_malloc_usable_size(p, size)              =
                         \
src/nxt_malloc.h:57:    size =3D malloc_usable_size(p)
src/nxt_malloc.h:77: * FreeBSD 7.0 malloc_usable_size() is fast for alloc=
ations, which
src/nxt_malloc.h:81:#define nxt_malloc_usable_size(p, size)              =
                         \
src/nxt_malloc.h:82:    size =3D malloc_usable_size(p)
src/nxt_malloc.h:101:#define nxt_malloc_usable_size(p, size)             =
                          \
src/nxt_malloc.h:108:#define nxt_malloc_usable_size(p, size)
src/nxt_unix.h:32:#include <malloc.h>                 /* malloc_usable_si=
ze(). */
src/nxt_unix.h:49:#include <malloc_np.h>              /* malloc_usable_si=
ze(). */
auto/malloc:53:# Linux malloc_usable_size().
auto/malloc:55:nxt_feature=3D"Linux malloc_usable_size()"
auto/malloc:66:                      if (malloc_usable_size(p) < 4096)
auto/malloc:75:    # FreeBSD malloc_usable_size().
auto/malloc:77:    nxt_feature=3D"FreeBSD malloc_usable_size()"
auto/malloc:89:                          if (malloc_usable_size(p) < 4096=
)

The only ones that may be interesting to you are the single use (the
commit that added the line says "Initial version.", so it won't help):

<https://github.com/nginx/unit/blob/c54331fa3d9597ba6bc85e7b7242981f00ed2=
5c2/src/test/nxt_malloc_test.c#L54>

and the header where we define a wrapper macro, which contains several
comments about assumptions made about different libc implementations:

<https://github.com/nginx/unit/blob/c54331fa3d9597ba6bc85e7b7242981f00ed2=
5c2/src/nxt_malloc.h#L35>

I hope that tells you something.  It doesn't tell me anything, but I'm
not used to fiddling with allocators.  :)

Cheers,
Alex


>=20
> This amendment that DJ wrote is probably the most precise description o=
f=20
> the current malloc_usage_size situation:
>=20
>    The value returned by malloc_usable_size() may be greater than the
>    requested size of the allocation because of various internal
>    implementation details, none of which the programmer should rely on.=

>    This function is intended to only be used for diagnostics and
>    statistics; writing to the excess memory without first calling
>    realloc() to resize the allocation is not supported.  The returned
>    value is only valid at the time of the call; any other call to a
>    malloc family API may invalidate it.
>=20
> Thanks,
> Sid

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------FMdplsq0Ke9T1qHURce5dXQj--

--------------pzyNtUEDlNdFDict3k02PTYc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQs3mMACgkQnowa+77/
2zLEYRAAmmP6Tsw7PzLKPghVVFe7C/lOrO2xQtZ+0ITveUAgoxb58bSEoxDd5N+N
S7YuTuZtK8019YN7LDp9JGKProuOj3uIUAfolZIg6DacOa/roNwrnGVKda6Gwhwb
XrtaEiAHcBffA3CbcPAZEewxzp7HWxH4+6cUwxwwLhneo2GPB7LoPmO0VjDpKrYM
/LEyC2gvR6/Kgv3oVnTaE3tEC+pS/1HH2l9bbrPUSp1yvqbv7SCWvLBHett69X+R
ZqM7IlqsPOD+ZMzh1ZMOu/Ok8Nb9YQ5GjROroW/ALbBAVSmEJBJuNcByFvi5hOwO
Qe0ReeKu4+WpdMoztGsLwtufpTsvDp8jA94p2H3e5PUA7aZvh+UeBxrNZ4ZwPr1s
mdblaOcEyhgERZBw+1mDmTyj99AfqM2mHA783pDVNV4duOkPULV18agX6Ts2rgcS
PX6SmBobHUERM9LzSEAwL9iN1no7B1NiULfxYWGGOkp8yrDsDotmZyerFHkfF5hq
6iYsdn0pkRNTGPD5fn3Z0graA14I9Is+3TvQZ9pgn7T7IKuqpi4b4CDC+0pfNzvO
1ew8NCefGLHkX8DfARjvy5peY3MdL/QB557umbzcw+dD2hq5IUo4NchmzHM0ysZ+
kfoZTI2J0B7YMUpP32zPA/BP/ltAUWKrqZEPW3o5n3xgHCECKTo=
=SDq3
-----END PGP SIGNATURE-----

--------------pzyNtUEDlNdFDict3k02PTYc--
