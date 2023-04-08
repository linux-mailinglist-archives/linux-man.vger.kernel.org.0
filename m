Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B91B76DBB1A
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbjDHNW2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:22:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjDHNW2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:22:28 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF0AD332
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:22:26 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id d8-20020a05600c3ac800b003ee6e324b19so545648wms.1
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 06:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680960145; x=1683552145;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dYGZnGubuj9HCakQksDhBKNARM9mynqlt5tvH86JXAc=;
        b=TEA5AxPFLSau3rskWEa4gkEc9XNHy3xbflsmIUBeVflGv4PK2hsF0PQlQluOpUMQV+
         ADBHUbm0LB1hk09HcGTE44Fk6az2LGs5Gz8DkcBpRye4YYUPNi8uXAwPpZO60gquugth
         D6s1rJJraluqBHbELKElhadw+3GHFGJzOgOLqb3uMkvUTS8yZOfegf+kOe2ZpReW3LJU
         dBRM9pazBVTZRE80DcmyIuzyzSCHcPMxe0MmxugRbXEEuR9F2IXsULaDOdwnZjtWF7gF
         GAT4XQGiaH+aqGB9p5tLHY246P1tBZQRgDMweZgeHMMT1B+6pobXqGuHBXOm7LQXSKn4
         DrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680960145; x=1683552145;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dYGZnGubuj9HCakQksDhBKNARM9mynqlt5tvH86JXAc=;
        b=farWwBGrHMfBUa2dIyFVYK2u4W0SzXC3SLFDQqOADR7qsXPNLoUGolenUqoXauNK6/
         T4zlnjCLSHeu3X8eWM0IKNp/e4DxZregAMACYo7yW16B6F9XC2ak9dgbkjMB7egMG0wW
         2aSeVURtmmmz/CXYBkwXdGNt6km5bCIZahi7gxfXNWZCWADx53LfawchZksIP1xYaiyL
         58gNi21oUl7NIacZONbWAdNupCeoNQhOe9vJ2wkon0625HxTnGrhIlxORt6katwu+iKn
         vqap2hsYedWXMTdgzsWQo3JZe7PCT23/gCfJXWBPUPsLapOJ4Q5nBFzkxnawAyYrx5lR
         05Og==
X-Gm-Message-State: AAQBX9fJC5qnZWbkvi1booCu3W6oLT5jCCykbFqPhKPFwhK7f1IxWD/w
        UwE+mnG9r8IXYb7V9Y+20j4=
X-Google-Smtp-Source: AKy350b3ss6ahvfcfdzO8gp9zBJBtWcH4ViymbCmNdc5Vj/MMku49f6mw2ZbEkjlX1xKobn6n60txw==
X-Received: by 2002:a1c:7c0b:0:b0:3ed:551b:b78f with SMTP id x11-20020a1c7c0b000000b003ed551bb78fmr3345872wmc.4.1680960144941;
        Sat, 08 Apr 2023 06:22:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c214700b003eb966d39desm7933200wml.2.2023.04.08.06.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 06:22:24 -0700 (PDT)
Message-ID: <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
Date:   Sat, 8 Apr 2023 15:22:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
Content-Language: en-US
To:     Lukas Javorsky <ljavorsk@redhat.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------C9KzRBazhk3QLsGTQoNpWDLR"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------C9KzRBazhk3QLsGTQoNpWDLR
Content-Type: multipart/mixed; boundary="------------nWhEzwNgS53VmUhV5vXjGS1w";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lukas Javorsky <ljavorsk@redhat.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
In-Reply-To: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>

--------------nWhEzwNgS53VmUhV5vXjGS1w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On 4/6/23 15:11, Lukas Javorsky wrote:
> Reference: https://sourceware.org/pipermail/libc-alpha/2022-June/139549=
=2Ehtml

Thanks for the patch.  Please see a few comments below.

BTW, your mailer screws the patch; please send a copy attached together
with the inline patch in the email, so I can respond to the inline one
but apply the attached one.

Cheers,
Alex

> ---
>  man5/resolv.conf.5 | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 6af8b4e92..2dd051556 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -200,6 +200,27 @@ which causes round-robin selection of name servers=

> from among those listed.
>  This has the effect of spreading the query load among all listed serve=
rs,
>  rather than having all clients try the first listed server first every=

> time.
>  .TP
> +.B no\-aaaa (since glibc 2.36)
> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
> +Sets
> +.BR RES_NOAAAA

This adds a warning:

an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2 arguments, =
got 1

You should use '.B', not '.BR'.

Please check this for preventing new warnings:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING#n132>

(Although I'm not sure if this warning is only enabled in a version
of groff(1) that you probably don't have.  :)

> +in
> +.IR _res.options ,
> +which suppresses AAAA queries made by the stub

Please use semantic newlines.  See man-pages(7):

   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.


> +resolver, including AAAA lookups triggered by NSS-based interfaces
> +such as
> +.BR getaddrinfo (3).
> +Only DNS lookups are affected: IPv6 data in
> +.BR hosts (5)
> +is still used,
> +.BR getaddrinfo (3)
> +with AI_PASSIVE will still

=2EB AI_PASSIVE

(I see it's not formatted in other locations in this file; that seems
a bug.)

> +produce IPv6 addresses, and configured IPv6 name servers are still
> +used. To produce correct Name Error (NXDOMAIN) results, AAAA queries
> +are translated to A queries. This option is intended preliminary
> +for diagnostic purposes, to rule out that AAAA DNS queries have advers=
e
> impact.
> +It is incompatible with EDNS0 usage and DNSSEC validation by applicati=
ons.
> +.TP
>  .B no\-check\-names
>  .\" since glibc 2.2
>  Sets
> --
> 2.39.2
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------nWhEzwNgS53VmUhV5vXjGS1w--

--------------C9KzRBazhk3QLsGTQoNpWDLR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxaogACgkQnowa+77/
2zKU2Q/+MsPC0GaMBKVid/j2ejhc8tPbhiG0/FLpkKf5jK/PPueNOVHgMyAsH3Vv
cdYi7JEjiJBHtAR7LRcEWW2zQFSEVnaJYCiJYsWqi4Uim2c8n2vL6K926ICYw9aK
/A5UvQkTyrI5B/1KehUt5KXSvFyENIuXNjoEiThSzApkRSgjfS2njLz69zeLanoh
r13XT5ohvjTI9k6l/v7Tix1zAZxrNyjAs+MjoR4FbphpB8wru9UgBc1ppZtwK+Ix
h2IznflxFhwcq7NegvVGm6o3rM2Fpp89IlubVKwpqX0FGTpsJlV5+fTPh7dadJ8N
RFb/GEABep64pXASqlbwrXXlG+ejs0c0TP7usvz6uCEpn29+xlS6zYF92ufWEoIl
QF0z+FxeqhDossvfZqfrcqOUCfAbwP3UAxovVAO48QXAsxADGga4o5AHPKsIYEzL
xE6K5Z7ugF1xoCqPXsPRj4VS29T3JQhubh3bXMjb/KMMWed+0K1uspxZTAxJ3oVq
CO+xkz0FwJxKfZkk7aDVEzkmMNFbFdQUwtV+kiPtzeBdlV6wsD54NCRLP85qx7hn
dN1Qgr4kN8pdLfPOTNWCSAe3UCEGF/S2YGSVlZvK+DkUZzBIwS2F+RZAy8gIF/bj
jyGrMDNY/0rAIKaAbzczBKSzNrmUWPyoRTnZh24TSNtZKsMqMKk=
=JhPP
-----END PGP SIGNATURE-----

--------------C9KzRBazhk3QLsGTQoNpWDLR--
