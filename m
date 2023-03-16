Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB3C6BC370
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 02:44:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjCPBoI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 21:44:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjCPBoH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 21:44:07 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B40F72B0
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 18:44:05 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id j2so112107wrh.9
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 18:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678931043;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s+DzzJ/FEKIGmewQ01xQAlCvdV1o6qJZDfh8Am3WIxg=;
        b=jXXnP+hpParNpV+S1KA3xPCQf3mvRGM4t7nosdG1Tk4fR+PpdlVrJ6VnGntrIc9aDO
         NDimlYeIudCQOuOt427zNbbPbCTR/otEjiBDrIPgAtp4L24lOtQ/1SpRgtSyKmqmwyvS
         jGFYV2oSUbMP+ZK4wNwxmzGxdv9HHbvZheXFAOp4nZbzVV5UN05X2ae+/s2MOl1jV1sg
         rcCXqNi32+0PVejLbfPl6XSm7z0RrLybEHIqA5cT+izhdZ/KjuI8a6V68P50rLZVbyJ/
         Ol5HoObEtkjrbgsiSaCvKeS8YigDfB/HERNOtplj9Vuxk8F5jjgEmHkG4U4WxprH4ZFR
         ohQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678931043;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s+DzzJ/FEKIGmewQ01xQAlCvdV1o6qJZDfh8Am3WIxg=;
        b=WzJKaBWKKpVc33wQPZSCTOjDkP54/RjXCK3J7j405N1gMY61y96O1kaXpfKvQrhmI1
         zMbI2cKN6Xey4+28XeAcMdLUcjCrF3uWPNxV53S9+K5Wm+/koHh/1ZWvxBMAwjmBHJVq
         KSqdVslSPKirjFJX8g3wLJK8QJzuhk8Zov9skMcO9shyUvhJ1wLi3VC6XIP6uTKmmgc+
         gQkOYrSyLQQtQmHIKIGHCqlikY0uHGlmoetOlIIaToySF/fhUnTgo2N4Z1OhYsv4vUKj
         mu0PEDbaUrEx3PxrjwIQM/e1ognvW5nZtzE0UE4XG+NKTOhhwmS1riINj0N0GaIDusTn
         84bw==
X-Gm-Message-State: AO0yUKWVsu1wO+6ct4fahnphdTdOo8XYhBGUWLKAZZGSmp2p0gVbn192
        0hav2RXq7OX+2VVhpNkffLg=
X-Google-Smtp-Source: AK7set+MYrq7l+3H/pmkmEvH7umi38/aA56H2+ashCrnsv6CrMpGm9cNSqyhR5+R6+1Lvaf2a4vTEg==
X-Received: by 2002:adf:e8cd:0:b0:2ca:175b:d850 with SMTP id k13-20020adfe8cd000000b002ca175bd850mr3024296wrn.11.1678931043359;
        Wed, 15 Mar 2023 18:44:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id j17-20020adfe511000000b002c707785da4sm5909433wrm.107.2023.03.15.18.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 18:44:02 -0700 (PDT)
Message-ID: <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com>
Date:   Thu, 16 Mar 2023 02:43:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
 <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pNPB0iUWk8h6nmXoNOcenAjc"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pNPB0iUWk8h6nmXoNOcenAjc
Content-Type: multipart/mixed; boundary="------------wMksQ0dG4VRrovdK9djmi8Bm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>
Cc: linux-man@vger.kernel.org
Message-ID: <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
 <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
In-Reply-To: <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>

--------------wMksQ0dG4VRrovdK9djmi8Bm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/15/23 19:10, Tom Schwindl wrote:
> Hi Alex,
>=20
>>> I have an archive of many drafts including (so far):
>>>
>>>   1.5M Sep 10  1998 N0843-C1999-CD-1998-08.pdf
>>>   3.4M May  6  2005 N1124-C1999+TC2-CD-2005-05.pdf
>>>   3.7M Sep  8  2007 N1256-C1999+TC3-CD-2007-09.pdf
>>>   1.7M Apr 12  2011 N1570-C201X-CD-2011-04.pdf
>>>   2.3M Oct  9  2017 N2176-C2017-CD-2017-10.pdf
>>>   6.7M Jan 24 11:37 N3088-C2023-CD1-2023-01.pdf
>>>
>>> which can be downloaded as:
>>>
>>> 	https://www.open-std.org/jtc1/sc22/wg14/www/docs/n####.pdf
>>
>> Do you know if we can distribute them?  which license applied to them?=

