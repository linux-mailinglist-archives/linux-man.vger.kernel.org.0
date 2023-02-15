Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1B669871E
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:11:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbjBOVLd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:11:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbjBOVK6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:10:58 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A891210F4
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:10:55 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso2646706wmp.3
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OQV5aLkbfM58cMp44rJjm2cn/3fOLDxvuWOiUu7eaHQ=;
        b=qTQYcfHiWzGV14f7jHmIPJlfSUhYkVCcfI6miasxekr0M93HGtACigZBPlQKX4384E
         Vyi0veDufJ25tIGpV1HBAwRjeRs5pjcZymRhN+8JUhHFFEm7VWmq29x1YEgaEry1pgWH
         2TQlZSQWI9XZUGY0POqwstNmBdzfcED1uidtfQJ0bjhVj4L56PUb1CDUAgwTaLH89WmN
         /IcHSEpLRpkTC5aGjy45BQtpHRy2qaIgAhjGokSMroKfZjPO0QmRqWjP5uZUXtrYzjjh
         Zdbg+pIjVNHkQkM+lTpRqQbAgiP8NAtYg3YKM6dyvKSzjP4RvWy8YbIu+3z/TwPSDoYc
         JRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OQV5aLkbfM58cMp44rJjm2cn/3fOLDxvuWOiUu7eaHQ=;
        b=Tcp7onJ10/Dt2QCgvdp8iK91rOLpnunAn6VBy4VdUhTlWuNJj7XdJ+gW79YBKVfwct
         WzOK4MnRXRB3HDW6ri86+vnhsmm/NdOJltTjUd1X2qCQoZtTzpclhKhfLPPI/X8rW3mZ
         y9tj6OCIvetsIrgt45XgUJN7NPL2jDBAnEKheOy9sfu4FWaatBEhMjj61oXP+bnuF1gb
         teVOaUIrCSbcf6bXkBzQWwvmQqOVepJ+3OuPxNTM3ujiaGOvY5to23vcYcg6J204433U
         +ztHrVP7FPZyklRNWc9m93/fjvIX0+hjVtqv0Y/bhVMJbNbEKrR+ZCA0WCd/k+6vi3Ng
         Hrag==
X-Gm-Message-State: AO0yUKV+jQb/AYcyDt4m2z7yG3/iUZwjcvyNlPl95uz+LddCXDQgzwMZ
        Md2JFTz4IMtaz1Igl5Rt4uU=
X-Google-Smtp-Source: AK7set8yPWG7xMq5LzV9/mq2VN7WQbbBEYKHtkttnZqAjVfOE7erNckEqw1G4dEKR6OSmfZ+sowdog==
X-Received: by 2002:a05:600c:1716:b0:3dc:5302:ad9 with SMTP id c22-20020a05600c171600b003dc53020ad9mr3586138wmn.27.1676495454139;
        Wed, 15 Feb 2023 13:10:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l9-20020a05600c4f0900b003dff870ce0esm3667186wmq.2.2023.02.15.13.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:10:53 -0800 (PST)
Message-ID: <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
Date:   Wed, 15 Feb 2023 22:10:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xYMf2PscB8rXtntWzDKQrPiN"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xYMf2PscB8rXtntWzDKQrPiN
Content-Type: multipart/mixed; boundary="------------YHIFj47g4rpGDklB0IRzIUrS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>

--------------YHIFj47g4rpGDklB0IRzIUrS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/15/23 21:17, Brian Inglis wrote:
> ---
>  man2/chmod.2 | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/man2/chmod.2 b/man2/chmod.2
> index 8b5db74ed7e3..674b54368314 100644
> --- a/man2/chmod.2
> +++ b/man2/chmod.2
> @@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>  .BR fchmod ():
>      Since glibc 2.24:
> -        _POSIX_C_SOURCE >=3D 199309L
> +        _POSIX_C_SOURCE >=3D 1993\[aq]09L

Please keep all POSIX dates in a single separate patch
(unless there's another reason that I'm not seeing).

Cheers,

Alex

