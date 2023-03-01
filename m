Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A2396A7620
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 22:25:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbjCAVZo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Mar 2023 16:25:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjCAVZn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Mar 2023 16:25:43 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71A744ECFC
        for <linux-man@vger.kernel.org>; Wed,  1 Mar 2023 13:25:41 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id j3so9482956wms.2
        for <linux-man@vger.kernel.org>; Wed, 01 Mar 2023 13:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GQi+QQz7owbPhtqnEa0swcjc4FuLp8uGTPtuh9LdyNQ=;
        b=YMuD5j1f3kx5Qc6S1MfeDeqdypVA6PscGrDdoL4JwzpYdHTZzaqXwb88pHAg18wdWz
         s3lqGkWzV6FDZjSjWE5JbReqQdnRnoy2B9kiBn/l/Z34Ka7oxa9SySiyEfOZlPz4DaIY
         +D+2/oWSp5wplCW6qydIXTNFQSDkx5zv9CWRmptUgpk9x6eMBt4tfEqZJJmv4TQPAt9I
         CVSN1PeXfyKQwllSSNqFMAPC62PYxVuqKlcSIZZ2gMZzwfsaZ7FBmKkJvwukdszXxJmS
         it84ZSQ7dsdVTrsLn2jgy7o1Hxx8TgZa4DQhMbkOfefuQa6SMoFD0/R8K7WyLzbFhDSj
         yYLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GQi+QQz7owbPhtqnEa0swcjc4FuLp8uGTPtuh9LdyNQ=;
        b=hDN5uEnsR59DkN10aGUFgNu9S8e9YC+ZxLKKcniD/fQ2WeWobRt8qzdXLy9kD2n1d5
         NSiMZTTm7+wL6Yzz8gsvorwZ09mPaDHOT2zljKGkYfl0a5+5axxjgXwHTTjS4XabsoaO
         eERjSRowHRbLPChzUz66ETT/HUVSAhtuN5yGKXnoBJWsxfjB/9C0Rdn3NFqeAfDWXoy9
         s+Y0B2UBfY7Xgwfxlc2LTuZfEOMCkAzaiUespVAkgpo2NfypOSQbABPgmhNik2vbg9Ma
         CfVTBONxYW5GhfTEVQeg6TdHSs67Se3LdR87zy2LTuzix4w/TXA5aadOf37CEf+Gactq
         shaQ==
X-Gm-Message-State: AO0yUKUiy33A/5QFerNqMi26RSHct2+Qaqi3PyR+18KLhMzCPadz3P2w
        qIV4nCukeb8XjfecGEOKm3EO4aWtOc8=
X-Google-Smtp-Source: AK7set8Oc2yBwiytHtuHW6ZmJU9xZepSoyLTMFW8e8uiSdyCN6FysFXoE3APD2RY35awA6zMOhhS4Q==
X-Received: by 2002:a05:600c:755:b0:3e2:66b:e90e with SMTP id j21-20020a05600c075500b003e2066be90emr6741290wmn.10.1677705939785;
        Wed, 01 Mar 2023 13:25:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id hg13-20020a05600c538d00b003d9aa76dc6asm762158wmb.0.2023.03.01.13.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 13:25:39 -0800 (PST)
Message-ID: <930993f4-36ce-c78e-13b3-fe2421350a45@gmail.com>
Date:   Wed, 1 Mar 2023 22:25:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org
References: <20230228205224.5991-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230228205224.5991-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rjIJgXuT8AovrBqmzIA5iTRo"
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
--------------rjIJgXuT8AovrBqmzIA5iTRo
Content-Type: multipart/mixed; boundary="------------EZZwEh7miAquL0cg2B50KFHN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org
Message-ID: <930993f4-36ce-c78e-13b3-fe2421350a45@gmail.com>
Subject: Re: [PATCH v2 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
References: <20230228205224.5991-1-gnoack3000@gmail.com>
In-Reply-To: <20230228205224.5991-1-gnoack3000@gmail.com>

--------------EZZwEh7miAquL0cg2B50KFHN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther,

On 2/28/23 21:52, G=C3=BCnther Noack wrote:
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
> * https://lore.kernel.org/all/20220506161102.525323-1-mic@digikod.net/ =
(initial commit)
> * https://lore.kernel.org/all/20220823144123.633721-1-mic@digikod.net/ =
(bugfix)
> * https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.co=
m/ (documentation update)
> ---
>  man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-=

>  1 file changed, 100 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b2bc9e10b..f70a01484 100644
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
> +.IP \[bu] 3

You only need to specify the indentation (the "3") in the first
consecutive .IP.  All others reuse the indentation level until
a .PP appears (or a few other situations that I won't enumerate
for brevity).

> +When linking or renaming, the
> +.B LANDLOCK_ACCESS_FS_MAKE_*
> +right for the respective file type must be granted
> +for the destination directory.
> +Otherwise, the operation results in an
> +.BR EACCES
> +error.
> +.IP \[bu] 3
> +When renaming, the
> +.B LANDLOCK_ACCESS_FS_REMOVE_*

The * should be in italics, since it's not part of the literal,
but rather a variable part.  I know the pages are not very
consistent in this, but I'd like to make them consistent in the
future.

Cheers,

Alex

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
>  if (ruleset_fd =3D=3D -1) {
>=20
> base-commit: 53a7e5dfc3554a2e8dbdfdc4504e99652e1d6382

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EZZwEh7miAquL0cg2B50KFHN--

--------------rjIJgXuT8AovrBqmzIA5iTRo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP/wtIACgkQnowa+77/
2zKQ/g//ZiYet/PY7FxBdY2cDOanYuAcscv3yc4HdS0TFZ+2a1r/jy+knJ/Y+xNB
zfQx6SftNja4jlNTxWOkB1Jp2mm8dGQUFomogMaOw1PgeJqP9gKI6NgC7IAZfEb4
s9rsI/YKuRJrRiDsDAl2xCGT0eYkH+LDH9CQvF9a4bcUaIw9dziiXiAbg/Gqu32x
1bv3BddEfUZnAcmfcc815X0i2s5Jv1GO4uuv9Zo/qT3jT+T3Phli52Wt0aZeun63
otC5P7/ji18wpv4tUH1cpDjzf0XkXATrcbSGOO32Me/VBs03pT6Bg874FPouLMim
2PxV3pEGBp/eJ+3lKAXAp1hlsykHZDfV7c01noDIz20JkXyn+DBz5KHIv3oETDmZ
rqhhPRBdDgIHAd9uDE/PgcUJabJA23Xr9X2PoCfAdppcUULb2q03IK9oUAaJZPFw
k4qKpLv5m8KyZuVSTBXRoJva0XnRmhCOxgdk5ASvTCWTKdn9uKB4+/+P06ra2NNu
zTHmAqiCsIEi5sD0RJ8skdNCjp9aK74pijSDmKjdC1M4Hqy11ubEE6kemjzb2bG5
+5rdQu/4RJIoqWeoydrQU1AIb694PDiccEGPI9Pj4r/I5KqwTwB1LSXXWCXjxjGo
ITGxvIzvz3s71dVDt/575wRfq6ftSdJgmJDnIywsQ1I+VD1VWBY=
=WDXO
-----END PGP SIGNATURE-----

--------------rjIJgXuT8AovrBqmzIA5iTRo--
