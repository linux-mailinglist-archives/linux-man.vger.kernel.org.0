Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EFCF6B6521
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 11:55:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjCLKzW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 06:55:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbjCLKzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 06:55:21 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C09971CAFF
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 03:55:19 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id p23-20020a05600c1d9700b003ead4835046so6345661wms.0
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678618518;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYXrF5eh8GnBF7r2tHU26Up+X8PK+Bhn348Euq2aCmw=;
        b=Crgvq5WdJN0IGV0TazfE4RmgvBfAFfsqB93AKFFncl0RdTN2xBJ/yueZ+KcIydL+DS
         ck0Zp6GxdLg2ZtVyFOsN9+xZr+iu2LyYJa3dQw5qHXBj1laO8eobf02C0AAitzTHkB9Y
         pTrHUsHhe6S/IsP+aY7waoEtXoIp0XK8uz/24iDZEZ4H81hvEG1yoqUvieahAjFEWTVQ
         Gfbn+BKgGjzBaWbLwgCCixNHzIKtufMsgkn1dIgpZT6+t7lpPXGX6gqkhd/WoR0Srhvw
         gUdKvC7ZhKQ/IVDaDiveAkm1G3q8m38FOL5rns952XxsiGBRXjXcBVlcfTmwzCy4l/1p
         tNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678618518;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qYXrF5eh8GnBF7r2tHU26Up+X8PK+Bhn348Euq2aCmw=;
        b=1ggxQLV+6gTMc+TDD1064BLSZpQEJGY6+a96+UlZNv+1kiyJOAFSstqhBW0F8rD2i+
         iRgNuk/nMK2ayCe7N2YQPRzCoYTyJb2767u1fTL0FIkXybOB0sF5Du+D7Oy3fz4xLmN+
         L9ZXth4hq5A23kSIwpiCOnZY2PIJ+j+uCT/M2utRT85eGcN+Su+JxMof1vuu9TlyqZSp
         lUzmqfVVDfyzy5Rn08gMKYrQTEcwRt1Cin5Yp+RuYzcwGuTOtDFZXxMfwIN7FaCeARFl
         tNFL+bcuAQ2Kn4mjqtxZLF4z2QhEwpPYzj4/0JlVNTjUpUXWb4HXzkOT0slVko9VkOph
         PohA==
X-Gm-Message-State: AO0yUKWpvPuLojZfPVBOgi+G2xsa7FZrxx/DJ5QQNV2NYEgsFeo3NU2q
        a+2K2s4ARSZg8XC1zkGsdiA=
X-Google-Smtp-Source: AK7set8iFgr/t1UT07yLuON5+tvt01Hj2lpZUBVa2pPepez+t9n3iOwoBFPlH0bHh9peLtJwI/8PMA==
X-Received: by 2002:a05:600c:1c0a:b0:3ed:22b3:6263 with SMTP id j10-20020a05600c1c0a00b003ed22b36263mr932014wms.12.1678618518254;
        Sun, 12 Mar 2023 03:55:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q10-20020adfdfca000000b002cea392f000sm4091736wrn.69.2023.03.12.03.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 03:55:17 -0700 (PDT)
Message-ID: <c71aca22-f239-f142-7827-06323659a0b4@gmail.com>
Date:   Sun, 12 Mar 2023 11:55:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page user_namespaces.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
 <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
 <20230312050634.GC7927@Debian-50-lenny-64-minimal>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230312050634.GC7927@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0qiryxWFb8PPs1vYpha45SKU"
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
--------------0qiryxWFb8PPs1vYpha45SKU
Content-Type: multipart/mixed; boundary="------------FvL0qoJFPtilu0XK0uMq4xWk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <c71aca22-f239-f142-7827-06323659a0b4@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
 <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
 <20230312050634.GC7927@Debian-50-lenny-64-minimal>
In-Reply-To: <20230312050634.GC7927@Debian-50-lenny-64-minimal>

