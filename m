Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9124B6E286C
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 18:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjDNQfl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Apr 2023 12:35:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjDNQfk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Apr 2023 12:35:40 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A80DA10FC
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 09:35:32 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id o6-20020a05600c4fc600b003ef6e6754c5so8434087wmq.5
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 09:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681490131; x=1684082131;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9lZ3ploP9y2rOlfY9YFcZcnoiR6D5Mfd4YYZqln2VY=;
        b=R2BlpBJoa3Fmo7GbPE6lRjh7FW03NLhRQpH6zeSomT6SdFKnd1Q4UbZxotw6FVtNJd
         Qeuhl2RvlOI38x+8mnoQSuEEb8Ve5oCJxMbpkDBZp7R8YWcqwi3McQo4gQvSo5Kig76N
         imVMafJYOPpTB53ysjGToOE48NKwSU+LbHu/mDFA5xy7yDfsipQFKpUCl21MtWN3OVep
         /fV4Th/Iy2wvz+PruLCJkfD83wKZ5G5Kbg61fg/gGZICfj2IPkV+TigWlfThGjx5DD4C
         9QzZU4OwnlO6JY8lSgT5UVko+1tv8BlegflqqXvc2os54rL02Dfg1rk7ZZokkHpNMSFp
         5g6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681490131; x=1684082131;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e9lZ3ploP9y2rOlfY9YFcZcnoiR6D5Mfd4YYZqln2VY=;
        b=gX+6tHtAn46phy9ETU0vqKmL3sXZy/+v7FoK+ENtLLFPBA23uDSzDdTluZhI0UNjg8
         IEqzYAFzK8YxsoEhtXnYjo48Gd7esc8Cg62+nnyBxdFCcx1GQXDwsun+gXuobB51wq1H
         3xCLCBDnyZ/DwQk4W0wEks5Wy0VsQMLNoUuVaPlggwDPGCXRJShf7rGjsqnLC7gCy1ip
         B/l4cd/1zym6fL2zEw0MavavECGhGZPJETNgHh1MEcduGLW2dC1SM/tP+IwRBscA+zXx
         Lk6GBzWp3AAmeK7fWo7j5ydPL/89uQo8BgFl64UKvdavLQE/tKMbEYjbxMLrfhR8H9LO
         OO9Q==
X-Gm-Message-State: AAQBX9fx4hEOm1wufHKDT7VkBufHVFSmZ3E8L1Dvp5ZWtcOq/aE8wuMV
        CP1xwLzB9BrSK9lHLVqWkI9xaJpUlsI=
X-Google-Smtp-Source: AKy350Y8xPyt5yLPKroTXQA5prGrZLuOYwqw5mT5/vZ+y61YYfTN/3Nqw7xL/Uf/v3TqKVRTFJ32Ig==
X-Received: by 2002:a05:600c:247:b0:3e2:589:2512 with SMTP id 7-20020a05600c024700b003e205892512mr5006916wmj.21.1681490130974;
        Fri, 14 Apr 2023 09:35:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id iv8-20020a05600c548800b003f09e294d5esm8147018wmb.6.2023.04.14.09.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 09:35:30 -0700 (PDT)
Message-ID: <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
Date:   Fri, 14 Apr 2023 18:35:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230414155926.6937-2-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3ROrsG1M9P2JJ4EysKmpdy1l"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3ROrsG1M9P2JJ4EysKmpdy1l
Content-Type: multipart/mixed; boundary="------------Gqsc3chl0lVOpy3aWKugVaQj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org
Message-ID: <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
In-Reply-To: <20230414155926.6937-2-gnoack3000@gmail.com>

--------------Gqsc3chl0lVOpy3aWKugVaQj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther,

On 4/14/23 17:59, G=C3=BCnther Noack wrote:
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man7/landlock.7 | 70 ++++++++++++++++++++++++++++++++++++++++++++++---=

