Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67FA279ECBC
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 17:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241306AbjIMPZO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 11:25:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236106AbjIMPZB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 11:25:01 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C33C1
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 08:24:57 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-401da71b85eso75669895e9.1
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 08:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694618695; x=1695223495; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UZViJ/udOsr+PGGeiBSQVfB93cDHWVPJ1VuuQZTy4Ec=;
        b=XZWkz9BsM/Z3AiHqYkveY5SfIRbzblNKOToQ/6DV6nrGUuNOvt/8CbXwXRbF51hO7P
         lrX7JAqvpG7Ne1WKZPX+Pf+mdP7uSeIeZSvdOZXIjng57lIi631H/WtzLROm0KrOPQWc
         6h23ybXElpklss1bKnIhBDpfCo04YZijhU6GggRNKufCVINzkzm7DOyRsXkaQgqAfug9
         UWbkq0KtbnS+22Fq6AdDutMzTZ2Ow79LfLEmhr75DK2OgAi60Vvji0+2xS9HmA+GZIO+
         VGioGAQKiIOPgVcv3W34hbz5faiuM/htjuJ1NLCC/1Qv2x8yPm2qHiRMfA3vEUS2Jxas
         k1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694618695; x=1695223495;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UZViJ/udOsr+PGGeiBSQVfB93cDHWVPJ1VuuQZTy4Ec=;
        b=VPz3desiAINWMOf3xXgTFdsRhSwhL1XQZE9vDrHXdoPyeVZTGtMbN9u1sSi8NOGfKR
         GFcVZjKGwJyE+MU8z/5bV+z6Lee2aeNEYHd4E2yCi+j4BJf1BKDtBJwf5HHDxTgL1lkg
         nKft/9MansCMgwCDiPoxOnrihmAkvm8AYBpL/IUBOW03H8p+79sE735OByNaJrQ1lwVi
         nqtaiEo4l6cTDSL1PEqolDowiQ1lfIKMzgOC4yy+MtMqUT6Y+kmCk6GLH6q6zG/HpZLs
         5KG2YixejzOyGSltaBDro4IqozBk2Chfd4qpLn+/jW04ZKjMR3EXlV9nKqZZUbtBNRdj
         0M7w==
X-Gm-Message-State: AOJu0YxQxQ52vu4rZwa8JrJtfHPlgJ9ciaZt+dsYAQO9FeGq2xsNwzxb
        apw/v8oQkga/6+PRIU4u7mnKvJ75DAs=
X-Google-Smtp-Source: AGHT+IGaXCT6ZSMTjJFXFq8VQSm5iZdQEJnObnX1nQVQdGp/3dTzHzZLyjjWQRN0VWtbzdcrhn0ZCA==
X-Received: by 2002:a05:600c:2147:b0:3f9:c82e:9d87 with SMTP id v7-20020a05600c214700b003f9c82e9d87mr2403512wml.13.1694618695093;
        Wed, 13 Sep 2023 08:24:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id b14-20020a05600c11ce00b003fee8502999sm2328679wmi.18.2023.09.13.08.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 08:24:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
Date:   Wed, 13 Sep 2023 17:24:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: alx@kernel.org
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
In-Reply-To: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bslPEI2mMjlz05057Cv6eDNh"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bslPEI2mMjlz05057Cv6eDNh
Content-Type: multipart/mixed; boundary="------------AroEDo1IDQ80vtISONWOYMyn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
References: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
In-Reply-To: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>

--------------AroEDo1IDQ80vtISONWOYMyn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

On 2023-09-04 16:29, =D0=BD=D0=B0=D0=B1 wrote:
> Bit me in https://github.com/thecoshman/http/issues/155:
> musl (and, thus, bionic) takes an int!
>=20
> Kill the "POSIX says 'request' is int" comment,
> POSIX says nothing about ioctl:

Please reword that; while it will say nothing soon, the current
standard is Issue 7, which still says.  Something like your reply
to Jakub should be enough.

