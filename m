Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE0D6D2B36
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:20:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjCaWUW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:20:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229998AbjCaWUV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:20:21 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2453F1EA3D
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:20:20 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d17so23838850wrb.11
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680301218; x=1682893218;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0CGk8o0MVl6BbnOU/CWEyQ4MmcmI6ddO4zEazCj2IS8=;
        b=eK1rgBrPVh0XHxW3jV4p1H1Rc36EMmFzyE68tJk25ZNdajGm5/QS40Y+Vx/tPLT5yK
         OdO5eWkPGB3bLJI2kNmq5lYblZAWur4hPgw7wGa6goNBwc8HV2L962l/8t1fFISyb77j
         Kg5SmzAQYsneq+QImDtr1ZHA8B1s1HNc6WgFIUo4oyeAKBAKTDUjb/lCfpWLOv6K6+t4
         B/KyJugPb8+gvR7zcDdJFBeA+XqDMgFTBptf0xl7bG8eg/fCOjYLDJtQ/A6qZ6m36mxF
         sGAajKBMmcG1wkub+cakRQIIxz8N0e5sNDBQLyCY/7qhGgYyMijD2FQqPXbwXK55gp5Q
         h3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680301218; x=1682893218;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0CGk8o0MVl6BbnOU/CWEyQ4MmcmI6ddO4zEazCj2IS8=;
        b=2wBm03i1FrD44IRPKpHHQ/PFIZ5mWPxap0fbzDwrE5TGm/sBd592cwBfMgfkmA0h4F
         6jEFjo0HpoNlTEp0OyIFLcGJ3VFktOzYLpHcLE69bN/DMmu/Fb9K8kma7raFucKybQeH
         f+C9+hk9I/ghcYbhmcGGvDM1f1amW/aNiNGLr7C9DrT59qcaMPqElM+fqOcEssNHNnFw
         aDKg0zmTtpsNWylqj5NkJvMQRnYIiB8uSiDPqcHLErbIr9yifyG0/78y8qUn5SkzjbYj
         IEwfAiz1rCNje3CqNP2EYzXIzIq+P9d4udzEQSrX825II1QZJtRfI8VPimpoLVmyNUYA
         ps0g==
X-Gm-Message-State: AAQBX9e2SFqNhuCkX1rXIKjZs38VxwQySdRX9B/H5WKLRPBZLWn7h5+B
        g2UB+QM0tOOrQ8gxuWQwec4=
X-Google-Smtp-Source: AKy350ZH8K0EPLE5YlmlS8i40eZ68T5upmXx0YCmADnqpQeR8gQu4/RgYvhnNbX3fFxeXC8kfQEcWQ==
X-Received: by 2002:adf:ec11:0:b0:2dd:11b8:8aa9 with SMTP id x17-20020adfec11000000b002dd11b88aa9mr20814730wrn.15.1680301218452;
        Fri, 31 Mar 2023 15:20:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k16-20020a056000005000b002e116cbe24esm3209265wrx.32.2023.03.31.15.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:20:18 -0700 (PDT)
Message-ID: <70b6a09f-ff21-2102-9c34-10a745573dbc@gmail.com>
Date:   Sat, 1 Apr 2023 00:20:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 2/3] landlock.7: Document Landlock ABI v3 (file
 truncation; Linux 6.2)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-2-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230324172419.117632-2-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------w1ct5HuGiS1e4ktbJcY3QZGe"
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
--------------w1ct5HuGiS1e4ktbJcY3QZGe
Content-Type: multipart/mixed; boundary="------------JtNcw7hGsiICrG4iSvR9HUnY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <70b6a09f-ff21-2102-9c34-10a745573dbc@gmail.com>
Subject: Re: [PATCH v5 2/3] landlock.7: Document Landlock ABI v3 (file
 truncation; Linux 6.2)
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-2-gnoack3000@gmail.com>
In-Reply-To: <20230324172419.117632-2-gnoack3000@gmail.com>

--------------JtNcw7hGsiICrG4iSvR9HUnY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/24/23 18:24, G=C3=BCnther Noack wrote:
> https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3=
651
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>

Patch applied.  Thanks!

Cheers,
Alex

> ---
>  man7/landlock.7 | 83 +++++++++++++++++++++++++++++++++++++++++++++++--=

>  1 file changed, 81 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index d3a7ec0d2..9c305edef 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -64,9 +64,39 @@ Execute a file.
>  .TP
>  .B LANDLOCK_ACCESS_FS_WRITE_FILE
>  Open a file with write access.
> +.IP
> +When opening files for writing,
> +you will often additionally need the
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +right.
> +In many cases,
> +these system calls truncate existing files when overwriting them
> +(e.g.,
> +.BR creat (2)).
>  .TP
>  .B LANDLOCK_ACCESS_FS_READ_FILE
>  Open a file with read access.
> +.TP
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +Truncate a file with
> +.BR truncate (2),
> +.BR ftruncate (2),
> +.BR creat (2),
> +or
> +.BR open (2)
> +with
> +.BR O_TRUNC .
> +Whether an opened file can be truncated with
> +.BR ftruncate (2)
> +is determined during
> +.BR open (2),
> +in the same way as read and write permissions are checked during
> +.BR open (2)
> +using
> +.B LANDLOCK_ACCESS_FS_READ_FILE
> +and
> +.BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> +This access right is available since the third version of the Landlock=
 ABI.
