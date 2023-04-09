Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3406DC013
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 15:36:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjDINgV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 09:36:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjDINgS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 09:36:18 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0974489
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 06:36:16 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so2808980wmq.2
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 06:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681047374; x=1683639374;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FMczBv9DSd5gXpCTOyiEnR17GzCtnnh63Dow2u5KanU=;
        b=U1rtBXuV2KtFba4jD7Wy5lJSovzODa18cJR+S57v8bOaQ1QDZ+64wZLYn6Irjs9fe0
         Y0Gb1E8uc9Er9c46uWF1DNODDOf4b7MbOqWpBvnAIFIdA0YvcGKGJEFB/nb+asc1VVDr
         1rTeQAfh4+7WhWbwfcheLoJ9aKgFLMUBrGL92Zw2ZSi5Pcrfmg3ZHJRKxEWFJXfnRZzR
         02Ecun3EddOmN827wzjH8wbwLCnpvytSbzotjwYB+NFX/Uwv493DXEqVLtVxeyEjc64n
         wbygoSJgB3hw/EtSyKd1shOxTV5PuR9NRGVovc0IaaK+V73pQryD8gBwOh/IkLE6w0hT
         I1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681047374; x=1683639374;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FMczBv9DSd5gXpCTOyiEnR17GzCtnnh63Dow2u5KanU=;
        b=L1+c+Y9wBi9H8GWFOEVLcPvGmIR2VY9sOs9BoHnPum/0/MeLS5wJjc416d4vMxPME+
         zuC0CXsF5Q1somCF5Lau8oJs25Y2OK2ObDOtW2jUvsI3/8fAqJ9MVuwHePiWNoKOF1St
         lCWp+wlWBHvGTA1gqC2AQSncYmrxMWuLI2RuqxExvFfzTKWx3nKPzYq4n9RTQAYp5HGT
         8/D2gMO9i3jNmQkKY/jPS0gYvWtrAcQxX0KBgPPalsGSg52RrYRxRmJX0yUrAph9/hcZ
         FJhWSHmfelS7qKMv/XiPu1bVk8FVhTmwqNhWzEVOAhFvOL8yhJ+4yBdr9KYo2RbM6VEX
         NJ2g==
X-Gm-Message-State: AAQBX9c3CfJWjeIZzL8oePqIDeBugRefSGVFRQbr765k1leBlb7wPXnj
        qWM4DnS7+Z4HxI+YWAALUbo=
X-Google-Smtp-Source: AKy350a/FlrAttDbkXtMS1YAd3T2OzhzFMvU13mwPEvA8pvAjIvOELPMqESo4QYPlHg1mTRM2aAnwg==
X-Received: by 2002:a7b:c858:0:b0:3ed:514d:e07f with SMTP id c24-20020a7bc858000000b003ed514de07fmr3070188wml.3.1681047374537;
        Sun, 09 Apr 2023 06:36:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 22-20020a05600c021600b003dc522dd25esm10667090wmi.30.2023.04.09.06.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 06:36:14 -0700 (PDT)
Message-ID: <bddac44c-4495-4323-4051-e8ec083b62af@gmail.com>
Date:   Sun, 9 Apr 2023 15:36:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Content-Language: en-US
To:     Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>
References: <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
 <ZDKvl/7YgzpZ8Bix@riva.ucam.org>
Cc:     Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Dirk Gouders <dirk@gouders.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDKvl/7YgzpZ8Bix@riva.ucam.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ah3MPekE4sqrVyaXpOaY2paP"
X-Spam-Status: No, score=-3.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Ah3MPekE4sqrVyaXpOaY2paP
Content-Type: multipart/mixed; boundary="------------lCCRyK7M6trUiLktAXlLG20R";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>
Cc: Alexis <flexibeast@gmail.com>, groff@gnu.org,
 linux-man <linux-man@vger.kernel.org>, Ingo Schwarze <schwarze@usta.de>,
 Ralph Corderoy <ralph@inputplus.co.uk>, Dirk Gouders <dirk@gouders.net>
