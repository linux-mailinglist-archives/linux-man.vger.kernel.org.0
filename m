Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 260686B573E
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 02:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbjCKBH6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 20:07:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjCKBH5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 20:07:57 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BC1C3ABB
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 17:07:55 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso7305734wmq.1
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 17:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678496874;
        h=in-reply-to:content-language:references:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uor2GF1AlVmZTmFYu1Ia++fFARoIM/8tG5baX9RdrDY=;
        b=UgPqvjgT5S7EZMB836KLX6I8kvTLIk3N5DTIzELMzEXoiUeWPmSrEFNjn1rWTFyPn5
         AJsVT+abifYy9KGNJOmy7/K+BJEZlGchwhF8DflTLzmVWCkNRyUh9/wVU6tncfpc/o4V
         LrYLZN+u7Xsdjtu7ruL+pj2ViBPZGnulLna6K39t4+EDeHWPhMhsQqPjJX8bScUODJ0R
         haCoEYB/MNi8yzDRnQkbpzqwE+bG6SSREETAb2jx6dpSLwn9eXzdXptDwJKdNu7z2X7W
         sd2Z3/Zk4ghO+9hQD61g6IT0RGV8A9JfrF68aYVsVTQQbCLlU1eJ1+MB/D8TFGdIumNO
         U6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678496874;
        h=in-reply-to:content-language:references:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uor2GF1AlVmZTmFYu1Ia++fFARoIM/8tG5baX9RdrDY=;
        b=ThCzRm9LipCkMbQXiVzfhFRMhvWKNveuXPQGxIpt3fehOV9J5IHK2DLcBtmkfzWCu1
         Ge6Roy2dOnrZrVQwsJqLAlSVpEavS/TtoCN+M40thdubp7YgIh+C2A2C5UEtV9s7KhIz
         gCTtYGUIlMmoyKwEkg6hTttXmGHipjKkoas3TrNUyQPDWBov0K3cb2nOgqRRnxaByhSQ
         psJWb9pe2DH3ikfZGl+3CDwpOuIEz3PqVD8j5jujgLoVyNgAYUkVg1woYjHf2VpcdgkA
         qziC0VhWuBJnHiEi3oFHMjX/wr1loAbPgPYQqAFShdu/rEUIYNJpVoTqkYHU5SKedZ7y
         D0Nw==
X-Gm-Message-State: AO0yUKWLu3U7EpjVPUXHp26uJGmPbbtvJQY/ounL81X5gvQ10GuoojmG
        WD44QyMOYQ8u2l7jVAwoIAPZm2fTIXc=
X-Google-Smtp-Source: AK7set/nwZUtnlQ4TMz9spUGy1v1SKro9q/6rpTy85s7q/fKXdphBE6UBR6H+qyp2GmdBvn5mvMK0Q==
X-Received: by 2002:a05:600c:45d3:b0:3eb:39e0:3530 with SMTP id s19-20020a05600c45d300b003eb39e03530mr4241136wmo.41.1678496873625;
        Fri, 10 Mar 2023 17:07:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k26-20020a05600c1c9a00b003dfe549da4fsm1478747wms.18.2023.03.10.17.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 17:07:53 -0800 (PST)
Message-ID: <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
Date:   Sat, 11 Mar 2023 02:07:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: Example code at the manpage of strtok produces segmentation
 fault.
To:     Leon Breidt <lebr1004@stud.hs-kl.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
Content-Language: en-US
In-Reply-To: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0W6011jtBq9IDcuQ8oWCjbGh"
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
--------------0W6011jtBq9IDcuQ8oWCjbGh
Content-Type: multipart/mixed; boundary="------------oECKiMh3Hs0rHk4PnnDty9j3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Leon Breidt <lebr1004@stud.hs-kl.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
Subject: Re: Example code at the manpage of strtok produces segmentation
 fault.
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
In-Reply-To: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>

--------------oECKiMh3Hs0rHk4PnnDty9j3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Leon,

On 3/10/23 06:09, Leon Breidt wrote:
> Dear Mr. Kerrisk, dear Mr. Colomar,
>=20
>=20
> I am a student at the university of applied sciences of Kaiserslautern,=
 Germany. I am currently working on some code for a class using c, in whi=
ch I needed to split some char arrays.
>=20
>=20
> I tried to understand the functionality of strtok using the manual and =
found a code example which seemed helpful. However, simply copy-pasting i=
t, compiling it and executing the example usage produces a segmentation f=
ault. Particulary annoying is this as the code was used in answers on sta=
ckoverflow, and continues to spread its false message from there...
>=20
>=20
> Steps to reproduce:
>=20
> - execute: man strtok
>=20
> - copy the code from the section "EXAMPLES"
>=20
> - paste it into a new file "main.c"
>=20
> - execute "gcc main.c"
>=20
> - execute the example usage given in the manual: ./a.out 'a/bbb///cc;xx=
x:yyy:' ':;' '/'
>=20
>=20
> =3D> Segmentation fault instead of the output described in the man page=
=2E

I can't reproduce that[1].  Could you please confirm if you can build and=
 run
the program as shown below using the build system (Makefile)?

>=20
>=20
> I would be more than happy to create a better usage example, but I am u=
ncertain how to submit a patch via E-Mail. I've never done this before. W=
ill it be sufficient to send you the code of a new, hopefully better/fixe=
d version via E-Mail?

Sure, if you can't send a patch, something like that should be good.

