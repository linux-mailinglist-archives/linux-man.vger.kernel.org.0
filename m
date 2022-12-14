Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0427964D2AA
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 23:58:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbiLNW6G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 17:58:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiLNW6G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 17:58:06 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D344241988
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:58:01 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id x2so3663729plb.13
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f7DvDYoGQRN980ip93ym3JRuFSEtpNka9UUMIQtHHWw=;
        b=Ds18Aql5v0G7pFyfJJubFXTUSGzAeOXDwS2d3vzEgV2uCtCqypLIbul4Es+FQ+k/FB
         G99gs4GC8asatmkdGpFKa+RKitymKtObUN5O/zQfPH8V0xOdeSBD+ZUAAYOPt7gcaRd0
         ks1gBxnZLbLNnmRzywZv7k4ZXrfP4Mwg29w9+rRUnO5MhSnPMTfRWvJhLn6OgXN80/MO
         sHPJIofmrk1zlj3zzz5LrqC8keYv4qq1ga2jYAM5suSaZ/c1VbuUROGjWuNv6E6WqH3m
         aTfI0VvtIL0GQ/Bw+1F5LY/yE+5XZ4aU02lsNlg3X6MWP1TX4niE5K2jTsPxILvWiPTm
         LUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f7DvDYoGQRN980ip93ym3JRuFSEtpNka9UUMIQtHHWw=;
        b=WPpW3Q+PNlNMlEliwwx61o8o+QuJ3F/rwbq4Uq5UNnDrW3dn+cb/mT7fCRtXm5gXCz
         LRhY2DkQgnZmNSbMlZdmWEUJmOkIEOR8yhhWQeBA5fu/cf/oWu7MxBP6xcDStej5jzHu
         Aoxu3ionlo6mFEhRhVhRyobgI1cq4Fuu8UvLtstJpBiRna7ZzuH6TsnX+WAv6DdwYdvU
         LO6f+BT6J+TV92haY7M8WwHGd6ty+Xf+FeCO52BeCNsachXuc5/v/5PG9JD/aqu+WCOz
         9Ebhed3SQhHudXBX1GH73OVxii8oJgmddGQSD38HgKEMTxhhuXkhajKnWJWP55WU8HvS
         e1cg==
X-Gm-Message-State: AFqh2koCBeUYmqYUGdo+653AwCkB+ixVsQkzLQX1KQ8ugmKp+t5fcCfH
        txSvhg4RuPwF/MztyCohZw3iqG0jrKapK7FG8XY=
X-Google-Smtp-Source: AMrXdXtJaVMxuz3VDe82EqrAuC770cEkcC6qQ1RuKYI0/VjqIhS/wlIS7NEbxko+3HkTRgt84M10CmV07pBoYVHMPEo=
X-Received: by 2002:a17:90a:a6f:b0:223:4d09:2523 with SMTP id
 o102-20020a17090a0a6f00b002234d092523mr11405pjo.161.1671058681320; Wed, 14
 Dec 2022 14:58:01 -0800 (PST)
MIME-Version: 1.0
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
In-Reply-To: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
From:   Andrew Pinski <pinskia@gmail.com>
Date:   Wed, 14 Dec 2022 14:57:48 -0800
Message-ID: <CA+=Sn1nkz5FKFFx3e+A42nhpAF-TLW0Gmdgn4a5NL0KkCpuWNg@mail.gmail.com>
Subject: Re: [-Wstringop-overflow=] strncat(3)
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     gcc@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 14, 2022 at 2:46 PM Alejandro Colomar via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> Hi,
>
> I was rewriting the strncat(3) manual page, and when I tried to compile t=
he
> example program, I got a surprise from the compiler.
>
> Here goes the page:
>
>
>    strncat(3)               Library Functions Manual              strncat=
(3)
>
>    NAME
>           strncat  -  concatenate  a  null=E2=80=90padded  character sequ=
ence into a
>           string
>
>    LIBRARY
>           Standard C library (libc, -lc)
>
>    SYNOPSIS
>           #include <string.h>
>
>           char *strncat(char *restrict dst, const char src[restrict .sz],
>                          size_t sz);
>
>    DESCRIPTION
>           This function catenates the input character sequence contained =
 in