Message-ID: <bddac44c-4495-4323-4051-e8ec083b62af@gmail.com>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
References: <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
 <ZDKvl/7YgzpZ8Bix@riva.ucam.org>
In-Reply-To: <ZDKvl/7YgzpZ8Bix@riva.ucam.org>

--------------lCCRyK7M6trUiLktAXlLG20R
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/9/23 14:29, Colin Watson wrote:
> On Sun, Apr 09, 2023 at 02:05:08PM +0200, Alejandro Colomar wrote:
>> Important note: Sam, are you sure you want your pages compressed
>> with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
>> find a word in the pages?  I suggest that at least you try to
>> reproduce these tests in your machine, and see if it's just me or
>> man-db's man(1) is pretty bad at non-gz pages.
>=20
> man-db is significantly slower with bzip2 than gzip these days, because=

> much of the performance work I did in 2.10.0 only applies to gzip:
> there's in-process support for decompressing gzip, but we use
> subprocesses for bzip2.  IMO the relatively small difference in
> compressed size doesn't justify the effort of building in-process
> support for multiple compression algorithms.

Agree.

>  I recommend that
> distributions just use gzip;

I don't agree here.  gzip vs man source is 5M vs 9M.  However, a
simple pipeline searching for a word in gzip pages takes ~114x the
time it takes to perform the same search on man(7) source.  I don't
think that small benefit in size doesn't justify the slowness.

Of course, this is only about theoretical maximum performance.
Current man(1) has other issues so it doesn't benefit from this
performance advantage.


> but if distributions _really_ want to use
> something else for whatever reason, then perhaps they should contribute=

> code to man-db to ensure similar performance to gzip.  I'm happy to giv=
e
> pointers if there's a sufficiently compelling reason to make it worth
> the effort.
>=20
>> -  man-db's man(1) is slower with plain man(7) source than with .gz
>>    pages for some misterious reason.
>=20
> Maybe CPU is sufficiently cheaper than I/O that the fact of reading les=
s
> data from disk dominates.

My CPU is powerful, but so is my SSD.  I wouldn't expect decompressing
to be faster than I/O.  I have a Samsung 960 PRO, which is quite fast[1].=


$ lscpu
[...]
  Model name:            Intel(R) Core(TM) i7-5775C CPU @ 3.30GHz
    CPU family:          6
    Model:               71
    Thread(s) per core:  1
    Core(s) per socket:  4
    Socket(s):           1
    Stepping:            1
    CPU(s) scaling MHz:  44%
    CPU max MHz:         3700.0000
    CPU min MHz:         800.0000
[...]
Caches (sum of all):    =20
  L1d:                   128 KiB (4 instances)
  L1i:                   128 KiB (4 instances)
  L2:                    1 MiB (4 instances)
  L3:                    6 MiB (1 instance)
  L4:                    128 MiB (1 instance)
[...]

$ lspci | grep -i samsung
01:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe S=
SD Controller SM961/PM961/SM963

$ lsblk -o NAME,FSTYPE,MOUNTPOINT,SIZE,MODEL
NAME                                FSTYPE   MOUNTPOINT              SIZE=
 MODEL
[...]
nvme0n1                                                            953.9G=
 Samsung SSD 960 PRO
=E2=94=9C=E2=94=80nvme0n1p1                         vfat     /boot/efi   =
           1023M=20
=E2=94=9C=E2=94=80nvme0n1p2                         ext4     /boot       =
              4G=20
=E2=94=94=E2=94=80nvme0n1p3                         crypto_L             =
            948G=20
  =E2=94=94=E2=94=80nvme0n1p3_crypt                 ext4     /           =
            948G


Also, a manual loop should have similar problems, but it doesn't have
them; if I loop manually over the files and grep them, it takes 0.01 s,
which is the lowest that /bin/time can measure on my system.


I repeated the tests on a tmpfs just to check.  The times are almost the
same (except that bzip goes down from 10 s to 9 s :).