>  1 file changed, 66 insertions(+), 4 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 24488465e..64bfa0752 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -394,11 +394,14 @@ accessible through these system call families:
>  Future Landlock evolutions will enable to restrict them.
>  .SH EXAMPLES
>  We first need to create the ruleset that will contain our rules.
> +.PP
>  For this example,
>  the ruleset will contain rules that only allow read actions,
>  but write actions will be denied.
>  The ruleset then needs to handle both of these kinds of actions.
> -See below for the description of filesystem actions.
> +See the
> +.B DESCRIPTION
> +section for the description of filesystem actions.
>  .PP
>  .in +4n
>  .EX
> @@ -421,7 +424,62 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
>          LANDLOCK_ACCESS_FS_REFER |
>          LANDLOCK_ACCESS_FS_TRUNCATE;
> +.EE
> +.in
> +.PP
> +To be compatible with older Linux versions,
> +we detect the available Landlock ABI version,
> +and only use the available subset of access rights:
> +.PP
> +.in +4n
> +.EX
> +/*
> + * Table of available file system access rights by ABI version,
> + * numbers hardcoded to keep the example short.
> + */
> +__u64 landlock_fs_access_rights[] =3D {
> +    (1ULL << 13) \- 1,  /* ABI v1                 */
> +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
> +};
> +
> +int abi =3D landlock_create_ruleset(NULL, 0,
> +                                  LANDLOCK_CREATE_RULESET_VERSION);
> +if (abi <=3D 0) {
> +    perror("Giving up \- No Landlock support");

Using perror(3) will already print "Operation not supported", since
errno is ENOTSUP.  Maybe this string is redundant?  How about the
following?

	perror("landlock_create_ruleset");  // EOPNOTSUPP

BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
equivalent, in POSIX the latter has a connotation that it's about
sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
instead of EOPNOTSUPP?

> +    exit(EXIT_FAILURE);
> +}
> +if (abi > 3)
> +    abi =3D 3;

This makes the example a line shorter (see MIN(3)):

abi =3D MIN(abi, 3);


Cheers,
Alex

> =20
> +/* Only use the available rights in the ruleset. */
> +attr.handled_access_fs &=3D landlock_fs_access_rights[abi \- 1];
> +.EE
> +.in
> +.PP
> +The available access rights for each ABI version are listed in the
> +.B VERSIONS
> +section.
> +.PP
> +If our program needed to create hard links
> +or rename files between different directories
> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> +we would require the following change to the backwards compatibility l=
ogic:
> +Directory reparenting is not possible
> +in a process restricted with Landlock ABI version 1.
> +Therefore,
> +if the program needed to do file reparenting,
> +and if only Landlock ABI version 1 was available,
> +we could not restrict the process.
> +.PP
> +Now that the ruleset attributes are determined,
> +we create the Landlock ruleset
> +and acquire a file descriptor as a handle to it,
> +using
> +.BR landlock_create_ruleset (2):
> +.PP
> +.in +4n
> +.EX
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D \-1) {
>      perror("Failed to create a ruleset");
> @@ -430,9 +488,13 @@ if (ruleset_fd =3D=3D \-1) {
>  .EE
>  .in
>  .PP
> -We can now add a new rule to this ruleset thanks to the returned file
> -descriptor referring to this ruleset.
> -The rule will only allow reading the file hierarchy
> +We can now add a new rule to the ruleset through the ruleset's file de=
scriptor.
> +The requested access rights must be a subset of the access rights
> +which were specified in
> +.I attr.handled_access_fs
> +at ruleset creation time.
> +.PP
> +In this example, the rule will only allow reading the file hierarchy
>  .IR /usr .
>  Without another rule, write actions would then be denied by the rulese=
t.
>  To add

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Gqsc3chl0lVOpy3aWKugVaQj--

--------------3ROrsG1M9P2JJ4EysKmpdy1l
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ5gMoACgkQnowa+77/
2zLZZA//ZdNSPBik7Hnv+KSuLaOlz1O1mWXd+ikFVKXuFgkjgGELCR/i5d6K4FOr
0YDHedyp4O5dYfy+4jz26UMRl9JwuafPtz1airHK85LNgtZYiG8vMuQdSJklhpSz
EFMJ+lo34mhVNyvlkuQ+TF6mMGUReJGYY1HWSLaC68fP2t7MwCylQnUL/6WvLbmF
pdf8sROY+LPBr0n7mhmEmufSLY0xc1SE0gY+3elPXxrxA/vpsbM6eL5tXJmoJLp/
ueTt+kkOCmrRtOx7J2Vc6R2ZEz0h1MU7etZN3uNBSDxO7yNTDi4ynfe+WTSoVxey
dzSglc58UuRnJjgQq7boMy5/sfQ5ROzMkbdfrhR6/+3IBBNA4rGVRVYyQW4Xzm5M
JdVZ8fz2SkHophk03ihGm75oYR7mjp1WdAgCxqSDPDfAlfByH2UFGdNmwWC82A1W
cxO2RMF+Aeoa+kv3PBFd9gwSGutKHOYWaraZTyxz7ulbK+Fjh3GtI+CsMkD2Xagb
cHO/Q26+nLmF6tyNhO7MNs8JQlWIsyXCny1qWzW+2r0YHIVt2dFqh4TsZDSlWmz1
cIIMjl0Q8OaSy42bXg9sRqbmxoxd/NZ5aTfxzvbx18l6ENGKUrkaEEyUKysVVI5F
rV1xAj6y4NLJ3cdEL6K9fC+EivOk9ZEmcUXfyfZeWoOywz7b7pQ=
=i3MB
-----END PGP SIGNATURE-----

--------------3ROrsG1M9P2JJ4EysKmpdy1l--
