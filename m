Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73AA96B32EB
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 01:51:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjCJAvq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 19:51:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjCJAvq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 19:51:46 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF6E8F98C2
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 16:51:44 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h11so3606418wrm.5
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 16:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678409503;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DCQ96yW0VTujvanxGU+ddpqpfeR+kUlad/xiO2WbD1s=;
        b=dXa+ZUm6HRUYosSgzm7zGvn5ppZXd9zGYf6JXoQHIxpM47z5BTq9HxhTkkMdXBM7gw
         n9ky7463pK/FDRuELQ41raQjy6KkqRWX14RHghNGRQ9hyxEymyAStML7EGwmosNEF0Zo
         0L0FH/Ne93kX4ojSJOG93n+vmocP1d7ZONJ4PV/1e8UQHvDqejcp6mIxVmL2BSkGUZJD
         fhH95JiscdajFgW4sLoheLy+VkDJAoxDThlTgvYU96yX9vxkPmDztHpV8xaoCawuxhuA
         NqSDdlEHXZFsaJ9WGkyt5rzYF/8Yld1cqZIGF2541jfyopThNV3E6FRqx1CekkiwL0FW
         wZSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678409503;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DCQ96yW0VTujvanxGU+ddpqpfeR+kUlad/xiO2WbD1s=;
        b=LuctHRvX9aGlxD1uzxOVkca8PCk+GmBKf2zHtCwJCWEB5V4nrfZ5wtnyRhYJ+bcrrP
         Kv8OROSKYcWQEiSIRvolUd+TTLHYvnuYa/BI4CQBDG66L9oPCCLtvcAJkGqc60AD41cN
         qdA3OL0wQChica5Xf0O18QdG9r5+yWdPgZfFWLnPikYepNa/kemefY6VpeABKygJ1sVj
         v70mvY7wDOB10iIssIH09QmqaufaQ81wmNqMzylpXzH6/RQGK61SnfZpsjmkwKDR2cl8
         qwf6NkPqx828wfKZgoNoK7Qdl6C9x/P+ao5gWJLBrdyonWoq6Sgo/6mEnUnFopX7Iobq
         vXIA==
X-Gm-Message-State: AO0yUKUZec2oQZ9z6nVpU1b3nwDGOjIRFc5IUUiJfGzedvMYDw8SuMnV
        7oKYR4akcQUB+W6nd9vSb9Q=
X-Google-Smtp-Source: AK7set/kTzNgrjLB1SaReMwtJtPzRasEr+UdBaNYSArxa8SWqIsMpzdlmPFd3IY+TdeJwoDXpfHetw==
X-Received: by 2002:adf:cc86:0:b0:2c7:a3b:4e76 with SMTP id p6-20020adfcc86000000b002c70a3b4e76mr19102491wrj.6.1678409503253;
        Thu, 09 Mar 2023 16:51:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e23-20020a05600c219700b003dd1bd0b915sm1293265wme.22.2023.03.09.16.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 16:51:42 -0800 (PST)
Message-ID: <9f678634-d89c-c6fa-f06c-fbee8c5960bf@gmail.com>
Date:   Fri, 10 Mar 2023 01:51:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: nextafter underflow and errno in Glibc
Content-Language: en-US
To:     Pascal Cuoq <cuoq@trust-in-soft.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Guillaume Cluzel <guillaume.cluzel@trust-in-soft.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        Andreas Schwab <schwab@linux-m68k.org>
References: <PR0P264MB07942F010016373449ED98D6C0B49@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PR0P264MB07942F010016373449ED98D6C0B49@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ib508aIGmza2qEAo7GTZm9Zj"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Ib508aIGmza2qEAo7GTZm9Zj
Content-Type: multipart/mixed; boundary="------------23iMuuX5RAEXq4Ly8d5xciPa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Pascal Cuoq <cuoq@trust-in-soft.com>,
 "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 Guillaume Cluzel <guillaume.cluzel@trust-in-soft.com>,
 GNU C Library <libc-alpha@sourceware.org>,
 Andreas Schwab <schwab@linux-m68k.org>