$ mount | grep /tmp
tmpfs on /tmp type tmpfs (rw,noatime,inode64)
$ sudo rm -r /tmp/man
$ sudo make install-man prefix=3D/tmp/man/gz_ -j LINK_PAGES=3Dsymlink Z=3D=
=2Egz | wc -l
2570
$ sudo make install-man prefix=3D/tmp/man/bz2 -j LINK_PAGES=3Dsymlink Z=3D=
=2Ebz2 | wc -l
2570
$ sudo make install-man prefix=3D/tmp/man/man -j LINK_PAGES=3Dsymlink Z=3D=
 | wc -l
2570
$ du -sh /tmp/man/*
5.3M	/tmp/man/bz2
5.4M	/tmp/man/gz_
9.3M	/tmp/man/man


$ export MANPATH=3D/tmp/man/gz_/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
0.30
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.14


This is quite optimized.  I can't beat man(1) with a shell pipeline
for .gz pages.  :)


$ export MANPATH=3D/tmp/man/bz2/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
9.22
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.22


Sam, really consider not using .bz2 for Gentoo's pages.  :)


$ export MANPATH=3D/tmp/man/man/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
0.52
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT_N=
OFILE | wc -l"
17
0.01


man(1) is ~52x slower than my loop.  Similar results from RAM and NVMe,
so I/O is not the issue here.

>=20
>=20
> (Can I request that any concrete actions that need to be taken based on=

> this thread be split out to separate bug reports or something, please?
> This thread is long and I don't really want to have lots of meandering
> discourse in my inbox going back over the tired old man vs. info debate=

> or whatever, but if there are actual things I need to fix in man-db the=
n
> I'd rather not miss them.)

Sure; do you have a mailing list, or should I send them to you and CC
linux-man@?  I have at least one bug report for you.

Cheers,
Alex

[1]:  <https://www.anandtech.com/show/10754/samsung-960-pro-ssd-review>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------lCCRyK7M6trUiLktAXlLG20R--

--------------Ah3MPekE4sqrVyaXpOaY2paP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQyv0UACgkQnowa+77/
2zJR7w/+Pv57vnR+dmol+js7LZGpf6Jb9j6QbrXB0Zm7ICUyYNTgfedxLfOyPiOT
WridQKTO5IvKeM9AjYcV51STEbYaefODDDnhwCe36wKj71gzSg4rYDzn5ow5lJAK
lh5cNp/zmsbpW6z21vsl/2yO4pjvYdYbFODAXVJs18NmmwQ7nfL+JsBBDogu5b/9
pk4OcnSkbFYyDqAVaYiVsBIAZ+ZO/VyLIBQR8NgNyrdngIC1c0cdYRw3TbWTd8c1
cvPoPXJqNI8sAkKDfeYgzTR3azhAvvEEPtlmuxwoeeoV7UEpWL/K8oHXHxEQH6Dk
TCFLgHm6RRLu6S7frV5LgSsgD0iT80C2xSAB8tsxQ32rid50jbMgVkAf9oRTOUcv
b9OMqBiTvRz+6p9DAZW9MfOH1I82EW+KvMmSvi3pSiCkjXMHZ1ZzR7zfxq/W+f+/
HOkbEJKMGUUDT7C0UQCReAGRVyLwwv2k8ElJPzX8UZHY4yLjn524PIgqoRzlZ8UB
Zyo8nLMktFgfcMks3sq5J34g6XOalD4wJ7IwjLqFbdYvhbDIBaEhN1debTKcxdxK
bQVdKXdk2KGXhdvDXEx1p7y+NbOHfjLiBywYYNw45NZzwtONQBEgb02l/wni5lWE
Q4ssMbP6dW8S8HMFmm7Z3+fx+km1MBnCIlKBshv92OorgB+co5g=
=uxal
-----END PGP SIGNATURE-----

--------------Ah3MPekE4sqrVyaXpOaY2paP--
