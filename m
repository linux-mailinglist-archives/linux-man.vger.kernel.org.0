Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3FD6C6918
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 14:06:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231189AbjCWNG1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 09:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbjCWNGZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 09:06:25 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CDD35B0
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 06:05:57 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id l12so20397850wrm.10
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 06:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679576756;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0QYKyH9nP9PTAPStnsiJrkQTBdE5u6gw2iuAl9OjkI=;
        b=nIJLc2U3EQeqyWfjxM9PxGO6dJ0IM7JBLBGAERvaCVZ17Dljs731S3bxu49n9Cu5Xf
         FbRErkfp5b8Bm+krFKzrhl1OVA2IJJB2a2La+Wcr7pyMOgNAhonh5RM+0kCy7TTA+GU/
         gPOjG0woyDG37f5NVsVqZu/RjUPeji+hC7LhHTxqkWwgkVZj0lZK8nIz2d2FnxY98uTe
         C/gY8q1Aonf+EXilMZ2XKIfOCCBf+F6R7PK9Kp8u2/VsarFERQITfxAj1heDykRh9dhA
         XmcUcB/t2XUftx8ABTjTMj7JIELV/bUGHNwosLe1fUXtaTTcihgVXZNB0EsGvE47b05x
         +2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679576756;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M0QYKyH9nP9PTAPStnsiJrkQTBdE5u6gw2iuAl9OjkI=;
        b=RV/qAlDx1DTZ2NLiO8r/DrgX/cQIMMvTeUkrw+Ik1szUDGjUITJtA007D6l/fR/yPf
         3wXHER85Lobd1ReyD8pdav4+UrMidFj6MplI8jWgIu9uIp7DbMstbKP6/rqLf0Vxsz5s
         mWCM7Idu0P0Txn4bus1p16GslKBbur9v2MB4XceZWIQWDXedVdwe0we/45sL3uH2a/VO
         KHRxxPEOTwIonEIJOn+wXgHuUV+NHKtllBt1ioC+b8z9CbS88M75gwtZzK+XoTp5+NgM
         EHKy/VoeYG3x7PcP0ilPnWbhSd+PZ0wtb5/60hAb/2Q2YZUmSTkaTLQzbLabB+ZmQNlN
         zKUA==
X-Gm-Message-State: AAQBX9dLHsvPmB7LVT1k0earaev4VNJ1zCVYkwfxZxctr6/bXWgMwGFJ
        qLQY4aGRNVRJr6bLJ67crsk1Sin1VnY=
X-Google-Smtp-Source: AKy350Yjd8PjL99fM3eoVhvSesV7c0vUnLbYvGq7OpjvSIrTtkTLfhwkhcxqOLNj/3gF8I5c+ADqUw==
X-Received: by 2002:adf:ec09:0:b0:2ce:a608:b5e3 with SMTP id x9-20020adfec09000000b002cea608b5e3mr2450649wrn.41.1679576755692;
        Thu, 23 Mar 2023 06:05:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k16-20020a5d6d50000000b002cff0e213ddsm16052461wri.14.2023.03.23.06.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 06:05:55 -0700 (PDT)
Message-ID: <65002090-4cca-b2e9-59ae-85b84f12bf96@gmail.com>
Date:   Thu, 23 Mar 2023 14:05:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: stdc: search function prototypes in ISO C documents
To:     linux-man <linux-man@vger.kernel.org>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
        Marcos Fouces <marcos@debian.org>
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
 <ZBugNRxIVbL15tTN@dj3ntoo>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZBugNRxIVbL15tTN@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5lBq78FmzG51mQ8qeMgrXP3r"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5lBq78FmzG51mQ8qeMgrXP3r
Content-Type: multipart/mixed; boundary="------------QN63aTFPSnnuQP0h0Hr3i4cE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, Brian Inglis <Brian.Inglis@Shaw.ca>,
 Guillem Jover <guillem@hadrons.org>, Tom Schwindl <schwindl@posteo.de>,
 Sam James <sam@gentoo.org>, Marcos Fouces <marcos@debian.org>
