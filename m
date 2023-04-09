Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2846DC1F0
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 00:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbjDIWmg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 18:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbjDIWmf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 18:42:35 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 972813581
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 15:42:33 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id l18so3067361wrb.9
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 15:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681080152; x=1683672152;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFX/bj8sr+gsylDXFKp/zXdVRn77ypYQEAPE9Gq8KjU=;
        b=hXp9eilQ9dfr8J0z1mE80OOMyUxvkwn1XoJk4tCRE76QW2qvrFBM/psanIMdk8Xo/O
         QyNR5SwShF0EmCdMznuarmk+PN83GssQTggf3MymIiAQKeXeYaM9czFs/hfw/ICRTegb
         Mw/aYMY/K68k6Kw4RLjB1MONElmiQOePmqfArC/KWlTjpweY9OR6//am5RbTUG2LxZpy
         JyqPXxat2/hZ5sj4d1hHbPk0ijeZxI2SDCKinq+OWOcjxV4HLMx1v+GGX0mzdn+Gmu9T
         +cROP+ZbJCYlwH5T6LxemANf5xEMCor19Bef92Qgv71Kbpp7fsdY/+0tfAXUtK8axhd0
         K4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681080152; x=1683672152;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YFX/bj8sr+gsylDXFKp/zXdVRn77ypYQEAPE9Gq8KjU=;
        b=nl2NYLkw+C3KVXI34OoyOvgrtAK29JyFlZarUkzvQMvoSACuTEz8eA0sOn/r8VGYYz
         zi2p1bT75edIjKjNRt426CyUxws0+z7mjBhAnkFgMf/mUcvsLaim+njg4kLidF/NSeaY
         AQy3hrOhB7VxqlRF0p8m+X2az0OKhO5smiH0qkhL2zwU5dW4ZObd24PgXEeFSKT1d5uQ
         itDXXabRSK3p3eMZU8twOtCbrXCqP9o/TvrYGsHgFB6Kw3q61YyRdYjH785FwSRxSMhx
         15jMi9ASNcyVQovjauUpNzvKj75kfWk5Zm0i92LM5PU8LjZX5MGIQYWy2l2NYuKIB6fF
         ug9w==
X-Gm-Message-State: AAQBX9fUD0ctMq3fgvOrWAyzUKa7+2RWMaqe6s7tQOi6nGgsLBwKhZsO
        hssn4KsJM7RPGDt1bgcMzz9KwqcbS0o=
X-Google-Smtp-Source: AKy350b0KPET7K3xbtxCKiOeMsUGosA3Wl4DRDsUP00r5dI85DbsQNL2DZ3zBEjNdxHadgbSOm1wNg==
X-Received: by 2002:adf:e0c1:0:b0:2ef:b4a9:202f with SMTP id m1-20020adfe0c1000000b002efb4a9202fmr5588745wri.69.1681080151759;
        Sun, 09 Apr 2023 15:42:31 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v14-20020adfe28e000000b002e4cd2ec5c7sm10161948wri.86.2023.04.09.15.42.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 15:42:31 -0700 (PDT)
Message-ID: <e960bc8a-0b96-e36b-230f-590d5f60d7c6@gmail.com>
Date:   Mon, 10 Apr 2023 00:42:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
 <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
 <z4p3ky24whjkpqhsnn723fj7cjqn5yb46h2jdqkwth27o7tf4s@ggz3jtz2uz2s>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <z4p3ky24whjkpqhsnn723fj7cjqn5yb46h2jdqkwth27o7tf4s@ggz3jtz2uz2s>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NMpIxLeuDALHDwSEMoV72Tmf"
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
--------------NMpIxLeuDALHDwSEMoV72Tmf
Content-Type: multipart/mixed; boundary="------------Hdm044cOK9EiaDARtT1mx64N";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e960bc8a-0b96-e36b-230f-590d5f60d7c6@gmail.com>
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
 <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
 <z4p3ky24whjkpqhsnn723fj7cjqn5yb46h2jdqkwth27o7tf4s@ggz3jtz2uz2s>
In-Reply-To: <z4p3ky24whjkpqhsnn723fj7cjqn5yb46h2jdqkwth27o7tf4s@ggz3jtz2uz2s>