Message-ID: <9f678634-d89c-c6fa-f06c-fbee8c5960bf@gmail.com>
Subject: Re: nextafter underflow and errno in Glibc
References: <PR0P264MB07942F010016373449ED98D6C0B49@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PR0P264MB07942F010016373449ED98D6C0B49@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>

--------------23iMuuX5RAEXq4Ly8d5xciPa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Pascal,

On 3/8/23 19:10, Pascal Cuoq wrote:
> Hello,
>=20
> in 2008 Michael Kerrisk reported that Glibc's nextafter implementation =
did not set errno as it should:
>=20
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D6799
>=20
> That bug was marked as =E2=80=9CRESOLVED FIXED=E2=80=9D in 2020 but the=
re still exists a disagreement between what the current man page for next=
after at https://man7.org/linux/man-pages/man3/nextafter.3.html says, nam=
ely:
>=20
>        If x is not equal to y, and the correct function result would be=

>        subnormal, zero, or underflow, a range error occurs, and either
>        the correct value (if it can be represented), or 0.0, is
>        returned.
>        =E2=80=A6
>        Range error: result is subnormal or underflows
>               errno is set to ERANGE.  An underflow floating-point
>               exception (FE_UNDERFLOW) is raised.
>=20
> =E2=80=A6 and what Glibc's implementation does for nextafter(0., 1.).
>=20
> This has been reported by myself in January of 2023:
>=20
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D30040
>=20
> As of this writing, the Glibc maintainers' stance appears to be that th=
is behavior is intentional because the specification that Glibc intends t=
o implement only mandates setting errno when the result is zero, and appa=
rently allows setting it or not when the result is 0x1.0p-1074, depending=
 on whether this value was obtained by going one step up from 0.0 or one =
step down from 0x2.0p-1074.
>=20
> If the Glibc maintainers do not consider the current behavior a bug, th=
en this should be noted somehow in the nextafter man page.

Would you please send a patch for the manual page?  You can
find the guidelines for that here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>.

You can clone the git repository from here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/>

If you send a patch, please CC the folowing:
Cc: Andreas Schwab <schwab@linux-m68k.org>
Cc: <libc-alpha@sourceware.org>

Thanks,

Alex

>=20
> Regards,
>=20
> Pascal
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------23iMuuX5RAEXq4Ly8d5xciPa--

--------------Ib508aIGmza2qEAo7GTZm9Zj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQKfxUACgkQnowa+77/
2zKF+A/+KFxfnLCjQkKl6uEUvMZBrpSf/HJ+4cKla77v0oxV+9U6f8vTPDHembsr
Tw975dRFfJLzZzB8kQfP/HPtwqXFWDFj0lz9XhcXIXd/o5yBZKDXV4j21vkgEXJY
rr87uHC2UFysDdei55rZiRFP5R4/Ot6YfrxwRUM7gc0SWF3bnpD0awqyF/3IoMNt
DesSWsQpqtMW35NR78tJBHTYAEzGOm/FMHF+XVMQsKfyv+Ec1/PBJSfm9NcnZzkU
loYh3+WZg6Ys6GbmixqKrhybQGwIy9mu5kUVNVLmrmjSmqBzWEkZfeBqb4PKP585
eGKXMvpZcyOXRKC05gtHdP2W069XDHI2n9xjkj9ji8k48BsYv8IpSwXVFlVXNivl
mzIbkfbOapcp5e+RYhp/KxYKus7WNK5Kha/6ZvpL+C9ui5UQBObYDbahICfr35m+
eYR4mEZL8EigxyF5v2hqa0uNV0u07MZt4dHjO3O+bSl1lzIjDV3KTXtdceIA/k5B
5m7TwB66JURBmXVnmhFKTopk5YQrsFJCX3mxv1lNWcd5imEq2H4dd7qxfbqxcDo7
+lFVrBufDaAePbdt9krZKheFZnYvbcFf3TeO/CC58HgcPIFSjLZHNeck+WGt9XWK
Hr0fY1Q5FLXugM3dgPfwdE7XqSIAZKUus+x2taV/EaMeZid14Yc=
=CzTb
-----END PGP SIGNATURE-----

--------------Ib508aIGmza2qEAo7GTZm9Zj--
