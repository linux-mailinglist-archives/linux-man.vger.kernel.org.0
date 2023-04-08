Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B9C16DBBF4
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 17:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjDHPnD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 11:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbjDHPnC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 11:43:02 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CD8030E6
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 08:43:01 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n9-20020a05600c4f8900b003f05f617f3cso7386997wmq.2
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 08:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680968580; x=1683560580;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1767qxJEoiWFcRidw/kSsuTYytLX9PxtOJ4xJdhDvY=;
        b=VXQ5afyhu6qcryc70tqqk4oxUm4VkTlyI3i/25u5ynBjpwYThKZucrgAfAPSwFs5nK
         BMxVEnAVB2aviWHMgAQmLrW4y/lZn9MirWWbfI+bqmzJzg/gCiqm5VUtOzEZ915/baY7
         ELxhTNrEnFcINtJ2DUnpFHo1hesIRQNd3f6FUeUWmHe9BV6KwKKk6z4JxnrIm8rMCsle
         VIWUw9jjLfDWxyLdGm2o7XXqvYs9gUCJkhZsSQP+GAf/q8g1B2ImOvL36Owt4IZRo6CO
         /wL79cJXmiw3Ey97WspQ2Cr99EHPZi+N8D8BT+rov3ydZme4sQ2sydimhsZO9T8Jrnyg
         c+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680968580; x=1683560580;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V1767qxJEoiWFcRidw/kSsuTYytLX9PxtOJ4xJdhDvY=;
        b=vtMLAQpIustMgVnbbBrNXBiZsiYc0gmcBOKX2sPVNSnw2Naaj6IVgxmmn9yzbqt4id
         gpvRAjW4krA8Xp/0ejW8krEqFZBhDq2L5yzA151CMARkXFzJTk7e9v4D4qriKmQ1cEHv
         t1cIK3xf6gTgvWZuF24ypXz37/j52YubP0Zu0zWDlFz9VebPV3145BRGHRepc3jOCHWD
         Z/RvHvv7bA3uPC6AT53JZ2TSj5Yh6g6HCx8KDcPpdMW0/awynAoKfHW9WKcP/lLpjuAK
         VnwJimAogurTO1Nz6OwnCNaYP3kQWhVT2UPhk4rtmPZgZhttQjI4/XUfEggV/9LDE/VY
         xQOg==
X-Gm-Message-State: AAQBX9cVGcH5OPbZ8i3vbGeJv4YiZ1F8bYzb4biPY0epPs64kQ491naA
        61pTLJGo4r+qhYmkcNiwsEA=
X-Google-Smtp-Source: AKy350bLlDDZlZSf0Y4kt8lapbpWqz5PE/AUca4Oj9UUDXksMfj09xbWkrRE7IllqBuVAtW18imyvw==
X-Received: by 2002:a05:600c:3b12:b0:3ee:782b:2e31 with SMTP id m18-20020a05600c3b1200b003ee782b2e31mr3470485wms.9.1680968579650;
        Sat, 08 Apr 2023 08:42:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm8124975wmj.39.2023.04.08.08.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 08:42:59 -0700 (PDT)
Message-ID: <3671fb94-6f67-0113-1d2e-b6804135da36@gmail.com>
Date:   Sat, 8 Apr 2023 17:42:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
Content-Language: en-US
To:     Colin Watson <cjwatson@debian.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org>
Cc:     Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
        linux-man@vger.kernel.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org, help-texinfo@gnu.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDFwisXkZNvthBc6@riva.ucam.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BsswUu4BhB5FhEn96T8nsPMh"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BsswUu4BhB5FhEn96T8nsPMh
Content-Type: multipart/mixed; boundary="------------cVruQ6EiTcMl95IAx7ieVmop";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>
Cc: Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
 linux-man@vger.kernel.org, nabijaczleweli@nabijaczleweli.xyz,
 g.branden.robinson@gmail.com, groff@gnu.org, help-texinfo@gnu.org
Message-ID: <3671fb94-6f67-0113-1d2e-b6804135da36@gmail.com>
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org>
In-Reply-To: <ZDFwisXkZNvthBc6@riva.ucam.org>

--------------cVruQ6EiTcMl95IAx7ieVmop
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Colin,

On 4/8/23 15:47, Colin Watson wrote:
> On Sat, Apr 08, 2023 at 03:02:59PM +0200, Alejandro Colomar wrote:
>> Colin, I've had a feeling for a long time that compressed pages are
>> not very useful.  These days, storage is cheap.  How would you feel
>> about having the man pages installed uncompressed in Debian?  That
>> would allow running text tools directly in /usr/share/man/.
>=20
> I'm not personally all that bothered either way, but it's a
> distribution-wide policy decision rather than something I'd decide on.
> I suspect there are still some people who would push back against the
> space cost.
>=20
>> I've had to do that several times, and lucky me that I have the source=

>> code of the Linux man-pages checked out in my computers, but other
>> users don't and they might have trouble finding for example which
>> pages talk about RLIMIT_NOFILE.  The only way I know of is:
>=20
> man -Kaw RLIMIT_NOFILE

Hmm, interesting; I didn't know about -K.

>=20
> (This looks at the page source rather than the rendered output, so
> sometimes it over-reports if your search term matches a groff macro,
> etc.  But that's true of your approach too.)

Yeah, this should be good for most purposes.  Consider my itch scratched.=
 :)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------cVruQ6EiTcMl95IAx7ieVmop--

--------------BsswUu4BhB5FhEn96T8nsPMh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxi3kACgkQnowa+77/
2zLgvQ//SLSBaTm2alQhgy70wZVyVsdNXiSFb0Aik1RFUpR9uQNvTZD8Sn7S4CWU
LzIc0LCv7Wc/wDrpK1V/tIwoMmTX4dXJstOtRmUtqG7/Mg201Wb+pKPzxN+4f01t
eHS7elfAENilizH99d8/y1ZQRi0d4Y0P1zbL+HC7anOloz75fCEBft3JfJ3uvNfA
2BSIICuAliYnxtDAt2117qdLxzqHLy3H9jaGqJVabRHGKsWctaJ/cYLOwvPULQfE
2ZafF3Vdm/g8AXJ8/hO/7KKwL7lK42LsvgPlTz9ekOWm0/p2tZqCxvl0zvC8hAld
SRP7f/lBDs4PoOmDD75fX6ZwnwOn/t0v39rrZSImdBafvdQ8BNM/zJRy2aRqXtqM
uds4cvXe5imrOoT9K6FbLPDsWkL2tLNgMSr3e3YvJRkmBFQgNasuDCX2Tl2Pj7RG
rmYQan7JpiNB/XpEgk5NiRawiDFMolV0FDZJKIsGd8xOXR5T81JX7Jig+4Hx2zCf
Z7bfKiV6OpWAVcBuDYkzCjzPMoAC0dwMPgmLcL0vsaPd9jv7gWb5tB6xAI2QR1z1
FzTZjD2Si/yOCU5FZ0NV8dEUsxbybGo7MEUbCXJEeMfHvgMXnjwr3xXSVcpxMz7M
VPLS/nT0pn/9g3qBGCpUM2/Ufb8Ul2i++M5xPv1EdtvCsTf6i4o=
=5Pzf
-----END PGP SIGNATURE-----

--------------BsswUu4BhB5FhEn96T8nsPMh--