--------------Hdm044cOK9EiaDARtT1mx64N
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/10/23 00:27, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Sun, Apr 09, 2023 at 11:43:05PM +0200, Alejandro Colomar wrote:
>> Applying: filesystems.5, erofs.5: add erofs documentation
>> /home/alx/src/linux/man-pages/man-pages/.bare.git/worktrees/master/reb=
ase-apply/patch:65: trailing whitespace.
>> Must be given as many times and in the same order as=20
>> warning: 1 line adds whitespace errors.
> Fixed.
>=20
>> On 4/9/23 19:16, =D0=BD=D0=B0=D0=B1 wrote:
>>> +There are two inode formats:
>>> +32-byte compact with 16-bit UID/GID, 32-bit file size, and no file t=
imes,
>>> +and 64-byte extended with 32-bit UID/GID, 64-bit file size,
>>> +and a modification time
>>> +.RI ( st_mtim ).
>> The above is a bit difficult to parse due to the ands and commas.
>> How about a list (.IP \[bu] 3) with the two entries or something
>> like that?
> Opted for .br and \[bu], .IP gets too tall and sparse and for my taste;=

> feel free to editorialise it to the .IP spelling tho.

You can use '.IP' without blank lines, with '.PD 0'.  I'll do that
myself.  It renders as:

       There are two inode formats:

       =E2=80=A2  32=E2=80=90byte compact with 16=E2=80=90bit UID/GID, 32=
=E2=80=90bit file  size,  and
          no file times
       =E2=80=A2  64=E2=80=90byte  extended with 32=E2=80=90bit UID/GID, =
64=E2=80=90bit file size, and
          a modification time (st_mtim).


>=20
>>> +Defaults to yes
> .
>=20
>>> +.BR domain_id =3D \fIdid\fP ", " fsid =3D \fIid\fP
>> You could use .TQ:
>>
>> .TP
>> .BR domain_id =3D \fIdid\fP
>> .TQ
>> .BR fsid =3D \fIid\fP
>>
>> (similarly above in dax, acl, and user_xattr)
> Applied.
>=20
>>> +.B erofs
>>> +images are versioed through the use of feature flags;
>> s/ioe/ione/
> Applied.
>=20
>>> +these are listed in the
>>> +.B \-E
>>> +section of
>>> +.BR mkfs.erofs (1),
>>> +.SH NOTES
>> You could use the CONFIGURATION section for this.  :)
> Had it in NOTES because that's where tmpfs.5 has its
>   In order for user-space tools and applications to create tmpfs
>   filesystems, the kernel must be configured with the CONFIG_TMPFS
>   option.

Yeah, I guess.  I feel NOTES is a doesn't-fit-elsewhere section,
which is how it's been used so far.  I'm trying to improve that
by using the appropriate sections, but as you can see, it's not
fun fixing so much stuff.  :)

>=20
> Moved to CONFIGURATION, you might want to move it in tmpfs.5 too.

I had enough with reorganizing VERSIONS, STANDARDS, and HISTORY.
Maybe for next year.  I do want to, but if I start, I don't know
where I'll stop.

>=20
>>> +The kernel must be configured with the
>>> +.B CONFIG_EROFS_FS
>>> +option to mount EROFS filesystems.
>=20
>>> +.I Documentation/filesystems/erofs.txt
>>> +in the kernel source.
>> I prefer saying Linux rather than kernel.
> Also applied, but note that tmpfs.5 also spells it "kernel" in both
> equivalent hunks.

Similar underlying issue as with NOTES.

>=20
>>> --- a/man5/filesystems.5
>>> +++ b/man5/filesystems.5
>>> @@ -48,6 +48,12 @@ filesystems in the Linux kernel.
>>>  See the kernel documentation for a comprehensive
>>>  description of all options and limitations.
>>>  .TP 10
>> Bruh, still have pages that specify the indentation...
>> Would you mind sending a patch that removes these in fs(5),
>> or in all the pages you feel like, if you want?
> Too drunk to evaluate all of them rn, killed the one in filesystems.5.

Nice.

>=20
> Scissor-patch below.
>=20
> Best,
> -- >8 --
> Subject: [PATCH v2] filesystems.5, erofs.5: add erofs documentation,
>  clean up indent
>=20
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

I prefixed that version with "Linux ".

>=20
> Also, remove explicit .TP indent in filesystems.5 since we're already
> touching this hunk: all entries sans iso9660 and Reiserfs fall within
> the default prevailing indent, so no need to specify a wide one.

Fair enough.

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks!

