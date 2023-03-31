Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7E56D2B31
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:17:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbjCaWRJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbjCaWRI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:17:08 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2128644B2
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:17:07 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id u11-20020a05600c19cb00b003edcc414997so14776438wmq.3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680301025; x=1682893025;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZDVVNHZgftdGV4d1R96WHF0rzH/yv4/8HYx8Ij/oGA=;
        b=VLOY72WTJGYC9K56Ytdf74OdrnJ/iMPgJ2JyKem4icjzujmNipgCS9h7ebyaKczS0v
         PTTupYw/D+3URVt7FV/htE4GSg4Fqef/u/SXdyTri1y5Q4scrsPEfr/K2uI0UDveNzWe
         RkoHbo7WSQswx8svfonCQ3W7xMJLUzxiTN3sykY1ggmDBJR4odfeLR+ZTwyr18mQIhS1
         EiIytLjBSILfotCaEpXOU8FVSo4Lfy2sNsSM65V646FlbntC9EFSr21xJ2KFaMvhNQCy
         /3sjFn/HgnfQNoTypcd9W8551wAxIrsG+ubUv3gpELRQ9nIm06Ein0rJBhBX0sxEgH1J
         gxhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680301025; x=1682893025;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EZDVVNHZgftdGV4d1R96WHF0rzH/yv4/8HYx8Ij/oGA=;
        b=W2iCqm017aGgWAvmjZnN3Ni8fPxQHMFlDjTA6ul5dT5jztX4eXGh1vFUMWiBwhqn7E
         XS4PAeT3HUPmp+eb6ryWIAcFzZXiMNACCq7Zr1dILLnbLB+0Ej3fBseMI/zlfKoA/q3c
         CNd2WvymcCGNfq3usNWMFtGxlRAiHxATJ6Eca4JrWK1I0bDS6N4ULFtzVFsmYFRIpIlr
         NNdpGkEtALxvYy2+1gsFeQ4fLG5pl61k/xq0GJPfQsuHmiKRMNkMkvQHd9DnJ1mX+0zu
         skbT/fC9SdaM1jwSBCGbqLSFF7NnM9FyhPixGZFbvHnwOt4g9w9I/FRkfSTKuAw+qNwb
         ijaQ==
X-Gm-Message-State: AAQBX9dUKMA4bwNuOByv0+1HI4pV1FsHiaNPqBD49p+vcM4u++4lAaJS
        RILi0ODnyPd1rPLa4YezIc4=
X-Google-Smtp-Source: AKy350ZdatgYDd3zs7ROp4hRgtGvKJcCIgyHz8ImmW4F5crq3/vvslvBgOjeJaf6Roog1uDE76dxEg==
X-Received: by 2002:a7b:cb95:0:b0:3ef:d8c6:4bc3 with SMTP id m21-20020a7bcb95000000b003efd8c64bc3mr7998800wmi.24.1680301025540;
        Fri, 31 Mar 2023 15:17:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f9-20020adff989000000b002c71dd1109fsm3228435wrr.47.2023.03.31.15.17.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:17:05 -0700 (PDT)
