Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADD6D73BF38
	for <lists+linux-man@lfdr.de>; Fri, 23 Jun 2023 22:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230504AbjFWUIs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jun 2023 16:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbjFWUIr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jun 2023 16:08:47 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46C081FC2
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 13:08:45 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-313df030ccaso177642f8f.1
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 13:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687550924; x=1690142924;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YKxI4AGnPmtVhHCH8E7u9ExOPEHupEmcScJi78djKn4=;
        b=hJgAj67FEzxnG6txqOgNccQCK8fVb0IAseaanRSyZofVzjQz881KcMH/a9ibE3nAgo
         tWMI/HXlRjzzJtG2nuCaDRTEo9EJTLDOsyEy2Jb7m6CZPCvXCkyPS67uELG6vcrdWor3
         VsuOgUQTYlB/WF2Z8MrQTt81xIBsvNf6Vd0Slij64Gk21EFGGTXb3nAD17lhnETkIzVU
         +KEmVUMZ+dk34cI3LiNlll32YgjISAfB4iCxL4aty5xTN3mlSMxd+JZTjsBa8NL9pChS
         IWPjdSDzASV5kSyvEgYDR1MSbsWxw/iXIaBaJJQXoX2hdMyZ9fq4FHtm2t7zUksQTa01
         wyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687550924; x=1690142924;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YKxI4AGnPmtVhHCH8E7u9ExOPEHupEmcScJi78djKn4=;
        b=O7lIxer4lm1QmUDxiIKGowpIutrCuA+TkvMTpryk+3o2o6jUKPPRneXLZksAAWWXuy
         cHCQvdMp8J8KcDygQ/2ImKQJ40ftAhl5hp5U1mi+UxwHlSjVPSz20+XdENa3WTDCll4A
         SOjzvHoeKlnPmX7xUC47a6bBZAFL+5vjNlqo1ucW6+O2bPmzx6RSx+TDm3D7PLcGvaNl
         WF0LiJwWbJpgKU1EbIBjWpDuPuS66Iov3hHWWJAHhdaeEA1dgJtoB+vooKgaFcIrWgbN
         G2qqWwiClX20JsEdr97mXt6ZVcTBQWzNP1amHHeW8mhSlFQyeMICiB9q+UEGXw1jr6iA
         ODug==
X-Gm-Message-State: AC+VfDzyItOV8Gmxad6CxUjdWHIObJWBtP1kIw9un2nySd48dy9ZsCGg
        wvN9R94pBkRUWlNGkCmS13Ra99TjbPI=
X-Google-Smtp-Source: ACHHUZ7fwa8Uyc8tWkgIJ9iqJ9J7fYKvMerC2po+BX7HRy2sdqEMhc/EJLPoFrJNg4nFLhUuJ2dp4g==
X-Received: by 2002:a7b:cd97:0:b0:3f9:c1b:83c3 with SMTP id y23-20020a7bcd97000000b003f90c1b83c3mr13593676wmj.2.1687550923300;
        Fri, 23 Jun 2023 13:08:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c024e00b003f8d770e935sm3289241wmj.0.2023.06.23.13.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 13:08:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <a24c9d24-c131-5dcf-3089-353e2451a9e7@gmail.com>
Date:   Fri, 23 Jun 2023 22:08:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Reply-To: alx@kernel.org
Subject: Re: [f]statfs(2) shaded as deprecated?
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <f54kudgblgk643u32tb6at4cd3kkzha6hslahv24szs4raroaz@ogivjbfdaqtb>
In-Reply-To: <f54kudgblgk643u32tb6at4cd3kkzha6hslahv24szs4raroaz@ogivjbfdaqtb>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0eAWcrdnUogI7a8d0dQO0rR1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0eAWcrdnUogI7a8d0dQO0rR1
Content-Type: multipart/mixed; boundary="------------EIUYwokSWdmjYapIO9qUEAwF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a24c9d24-c131-5dcf-3089-353e2451a9e7@gmail.com>
Subject: Re: [f]statfs(2) shaded as deprecated?
References: <f54kudgblgk643u32tb6at4cd3kkzha6hslahv24szs4raroaz@ogivjbfdaqtb>
In-Reply-To: <f54kudgblgk643u32tb6at4cd3kkzha6hslahv24szs4raroaz@ogivjbfdaqtb>

--------------EIUYwokSWdmjYapIO9qUEAwF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 2023-06-23 21:58, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> After the bookworm update I've found that statfs.2 is shaded
> [[deprecated]], citing
>   LSB has deprecated the library calls statfs() and fstatfs() and tells=

