Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 173126B5B38
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 12:35:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjCKLfQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 06:35:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjCKLfP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 06:35:15 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 732B030E5
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 03:35:13 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id r18so7351011wrx.1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 03:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678534512;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VuyojSxNql/fUUn29XyuQcJs41529j8apbRZhQxmQX0=;
        b=KyYuZXbWB/mjGaQh2bq5u/FQN9/W64j3WpO6YJUxDg674FO2doIk1zKgpqxMdxSop7
         C13zLTII4OC3rjfAiTS5b+fQnCG2XlDQr9fzYpgW0Jyte7kfKeSMwLincL01DzP3qKyW
         XaeQT1TuCq8Hu0uhzTXGb4jJfsHTuiWQGKFUZxYssemEIbGkWhimrr5srlxiWC3uVZaA
         wX8cm3Qh5ZgwWOmQ8uR37CXr5L2HDA13CpmrfGbMlBxgEnWXvRhoTyyEPtk5aUzPSj6l
         EwgJ6F2xt56aSbBfms8/AinVknUKsgo/CpRKUnt0+hidP5r8allIzaZOwUQVKbLCzjGi
         KrWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678534512;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VuyojSxNql/fUUn29XyuQcJs41529j8apbRZhQxmQX0=;
        b=PBEepREfy98j+5nY7rvaoIBT7hfVVOcw4fcFTtuqfFy7TddKCNGKznxhGfO1Rz92NB
         yLGRfWQ3VMiK0foxa1lSGp5m1jkAcu4c3E+zDP14wYydqCn3VlHYP6TQNnI76TTaaMHQ
         gDnkzv8SXVolssX9wu7VUjs863fr+9tGwWoQyvfE/R7OJ+GND9yDlkCdSbtj6uc/nK+S
         nc/WiMLXbrWGzE24WM7p9XDJ/b+PDMmMcUcSidJxP26HezczSHRLIRup/hnlp8vPfQpa
         WhwKqd4M8Fvfjv5na+NM0GOm6oGV6iGwnhp2mkGzVrj10Abdh1IotqNOH43Q6jgSjLq3
         NREw==
X-Gm-Message-State: AO0yUKWCtV4HWUx/YZwGu5bErya9Z1nDGpQrdggwIew6yW3uEiYqctJt
        Vf2tWX18X7QvxaJHtkCv0Ds=
X-Google-Smtp-Source: AK7set8oDRVp4D3Ajj60/F77eVKlCKdpVGHeFuy6iolbd/xMO4i9yORof7u2Gh1ZYpGrnSbot4pZfg==
X-Received: by 2002:adf:fa91:0:b0:2ce:a17d:44c2 with SMTP id h17-20020adffa91000000b002cea17d44c2mr1245091wrr.39.1678534511782;
        Sat, 11 Mar 2023 03:35:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e6-20020a056000120600b002c70bfe505esm2264269wrx.82.2023.03.11.03.35.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 03:35:11 -0800 (PST)
Message-ID: <26b90872-88c7-6050-5ac7-45537b915558@gmail.com>
Date:   Sat, 11 Mar 2023 12:35:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: AW: Example code at the manpage of strtok produces segmentation
 fault.
To:     Leon Breidt <lebr1004@stud.hs-kl.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
 <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
 <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WoU0FcU2H4JxU0GESfQb09Ky"
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
--------------WoU0FcU2H4JxU0GESfQb09Ky
Content-Type: multipart/mixed; boundary="------------0VfNIsEC1YzH8W9S291zIGnA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Leon Breidt <lebr1004@stud.hs-kl.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <26b90872-88c7-6050-5ac7-45537b915558@gmail.com>
Subject: Re: AW: Example code at the manpage of strtok produces segmentation
 fault.
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
 <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
 <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>
In-Reply-To: <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>

--------------0VfNIsEC1YzH8W9S291zIGnA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/11/23 02:47, Leon Breidt wrote:
> Hello Alex,
>=20

