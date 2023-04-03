Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBF6C6D4533
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 15:03:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232118AbjDCND4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Apr 2023 09:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbjDCNDw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Apr 2023 09:03:52 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A422221A83
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 06:03:38 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j1-20020a05600c1c0100b003f04da00d07so1532868wms.1
        for <linux-man@vger.kernel.org>; Mon, 03 Apr 2023 06:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680527017; x=1683119017;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueSSHKaMYmlnZ/i45JjXwjDTsm3AnrxkmmYbnAPhL2U=;
        b=XzJNW94dKixOjuEq8knab+9jUgr9DhK9cJXgJLOVm3z9HYoYTGDbn20RFjuoHuiVT5
         H92eHIp4PTZmQH9OcxnscXoNevjmGFKj/ZamXWl2SVlYCLFWoDDcdfrdC/LkQGZ6Zmz1
         uUeDjTSGdbLJ7xcqymTigv54JshTpd1RIvftPV5iEiV7FJHAg5RGAkK3sxPsSSJAWbjm
         SaO+IcbVFwPj3DQdWdjP4SW8Mw1PXEjfs0dRyJChGYI8CKWxxpfWDbsszxAG3RkQ4dLB
         NSkPWMcr37qLxeS6aIhaNdD8gJGNCqQSfd9lLwGLpqISxgHJCA+v9y0JNGKoTfdiZE8U
         qSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680527017; x=1683119017;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ueSSHKaMYmlnZ/i45JjXwjDTsm3AnrxkmmYbnAPhL2U=;
        b=HiVcp7NRFZvakDW7EptlEIXhDtlFdMUW6m/aNODFqIlSaWEYNyatKMFAMPdQ+2+YSX
         ZOvSPjo2lVhoshH7VMxu2PheZ2I8zyiiP2ZX0BpkJIDVggF12dN/FSKD3Dc2kPl4z0S9
         7/5+8PapHokUrJEz2DJP+HvMaynVDQP/qg3LcAYNnu5qg8xEq5UrUxNQymaUR/pdaxn+
         EecLmz/MQkO2ufUiz6SNcRnkHHitaEYXdeTztIJPPKhRZR9trUxxCQ3nBfaaLB5VQDgl
         71dl1vvmxGV1L11pdAnvXPVV0hAytRfHmx34NBfMUgOoFWk+3sFM1fnml7qRvpa/IGwK
         iNAg==
X-Gm-Message-State: AO0yUKWW4AJ2e6WDZrv9pf4PJrXA5EcQykCVr+rNbo5/juaNzIVmq7pp
        r+nwKfTdN3yvSMW1hskOdQGzb9xDhuQ=
X-Google-Smtp-Source: AK7set+hzkyMBRFnaOJ6n0v0ZciGrmipJH1AUYnoGGIFQDyT2y0Av7zaQOUPAuBiuEODvfL1p+0k2Q==
X-Received: by 2002:a05:600c:258:b0:3ea:d611:f8 with SMTP id 24-20020a05600c025800b003ead61100f8mr27960648wmj.38.1680527016955;
        Mon, 03 Apr 2023 06:03:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f12-20020a7bcd0c000000b003eb966d39desm12078667wmj.2.2023.04.03.06.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 06:03:36 -0700 (PDT)
Message-ID: <deb7b4a4-b67d-296f-56d4-cea3075d9cb4@gmail.com>
Date:   Mon, 3 Apr 2023 15:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: man-pages-6.04 released updated PKGBUILD for Arch Linux
Content-Language: en-US
To:     Luna Jernberg <droidbittin@gmail.com>,
        andyrtr <andyrtr@archlinux.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <CADo9pHg9sx6AhWemhdCNGBMnaNgPPH64ky8hh1F8=4g5ZV=pUg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CADo9pHg9sx6AhWemhdCNGBMnaNgPPH64ky8hh1F8=4g5ZV=pUg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rhrjuu820BEc1ueLFVUmF77L"
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Rhrjuu820BEc1ueLFVUmF77L
Content-Type: multipart/mixed; boundary="------------4ufhEZhcZELBMQZGXdNQSAc3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Luna Jernberg <droidbittin@gmail.com>, andyrtr <andyrtr@archlinux.org>
Cc: linux-man <linux-man@vger.kernel.org>, Marcos Fouces <marcos@debian.org>,
 Sam James <sam@gentoo.org>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <deb7b4a4-b67d-296f-56d4-cea3075d9cb4@gmail.com>
Subject: Re: man-pages-6.04 released updated PKGBUILD for Arch Linux
References: <CADo9pHg9sx6AhWemhdCNGBMnaNgPPH64ky8hh1F8=4g5ZV=pUg@mail.gmail.com>
In-Reply-To: <CADo9pHg9sx6AhWemhdCNGBMnaNgPPH64ky8hh1F8=4g5ZV=pUg@mail.gmail.com>

