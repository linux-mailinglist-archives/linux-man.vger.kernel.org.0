Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36F056DDDA2
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 16:22:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbjDKOW0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 10:22:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbjDKOWY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 10:22:24 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 004EA120
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 07:22:21 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e22so7655728wra.6
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681222940; x=1683814940;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wlebWDj5ha+KhN2WCmCioY1oryXBQd05w7XV0I370p0=;
        b=muXPs6oxV7HqQpfaMDvGPvQlxhVtONnn2s8vEQ8pmPNwLgvyCMP02JtfLH44eD4bRy
         Im6uF6Qq0mQWS46QEqGBhjZ+h/K8Z3rjIMUTW4Bn9rnebupPAqmnjI30IrtapO9/3Bkt
         e+zt+rgCBdnbCBq9o6l/iW6sAylPdvIIWbN2+UPeGk5iHYKpjZBXdmrN/9Dv1Ndy8LQY
         fSuTVYXYBbCO72ysp+8On0K8Oey+5iVd7ccAOHUjDbFk8Kw1VjGGOP0wi7yuWiYRTgyS
         dwpZu6dKNXp/4fu9hWUcgylP8P7EKmCpfOtzfXeIkTkVFN+yeV+9Xz662W6pY4haVZnN
         St9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681222940; x=1683814940;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wlebWDj5ha+KhN2WCmCioY1oryXBQd05w7XV0I370p0=;
        b=XeZwLHeBayCJk/OF4jEYWOkCzWMAv84faKEJFHr+0k5UOduX0veehFF0oBfDOYGGrn
         COtBAvxi5dArH6clYpB++KPQliiRXWVlLCFRkLKhS1o9Ut44r8Bl0qSavvNVyJbz9HPh
         wzdqgsvmEQ25YZoU/mgFDCW4MVejy1QMptQh0G7X/Wz+DixkU/P6fdb7su7VmeihHqI5
         T4UFvUGHAEluinyr10f3a5/TwJlGVemDOIVR7Uh/VPvf5Cb5qs15mAo+IJXbfq2X26dg
         dVtxont34oJ96KfajeBENFB+HAwZPk1A2DrtuUqQu5AyAeNVFgFTa9FZteHA0pYXQTqK
         vvQg==
X-Gm-Message-State: AAQBX9em3B9QnLo9rjmIKWM0F/caG53pmLig1FQxnaVJ3MzTWRlE5YJR
        JgCx6vmjp4V/gGRRW2GHM0Y=
X-Google-Smtp-Source: AKy350bJzMvorIFMF9n9Z+Q1ClBwdpVIw3To95Q3pYQLo5cYaq9Hyk2zgPZaLJsEdoYZ9dkK0F9yLg==
X-Received: by 2002:a5d:514a:0:b0:2c9:1a3f:d5f8 with SMTP id u10-20020a5d514a000000b002c91a3fd5f8mr6589462wrt.41.1681222940159;
        Tue, 11 Apr 2023 07:22:20 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c3-20020adffb43000000b002de99432fc8sm14685418wrs.49.2023.04.11.07.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 07:22:19 -0700 (PDT)
Message-ID: <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
Date:   Tue, 11 Apr 2023 16:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] fts.3: note fts_open() behaviour with empty strings
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WSqcp717CFl2rx7IJkOoicxt"
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WSqcp717CFl2rx7IJkOoicxt
Content-Type: multipart/mixed; boundary="------------WEsPNnhXR6QViL0UH55ADO7S";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
Subject: Re: [PATCH] fts.3: note fts_open() behaviour with empty strings
References: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
In-Reply-To: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>

--------------WEsPNnhXR6QViL0UH55ADO7S
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/11/23 04:21, =D0=BD=D0=B0=D0=B1 wrote:
> This is undocumented in BSD, too, and present in the original SCCS
> check-in (5.1 (Berkeley) 12/30/89).
>=20
> This is very surprising, since in most other cases FTS is rather quite
> sane about error reporting, but /any/ empty string in the input vector
> blows out the creation entirely.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Applied, with some editorialization:


@@ -722,6 +722,17 @@ .SH ERRORS
 and
 .BR malloc (3).
 .PP
+In addition,
+.BR fts_open ()
+may fail and set
+.I errno
+as follows:
+.TP
+.B ENOENT
+Any element of
+.I path_argv
+was an empty string.
+.PP
 The function
 .BR fts_close ()
 may fail and set


Btw, while you're at it, could you confirm if the nullability (_Nullable)=

of the documented funtion prototypes is correct?  I never used those
functions.

Cheers,
Alex

> ---
>  man3/fts.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man3/fts.3 b/man3/fts.3
> index 66b2fcab3..392f8acfe 100644
> --- a/man3/fts.3
> +++ b/man3/fts.3
> @@ -722,6 +722,14 @@ for any of the errors specified for
>  and
>  .BR malloc (3).
>  .PP
> +It will also fail and set
> +.I errno
> +to
> +.B ENOENT
> +if any element of
> +.I path_argv
> +is an empty string.
> +.PP
>  The function
>  .BR fts_close ()
>  may fail and set

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------WEsPNnhXR6QViL0UH55ADO7S--

--------------WSqcp717CFl2rx7IJkOoicxt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ1bREACgkQnowa+77/
2zKfhxAAjV40tSo8vboMjaTXDt6v4XqehfEBZonqrafd8ypU5K0J0ZAf1nDkBqAp
U7hmuODh0EFfwmHfaYqAhLa04D9XNCF7gz2RhNCMRZfG0RJsv3/y1iwRgEqQFRn0
SlmaYT42WXPwkod3E9lvBz8Npg4WQozmVT5u688nN7Ib3BtNjeE8admAkMzJAV3u
QTnzFMLlxKqmUr8Z4MZls5pkwek0Yo28Fpg9uqT2Obma7ZJ14JCeGrudfdiCXPvS
FcxV0vAMWOfjPC5wsLC1idb84dsGWenLtdc+fTxxADrZhSrstR0p3+tthE+gqmle
h8LezmR9COZ6JBh/r+69dZcCvsIAHO0erIVt6XeuWCLyHDr5clXjTd8MdmKiPMfG
4gu7jU4ytrsXmsbAn7bdwJqE3EYt+0SaXhtEYJ2yVBa1sKqYdbVk+U0mi4AqxrgX
KnCjZ7F/b/F5iSF5KNBSGqKRHg0gw51rjSjzCGVfTf4PXcq3+xsGo34eH77wnlZR
O/KSkbQIvdY1+8+ZbcAAlOBDBLEvUWJAVclXmy+CZxdL1Hdtlbf4UYKYG4wopDTE
wW6kl7GwQy4EVLIlIt1xrEQ0LoQmyzi+qAK1z3dv42NQfag/VP2CETDczQ6KvlUd
xT3aeLm7nZJjcCfS3EwQ5lXG6Y7lS9jn5KPDyva7ThTd36F5+Vk=
=AAFv
-----END PGP SIGNATURE-----

--------------WSqcp717CFl2rx7IJkOoicxt--
