Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF576D2A5D
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 23:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231701AbjCaVwv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 17:52:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbjCaVwu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 17:52:50 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0435A19B3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:52:18 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso16264054wmb.0
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680299508; x=1682891508;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/wi+pg9E8qfhJtstaCqsEayaR5Rvvm1wzairiUhlD4=;
        b=jZpjAC5303RLNpteWtgkPYra+xd2C8E7wRI9mFjjV82VEseN3q37GaQeWNxAQTDg3C
         2T4/1uAiCZEAgrybC3pZKwM9ARFpsDa7zeAGL/YxjbJx8EDTlmFNYB18Km0H73jpwzuu
         TNtZipRSsrmicidzzHJytGMm9Z6yjOxP6O2OVyrzvuruZzoHl80+GqYTzebnFmyjJpU/
         oKlftOit8Ge5IC53gYn5fYWmgx+xqZkKvZepG54Lkeq3IUY9M4LWSFBwWu1CkbNyyIXm
         3CypIV1GscwfdQ+GW1MjLL8zVU5KDwKnS8H9wA15Rk/xmMmNADVMaIfxvIAg82cY/Khi
         Ln9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680299508; x=1682891508;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p/wi+pg9E8qfhJtstaCqsEayaR5Rvvm1wzairiUhlD4=;
        b=M+7w12Qw7LouXut/cbMOgUBbUUc27F7shSsiVdC383iUj0hCFglObYf6ml+kmB5qur
         aNShyhC/vLF4lu0ou/ZKgsc4KQy9F+/dt3BVODB7hg1X9VkTIP75BqQl3fI8VJileKGW
         OGtTOqkgVuGQJkNuBgRIIKrefgkWAFOOHzjSESVYiUqQQBITm8OXepZogAA1wu57g/cj
         mQe28KKwWv4hoC3xrMMHCMhcZQcygDX4YrjJ4gfrvZtl4h1nZQJ9YUV2g6G8u9Y9QVmD
         2u08bGHmQJ2P4SSvqFsREVwK/K6goqmikqLjR2VGknMmkl3gPwChWXARckFYXjNrPse7
         kRug==
X-Gm-Message-State: AO0yUKVRmsa7p94hcs1FC/2yEktq6S85JQlPcTIv0FFHbkyEWgh206UT
        LRFMwTIeqdcbiW5XuF0v058H9bek46g=
X-Google-Smtp-Source: AK7set/dO2jjz3e43MKXblyeDtuw3VnbbU/WkvbzW7DUWENAkhzOzBfqcU08yOAyMuC84OpwOhUpXw==
X-Received: by 2002:a05:600c:cb:b0:3ed:66e0:b6de with SMTP id u11-20020a05600c00cb00b003ed66e0b6demr22239898wmm.22.1680299508004;
        Fri, 31 Mar 2023 14:51:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s6-20020a1cf206000000b003f0373d077csm3826942wmc.47.2023.03.31.14.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 14:51:47 -0700 (PDT)
Message-ID: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
Date:   Fri, 31 Mar 2023 23:51:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
Content-Language: en-US
To:     Rodrigo Campos <rodrigo@sdfg.com.ar>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
References: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
 <20230308170352.68915-1-rodrigo@sdfg.com.ar>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230308170352.68915-1-rodrigo@sdfg.com.ar>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qXPJxOTPP3rPW4HzL8NoG87o"
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
--------------qXPJxOTPP3rPW4HzL8NoG87o
Content-Type: multipart/mixed; boundary="------------vLlW3P0P4p5JYwq5QkChv2pt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
Message-ID: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
Subject: Re: [PATCH] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
References: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
 <20230308170352.68915-1-rodrigo@sdfg.com.ar>
In-Reply-To: <20230308170352.68915-1-rodrigo@sdfg.com.ar>

--------------vLlW3P0P4p5JYwq5QkChv2pt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rodrigo,

Thanks for the ping :)

On 3/8/23 18:03, Rodrigo Campos wrote:
> In order to create a nested user namespace, we need to re-set the
> PR_SET_DUMPABLE attribute after switching the effective UID/GID. Clarif=
y
> this in the section about nested user namespaces.
>=20
> Having this note would have saved me some time debugging.
>=20
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> ---
>=20
> Thanks, so how about this instead?
>=20
> ---
>  man7/user_namespaces.7 | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git man7/user_namespaces.7 man7/user_namespaces.7
> index 6647b02bf..6bc04bde5 100644
> --- man7/user_namespaces.7
> +++ man7/user_namespaces.7
> @@ -91,6 +91,22 @@ The
>  operation can be used to discover the parental relationship
>  between user namespaces; see
>  .BR ioctl_ns (2).
> +.PP
> +A task that changes one of its effective IDs will have its dumpability=

> +reset to the value in /proc/sys/fs/suid_dumpable. This may affect the

Pathnames should be in italics:

=2EIR /proc/sys/fs/suid_dumpable .

Also, please use semantic newlines.  See man-pages(7):
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

Thanks,

Alex


> +ownership of proc files of child processes and may thus cause the pare=
nt
> +to lack the permissions to write to mapping files of child processes
> +running in a new user namespace. In such cases making the parent proce=
ss
> +dumpable, using
> +.B PR_SET_DUMPABLE
> +in a call to
> +.BR prctl (2),
> +before creating a child process in a new user namespace may
> +rectify this problem. See
> +.BR prctl (2)
> +and
> +.BR proc (5)
> +for details on how ownership is affected.
>  .\"
>  .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  .\"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vLlW3P0P4p5JYwq5QkChv2pt--

--------------qXPJxOTPP3rPW4HzL8NoG87o
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnVfIACgkQnowa+77/
2zI7Xg/8CJ0ZCFR4oQBPCnWqBIcl8DlUGFHk/tnE5nQ5gAB9pEUgdMYB+DstmnQ9
2aJdnDaxSCkGv57HwC3brFGoLIXyvG03u3MyGtnDXTjSHMnJc0koSwGXrAbi3iIz
9s/NfT9rwyToNu0D4hPTp1bYbPyz9rjg0rMfdAmbOZGRcZCvMKjjWJqAShrL41Jp
jnoRRvUDquqwijDv400dnbOED1chSOIb5cUpjAkf2KRZQ/o38ZhfspGyTRJmgS8z
kfTsKYQmgTS4HE3mITJ900xN6W9AStYfLW041iOH5S/R1jmIZ79wUkQeE6lXXLAs
sReSr1//rgcSbLDLSmuK039EWh8CbxDw+XsQg237w1fR2zYRjj4N1bRDSGK2J1fE
3AxOjvJ4sLSrd4+SnQbF+azsROz6kLzDJHIcfyKvk7C7RT7DXnbOPfOwo4renkGj
wSLnRNtE/5eqLA6XZJYrv5LuiSMBwFfsk1d5N6ZPLg66JWEHoLMJIOWFV3MidfSg
tGHVB03wIsJlNnHbJH/ndEJEQoHD22l36I1GlQ+hMxwoWMovDz+AOnBRrtyUgmpr
1RWs5MZX0YzJPlAIxNs0pEkzxODXg9UiNqejAEnR8zcHZgVwQMyoab0mI5XCcoU3
Mfepzc66U4iqv3LfXRWBZi9DgqZ/d0vMBAtHXEyKtlbwY/5wgvM=
=7bWq
-----END PGP SIGNATURE-----

--------------qXPJxOTPP3rPW4HzL8NoG87o--