--------------4ufhEZhcZELBMQZGXdNQSAc3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[trimmed CC a little bit]

Hi Luna!

On 4/3/23 11:20, Luna Jernberg wrote:
> Hey!
>=20
> Built updated PKGBUILDs for 6.04 and 6.04.1 for Arch Linux see attached=
 file
Thanks for reaching!

I see a strange thing in the tarball (nothing really important, but I
thought I would mention it anyway):

When I uncompressed it, the directory name was 'man-pages.6.0.4-1-arch',
but the release is 6.04, no '.' between 0 and 4.  Was it an accident,
or is it normal in arch packaging?

BTW, the tarball you sent contains only 6.04, but not 6.04.1.  For a dist=
ro,
I'd say you don't really need 6.04.1, since the only bugfixes are for
scripts which you don't package, and the changelog.  That's why I didn't
upload a tarball, and only signed a git tag for it.

Cheers,
Alex

P.S.:  Here's the Changes for 6.04.01 (since I don't expect more than 9
bugfixes per release, I might use 6.04.2 in the future; didn't think it
too much):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in m=
an-pages-6.04.01 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  Add LANDLOCK_ACCESS_FS_TRUNCATE to the Changes file.
-  Keep file modes in the release tarball.

And here's a diffstat:

$ git diff --stat man-pages-6.04..man-pages-6.04.01
 Changes     | 7 +++++++
 lib/cmd.mk  | 1 +
 lib/dist.mk | 4 ++--
 lsm         | 6 +++---
 4 files changed, 13 insertions(+), 5 deletions(-)


Nothing you should really care about. :)

>=20
> On 4/3/23, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>> Gidday!
>>
>> I'm proud to announce:
>>
>> 	man-pages-6.04 - manual pages for GNU/Linux
>>
>> The release tarball is already available at <kernel.org>.
>>
>> Tarball download:
>> 	<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
>> Git repository:
>> 	<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
>>
>> The most notable changes in the release are:
>>
>> -  New APIs have been documented in proc(5) (KPF_PGTABLE), landlock(7)=

>>    (LANDLOCK_ACCESS_FS_REFER, LANDLOCK_ACCESS_FS_TRUNCATE), and udp(7)=

>>    (UDP_GRO, UDP_SEGMENT).
>>
>> -  C89 information has been restored.  Information about old standards=

>>    and systems has been moved to a new HISTORY section.  VERSIONS has
>>    been repurposed, and STANDARDS has been simplified.  Some functions=

>>    have been marked as deprecated, according to their standards.
>>
>> -  The build system has been improved to allow several operations that=

>>    distributions usually perform, such as installing compressed pages,=

>>    installing link pages as symlinks, or moving mandirs.
>>
>> Thanks you all for contributing!
>>
>> Cheers,
>>
>> Alex
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes i=
n man-pages-6.04 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>>
[...]

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------4ufhEZhcZELBMQZGXdNQSAc3--

--------------Rhrjuu820BEc1ueLFVUmF77L
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQqzp4ACgkQnowa+77/
2zIufQ/9E6ZBaVGzX5f3NPfmY5AsQDkJX+cLCGgd0gIoGmEkOUyuvV4mye4S94Or
rSDJe/gbiPxqIEHOQ7N+TvIDc1767E2CxTE16+VrH8EoXU6v6sEH4GPKwUrEiPuz
/U2vTR6LI11aAQop2aBQQ7y5tcW0G00o4pTUP1RiI8iNBxCIXnc+oX/DkP5pWfHY
leLWRsxGCjpaVCFVss7rWCuT5Xp0sjKle0bYHtLwJ5qYZk1vFUO8qiM9O+5+59Bf
583D2HKRBxvr+mLgFf5GifJKnOQ4C1h6hROGuyA8MyE2Eb0Zuscd9I62M3SxJshk
1VvLOLkDI8QT/JoRF4qjWRrGkbu38uHTtzBHlovXvh5XF0X+z140VNhvxHcCJVQ9
8u5pB10LDi36yUzQOMqyy/v0wC0bu1fNfeJukKX1g5b/sAqx4X6vWAeuccFO8pAL
CQBCr677DnD4rgUh9nEmq8oO9TfSCz5Eouu+XpgLag38Lw8DCVVplEoDOdxQkqdT
d9FzYWjX2NWxXOwWG4s31HZknjRapW9od19+i5mdObLSpb7+9QQmg8TYYGqd4HJd
Knfu+SlcoLUQpXAPEd1hIM332qpp2QrDQeZs2ht4KsPFWWvOufPXMrIuvGR1yV5R
IsXjF1hvveAcAjcUvCUv66McOngi35n5Bz0Zl06zDB7451RsSUk=
=cJ3Z
-----END PGP SIGNATURE-----

--------------Rhrjuu820BEc1ueLFVUmF77L--