Message-ID: <65002090-4cca-b2e9-59ae-85b84f12bf96@gmail.com>
Subject: Re: stdc: search function prototypes in ISO C documents
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
 <ZBugNRxIVbL15tTN@dj3ntoo>
In-Reply-To: <ZBugNRxIVbL15tTN@dj3ntoo>

--------------QN63aTFPSnnuQP0h0Hr3i4cE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari, Sam,

On 3/23/23 01:41, Oskari Pirhonen wrote:
> Hi,
>=20
> On Wed, Mar 22, 2023 at 20:49:39 +0100, Alejandro Colomar wrote:
>> Gidday!
>>
>> I created a git repository for the stdc(1) script, and created a signe=
d
>> tag v0.1 for it.
>>
>=20
> Awesome!

:-)

>=20
>> It's yet undocumented, but I plan to add a man page for it.  Anyway,
>> being a bash(1) script, I guess it's quite readable to anyone here.
>>
>> Please suggest any improvements that you can think of =3D).
>>
>=20
> I've got a few, should I send a patch here or what is the best way?

Yeah, for now I guess linux-man@ is adequate, since there's no specific
list for it.

>=20
> - Oskari



On 3/23/23 06:35, Sam James wrote:
>=20
> Alejandro Colomar <alx.manpages@gmail.com> writes:
>=20
>> [[PGP Signed Part:Undecided]]
>>
>>
>> On 3/22/23 20:49, Alejandro Colomar wrote:
>>> Gidday!
>>>
>>> I created a git repository for the stdc(1) script, and created a sign=
ed
>>> tag v0.1 for it.
>>>
>>> It's yet undocumented, but I plan to add a man page for it.  Anyway,
>>> being a bash(1) script, I guess it's quite readable to anyone here.
>>>
>>> Please suggest any improvements that you can think of =3D).
>>
>> Heh, of course I forgot to paste the link to the repo:
>>
>> cgit:
>> <http://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git/>
>> git:
>> <git://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git>
>=20
> Nice! I'm going to add this to my local ~/bin and play around
> with it.

Nice!

I plan to add a build system (and put a license (GPL-3.0-or-later),
which I now realize I didn't), man page, README, and so on.  That will
take some time, though.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------QN63aTFPSnnuQP0h0Hr3i4cE--

--------------5lBq78FmzG51mQ8qeMgrXP3r
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQcTqoACgkQnowa+77/
2zKqHg//QHSFp7OtL0TexOXQbUhhxH6MHLfSm7qJ5rdUHyHI0kSBmS/QPIPIH0iH
TR8R6CzzvoavzFhTUuKU0zojQMt3BgDwEhAJwlf+2wpZInxpLnZToQw+J45AQK3E
f4xdU18VD2gQ0NoCyR3nMI/hUQ3eX+yUNNGxhjuiiukX9hF+LbZRPYk8ZehbOBqK
ZRAGxMNOLLzFwE1QTN0aSDwzEW6Yg4nGpW5YHhdgcdYyq+11edCxOuK9Ul+HQvZk
v85U8qcxxpIMA0SSlTBY5qyj8MnAcQh35fRNxsdLKExCGE7TnPwRhukTKGYLuP9B
cixoq9aCa/K7t6Ft10TSAU9pbxPXQ8JRC2S9s0yB94RY8eiHmWJ7rn1RHzUY4PHB
bQ2kj3sC/rJifnzYqPLartZtWTeNTDS6Xv7dSIldNcIKHdgG+5Fuv4FFuktfHKtJ
O2nI15fHSfi+IJC2fPfJI5V+VEswTEye6+cVdTnoByZxzKYb63GW1eKajlMZ/CYL
MJ+CgH7ULUdcAjmYzE3oVn5yRCrzQ1ogSod1TXQ1qzDA6hoJ7P2nm3wS2hfm7o9F
acuaFLk25ixKIOApunWo2fMADXSYJBMCq6pNHpZYmiWAog8Q0twLu863ws8OZzM1
mGyoH4C6W9OWVtGCqAAThHP/liAUVRJ3TTVJaV1bOH8EcWkBRas=
=/YIt
-----END PGP SIGNATURE-----

--------------5lBq78FmzG51mQ8qeMgrXP3r--