>   us to use statvfs(3) and fstatvfs(3) instead.
>=20
> "LSB" doesn't appear to be, well, anything, inasmuch as
>   man-pages$ git grep LSB
>   Changes.old:        Remove statement that LSB deprecates the function=
s
>   Changes.old:        being deprecated in any of the LSB specs).  Rathe=
r, LSB simply
>   Changes.old:        doesn't specify these functions.  (LSB 1.3 had a =
spec of
>   man2/statfs.2:LSB has deprecated the library calls
>   man3/gets.3:LSB deprecates
>   man5/elf.5:.B ELFDATA2LSB
>   man-pages$ git grep -i 'standard base'
>=20
> I, logically, know that LSB refers to the linux standard base, but I
> don't see how it's relevant here. What's the stated reason? Is this par=
t
> of any publication?
>=20
> This function is not marked as deprecated in either glibc or musl,
> and, indeed, on both implementations statvfs is just
>   return statfs_to_statvfs(statfs(...));
>=20
> Normally, like who cares, and statvfs is the standard interface!,
> but they carry disjoint data; they agree on
>   f_bavail f_bfree f_blocks f_bsize f_ffree f_files f_flag/f_flags f_fr=
size f_fsid f_namemax/f_namelen
> but struct statvfs has
>   fsfilcnt_t f_favail;  /* Number of free inodes for unprivileged users=
 */
> to which glibc says
>   /* XXX I have no idea how to compute f_favail.  Any idea???  */
>   buf->f_favail =3D buf->f_ffree;
> (this bug appears unnoted in the manual) and, much more importantly,
> struct statfs has
>   __fsword_t f_type;    /* Type of filesystem (see below) */
> which is removed in struct statvfs.
>=20
> (struct statvfs also has one field for f_fsid whereas it's two fields i=
n
>  struct statfs, and this is truncated during the conversion;
>  this appears to just amount to a loss of entropy, so.)
>=20
> The standard fully allows having having the field there as an extension=
,
> and thankfully both musl and glibc carry six ints of padding in
> struct statvfs, so this could be done, but isn't.
>=20
> (Indeed, on glibc/Hurd struct statvfs already has an __f_type in there;=

>  this should be an uncontroversial change.)
>=20
> Nevertheless, statfs() is shaded deprecated in favour of statvfs(),
> contrary to all implementations, on shaky ground, and statvfs() cannot
> actually replace statfs().
>=20
> To this end, then:
>   * note that under Linux libcs, f_ffree =3D f_favail
>   * unshade statfs(2) as deprecated
>     (instead put a note at the end of the SYNOPSIS saying
>      "Use the standard interface (statvfs(3)) unless you need f_type."
>      or something to that effect?)
>   * post to glibc a patch renaming __f_type to f_type on Hurd
>   * post to glibc a patch replacing one of the __f_spares with f_type
>   * ibid. but musl
>   * once that lands, /then/ maybe mark statfs() as deprecated
>     (for weird types and nonportability)
>   * add f_type to statvfs(3) as "Filesystem type (Linux only, see
> 	statfs(2) for possible values)"
>=20
> I've cooked up the libc patches but wanted to see if we're in agreement=

> here (and also wanted to have a list link to include in the messages).

Seems important enough to answer promptly.  I agree with you.  Go ahead
and propose a patch.  I'll go back to my temporary retirement, and may
take some time to apply the patch when you send it, though.

<https://lore.kernel.org/linux-man/dc425a39-c16f-51b2-6940-2d4815b5cb73@g=
mail.com/T/#u>

Best,
Alex

>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EIUYwokSWdmjYapIO9qUEAwF--

--------------0eAWcrdnUogI7a8d0dQO0rR1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSV+8IACgkQnowa+77/
2zLUHQ/9GWUIPFlEiwNPAxZWQJ2yGPsMyb77rpvJF0xtWas/JmzyymtQDiklUZau
plEEBWcs1MXMmO/DrC7eg6GhlX50dOxMwsIyfmkNJGeTDFyzkjqu4fH9f4F4OCf+
C9z4LZepCKfUjWB6q2lGWShbHnlhNAALIwR65GW7Dgqa0UmrDcWg1ogUOHuU2sZN
qOG4LVjnWNQ10f0aCNWUvnOIdGVrWyvCTioSrzTe3nQixI7nE1j0716u7m6eLdIl
xvayr39pGyF1VR5tuel069YjGfi3PiooNlZAaXPCuqt5FvcLoADdwplWvIhSGgj8
98D115VmgtZUxZWNw+0Y/BMeu11hViNXmisuc//2iT2BxeW0o7QSl7GV8EMIjBOp
tTGqn9rfrAOToXVdRDx0Mkbx5QKOnP5suqTaTjb9pMarf0pSjsxwz8X1hsQI2Qq6
kbdzCm2rNLoVVbzxxsk0qkLkRVy8dfz/TBVjSe8JCetRlUMHFDeigNIaarQGuivB
CD5q/20IvcBurDrlGq3gP+Ldbb/1fRBRoDQydALrT6K9Nn8gNVHDhkEToh1w/VqF
3gOJVG+1Y2YucVyh/WWupq3jwf/9Bw3vu16mncfJ13gtca0W1qz/t9sCRG+rFTsZ
VC94OFDfax9q7fgh0mrhUIj3DldxdAb7dmDFDlbMfampcm1sB9A=
=84Ha
-----END PGP SIGNATURE-----

--------------0eAWcrdnUogI7a8d0dQO0rR1--
