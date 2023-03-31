Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB3706D2B53
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjCaW3l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:29:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjCaW3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:29:40 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E0651F7B3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:29:39 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id l12so23867221wrm.10
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680301778; x=1682893778;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inLzKavTjxqMKm/8lIWOFVMK//0+yujQK1s0Y6ofvMY=;
        b=BQ6TVS6NsVElGfmGOJSE+tFqR2xkpc001C75W6ZsN4gk6sxtjpwuN1kba52oFG5TAU
         1EBlmlar++9TFVAwe3Y3gAPIxpuaswEfctV/gVmKkIprsXRVljPGF9ZVs7BEXm3IH7V2
         GAJdVDobHpDfNfON6o2b3dgeSE/zCmEOE5PAon6f3qi0IbFglyKe2cpWQvvSe+RXDdlW
         NoUQqTgJizWIM7jCl/fXETIBr/i5Xopbs3at9RCdPFs129BEiakxz6OcXioVgv/WlU51
         hvv25ot5XYoYLa4bHFlVLVBILkM8yJppXNv4HyzOUUPv+Jko4tMR8jC9l2RsH406qCcc
         UfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680301778; x=1682893778;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=inLzKavTjxqMKm/8lIWOFVMK//0+yujQK1s0Y6ofvMY=;
        b=eZ5Ow6tmMdoFjmWojD2ejoXULouOAfI44nNg1QU2HU7mzrvLq+W7CuGv8DTRpy3alo
         utZ+QgCaNVmNMZhAZN6RN7I1xmtGiH9bje97DvUATTEw+w7aQTI93zAIwbsq1trVfh6h
         PttKJx8s/hJXN9f5JzhzMjqEq+7DyPAGY0YWEhqJsSf0ky/5iShc1GNUMjFpH7A8oLei
         Sdu6WAgYZC4G3w0W1TxNqpOUMVyUXupaMKVgYUfD78rrvTqw/fJP8j0/y+2IUR+qKYUr
         uQUpa3Ri3QrnXiRHfvR714hrfI9747GHJZ4GRip7So7MrYAlMelXHxbJCcdAV0dbejYX
         0l+g==
X-Gm-Message-State: AAQBX9fiGSetQdB9cgpNGJrfU2gM2Duk9ANW5E6CVT1llWGV6G1qONpL
        mEy/Q74rlWy6880UwQvufjHtIfqK9w0=
X-Google-Smtp-Source: AKy350b4XdqlAXnG5AqG1ExWw7SrzrFVQ15l/d2KquErghtuIlliTqpRqeYZeaS/jpFJN60ngrq0BA==
X-Received: by 2002:adf:fc50:0:b0:2ce:a6be:2bd with SMTP id e16-20020adffc50000000b002cea6be02bdmr20006130wrs.1.1680301777645;
        Fri, 31 Mar 2023 15:29:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q10-20020a056000136a00b002c6e8cb612fsm3182532wrz.92.2023.03.31.15.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:29:37 -0700 (PDT)
Message-ID: <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
Date:   Sat, 1 Apr 2023 00:29:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230324172419.117632-3-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rohBWSkdbSZsBOdExdj3UwcP"
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
--------------rohBWSkdbSZsBOdExdj3UwcP
Content-Type: multipart/mixed; boundary="------------Y1fP00D04RVel0rJp8iFfh96";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
In-Reply-To: <20230324172419.117632-3-gnoack3000@gmail.com>

--------------Y1fP00D04RVel0rJp8iFfh96
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther,

On 3/24/23 18:24, G=C3=BCnther Noack wrote:
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man7/landlock.7 | 65 ++++++++++++++++++++++++++++++++++++++++++++++---=

>  1 file changed, 61 insertions(+), 4 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 9c305edef..d1214ba27 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -393,11 +393,14 @@ accessible through these system call families:
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
> @@ -420,7 +423,57 @@ attr.handled_access_fs =3D
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
> +/* Table of available file system access rights by ABI version */
> +__u64 landlock_fs_access_rights[] =3D {
> +    (1ULL << 13) \- 1,  /* ABI v1                 */
> +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */

Do these magic numbers have macros?  Are users expected to use
the magic numbers directly?

> +};
> +
> +int abi =3D landlock_create_ruleset(NULL, 0,
> +                                  LANDLOCK_CREATE_RULESET_VERSION);
> +if (abi <=3D 0) {
> +    perror("Giving up \- No Landlock support");
> +    exit(EXIT_FAILURE);
> +}
> +if (abi > 3)
> +    abi =3D 3;
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
> +If our program needed to create hard links or rename files between dif=
ferent directories

Please keep lines below 80 columns.  Break lines at phrase
boundaries as appropriate (e.g., in this line:)

s/ or /\nor /

Cheers,
Alex

> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> +we would require the following change to the backwards compatibility l=
ogic:
> +Directory reparenting is not possible in a process restricted with Lan=
dlock ABI version 1.
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
> @@ -429,9 +482,13 @@ if (ruleset_fd =3D=3D \-1) {
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

--------------Y1fP00D04RVel0rJp8iFfh96--

--------------rohBWSkdbSZsBOdExdj3UwcP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnXs8ACgkQnowa+77/
2zKyPxAAqdf8LMLrnCFQP9v8yw0Cd/eTodIiGSwpUVYFSShan69FpmOYcann5rtV
lXlqhzS5d4uiJ04vVs3w0v784ol9uTsL7bX0LfuqC3AXYWd8JaFmm0H9dwi4jk49
aoH+upK13OtAytRgaG9k/OklYVCo9MysGuiq5JWUrGpsWM6EyRLuiAchfgRt6d3V
a69eDC4fQliwJGkZCW3L0cBktQfSfehHIJ26GcwLiTWqHTZp+x9BjblnU9UUKIUl
l2kPWTv+H8FqZHU4TxI9AVkVBFONy3lUo7LDKVO5kZ8jkMCiOp7FTSNSrwzSIYtB
pXCre7PgjIMbRiThAWbM3Zou2dueeIajEPB8aYa8hnPdWvjboOV2jMos1zzoifog
r3UriB8kUKw+ZTsJI4YyG0Ov3RCJ2mX49c3FtIlMiy9i+5wyDKwl48xkiNzxCpsN
dhj73sP0USqBA/ugn5A8jLIpeBllPD0MeEuBTxgBwMRHKwuyvnS7NWKdVXWJlV9d
p2oC5JgObJs8JRzLAsVAMlBsZallPRMlT/SxPlRhhoGLhXU5tzwCz0qt14KsNfVf
SfjgfGb+aK8ljGtvg67Zj8FsDbwqQTyUlO8rZs+4VeJXuBlwpw3F8dS3G7Xwnhek
ASqxrnGnNrEyFlOf1WRzXUr+j8msikPjAyc1gcoX0XYGUdxkOaI=
=dBe1
-----END PGP SIGNATURE-----

--------------rohBWSkdbSZsBOdExdj3UwcP--