Message-ID: <42f3c6d5-fd33-e4f6-ae80-79daae910fdd@gmail.com>
Date:   Sat, 1 Apr 2023 00:17:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 1/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230324172419.117632-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------h6XlqgBN3Wk5njkZEptsQtXM"
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
--------------h6XlqgBN3Wk5njkZEptsQtXM
Content-Type: multipart/mixed; boundary="------------hbZSdakdB5ucsYxY4E0Kp2a1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <42f3c6d5-fd33-e4f6-ae80-79daae910fdd@gmail.com>
Subject: Re: [PATCH v5 1/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
References: <20230324172419.117632-1-gnoack3000@gmail.com>
In-Reply-To: <20230324172419.117632-1-gnoack3000@gmail.com>

--------------hbZSdakdB5ucsYxY4E0Kp2a1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther, Micka=C3=ABl,

On 3/24/23 18:24, G=C3=BCnther Noack wrote:
> * Add the description for LANDLOCK_ACCESS_FS_REFER,
>   in line with recent update to the uapi headers:
>   https://lore.kernel.org/linux-security-module/20230202204623.10345-1-=
gnoack3000@gmail.com/T/
> * VERSIONS: Add a table of Landlock versions and their changes.
>   Briefly talk about how to probe ABI levels and warn users about the
>   special semantics of the LANDLOCK_ACCESS_FS_REFER right.
> * Add LANDLOCK_ACCESS_FS_REFER to the code example.
>=20
> Code review threads for the "refer" feature:
> * https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66=
d30d0
> * https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.co=
m/ (documentation update)
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>

Patch applied.

Thanks,
Alex

> ---
>  man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-=

>  1 file changed, 100 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index bbe00d4c2..d3a7ec0d2 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -105,6 +105,56 @@ Create (or rename or link) a block device.
>  .TP
>  .B LANDLOCK_ACCESS_FS_MAKE_SYM
>  Create (or rename or link) a symbolic link.
> +.TP
> +.B LANDLOCK_ACCESS_FS_REFER
> +Link or rename a file from or to a different directory
> +(i.e. reparent a file hierarchy).
> +.IP
> +This access right is available since the second version of the Landloc=
k ABI.
> +.IP
> +This is the only access right which is denied by default by any rulese=
t,
> +even if the right is not specified as handled at ruleset creation time=
=2E
> +The only way to make a ruleset grant this right
> +is to explicitly allow it for a specific directory
> +by adding a matching rule to the ruleset.
> +.IP
> +In particular, when using the first Landlock ABI version,
> +Landlock will always deny attempts to reparent files
> +between different directories.
> +.IP
> +In addition to the source and destination directories having the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right,
> +the attempted link or rename operation must meet the following constra=
ints:
> +.RS
> +.IP \[bu] 3
> +The reparented file may not gain more access rights in the destination=
 directory
> +than it previously had in the source directory.
> +If this is attempted, the operation results in an
> +.B EXDEV
> +error.
> +.IP \[bu]
> +When linking or renaming, the
> +.BI LANDLOCK_ACCESS_FS_MAKE_ *
> +right for the respective file type must be granted
> +for the destination directory.
> +Otherwise, the operation results in an
> +.BR EACCES
> +error.
> +.IP \[bu]
> +When renaming, the
> +.BI LANDLOCK_ACCESS_FS_REMOVE_ *
> +right for the respective file type must be granted
> +for the source directory.
> +Otherwise, the operation results in an
> +.B EACCES
> +error.
> +.RE
> +.IP
> +If multiple requirements are not met, the
> +.B EACCES
> +error code takes precedence over
> +.BR EXDEV .
>  .\"
>  .SS Layers of file path access rights
>  Each time a thread enforces a ruleset on itself,
> @@ -182,7 +232,54 @@ and related syscalls on a target process,
>  a sandboxed process should have a subset of the target process rules,
>  which means the tracee must be in a sub-domain of the tracer.
>  .SH VERSIONS
> -Landlock was added in Linux 5.13.
> +Landlock was introduced in Linux 5.13.
> +.PP
> +To determine which Landlock features are available,
> +users should query the Landlock ABI version:
> +.TS
> +box;
> +ntb| ntb| lbx
> +nt| nt| lbx.
> +ABI	Kernel	Newly introduced access rights
> +_	_	_
> +1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> +\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
> +_	_	_
> +2	5.19	LANDLOCK_ACCESS_FS_REFER
> +.TE
> +.sp 1
> +.PP
> +Users should use the Landlock ABI version rather than the kernel versi=
on
> +to determine which features are available.
> +The mainline kernel versions listed here are only included for orienta=
tion.
> +Kernels from other sources may contain backported features,
> +and their version numbers may not match.
> +.PP
> +To query the running kernel's Landlock ABI version,
> +programs may pass the
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +flag to
> +.BR landlock_create_ruleset (2).
> +.PP
> +When building fallback mechanisms for compatibility with older kernels=
,
> +users are advised to consider the special semantics of the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right:
> +In ABI v1,
> +linking and moving of files between different directories is always fo=
rbidden,
> +so programs relying on such operations are only compatible
> +with Landlock ABI v2 and higher.
>  .SH NOTES
>  Landlock is enabled by
>  .BR CONFIG_SECURITY_LANDLOCK .
> @@ -242,7 +339,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SOCK |
>          LANDLOCK_ACCESS_FS_MAKE_FIFO |
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> -        LANDLOCK_ACCESS_FS_MAKE_SYM;
> +        LANDLOCK_ACCESS_FS_MAKE_SYM |
> +        LANDLOCK_ACCESS_FS_REFER;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D \-1) {
>=20
> base-commit: fd00f831b52d61a91d59cb3b46182869145d9700

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hbZSdakdB5ucsYxY4E0Kp2a1--

--------------h6XlqgBN3Wk5njkZEptsQtXM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnW98ACgkQnowa+77/
2zJCuxAAmq5iLJtV/72omB0u/FKGo2xoaJnkrJ+Ag4I9xXfWnzlRY6G590XlLMaA
aMq9cGAONFKDgEi3qV5yvECjabfGhcVk4gVtqoYOXSwwHR1jZHXmFEFQOBcJNaZZ
HeiivCWeUpGEnS7lLMD6yLOPIA6McjHoMI5gtlyQe2wkFCqY7rSbf+/xyvq8QT9s
JgVlKtMTNaAgyOL5CuIv5zq1kymMM1zZCTU68YT+dSuwjdzpWfGrhxiUTKd7ghat
qma8/LbH1LxMbM7JTQwZqY1PS90FxQsdc/xy2Dr+GkjH5OIRwG+HqBrqySwD2Jqj
E9hAziySw7UEej5yQN8jj0rfmTMfNRdkNjI+cpgz9jOUC3sHJgx5Y6MXmZq1hW7r
2EtkKD9LXU/TMDN2ngJS2RVex6zEkUjQhsnhacgxh3XdBRqOm2jydYaL/jwJRL6o
w3XB1AsHvrsUSx8k3VGOvsWRjHzSF0ahuDnviKT3x57TYBCikta87QZMj6lizDoY
hvU/hAb1GQ2IbIG9NMjxv6z0xK5lGAaIJGcgWp0Wzpj8MEM4zLygt1OpjHBGQtb+
BGpZU6/LrOZrAJeW6yaipNl/TBfCVdGtVJF7rbdNFPITUWbNABkxcLGIKEswarXt
dt85ZjvzRiej6y3TLwZ7rodzstSIBRnCZgz7WLnCiEvsb/aBn10=
=viJ9
-----END PGP SIGNATURE-----

--------------h6XlqgBN3Wk5njkZEptsQtXM--
