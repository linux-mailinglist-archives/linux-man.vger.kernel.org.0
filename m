Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08B3B6A7613
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 22:21:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjCAVVf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Mar 2023 16:21:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjCAVVe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Mar 2023 16:21:34 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040A14ECD5
        for <linux-man@vger.kernel.org>; Wed,  1 Mar 2023 13:21:23 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l25so14673363wrb.3
        for <linux-man@vger.kernel.org>; Wed, 01 Mar 2023 13:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lm20eAM/cQEJQbKOqXKUQG/TQHxs4yvyH36qsZeeUpw=;
        b=jw0K0zCGMeY9C/AOH3KVQWVy82XtEmJGmrncckkKmmo1dfrq2kvX7J5xLMQxf68nLx
         bMsoEleFfg7EjdJnHTXPVEldbn4fYY2ccTy/TS32XMVohpVZUHRpk8xYIqXFT5sgIKCR
         buV8C3FH4O8VP6mBj9VV7p+tDnks+BojJAFa4a/OKxkC5ETXeuY7iFeLJmE5V4Texx5A
         yJiEUpIRwh8novs7OQROwc9LnbOsInUy9CEMnpAhLBE4dHTWKbDjEdHs+egCQBaA3Acy
         rgaZWt1vX6lTmwi+zdMc5MC7hS9+2h+8YcbyQrMRjbtWqZzzvYW06dD1cDUKoQNTE+n2
         LwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lm20eAM/cQEJQbKOqXKUQG/TQHxs4yvyH36qsZeeUpw=;
        b=OUKJPu2EPrzF9jbXgtaYyf1yn3bsbCA+WzqTMt+67SzRIn31YflGJRXI5VM9kdoTF+
         FxVb4I/ResnO5TE1GXIZFV//3T9ii/aXH6UU0RFDWLXY51bo7dir7vsACt7cyjcEp5S8
         uXX5UZILnDgs6ZYpOEHglutAo4v4HL4CzL4RxMcaXHWEoQIl/XHILbOHkRRSX6eFiR8x
         Zpfz/uKqI6wDa1KpKgizYnKJY6hY71BS1MK8mdNFJxAK44UTmKB2Hc8K6rLPezGfLENU
         r5yQbqXOk6Lt3gmCI+nSufvLsP/98rW3gn2hPa6IyCc5WbO/biooSXr/VX3NODHuX+e4
         UjYg==
X-Gm-Message-State: AO0yUKWSKRo3daI9JHX0J/eWrTEY44ChlHm0ugz3dZ32ddElXLajZWD+
        S6Lx5jtded1+gjyHwc9gMU9CEpFpJQ0=
X-Google-Smtp-Source: AK7set/Dfn0g4rpHius5N2qv15MtNWqoEZAVfhi9r0Owh/YPalCI9oj4128k0GVNlRCFR5BZFS+C/A==
X-Received: by 2002:a5d:51cd:0:b0:2c7:11a5:d7bc with SMTP id n13-20020a5d51cd000000b002c711a5d7bcmr5486878wrv.43.1677705681246;
        Wed, 01 Mar 2023 13:21:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2-20020adfe602000000b002c561805a4csm13913520wrm.45.2023.03.01.13.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 13:21:20 -0800 (PST)
Message-ID: <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
Date:   Wed, 1 Mar 2023 22:21:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <20230228205224.5991-2-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230228205224.5991-2-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6W5L1BgFRT1a86TgDArNwz35"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6W5L1BgFRT1a86TgDArNwz35
Content-Type: multipart/mixed; boundary="------------S0ShvAnbYxemF5Bbe44nKRgR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org
Message-ID: <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
Subject: Re: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <20230228205224.5991-2-gnoack3000@gmail.com>
In-Reply-To: <20230228205224.5991-2-gnoack3000@gmail.com>

--------------S0ShvAnbYxemF5Bbe44nKRgR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

In the subject it's not so important, but for consistency with the
language used within the pages, I'd ask you to rewrite it as Linux 6.2
(and similarly for patch 1/2).

