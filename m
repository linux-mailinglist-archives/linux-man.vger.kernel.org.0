Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE036DC188
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 23:43:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229455AbjDIVnS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 17:43:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIVnR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 17:43:17 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8F0A2697
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 14:43:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e22so2961824wra.6
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 14:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681076594; x=1683668594;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=adBT8WQCkQc2ka/yaerigt5OS7F+sfHd2XTXEn/BkNg=;
        b=nJO9JUlkiihtCJOvWVlpqenqsd44qhnN0nRX7BXTkKVRvvvP+oH+CjoFCsEZWhzkbg
         wPVZ4ehuc8z1EnsTx83g9pb+6b8lXV0NEvYH5sJVT+fiTujk6UMn2KwYtdIfYuh+3SEO
         xw4ABwJ5Z/4DLt3/SKT96AU+jN+4vBVr21s8xJonDcllrCbdBaqNIvoFJpsELmOzVM1L
         DP3LF74Ho094Imqo+9pWkzRo/Jp3XBlBpgFc1vWlTIBZk/vI0MJUvl8I4nJ32SETvEDL
         Q17Da7qvUWluzDitkSFBsrRUCH9nduKG0oEfKPIbqBvFIBZT36RRITg6o/4AJFuYaF40
         QkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681076594; x=1683668594;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=adBT8WQCkQc2ka/yaerigt5OS7F+sfHd2XTXEn/BkNg=;
        b=NrP6LXYmG2Ae5pSQw2NffDL95H3uSA8bgwKPUwvSL5viuQz0hNDMlxalXlcaSn57/c
         y6z0QWBahzmUECSdbnUpF858fbHT4TUko7AQmCncLNNRU1nd55BT04zG/9q0RMj0FmNQ
         6m9Gezwjpqbv5L1mh1H0RjPsOfxE3Xr0rNxX9q4cvv3IRsvOlMpzidNI97rMD5U2f+AI
         uy6E0MBysJToIrWbbNiZ2zF0C/mAD7ySYS0gbMqB54jQW8gZTmhIPzGDrw5SIo1tzom3
         uzZRxEND/1KfNxKVGaMIw2nQl3b5KcQhpB+Uls19OD6/q0faJfCZHv8asr4CKiJlniRp
         buHA==
X-Gm-Message-State: AAQBX9cJGQEXLNpgXaL4M/qVZ7gLDjHnoQW0XZsu5JTCdh80hsSwNTlE
        jOA8XJ3MLaJaY8ewL1DHp1eXSz9ITrI=
X-Google-Smtp-Source: AKy350aqbGOPbwg6m+sAL1aEbe/2ufzCSuacpsuOZ7zHBjbx1xoQCS7bIatUS4+cx2Ha7KsH5DwkuA==
X-Received: by 2002:a05:6000:503:b0:2d2:5396:ad98 with SMTP id a3-20020a056000050300b002d25396ad98mr5305667wrf.21.1681076594053;
        Sun, 09 Apr 2023 14:43:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k21-20020a05600c1c9500b003ee1acdaf95sm15493626wms.36.2023.04.09.14.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 14:43:13 -0700 (PDT)
Message-ID: <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
Date:   Sun, 9 Apr 2023 23:43:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------z5aFMobbVo76sanK0D0lnEyo"
X-Spam-Status: No, score=-3.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------z5aFMobbVo76sanK0D0lnEyo
Content-Type: multipart/mixed; boundary="------------arnXL2tEcRxSwNgN98tEGbDj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
In-Reply-To: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>

--------------arnXL2tEcRxSwNgN98tEGbDj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 4/9/23 19:16, =D0=BD=D0=B0=D0=B1 wrote:
> Modelled after tmpfs(5) =E2=80=92 there's a listing of mount options,
> and a summary of limitations. The feature flags are described in
> mkfs.erofs, and they're versioned and maintained upstream quite well
> there, so no need to duplicate those, since you only care on image
> creation.
>=20
> The real value add is the mount options, but I cannot figure out
> how device_id and fsid interact with the system at large,
> so I just noted they're there.
>=20
> State as of 6.3-rc5.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Applying: filesystems.5, erofs.5: add erofs documentation
/home/alx/src/linux/man-pages/man-pages/.bare.git/worktrees/master/rebase=
-apply/patch:65: trailing whitespace.
Must be given as many times and in the same order as=20
warning: 1 line adds whitespace errors.

> ---
>  man5/erofs.5       | 84 ++++++++++++++++++++++++++++++++++++++++++++++=

>  man5/filesystems.5 |  6 ++++
>  2 files changed, 90 insertions(+)
>  create mode 100644 man5/erofs.5
>=20
> diff --git a/man5/erofs.5 b/man5/erofs.5
> new file mode 100644
> index 000000000..de5b56121
> --- /dev/null
> +++ b/man5/erofs.5
> @@ -0,0 +1,84 @@
> +.\" Copyright (c) 2016 by Michael Kerrisk <mtk.manpages@gmail.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH erofs 5 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +erofs \- the Enhanced Read-Only File System
> +.SH DESCRIPTION
> +.B erofs
> +is a create-once read-only filesystem,
> +with support for compression and a multi-device backing store.
> +.PP
> +There are two inode formats:
> +32-byte compact with 16-bit UID/GID, 32-bit file size, and no file tim=
es,
> +and 64-byte extended with 32-bit UID/GID, 64-bit file size,
> +and a modification time
> +.RI ( st_mtim ).

