Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F05969A2A2
	for <lists+linux-man@lfdr.de>; Fri, 17 Feb 2023 00:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjBPXvi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 18:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjBPXvh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 18:51:37 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2638E4BEAA
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:51:36 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d4so3447176wrj.1
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OM37PXVBXaKCI3S4Fw2wKANYED3L8sFkh8zwX/BOBJM=;
        b=IUpGDNxH4KJl3tHzjhr2FmG5bJ5y6EYHAhG1zPXA62O7BNMlT3V9KBHRTq8YPc/Q+Q
         PbW4wlV13BItaZHpZA0QJZQZbEePfUs1gPZnAECkba9i0ruZ+BtwYTm5+CRw4VDLVyzF
         yCHJA7wBHMZDHzUiIOgtxeHzJys5r9VbYJ/nSdsOSsgwGNH7kUGBCODaIhlsdwn2TVny
         Fm5279pQ6SKEPUBucqCTMv7yqCDWbbXZPEWCS2CRzW5ktqizFBqnuGfj4/TDThEkTy27
         aP25gPRF6EywXoPsCjKzirBnwX1RYJP3vwEY0pVWhSDArrvKLbw7SaO0hqDmNrCtYmAo
         0ioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OM37PXVBXaKCI3S4Fw2wKANYED3L8sFkh8zwX/BOBJM=;
        b=KMsWAH1YibF9HGW6AGwixNepUom4LCHyw8DLoZPSajVARYN7yrn/7K962pZ17dz9W+
         gStoQXwYzCz34FDiQpWaimEJMVxz5Zd3xrv7glAY1Xfm/YNBJ9wPzhyW/UCVURKR09Y1
         ZbPvxW9XVJsE5SyXQBUGIyLu8igrW48xx8TvtXcuE2t4fZbNMnGtYZCJbaYu02yAikDP
         XQSf99lTKIH0BUs7mk3OXILVF08936p1z3gkpp8YRVdKj75DX7wa7pzknNJMFDxeHls0
         YNDFe8jcjeEgY92Ey5zyAXGb5OQcS/vJluM815Jf0bl512XeDSrfwqLunOBR029jZE0i
         4VtA==
X-Gm-Message-State: AO0yUKXN9uGhauY7mGCdfTQ5DFquvq41kL5HN3sHmWbybBgPSpQP4eZi
        zku6uzI50t9Xjm73l7jG5z4=
X-Google-Smtp-Source: AK7set8dCxfZ/2PZNErGYcn7xxW1kRw2GleB0qzTaXrq3D4lrIv6LP2QpTOTebBB5ZlwaBSvv3ONvQ==
X-Received: by 2002:a5d:4005:0:b0:2c3:e4f5:18c with SMTP id n5-20020a5d4005000000b002c3e4f5018cmr5259800wrp.30.1676591494476;
        Thu, 16 Feb 2023 15:51:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020adff992000000b002c5a6f4aa53sm900070wrr.105.2023.02.16.15.51.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 15:51:33 -0800 (PST)
Message-ID: <b57661c5-3e94-a6af-611f-6df1766120a1@gmail.com>
Date:   Fri, 17 Feb 2023 00:51:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, Linux Man Pages <linux-man@vger.kernel.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <200281a7-8bf0-c286-374a-6f0dd8c8cc6a@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <200281a7-8bf0-c286-374a-6f0dd8c8cc6a@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RP0ZYM0gm6t0SZRjzMGohcgX"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------RP0ZYM0gm6t0SZRjzMGohcgX
Content-Type: multipart/mixed; boundary="------------doaxs0vR4381aNdBpdrHtNUi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man Pages <linux-man@vger.kernel.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <b57661c5-3e94-a6af-611f-6df1766120a1@gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <200281a7-8bf0-c286-374a-6f0dd8c8cc6a@Shaw.ca>
In-Reply-To: <200281a7-8bf0-c286-374a-6f0dd8c8cc6a@Shaw.ca>

--------------doaxs0vR4381aNdBpdrHtNUi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/17/23 00:40, Brian Inglis wrote:
> Hi Alex,
>=20
> Should we leave some of these POSIX doc strings and short numbers as th=
ey are?
> I have been careful to use digit separators in POSIX feature docs only =
not code.
>=20
> I see *those* as less formal, digit separators and ISO decimal multipli=
ers as=20
> more formal, and IEC binary multipliers more accurate and informative t=
han=20
> decimal digits where used.
>=20
> I think hex values are 50/50 depending on counts of zero and non-zero d=
igits and=20
> context; IEC binary multipliers are more informative for amounts or siz=
es in=20
> appropriate contexts.

I'm in favor of using the separators (almost) everywhere, so I prefer hav=
ing patches
for all cases.  Just make many small patches, so we can apply them select=
ively and
discuss them separately.  Maybe we want to apply some now, some others ma=
ybe for after
C23, and maybe others we don't want them.  But I'd like to discuss all of=
 them.

Thanks for your work!

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------doaxs0vR4381aNdBpdrHtNUi--

--------------RP0ZYM0gm6t0SZRjzMGohcgX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPuwXwACgkQnowa+77/
2zL3CRAAgS3tz9B2iewoXd2P0qyLBsjxOwe+cjcYvlbVd7E9ZzESlbdfPUZrPFSX
Ubbe8BdY4uqAUwgH7iYEICcoVr+WYFYFhhHYNuODADycceyYNTab9jFvB4SYppIH
7UDydq+W6PpSI+FTOLYMhbcHCsOpGkm+Dxgl5t0iJ8bQ77muQBxYQeQ45VmJsijD
agBbiiDwKqI4q6yf5kQao01RAHS6ljJ3Dq6zN5ZWCcx9ZYvxNZ3QsWbrD8Wq0OdQ
1WcaFMAE9PbXBGpf3RvpAUarllSLCFdbOKE9UOJjEuQEd3i+zC/Kp6tsuFXnKH5+
EEXAEi9ZJ4+Il0477yc0lJfWYadS727BcWEMrchuqcHC9A2qq8lkb9d+r8RXnq5G
BCAdZ5QEbJzAcL1h84FnrexMzX7L68qGl2d/2p93BDGLuMq5Xo/xK9OdO61YotCW
I+H59puBCj7vPPfe7JL0hzO9ZHw1+ALBopn65eJWjS+ip/7clFey6JqiNTDXZiqz
6APP8KsecC+D4sNXTR2mWgTTTingrsW6jniD3jBGMjnaiUxQHq0924cgZlF54nCY
eH8PEEWzVn1hWYzPIwFGBHlPR4f6ul316Re1k8vYcdPFtXU1yNeh88FGem7p7Jdc
oI5pAfQCYqLkHqZVY0VinDmDw3etK+kZC+EBewf5q72wMN/dtXk=
=WgE3
-----END PGP SIGNATURE-----

--------------RP0ZYM0gm6t0SZRjzMGohcgX--
