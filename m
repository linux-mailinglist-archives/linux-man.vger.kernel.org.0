Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F71E6B6205
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:21:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjCKXVK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjCKXVJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:21:09 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD5267818
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:21:08 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id f11so8185775wrv.8
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678576866;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wg5E9GWmFhssW4fqyTH+YHEWV+Jvv5QauM/JbglTGCo=;
        b=ZENpaUboj51BdoPr/3XfMcPojXaz6b5cQV9bPhJLYhH4vHkLSPCZGMdikVJBrugthd
         NU4siP/DmHYh6J3J9LbwSo8aXa1F5YYEnBcnF9G58ViTpT8iN9Q6m+xVwx57et6ef//0
         PETtGFUjROKwESEveBm/luMZFklYNAqfihxJgURVe6ZnFctD0NVhgn2coLJ+oMi4OLZy
         rRtqFEGwhoGIcNMSAHBWFb4FIFe+tAVqPSCAar9ZQ21CQNU/blvm1A/i8ntJg8ciZpiA
         OaInfytTf4xtKRQS41xHUKtkSObjoxOqFglDk1C9DzlS30GzBNBzP+sp7+nggye5wWSo
         yFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678576866;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wg5E9GWmFhssW4fqyTH+YHEWV+Jvv5QauM/JbglTGCo=;
        b=fy2l6sqSuITbFwzbRIDD42uNNgkCioxmdi657bQvCA3/Sg8CRwiHfiS36cNSK6gdI3
         4Vmh66jubRbVdbmedEqJlsP7HJYuQz4RFVYHZ9d2zR8eiyIxq7A/aA7GXUqG2sBhT24L
         732rCywArwlVdEfl+IzkOSyS3LUbJMD5u1b4snsr2eh8iFi4yP4SxfZK36ZQNHRunSYJ
         xFTHnM3srQefn60+0iGN5mH8RqemsvDbH/zz/cV9VjyL17wY0yy/Xf0wH+w9xZxea51h
         oDGrqkjTQ0Hh1d6IUoCRF2v2FNuj73+K0wnbe3u9/fy6CYWNnKp3f67d8Bbauu+LbJVa
         0rew==
X-Gm-Message-State: AO0yUKURRfbYDMi3psYcNTXUTzd0P+b55WJr9VCn5hWJ5BpBlULkANoE
        NJljoXs/H7ukWKTAWRD915CEhQZDwUE=
X-Google-Smtp-Source: AK7set/La6833Xv0HTuOvcPUyMwbPV5SfeRnkZ5Sl902hcTNDZBw8XVlB7nvTpoqdxm30CpXnKMHIA==
X-Received: by 2002:a5d:6d41:0:b0:2ce:8234:3a5b with SMTP id k1-20020a5d6d41000000b002ce82343a5bmr8808918wri.22.1678576866431;
        Sat, 11 Mar 2023 15:21:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c10-20020a056000104a00b002c70e60eb40sm3566653wrx.11.2023.03.11.15.21.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:21:05 -0800 (PST)
Message-ID: <6c0d437c-8d7e-ddd1-a333-45812dd26629@gmail.com>
Date:   Sun, 12 Mar 2023 00:20:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page time_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171356.GA4836@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171356.GA4836@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------H71EUYFR2jWIX30kDjnR5NVa"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------H71EUYFR2jWIX30kDjnR5NVa
Content-Type: multipart/mixed; boundary="------------9Ym3Y4B5hY0QbV1IxJ95WwQp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <6c0d437c-8d7e-ddd1-a333-45812dd26629@gmail.com>
Subject: Re: Issue in man page time_namespaces.7
References: <20230311171356.GA4836@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171356.GA4836@Debian-50-lenny-64-minimal>

--------------9Ym3Y4B5hY0QbV1IxJ95WwQp
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    /proc/PID/timens_offsets =E2=86=92 /proc/[pid]/timens_offsets=
?
>=20
> "Associated with each time namespace are offsets, expressed with respec=
t to "
> "the initial time namespace, that define the values of the monotonic an=
d boot-"
> "time clocks in that namespace.  These offsets are exposed via the file=
 I</"
> "proc/PID/timens_offsets>.  Within this file, the offsets are expressed=
 as "
> "lines consisting of three space-delimited fields:"

Fixed, but in a different direction:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
b1b42a5dbcaeb973f4c0a5e74fc01b24955ea6ba>

Variable stuff should go in italics, except when the surrounding text
is already in italics, in which case it goes in roman.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------9Ym3Y4B5hY0QbV1IxJ95WwQp--

--------------H71EUYFR2jWIX30kDjnR5NVa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDNkACgkQnowa+77/
2zJzFQ//WyFgfy+8/Y6RARqPhIuLCeU+ETUIhJdriM/XSIGfIqGy7PgBoxOuYA/Q
l0L4tNYydufTNXKcr6sxzN0BD6z89o1BfeH4AQ14KxsrgCFaKsbyZzLiP5RlW8FI
/jiBxxDaTwuZ0CorsZ9JQToi6XT0c2PIkp+8q8MYXhW3S1OM0GENWGjXnIynmp5Q
7+VKpAXQXpQcOvcJrtDm6Rz4C4C0iZcgQFmLkolG6ksGD8TrIkXwm2rgGSLpFUbF
1tb/dNsOXUJoDreMkAWlytm3zzD5tc05xR64W4xAFkNzbLOvgBMSDKCOTdMs+/0q
1CDa15n6rYcTdVn5itg8ZPCPXnZ9W5A0uaXwLjfSHaqqh0+YMuNfU/q8L8mc5agH
fzcwq8U8TQV2orNZQtBZo2tCFzxHJY6yHpUAC1L2a6jp5VJL9tigkPkwlo0iNbnY
i50TiTEYbu0v9nPDnmnrf5Q+Ls4vxR3JC38vF5MhkSNKfJVlz+9R6c5D5B6vw8tT
FSCykKugC8td+WEo4xT61AeM0Unhx0JAIgyihyYRySBvLwGEn2mU56UjaazXg3mg
h1AJQGOThkVroKFc6iYAHbPuxKM6Y0kkTVjViUdkT+P8y9SGePnvjlc6Wy9iK/8o
KVVYGh0og+cCLOLw8DqkpLOUfr+s8kL8BpV/u+7DnwTOGcZLcnA=
=pUxW
-----END PGP SIGNATURE-----

--------------H71EUYFR2jWIX30kDjnR5NVa--