>           a  null=E2=80=90padded  fixed=E2=80=90width  buffer,  into  a s=
tring at the buffer
>           pointed to by dst.  The programmer is responsible for allocatin=
g a
>           buffer large enough, that is, strlen(dst) + strnlen(src, sz) + =
1.
>
>           An implementation of this function might be:
>
>               char *
>               strncat(char *restrict dst, const char *restrict src, size_=
t sz)
>               {
>                   int   len;
>                   char  *end;
>
>                   len =3D strnlen(src, sz);
>                   end =3D dst + strlen(dst);
>                   end =3D mempcpy(end, src, len);
>                   *end =3D '\0';
>
>                   return dst;
>               }
>
>    RETURN VALUE
>           strncat() returns dest.
>
>    ATTRIBUTES
>           [...]
>
>    STANDARDS
>           POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, C89, C99, SVr4, 4.3=
BSD.
>
>    CAVEATS
>           The  name of this function is confusing.  This function has no =
re=E2=80=90
>           lation with strncpy(3).
>
>           If the destination buffer is not large enough, the behavior is =
un=E2=80=90
>           defined.  See _FORTIFY_SOURCE in feature_test_macros(7).
>
>    BUGS
>           This function  can  be  very  inefficient.   Read  about  Shlem=
iel
>           the       painter      =E2=9F=A8https://www.joelonsoftware.com/=
2001/12/11/
>           back-to-basics/=E2=9F=A9.
>
>    EXAMPLES
>           #include <stdio.h>
>           #include <stdlib.h>
>           #include <string.h>
>
>           int
>           main(void)
>           {
>               char    buf[BUFSIZ];
>               size_t  len;
>
>               buf[0] =3D '\0';  // There=E2=80=99s no =E2=80=99cpy=E2=80=
=99 function to this =E2=80=99cat=E2=80=99.
>               strncat(buf, "Hello ", 6);
>               strncat(buf, "world", 42);  // Padding null bytes ignored.
>               strncat(buf, "!", 1);
>               len =3D strlen(buf);
>               printf("[len =3D %zu]: <%s>\n", len, buf);
>
>               exit(EXIT_SUCCESS);
>           }
>
>    SEE ALSO
>           string(3), string_copy(3)
>
>    Linux man=E2=80=90pages (unreleased)      (date)                      =
 strncat(3)
>
>
> And when you compile that, you get:
>
> $ cc -Wall -Wextra ./strncat.c
> ./strncat.c: In function =E2=80=98main=E2=80=99:
> ./strncat.c:12:12: warning: =E2=80=98strncat=E2=80=99 specified bound 6 e=
quals source length
> [-Wstringop-overflow=3D]
>     12 |            strncat(buf, "Hello ", 6);
>        |            ^~~~~~~~~~~~~~~~~~~~~~~~~
> ./strncat.c:14:12: warning: =E2=80=98strncat=E2=80=99 specified bound 1 e=
quals source length
> [-Wstringop-overflow=3D]
>     14 |            strncat(buf, "!", 1);
>        |            ^~~~~~~~~~~~~~~~~~~~
>
>
> So, what?  Where's the problem?  This function does exactly that: "take a=
n
> unterminated character sequence and catenate it to an existing string".  =
Clang
> seems to be fine with the code.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D83404 and the
background of why the warning was added here:

https://www.us-cert.gov/bsi/articles/knowledge/coding-practices/strncpy-and=
-strncat.

Thanks,
Andrew Pinski

>
> Cheers,
>
> Alex
>
>
> --
> <http://www.alejandro-colomar.es/>