Best,
Alex

> ---
>  man5/erofs.5       | 95 ++++++++++++++++++++++++++++++++++++++++++++++=

>  man5/filesystems.5 |  8 +++-
>  2 files changed, 102 insertions(+), 1 deletion(-)
>  create mode 100644 man5/erofs.5
>=20
> diff --git a/man5/erofs.5 b/man5/erofs.5
> new file mode 100644
> index 000000000..933e830b8
> --- /dev/null
> +++ b/man5/erofs.5
> @@ -0,0 +1,95 @@
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
> +.br
> +\[bu] 32-byte compact with 16-bit UID/GID, 32-bit file size, and no fi=
le times,
> +and
> +.br
> +\[bu] 64-byte extended with 32-bit UID/GID, 64-bit file size,
> +and a modification time
> +.RI ( st_mtim ).
> +.\" See fs/erofs/super.c:shmem_parse_options for options it supports.
> +.SS Mount options
> +.TP
> +.B user_xattr
> +.TQ
> +.B nouser_xattr
> +Controls whether
> +.I user
> +extended attributes are exposed.
> +Defaults to yes.
> +.TP
> +.B acl
> +.TQ
> +.B noacl
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
> +.BR dax
> +.TQ
> +.BR dax =3D always | never
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
> +Must be given as many times and in the same order as
> +.B \-\-blobdev
> +was to
> +.BR mkfs.erofs (1).
> +.\" Nominally there's a device_table feature and it somehow scans(?) f=
or them,
> +.\" cf. super.c:erofs_scan_devices(), but I haven't gotten it to work
> +.TP
> +.BR domain_id =3D \fIdid\fP
> +.TQ
> +.BR fsid =3D \fIid\fP
> +Control CacheFiles on-demand read support.
> +To be documented.
> +.RE
> +.IP
> +.SH VERSIONS
> +.B erofs
> +images are versioned through the use of feature flags;
> +these are listed in the
> +.B \-E
> +section of
> +.BR mkfs.erofs (1),
> +.SH CONFIGURATION
> +Linux must be configured with the
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
> +in the Linux source.
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 3c15f14da..ba795f956 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -47,7 +47,13 @@ short description of the available or historically a=
vailable
>  filesystems in the Linux kernel.
>  See the kernel documentation for a comprehensive
>  description of all options and limitations.
> -.TP 10
> +.TP
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

--------------Hdm044cOK9EiaDARtT1mx64N--

--------------NMpIxLeuDALHDwSEMoV72Tmf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQzP08ACgkQnowa+77/
2zK6PQ//bjNqz/5UyQvayVUc0ZV/7wbnBF9xVmDS/Dz4D/6ZXfqT++hgxR0JJna8
DztE33IW5HWwJnp9cIaw1Iv9WjM1vIzAfLLmFpVtmANtEsf8h1PXNEDpFjqtVKrO
7e93CtTYtpSHJMqSurqiYOXs5rpLihQ8udpnvsQiVK2vlEv1GC1uPbo+8rYnjsbK
ixrsJZN3jyPaSbtjeiSCQGtZGjZF0Kb4hyC9tvbeiMkXGuJZT6dA0tRdxBsjBKCw
gZ5tfaCijj58YnIsXl0sKxXMxB6cyn5O61b1yIvbDnF6Ajc+5kEh02GqGmKJ2YDn
m59sO47GWStbn3+JZtdLIrklqiz4daflEdLlqar9YvAr9FUvazBHMzk19HOWBCar
6f/Zq3VNYGZVBgihGzCjfnPKPmy0iZB5BglJOMLT2agoMj1YFmQ0pQL2SJw9olog
AbOFNBccK4ICwfudqfNgVJuejXsN9/+5EnOutfprp6Rcql0tHOfJGlmtrjSyloEx
ZfgqVxbklFB0O3xsDwK7GXFadxCDIf1m2ed4nSiDN+rlk/PFlo6AwQz3DiwpAMaF
AZ8BoXvXLCoA0hzh9WQdOawkkuKVpTftCKx2RxqprnLSqSmEBYlPY6TcKGHSvJWe
Cc9cL517+mgrr/3cCTeu1DRfHe21gbhJHo14Lqrm9YEyipld0zw=
=YX/4
-----END PGP SIGNATURE-----

--------------NMpIxLeuDALHDwSEMoV72Tmf--