Nevertheless, I encourage you to learn to send patches through email.
It's not so difficult.  I guess you know how to use git(1).  If you do,
the simplest thing you can do is to paste the output of `git diff` (or
a similar command) into an email.  Once you can do that, you can learn
git-format-patch(1) and git-send-email(1), which would allow me to
apply the patch directly from the email, without having to copy+paste,
but git-diff(1) should be enough for a start.

>=20
>=20
> Kind regards,
>=20
> Leon Breidt

Kind regards,

Alex



[1]:

alx@debian:~/src/linux/man-pages/man-pages/main$ make build-src -ij >/dev=
/null 2>&1
alx@debian:~/src/linux/man-pages/man-pages/main$ make build-src -tj
alx@debian:~/src/linux/man-pages/man-pages/main$ touch man3/strtok.3
alx@debian:~/src/linux/man-pages/man-pages/main$ make build-src V=3D1
MKDIR	tmp/src/man3/strtok.3.d
mkdir -p tmp/src/man3/strtok.3.d
touch tmp/src/man3/strtok.3.d
SED	tmp/src/man3/strtok.3.d/strtok.c
<man3/strtok.3 \
sed -n \
	-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
	-e '/^\.SH EXAMPLES/p' \
	-e "/^\... SRC BEGIN (strtok.c)$/,/^\... SRC END$/p" \
| man -P cat -l - \
| sed '/^[^ ]/d' \
| sed 's/^       //' \
>tmp/src/man3/strtok.3.d/strtok.c
CC	tmp/src/man3/strtok.3.d/strtok.o
cc -c -isystem /usr/include/bsd -DLIBBSD_OVERLAY   -std=3Dgnu17 -Wall -We=
xtra -Wstrict-prototypes -Wdeclaration-after-statement -Werror -Wno-error=
=3Dunused-parameter -Wno-error=3Dsign-compare -Wno-error=3Dformat -Wno-er=
ror=3Duninitialized  -o tmp/src/man3/strtok.3.d/strtok.o tmp/src/man3/str=
tok.3.d/strtok.c
LD	tmp/src/man3/strtok.3.d/strtok
cc -std=3Dgnu17 -Wall -Wextra -Wstrict-prototypes -Wdeclaration-after-sta=
tement -Werror -Wno-error=3Dunused-parameter -Wno-error=3Dsign-compare -W=
no-error=3Dformat -Wno-error=3Duninitialized  -Wl,--as-needed -Wl,--no-al=
low-shlib-undefined -Wl,--no-copy-dt-needed-entries -Wl,--no-undefined  -=
o tmp/src/man3/strtok.3.d/strtok tmp/src/man3/strtok.3.d/strtok.o -lc -lb=
sd =20
alx@debian:~/src/linux/man-pages/man-pages/main$ tmp/src/man3/strtok.3.d/=
strtok
Usage: tmp/src/man3/strtok.3.d/strtok string delim subdelim
alx@debian:~/src/linux/man-pages/man-pages/main$ tmp/src/man3/strtok.3.d/=
strtok a.s,q.w,z.x . ,
1: a
	 --> a
2: s,q
	 --> s
	 --> q
3: w,z
	 --> w
	 --> z
4: x
	 --> x
alx@debian:~/src/linux/man-pages/man-pages/main$ tmp/src/man3/strtok.3.d/=
strtok 'a/bbb///cc;xxx:yyy:' ':;' '/'
1: a/bbb///cc
	 --> a
	 --> bbb
	 --> cc
2: xxx
	 --> xxx
3: yyy
	 --> yyy


If it crashes for you running these commands, there might be something wr=
ong
either in the page or in your system.

If it works, then the problem is probably in the way you copied it.  Do y=
ou
see any warnings from the compiler?


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------oECKiMh3Hs0rHk4PnnDty9j3--

--------------0W6011jtBq9IDcuQ8oWCjbGh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQL1F4ACgkQnowa+77/
2zJFsA//VzH/5kK09NuvH19uXnzA9HveUDmCO+f/r8fb1cvZSJ+Tkl2pgMFDckXs
My2cIgEVRnPJ+0a3V6YKuAFpbLBmmBXy58Ceb4yGBl1lD4ZM0D675Vn8caZPRSjH
288PNkd2Bp3wzvvIW3s8mthI2ihFe1TxoBOFTFZQgJd185bhfqHHNtvdzYr+VfxF
FbmhoC9Loe1BA+plFUyPdlkBju70GFUc73zYi/X9zD3fCM9pavk+Rgmt1k8cv7QG
RQ5ZsfBnPpdah9Ht2ir46g5/0b8WhsgfY9aBekWwbddM0uXhVd1h/gGojvE09qFW
BrtImlJvNbBot1IlBBM4EKSj7G9ggIHSIRQCGRq20F1LCh0Oe514EKH62OeipsEl
XXE3A0HZJwsLDnprwno+Kzpyn+E34qGiySoFinCF3Xyjua8pQ1PziTVcLJkIi4bF
LczIhn55dO7fGydYHgKOmZOLdEMIW/oqIA+vcrU2uYC8Rar+Oeqx+Fabh8czI7vE
FRW63QlhvZ8rvIUW/UVTmPGkyG6ghDPqkR0RxHh4TcsL6aXebyCHccvmhZZJz1Qq
cPbj7YSGqdKk1XGHTMr0aBBaeic5+N0bffsF1tecjiU5ZXM3hcxk4InbcDyvXEVK
Nv/o1jL4/aXF5IMgPv8bNljMyLE9tCg0CGQtxtwB+ncGj5/NiEU=
=0Wll
-----END PGP SIGNATURE-----

--------------0W6011jtBq9IDcuQ8oWCjbGh--