--------------FvL0qoJFPtilu0XK0uMq4xWk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/12/23 06:06, Helge Kreutzmann wrote:
> Hello Alex,
> On Sun, Mar 12, 2023 at 12:25:12AM +0100, Alejandro Colomar wrote:
>> Hi Helge,
>>
>> On 3/11/23 18:13, Helge Kreutzmann wrote:
>>> Without further ado, the following was found:
>>>
>>> Issue:    /proc/I<pid>/setgroups =E2=86=92 I</proc/>pidI</setgroups
>>
>> I don't find this.  Please report with more context.
>=20
>        Writing "deny" to the /proc/pid/setgroups file before writing to=
 /proc/pid/gid_map will permanently disable setgroups(2) in a user namesp=
ace and allow writing to /proc/pid/gid_map without having the CAP_SETGID =
capability in the
>        parent user namespace.
>=20
>    The /proc/pid/setgroups file
>        The /proc/pid/setgroups file displays the string "allow" if proc=
esses in the user namespace that contains the process pid are permitted t=
o employ the setgroups(2) system call; it displays "deny" if setgroups(2)=
 is not permitted
>        in that user namespace.  Note that regardless of the value in th=
e /proc/pid/setgroups file (and regardless of the process's capabilities)=
, calls to setgroups(2) are also not permitted if /proc/pid/gid_map has n=
ot yet been set.
>=20
>> Cheers,
>>
>> Alex
>>
>>>
>>> "The /proc/I<pid>/setgroups file"
>=20
>=20
> I assume this is as intended, i.e. like in the other bug report=20
> where you said you fixed it the other way around?
>=20
> Then I add a WONTFIX, of course.

Ahh, now I understand.  Since you didn't use B<> in the report,
I didn't think you referred to the subsection heading.

Now that I think, it should be inverted here too.  The file name
should be in italics, and the variable part in roman.

Cheers,

Alex

>=20
> Greetings
>=20
>            Helge
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------FvL0qoJFPtilu0XK0uMq4xWk--

--------------0qiryxWFb8PPs1vYpha45SKU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNr40ACgkQnowa+77/
2zLllg/7BvKI6AFH/SfvrinflWB9bIPDRH3qEm0586noLe1HeFh5oSNpExuSgAjM
bdDglQ73dVKmkz5Pq/ZfvP39tS4ZBP6gsC+SeVxONVfJ7GXejuKtxk3VCO9MIDM9
lPgjjAlLE/cUZ968G88CgcwPG4hR33pZJA7chSYhFzXsCNW7sxcRmJX6tVHikdWq
+rl8LpLSNPA4g1h6QTHPoyfq9fKRzlTRfn60LK8Z8QzsH12KasLTQIuoxyMxSQH+
nfTCJIiSjXbkDY3gjMMFS+j3qKtxQik1lnxcesIWMpDcEd662A8VM2jd6nFJeJBj
IDuR7vnXmupBlZ0Q+0Q2y9cLNOYUC4dGUaQChZXansVqGQUQV3xL9PTQdutOwERa
jjKXg/10Klk/XR/oX8K+xSIVpsbRKIb5g79eOOlBrFTppBL2Jz2lDYB7LaZoYPM2
Lms8lXBg+fnNSVbQ4HlbJJBS26rdo4qtujjwJtfrt6m0qPgteV5K8DjYxH7rjGt3
fl66bJ8UMi0OQPvoGZzlAqUX/ifkq58rcVlY+sH9fLPjmyG174aTTOYuJto2SSmM
jvb2KYXHWC+WFfO70X97KuHewkjwhNb3EDHxiHgVVUR4Iom27rIuJOLEK0Ln/BuI
GaZZ2z4A86tkd2Mol2AJ6nz2BTM0H98rbh8Gmhhu6gHffSASYrs=
=ssKc
-----END PGP SIGNATURE-----

--------------0qiryxWFb8PPs1vYpha45SKU--