>> I'm worried that some distros are very strict in what can be distribut=
ed
>> in a package (e.g., Fedora, Debian (main)).  There were issues with
>> man-pages-posix in the past.
>>
>> Should we maybe open a separate project iso-c-drafts that installs
>> drafts of the ISO C standards and maybe some scripts that will be usef=
ul
>> with them?
>>
>=20
> This is probably a legal gray area and I'd be careful.

Yeah, that's what I think.  Until I'm 100% sure that it's legal, I
won't do it.

> ISOs license agreement[0] explicitly states the following:

I had some doubts, because since the drafts have always been published
in many sites, I don't know if that's legal, or simply ISO doesn't
enforce the license over drafts...  If someone knows for sure and can
clarify, that would help.  In fact, maybe I can write to someone in the
committee...

Thanks,

Alex

>=20
>   > The ISO publication(s) you order is/are copyrighted by the Internat=
ional
>   > Organization for Standardization. You acknowledge and agree to resp=
ect ISO=E2=80=99s
>   > copyright in our publications by purchasing, downloading, copying o=
r
>   > otherwise using (an) ISO publication(s). Except as provided for und=
er this
>   > Licence Agreement, you may not lend, lease, reproduce, distribute o=
r
>   > otherwise commercially exploit ISO publication(s). In the case of j=
oint
>   > standards (such as ISO/IEC standards), this clause shall apply to t=
he
>   > respective joint copyright ownership.
>=20
> As we (or a third party) can only produce a plaintext version by downlo=
ading the
> original PDF draft and converting it, we agree with the above. Thus, we=
 can't
> "reproduce" or "distribute" the standard, at least that's my understand=
ing[1].
> I highly doubt that major distibutions would take that risk, nor should=
 we.
>=20
>=20
> [0] <https://www.iso.org/terms-conditions-licence-agreement.html#Custom=
er-Licence>
> [1] For the record: I'm not a lawyer, this is not legal advice. It's ve=
ry well
>     possible that I've overlooked something.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------wMksQ0dG4VRrovdK9djmi8Bm--

--------------pNPB0iUWk8h6nmXoNOcenAjc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQSdFoACgkQnowa+77/
2zL8nhAAkT4sI+/1+dSa8jZbPxyFYbH06zw+mWiR22vUsouITNvJYhYsAqkEIZ6H
71DftuZIAg3Rn6tjBtgKZ42T+E53k39xMdpflSQE8iwPWrf7y6CeK9dl5wfkqpn7
AWVyh0u4SOaJmxMFKPllfKftdD58QFPgqZ5kVKz1vzLd1Xz6mIrhnVVdgJ5mH90a
LXwh4/LuKoWYZzWpdyqaQcyJ9pqO7GKocNuemT2NxZIWmhN8QiirnHy/3ki1gc+L
iksXQmP5LFjFP376XXjPNbLhjZF0FiU5nM8dIOF03PZ0JYNNOkYW4RYKwr3657WS
WXQz248ffWLZoGsKYgJA1vZ15Jq58VfOvD1GoZturqgEW54oKavhJxHbMyfCZRZE
glRopRgRYn3Z9FWvP7fWJHilsakDTT9KaLh8CE26UsdZesspGEOZ1sgFcWikuVb2
h90AV5eiixPd/45Z0+YovZ1PhGJyD2LUvixHJetFckk8dYX3sdwUnvZupTiq2vOa
EAIWZw/z2yYzB5XX9FKg5sVW8Oujbmtr1BDUHLiMIB85Fsw3dpmTzxyuzjLe1wwd
9nGl9GOVm0n3prDsDgiPdelASsRzEB51qhVuv4zVd7ULAd9OVzMae4zZHoKBbwmF
07wt60RzgtLfqdDUeCpHH2oEkceF5/0YBg+GTwJpGObcvyaoPjM=
=4Lfm
-----END PGP SIGNATURE-----

--------------pNPB0iUWk8h6nmXoNOcenAjc--