> it invented tc[gs]etattr() and tc[gs]etwinsize() to avoid having
> ioctl() at all, and STREAMS is long dead from POSIX.
>=20
> Note how the interface evolved in HISTORY. The NetBSD CVS has
>   revision 1.1
>   date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;
>   branches:  1.1.1;
>   Initial revision
>   ----------------------------
>   revision 1.1.1.2
>   date: 1995-02-27 11:49:43 +0100;  author: cgd;  state: Exp;  lines: +=
6
>   -6;
>   from Lite
>   ----------------------------
>   revision 1.1.1.1
>   date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;  lines: +=
0
>   -0;
>   initial import of 386bsd-0.1 sources
>   ----------------------------
> and it's char * in 1.1.1.1 and 1.1.1.2 but ... in 1.1, so hell knows.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man2/ioctl.2 | 40 ++++++++++++++++++++++++++++++++++++----
>  1 file changed, 36 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/ioctl.2 b/man2/ioctl.2
> index 6b55d47c9..a658da354 100644
> --- a/man2/ioctl.2
> +++ b/man2/ioctl.2
> @@ -20,9 +20,8 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/ioctl.h>
>  .PP
> -.BI "int ioctl(int " fd ", unsigned long " request ", ...);"
> -.\" POSIX says 'request' is int, but glibc has the above
> -.\" See https://bugzilla.kernel.org/show_bug.cgi?id=3D42705
> +.BI "int ioctl(int " fd ", unsigned long " request ", ...);" "\fR  /* =
glibc, BSD */\fP"
> +.BI "int ioctl(int " fd ", int " request ", ...);" "\fR            /* =
musl, other UNIX */\fP"

LGTM.

>  .fi
>  .SH DESCRIPTION
>  The
> @@ -103,7 +102,40 @@ .SH VERSIONS
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> -Version\~7 AT&T UNIX.
> +Version\~7 AT&T UNIX has
> +.nf
> +.ti +.5i

I prefer using man(7) macros.  Please use

=2EPP
=2Ein +4n
=2Enf
stuff here
=2Efi
=2Ein
=2EPP

If you want to prevent the blanks that this adds, you can
enclose that in .PD 0 / .PD

(.in is not a man(7) macro, but it is already widespread.)

Cheers,
Alex

> +.BI "ioctl(int " fildes ", int " request ", struct sgttyb *" argp );
> +.fi
> +(where
> +.B struct sgttyb
> +has historically been used by
> +.BR stty (2)
> +and
> +.BR gtty(2),
> +and is polymorphic by request type (like a
> +.B void *
> +would be, if it had been available)).
> +.PP
> +SysIII documents
> +.I arg
> +without a type at all.
> +.PP
> +4.3BSD has
> +.nf
> +.ti +.5i
> +.BI "ioctl(int " d ", unsigned long " request ", char *" argp );
> +.fi
> +(with
> +.B char *
> +similarly in for
> +.BR "void *" ).
> +.PP
> +SysVr4 has
> +.nf
> +.ti +.5i
> +.BI "int ioctl(int " fildes ", int " request ", ... /* " arg " */);"
> +.fi
>  .SH NOTES
>  In order to use this call, one needs an open file descriptor.
>  Often the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AroEDo1IDQ80vtISONWOYMyn--

--------------bslPEI2mMjlz05057Cv6eDNh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB1EUACgkQnowa+77/
2zLlrw/+MVFq0hxRVn+ulhMa5MZudlzztUAxhB4ifwWwcJyfrqXRCKPbgnteUCeE
mC/Y9pAMqgWy3btZ1zQg1nZllclcSuekWW2DOFZ3JsjC3Z3WImuhiC23Kn1FbogH
2VdsGU8CRUcHvHIIcQOV6GnFl54W/8gHvxTJFlIG7OEVT9804ajkIGoNo23oLr6W
PfWKlwLd8yCRCkmJFdnngn5dTlVFVwESx+nK3JT0BHj47+aEUHBp8OK98StioBUb
+2wqE0UJBkJ6Tk2aYYB1kzvhSJ1CCvjRi+KNTXAz+9ys+QgW8SpyoUQKHD208DIE
YID6nf6lZ0BwunN2rccIIorkOTgQnQW/WXfQDBtwmeHgCUDnwIvJk/kxMyM1jcCy
aoMU40sVIjtIBo3QogMZwAUX25DYLAIPG2kWhJYrvUeLJm4yHkMiP5XQ0jkaqjCn
d3CKE/zZBp4YHfx1RJftT+3EViCnOqofLUs2uRPNZZqrltXLlbUMQIxG4UT3yjBA
ACaPHD+P5y3eQxSlsH2g1RfmmhVaAwAzCYtB75QsiGcobm/KGSd4FoEY5F69GQv+
buZlJbX/ZxeWnhAhDOEnLz1FhX886DOMoN6ATSEg0+rCy4ZaUdgE8V7PtUyyP1hI
OIoxS2yFhTH1gUK4gq5+cuq+nxZCRQU/yRnUX/4yVi/SRGOfihA=
=kdJK
-----END PGP SIGNATURE-----

--------------bslPEI2mMjlz05057Cv6eDNh--