>  .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
>      glibc 2.19 to glibc 2.23
>          _POSIX_C_SOURCE
> @@ -45,7 +45,7 @@ Feature Test Macro Requirements for glibc (see
>          _BSD_SOURCE || _POSIX_C_SOURCE
>      glibc 2.12 to glibc 2.16:
>          _BSD_SOURCE || _XOPEN_SOURCE >=3D 500
> -            || _POSIX_C_SOURCE >=3D 200809L
> +            || _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      glibc 2.11 and earlier:
>          _BSD_SOURCE || _XOPEN_SOURCE >=3D 500
>  .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
> @@ -54,7 +54,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR fchmodat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> @@ -82,11 +82,11 @@ The new file mode is specified in
>  which is a bit mask created by ORing together zero or
>  more of the following:
>  .TP 18
> -.BR S_ISUID "  (04000)"
> +.BR S_ISUID "  (04\[aq]000)"
>  set-user-ID (set process effective user ID on
>  .BR execve (2))
>  .TP
> -.BR S_ISGID "  (02000)"
> +.BR S_ISGID "  (02\[aq]000)"
>  set-group-ID (set process effective group ID on
>  .BR execve (2);
>  mandatory locking, as described in
> @@ -96,36 +96,36 @@ take a new file's group from parent directory, as d=
escribed in
>  and
>  .BR mkdir (2))
>  .TP
> -.BR S_ISVTX "  (01000)"
> +.BR S_ISVTX "  (01\[aq]000)"
>  sticky bit (restricted deletion flag, as described in
>  .BR unlink (2))
>  .TP
> -.BR S_IRUSR "  (00400)"
> +.BR S_IRUSR "  (00\[aq]400)"
>  read by owner
>  .TP
> -.BR S_IWUSR "  (00200)"
> +.BR S_IWUSR "  (00\[aq]200)"
>  write by owner
>  .TP
> -.BR S_IXUSR "  (00100)"
> +.BR S_IXUSR "  (00\[aq]100)"
>  execute/search by owner ("search" applies for directories,
>  and means that entries within the directory can be accessed)
>  .TP
> -.BR S_IRGRP "  (00040)"
> +.BR S_IRGRP "  (00\[aq]040)"
>  read by group
>  .TP
> -.BR S_IWGRP "  (00020)"
> +.BR S_IWGRP "  (00\[aq]020)"
>  write by group
>  .TP
> -.BR S_IXGRP "  (00010)"
> +.BR S_IXGRP "  (00\[aq]010)"
>  execute/search by group
>  .TP
> -.BR S_IROTH "  (00004)"
> +.BR S_IROTH "  (00\[aq]004)"
>  read by others
>  .TP
> -.BR S_IWOTH "  (00002)"
> +.BR S_IWOTH "  (00\[aq]002)"
>  write by others
>  .TP
> -.BR S_IXOTH "  (00001)"
> +.BR S_IXOTH "  (00\[aq]001)"
>  execute/search by others
>  .PP
>  The effective UID of the calling process must match the owner of the f=
ile,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------YHIFj47g4rpGDklB0IRzIUrS--

--------------xYMf2PscB8rXtntWzDKQrPiN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtSlwACgkQnowa+77/
2zKr2w/+MtbA7ejlXXGvTeKZDkqNLwG4/Q/b11O+fGIO/h5VmnDPB01SO5U3v9Th
pIZbt7xJ6ozcU0lMmhGAWFuN1JZsK07h+3yMfwGmBXuBOV7tOmK12vBiHoYIsdeL
4zyagRpmYGGMmTz8kr8LStEjFS6jKcmslP4o/3J6mk2JR4NqaK8RSrKEdxqTUGAN
hyPgH2ijYDl4Wh4HYQWmFvU2z4Eno125ILU26XoxPnK5EECtqzgmgNP0ef+r0ZWx
LleELPZ862jq0JGa3O+FM5mGuacoMYt56fl9oUvT/v80hfLAbxwEafmrYKi0o6sA
M/FErRMXKzYOleCi84yBI/klkcuEEwDgo5nxT1QBnZRljYqAU064s9TX4+pKvQWa
8YUP/P12Tyor4cerQ3UxiTFliCwCw2E0GJn6cBivD8MLW1JHeVMtGmTFHxFEsuoM
5r5WdUx2ozRPkRGTWH8sJQ8c7hv+bPXrR1bRErKT50ZeEkSamrtheVFOflby8nW+
0SGBNk2yoBs/pY8h0oTiMClMmQYSq5muCBmnCWcemxkrKYU6f0kcO/yqcgmIMBvz
Ya4EgRz1sy6X7PGNSF4y5RInr18qYgm3szHuLQrPY3MZlDtiuEJSaRzuFBMuCmrB
HbqjqPhp3eWRwDfMmV8YQ5b76uOUIykX/gJzJ3KQE/g6xCzES4c=
=Cl5l
-----END PGP SIGNATURE-----

--------------xYMf2PscB8rXtntWzDKQrPiN--