>  .PP
>  A directory can receive access rights related to files or directories.=

>  The following access right is applied to the directory itself,
> @@ -231,6 +261,53 @@ To be allowed to use
>  and related syscalls on a target process,
>  a sandboxed process should have a subset of the target process rules,
>  which means the tracee must be in a sub-domain of the tracer.
> +.\"
> +.SS Truncating files
> +The operations covered by
> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
> +and
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +both change the contents of a file and sometimes overlap in
> +non-intuitive ways.
> +It is recommended to always specify both of these together.
> +.PP
> +A particularly surprising example is
> +.BR creat (2).
> +The name suggests that this system call requires
> +the rights to create and write files.
> +However, it also requires the truncate right
> +if an existing file under the same name is already present.
> +.PP
> +It should also be noted that truncating files does not require the
> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
> +right.
> +Apart from the
> +.BR truncate (2)
> +system call, this can also be done through
> +.BR open (2)
> +with the flags
> +.IR "O_RDONLY\ |\ O_TRUNC" .
> +.PP
> +When opening a file, the availability of the
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +right is associated with the newly created file descriptor
> +and will be used for subsequent truncation attempts using
> +.BR ftruncate (2).
> +The behavior is similar to opening a file for reading or writing,
> +where permissions are checked during
> +.BR open (2),
> +but not during the subsequent
> +.BR read (2)
> +and
> +.BR write (2)
> +calls.
> +.PP
> +As a consequence,
> +it is possible to have multiple open file descriptors for the same fil=
e,
> +where one grants the right to truncate the file and the other does not=
=2E
> +It is also possible to pass such file descriptors between processes,
> +keeping their Landlock properties,
> +even when these processes do not have an enforced Landlock ruleset.
>  .SH VERSIONS
>  Landlock was introduced in Linux 5.13.
>  .PP
> @@ -257,6 +334,8 @@ _	_	_
>  \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
>  _	_	_
>  2	5.19	LANDLOCK_ACCESS_FS_REFER
> +_	_	_
> +3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
>  .TE
>  .sp 1
>  .PP
> @@ -302,7 +381,6 @@ in kernel logs.
>  It is currently not possible to restrict some file-related actions
>  accessible through these system call families:
>  .BR chdir (2),
> -.BR truncate (2),
>  .BR stat (2),
>  .BR flock (2),
>  .BR chmod (2),
> @@ -340,7 +418,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_FIFO |
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
> -        LANDLOCK_ACCESS_FS_REFER;
> +        LANDLOCK_ACCESS_FS_REFER |
> +        LANDLOCK_ACCESS_FS_TRUNCATE;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D \-1) {

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JtNcw7hGsiICrG4iSvR9HUnY--

--------------w1ct5HuGiS1e4ktbJcY3QZGe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnXKEACgkQnowa+77/
2zJZdA//dBqlt8VUkJUBxvDkPcoq8aI2JkAUZrSVlCAvexciWdTN3+KROXXbsZm5
EqhD/w2wxI7X6wtbX44wWj9PkUflb3A63Ogc6jkMqE2soe20FFbn6/JnJN4vLByU
RBn83AUyc6iSDtDbPpB+TqDdQA1l3Kh6E7q5N9C09xHPXVl7W+NtzRjesYlwEWpy
loPW4sfhbG8aHfMAbEJSzk7wvyqYUojvnKgqS80TdsHn/9r3Syk1bY1pN5rpWKSg
ET7EWAj4MDWizWMJDm0cqjLLXXSj9uLusReQV4nXiXmmLSUw7fiepEAkIYYLyDBP
LrqbFiD9lGYhqJ+gT8w5w4cpA0bIoO9tCc/bjR7iHDBgoqBwlS4aTNj/VyGk0Eae
aYdz1sAgSFLPRlZIKEdf6yJ4vdeI6UEs8x/tSeAvZ3XF4U4MR/7pAc9GmTQtLFZ4
oW1z+4zTlZ8LjhMw+/QLQjd7X3TR3njeTHVwleA+QsNOkqEr5s/CaSbbhYUC2Nwf
v5/HP5T5vBxcAif6+oKcgrmEnQTfzo/iVQYzoEOIgFDC8mCuw22r15WJrIQogiU6
amiIvph2aWqibJO9wkkzJT6lN6fjk6j2pSblb79yxZ03dg2covsmjTRbdtaVag5D
aoUi9fWaxDWgGdT8SQi4z3k1nYukIMAUeinXibwDUz/mBnvSy9o=
=MhvM
-----END PGP SIGNATURE-----

--------------w1ct5HuGiS1e4ktbJcY3QZGe--