The above is a bit difficult to parse due to the ands and commas.
How about a list (.IP \[bu] 3) with the two entries or something
like that?

> +.\" See fs/erofs/super.c:shmem_parse_options for options it supports.
> +.SS Mount options
> +.TP
> +.BR user_xattr / nouser_xattr
> +Controls whether
> +.I user
> +extended attributes are exposed.
> +Defaults to yes
> +.TP
> +.BR acl / noacl
> +Controls whether POSIX
> +.BR acl (5)s
> +are exposed.
> +Defaults to yes.
> +.TP
> +.BR cache_strategy =3D disabled | readahead | readaround
> +Cache allocation for compressed files:
> +never, if reading from start of file, regardless of position.
> +Defaults to
> +.BR readaround .
> +.TP
> +.BR dax ", " dax =3D always | never
> +Direct Access control.
> +If
> +.B always
> +and the source device supports DAX, uncompressed non-inlined files
> +will be read directly, without going through the page cache.
> +.B dax
> +is a synonym for
> +.BR always .
> +Defaults to unset, which is equivalent to
> +.BR never .
> +.TP
> +.BR device =3D \fIblobdev\fP
> +Add extra device holding some of the data.
> +Must be given as many times and in the same order as=20
> +.B \-\-blobdev
> +was to
> +.BR mkfs.erofs (8).
> +.\" Nominally there's a device_table feature and it somehow scans(?) f=
or them,
> +.\" cf. super.c:erofs_scan_devices(), but I haven't gotten it to work
> +.TP
> +.BR domain_id =3D \fIdid\fP ", " fsid =3D \fIid\fP

You could use .TQ:

=2ETP
=2EBR domain_id =3D \fIdid\fP
=2ETQ
=2EBR fsid =3D \fIid\fP

(similarly above in dax, acl, and user_xattr)


That helps searching with
/    <opt-name>

> +Control CacheFiles on-demand read support.
> +To be documented.
> +.RE
> +.IP
> +.SH VERSIONS
> +.B erofs
> +images are versioed through the use of feature flags;

s/ioe/ione/

> +these are listed in the
> +.B \-E
> +section of
> +.BR mkfs.erofs (1),
> +.SH NOTES

You could use the CONFIGURATION section for this.  :)
Check man-pages(7).

> +The kernel must be configured with the
> +.B CONFIG_EROFS_FS
> +option to mount EROFS filesystems.
> +There are sub-configuration items that restrict the availability
> +of some of the parameters above.
> +.SH SEE ALSO
> +.BR mkfs.erofs (1),
> +.BR fsck.erofs (1),
> +.BR dump.erofs (1)
> +.PP
> +.I Documentation/filesystems/erofs.txt
> +in the kernel source.

I prefer saying Linux rather than kernel.

> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 3c15f14da..c9b0bf695 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -48,6 +48,12 @@ filesystems in the Linux kernel.
>  See the kernel documentation for a comprehensive
>  description of all options and limitations.
>  .TP 10

Bruh, still have pages that specify the indentation...
Would you mind sending a patch that removes these in fs(5),
or in all the pages you feel like, if you want?

Cheers,
Alex

> +.B erofs
> +is the Enhanced Read-Only File System, stable since Linux 5.4.
> +.\" commit 47e4937a4a7ca4184fd282791dfee76c6799966a moves it out of st=
aging
> +See
> +.BR erofs (5).
> +.TP
>  .B ext
>  is an elaborate extension of the
>  .B minix

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------arnXL2tEcRxSwNgN98tEGbDj--

--------------z5aFMobbVo76sanK0D0lnEyo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQzMWkACgkQnowa+77/
2zJQoQ/5ASd1eGJh2BFlIYVtRqF5lldntDKVEaGuy02B87yP9qYnTiKS3CYaum9g
PjX4j3uToEDrEd3iK9Ij8LnToFAgCSIIS8S35bQuSW6oLfZYdW6axK+E811xvJGU
iIpdvaloDXjLevIdkOpro+iMKtO8rWBuUEcirIEqaosrRPKsITMf9bi3jZdXH20Y
v4FA/5OAphwuLGC5xwk7UT3OIBx1TbUQ8pCg72EgaghlToNeuyYogechBEq8n2JO
z7xY831LmC0fbyZX8cWoMviJAtZc/IeZELhI1H/hNLfC0Gx4NwhkGBR2L8uiLc7F
+UUfJ77RRcGxlJwFh4CWWVC4s6R9Gya7ZXDoMt8GP3ksFn7JjMQ0uQ7ReFyb6o8Y
+5GukUhnI9IJxeAJgB9a5+ayGPma81kBf/GTyirzINVybLlSMypqRItgN+bGkAIb
t8wAZ/MHmnZGXivY7mCU4wSHT/Ags92YspNJ4S8uoRQc701cEa4hiW09L1EMp4zi
facJ4Eu5ZYccza6ObTtn4PuSSr3kcKBgxWsUFggqwgOUcT34HmrdmMkx2veD3Sx1
ax9mI2xOpSlcOYohkiM6gjwe2hllGOr1YtYY5My+Fa0ymzI8tw7ZoBJMigmW4cUi
yyeLGVQSnWg1effQI17nOiJ3SLcSJ1Y/7KD9JPYF1lql2qEVh3E=
=tEuw
-----END PGP SIGNATURE-----

--------------z5aFMobbVo76sanK0D0lnEyo--