On 2/28/23 21:52, G=C3=BCnther Noack wrote:
> https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3=
651
> ---
>  man7/landlock.7 | 82 +++++++++++++++++++++++++++++++++++++++++++++++--=

>  1 file changed, 80 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index f70a01484..9ddb17ae8 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -64,9 +64,38 @@ Execute a file.
>  .TP
>  .B LANDLOCK_ACCESS_FS_WRITE_FILE
>  Open a file with write access.
> +Note that you might additionally need the

"Note that" is usually redundant.
See:
<https://lore.kernel.org/linux-man/20210729223535.qvyomfqvvahzmu5w@localh=
ost.localdomain/>
<https://lore.kernel.org/linux-man/20230105225235.6cjtz6orjzxzvo6v@illith=
id/>

> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +right in order to overwrite files with
> +.BR open (2)
> +using
> +.B O_TRUNC
> +or
> +.BR creat (2).
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
> @@ -231,6 +260,53 @@ To be allowed to use
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
> +.BR "O_RDONLY | O_TRUNC" .

Expressions should go in italics.  See man-pages(7):

       Expressions, if not written on a separate indented line, should
       be  specified in italics.  Again, the use of nonbreaking spaces
       may be appropriate if the expression  is  inlined  with  normal
       text.

Cheers,

Alex

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
> @@ -257,6 +333,8 @@ _	_	_
>  \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
>  _	_	_
>  2	5.19	LANDLOCK_ACCESS_FS_REFER
> +_	_	_
> +3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
>  .TE
>  .sp 1
>  .PP
> @@ -302,7 +380,6 @@ in kernel logs.
>  It is currently not possible to restrict some file-related actions
>  accessible through these system call families:
>  .BR chdir (2),
> -.BR truncate (2),
>  .BR stat (2),
>  .BR flock (2),
>  .BR chmod (2),
> @@ -340,7 +417,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_FIFO |
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
> -        LANDLOCK_ACCESS_FS_REFER;
> +        LANDLOCK_ACCESS_FS_REFER |
> +        LANDLOCK_ACCESS_FS_TRUNCATE;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D -1) {

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------S0ShvAnbYxemF5Bbe44nKRgR--

--------------6W5L1BgFRT1a86TgDArNwz35
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP/wckACgkQnowa+77/
2zKIoBAAm62oOHJ46qb6aH+ivhYae6mSzE2aGHPgN4flIUi8bXoobnb/9pfrAZIw
m3pUdZHl9F4qwxkNNCFy18DrAjaUK7gmVqdg2YpWZi+yYJ2Ec+RVMKW8EbppVRHP
eArVtrAGtdYfeE6/lOB4BkmyE725LG+JyJ6odNLp6qJZdSWzACx71unxQ9oIWIqg
Z344M/cRxKVTsk/E1wYg4oPx/vNZDl2GlEz1AWw5yD+XSQQln+oKl4EcFGBZqQ5t
VaKGjDFoY7cx1TQh9E2FccYtyY+7+8RlKFk17az3v4GU/w9o1J8uPaYU31TVD2UP
FPE5R4ZGQIxmB25KKNGbEJXPbF9Iy+wHlkQqL6CxfCBITOl48SekGMuxtahTG/+r
CzwpLNHbr2TIcVcQedh3pyL5ChFXmiaUxvs4bBN2usx5qQobESVHraRi4SY4TdrB
dfyo4ATQ1I0NQ8/ZcAmEoxp2bVcfu+VfOzq/Pa5iqSH+qsqJ0FDFSqZYilTJ15+h
rYRkVmy9FPEasPS1yJDwFO2n507b/r+SovQ3M7sByXcC3SVXPd0ACoJsMbEx/AQD
P2MkroUrM+R0xTChzm1hfSNtCZ5dIY46LefRArT4iysvZIHojvQzVL9XAbFzYQFN
FlUuMoHtrWmNNjjt+pDCwn7VB7sGwI9VyHcejTlKaMwm0sNfvo8=
=L9KC
-----END PGP SIGNATURE-----

--------------6W5L1BgFRT1a86TgDArNwz35--