Hello Leon,

>=20
> unfortunately it seems I did not receive the Makefile you wanted me to =
use, trying to assemble it from the console output you provided me failed=
=2E Probably my lack of experience with make doesn't benefit me either...=


Sorry, I didn't specify.  I meant the Makefile in the man-pages'
git repository.

>=20
> I have cloned the man-pages repository from git and looked in the Makef=
ile there, but there is no build-src target specified there as well.

That Makefile is rather short, and as you say has no 'build-src'
target.  However, you might have noticed it has many 'include's
at the end of the file, which provide the actual functionality
(but you don't need to care about them; just run `make build-src`
from the root of the repo).

The main Makefile only contains the 'all' and 'help' targets.
BTW, if you run `make help`, you'll see a full list of targets
you can run.

> Could you send me the text content of the makefile you want me to use, =
it seems attached files don't make it all the way?
>=20
>=20
> To address your other question, I have tried a simple copy-paste with c=
trl-c, ctrl-v from the manual page in my terminal, as well as from the we=
bsite at https://man7.org/linux/man-pages/man3/strtok_r.3.html
>=20
>=20
> I do indeed see compiler warnings, you will find them below:
>=20
>=20
> breidt@STUDENT-III:~/tmp$ gcc main.c

You should _always_ compile with -Wall and -Wextra:

   $ gcc -Wall -Wextra main.c

> main.c: In function =E2=80=98main=E2=80=99:
> main.c:17:28: warning: initialization of =E2=80=98int=E2=80=99 from =E2=
=80=98char *=E2=80=99 makes integer from pointer without a cast [-Wint-co=
nversion]
>    17 |     for (int j =3D 1, str1 =3D argv[1]; ; j++, str1 =3D NULL) {=

>       |                            ^~~~
> main.c:17:49: warning: assignment to =E2=80=98int=E2=80=99 from =E2=80=98=
void *=E2=80=99 makes integer from pointer without a cast [-Wint-conversi=
on]
>    17 |     for (int j =3D 1, str1 =3D argv[1]; ; j++, str1 =3D NULL) {=

>       |                                                 ^
> main.c:18:26: warning: passing argument 1 of =E2=80=98strtok_r=E2=80=99=
 makes pointer from integer without a cast [-Wint-conversion]
>    18 |         token =3D strtok_r(str1, argv[2], &saveptr1);
>       |                          ^~~~
>       |                          |
>       |                          int
> In file included from main.c:3:
> /usr/include/string.h:366:41: note: expected =E2=80=98char * restrict=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
>   366 | extern char *strtok_r (char *__restrict __s, const char *__rest=
rict __delim,
>       |                        ~~~~~~~~~~~~~~~~~^~~
>=20
>=20
>=20
> I have also attached the exact c file I am compiling with "gcc main.c".=
 Lets hope it gets through.

Now I see the problem.  It was a bug accidentally introduced in man-pages=
-5.09:


---
$ git log -1 88893a773cbd219f08cc3ae34fffe079d89a120d
commit 88893a773cbd219f08cc3ae34fffe079d89a120d
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sat Sep 5 17:18:10 2020 +0200

    sprof.1, eventfd.2, execve.2, futex.2, getdents.2, mprotect.2, open_b=
y_handle_at.2, recvmmsg.2, sched_setaffinity.2, CPU_SET.3, backtrace.3, b=
search.3, dl_iterate_phdr.3, dlinfo.3, duplocale.3, encrypt.3, envz_add.3=
, fopencookie.3, getaddrinfo.3, getaddrinfo_a.3, getdate.3, getgrent_r.3,=
 getgrouplist.3, getifaddrs.3, getprotoent_r.3, getservent_r.3, hsearch.3=
, mallinfo.3, malloc_info.3, mbstowcs.3, mtrace.3, pthread_create.3, pthr=
ead_getcpuclockid.3, pthread_setaffinity_np.3, qsort.3, rand.3, strcat.3,=
 strtok.3, tsearch.3, wordexp.3, core.5, aio.7, inotify.7, sock_diag.7, u=
nix.7, user_namespaces.7: Use C99 style to declare loop counter variables=

   =20
    Rather than:
   =20
        sometype x;
   =20
        for (x =3D ....; ...)
   =20
    use
   =20
        for (sometype x =3D ...; ...)
   =20
    This brings the declaration and use closer together (thus aiding
    readability) and also clearly indicates the scope of the loop
    counter variable.
   =20
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
$ git describe --contains 88893a773cbd219f08cc3ae34fffe079d89a120d
man-pages-5.09~442
$ git show man-pages-5.09
tag man-pages-5.09
Tagger: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sun Nov 1 21:08:55 2020 +0100

This is man-pages-5.09

---



It was fixed in man-pages-6.00:


---
$ git show f091d3e26e4cdef9ecc632d6f4bd94dc16fce43e
commit f091d3e26e4cdef9ecc632d6f4bd94dc16fce43e
Author: Stephen Kitt <steve@sk2.org>
Date:   Sat Jan 8 16:43:04 2022 +0100

    strtok.3: Fix j/str1 declaration
   =20
        for (int j =3D 1, str1 =3D argv[1]; ...
   =20
    declares two variables of type int, j and str1; the pre-existing
    char * str1 isn't used. This causes compiler warnings. Declaring j
    outside the loop fixes everything.
   =20
    Signed-off-by: Stephen Kitt <steve@sk2.org>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/strtok.3 b/man3/strtok.3
index aec914094..06e9688b6 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -255,6 +255,7 @@ .SS Program source
 {
     char *str1, *str2, *token, *subtoken;
     char *saveptr1, *saveptr2;
+    int j;
=20
     if (argc !=3D 4) {
         fprintf(stderr, "Usage: %s string delim subdelim\en",
@@ -262,7 +263,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
=20
-    for (int j =3D 1, str1 =3D argv[1]; ; j++, str1 =3D NULL) {
+    for (j =3D 1, str1 =3D argv[1]; ; j++, str1 =3D NULL) {
         token =3D strtok_r(str1, argv[2], &saveptr1);
         if (token =3D=3D NULL)
             break;
$ git describe --contains f091d3e26e4cdef9ecc632d6f4bd94dc16fce43e
man-pages-6.00~1122
$ git show man-pages-6.00
tag man-pages-6.00
Tagger: Alejandro Colomar <alx@kernel.org>
Date:   Sun Oct 9 18:48:44 2022 +0200

man-pages-6.00 - manual pages for GNU/Linux

I've released man-pages-6.00.  The release tarball will soon be
available on <kernel.org>.

This release resulted from patches, bug reports, reviews, and comments
from around 145 contributors.  The release includes around 1245
commits, and changed all of the pages.

The most notable of the changes in man-pages-6.00 are the following:

- A new set of man dirs: man2type/, man3const/, man3head/, and man3type.
  These hold new pages and pages splitted from system_data_types(7),
  which had become too big in the recent releases.

- An improved build system, which allows running linter programs that
  check the correctness of both the man(7) source and the C programs in
  EXAMPLES.

- A new LIBRARY section (mostly in sections 2 and 3).  There have also
  been other important changes to the title and other sections, such as
  the removal of the COLOPHON.

- We have added several new pages documenting new kernel features, such
  as landlock(7) and memfd_secret(2).

Especial mention to =D0=BD=D0=B0=D0=B1, with 58 commits to this release.

Thank you all for contributing.  Especially to those in the groff@
mailing list who helped me a lot in this release, and to Michael (mtk).
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNC+6wACgkQnowa+77/
2zJEnQ/9GErYhSvR/SG1NUencHSg5pb2q0O/rVnavPpnK1CTBGWlDlF6a0d5+7RZ
zlP1BM289WN6xIIb4PyeobpKfMO0WUgRliKJPKCBz8lsiCIB0ZxrcD6o+rDeKvXK
g+eP6ofYYEZ9sTYWZR1Id2LYbwir4JO4Pp3O2xZA1W0XJJh8zN/tMMQwTxQfpBCF
I2K6vGKipT2/ueTu0qZ7A6lswdPSTwbeuFJjGV6VneI4yy/ID3KHgrU++3l/wq1h
sseEPNT5E+y+bhwA7958v/yjl9Sbn6ebvVFoAJakylv95UWPWprqFBVks2az4Xz+
oXAmcRdKQ1aWQwD+6MrwLqjKsO3qvlgxJzREDFr8ySUmiPnyp7PJ160XtvqP2zu2
elyvPPsu4YvGIO9lojXxAT66kY4XXg6tKgdaJac2QXt/dl/C9Q+Ni9MDuyLbnbGb
RLlQLjCpjsrpIaa+xniJzrZqh9VjbxDvG2YliyhvLjdGLoV3YQjOgIoYWJctaIw3
hFD6XLIGWrKXQ0uw26zGhYbXYd8z7WY5r36h5izdF9SeXP0Bgo1hw9NR6UNFbqND
nFXlIjyYBLdLYF2JWrqMdU0/qTJwRzSQ9feqd3KXTQIG21legeLUrG885408pUyu
wsCCIXqKuIpysAjHyjwWVCFvGDr4CQ5qtE1fYTrFFmHUFruj89Y=3D
=3DuOhR
-----END PGP SIGNATURE-----

---


The bad news is that the <man7.org> online pages have not been updated
since man-pages-5.13 (Aug 2021).  You're probably using an old distro
that still has some old pages too.


> Kind regards,
>=20
> Leon
>=20

Kind regards,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0VfNIsEC1YzH8W9S291zIGnA--

--------------WoU0FcU2H4JxU0GESfQb09Ky
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQMZ2cACgkQnowa+77/
2zKbNQ//QDTyO9kwekUgl36M5pen5wwqNBiHT9bVUHFKEcsnbKgMb0SSrdEKhpq1
7WemBhWiYbgvPuBlwSOaO8+tYtfmIT4uqeNzUNwNrLt4KN0/r6VSkfYBH8rcGYM9
cwWtk0XekjnHurviiYQLhg2K3QH+aJOotF/XtWxK49//ruwxsdlW8oSBBGCgQ140
f1UZEH3RaYd182Ffj1+11dxqubfnVmzfo9cP290ikGmCzAzJjfE3rflSE2nX9Kpq
UeUD6NWsLI9KaSkZ5OfZZ8tc3Xa5SThPtoBhBnpw1ylOzJ/4ZNqsme/0KfacNSpY
3JGjlxRFCZTqEn7fr+RodaWqtI2E+malBPXf++JD0UebjHwvTMjWgto2ViKvJOH7
W1fzYrlT8aKRHauRJTvRPHLrrdj5LFn4AClLIrApQVqSKOaehp0YX0BzyZLSHOVo
qTq5yY4lUdFPFRYN1YdTHS2b+uqNa+vRkDkmEEgtinhQneiwyG1Zxo+plm/UGPHN
yQmWaVIPbUXQetdLKLxIWGsJJlQ+IlnaIwEoS5ruYOosKFxMveILdK/2cp/0sbrI
vqbINEyFt+kus9C4U+KLrZlQH+jNqpJxyZ5oh5do6Gn9AwNTRcuCPxJlT9CdFuJY
miLcTXKt4jV8uvJeMWiBQ/tIDVC+eaV9K5/s5KnVCkWhSvXAC/s=
=DfuO
-----END PGP SIGNATURE-----

--------------WoU0FcU2H4JxU0GESfQb09Ky--
