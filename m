Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B44964F137
	for <lists+linux-man@lfdr.de>; Fri, 16 Dec 2022 19:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbiLPSrT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Dec 2022 13:47:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbiLPSrS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Dec 2022 13:47:18 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C09B627CEF
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 10:47:16 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id gh17so8245063ejb.6
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 10:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Jjm32ot2yxjGt3yCOPp7D/2nHFxcZOE04i6i5Hrj50=;
        b=TFiPXghYsL56wREzpLZizmaYegTQgYHZcRzztEDimGy8n9oYf0QGr8TsgQEAe/Bdzy
         Ks7le1qnMI1+cIrLZrztpCD+jQUUh6oIaMMU7tX0jYC1k+tg7HuPSMorQk3UuOalrd2P
         WTG48ao6Ga/doaAC+rkSVQCpd7r24gJyfvYlihfZ6odSPzFKdn8lB68hsokxKNtYqM4h
         8hlZlguuJhv7kVTtPH8ouRmpXLQrZVDNQZg5gmqU4bd3iuEqD9s8FK4UXBN0z+L2ZS9z
         0Hk+IDClMNiVLiGlsWU9evDoejVk7za0bJPkh/UIyBsnPg2FLsGOWfdDOrcI5cqnYot4
         N98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Jjm32ot2yxjGt3yCOPp7D/2nHFxcZOE04i6i5Hrj50=;
        b=IauXWRdY1QcYro9XlgoHsYm6rUiK9gTMaSYFke70MFK7CChA97QMlt56uxnUO6QmET
         a6DchBVO/lc02ZLZK3MA52ivu/zsiq7eigR3AzzVnnt0vGITAN0/CjFX75Yq3MTogww/
         mlgvA6Jpddn0E0KJAi1JIK8VbS+tVKQXPkVEdD4l+VZ35X5ieVQFsV5fVPAk+NpJLf6A
         BRgdckHhdU6IYEr/0XLv5tZZZBsKrrCUnhQPLkjyzWRIHMU40UAYDJp3SHkk0br3HdHS
         eCRRlKqymJAPH9xMMY2FWlL8ROu2szPoqiE+XvLnn4xWNDFRp9f5W6049nvtRWEvF+YI
         l1Tw==
X-Gm-Message-State: ANoB5pnP8cB+7bXPToB+nEo5Q9LZPUl7tTMXHGvJ/rTvVLWY3123SCfo
        TATQ0XynSCNDmuWqozr948cQ8XIy6/PeLKhwtG4=
X-Google-Smtp-Source: AA0mqf6/zkj8c7xuAl51KPBqNgvxgKrxjPKeJq0Sult+XEKdObPg/E9rvycbtUGz3rGW/yKonx6iZ74mArmbdgen4WI=
X-Received: by 2002:a17:906:3e09:b0:7c0:e6d8:3e82 with SMTP id
 k9-20020a1709063e0900b007c0e6d83e82mr17222874eji.451.1671216435221; Fri, 16
 Dec 2022 10:47:15 -0800 (PST)
MIME-Version: 1.0
References: <20221214161719.12862-1-alx@kernel.org> <20221215002648.35111-3-alx@kernel.org>
 <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
In-Reply-To: <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 16 Dec 2022 20:47:03 +0200
Message-ID: <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
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

Hi Alex!

On Thu, Dec 15, 2022 at 2:46 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Formatted strpcy(3):
>
> strcpy(3)                  Library Functions Manual                  strc=
py(3)
>
> NAME
>         strcpy - copy or catenate a string
>
> LIBRARY
>         Standard C library (libc, -lc)
>
> SYNOPSIS
>         #include <string.h>
>
>         char *stpcpy(char *restrict dst, const char *restrict src);
>         char *strcpy(char *restrict dst, const char *restrict src);
>         char *strcat(char *restrict dst, const char *restrict src);
>
>     Feature Test Macro Requirements for glibc (see feature_test_macros(7)=
):
>
>         stpcpy():
>             Since glibc 2.10:
>                 _POSIX_C_SOURCE >=3D 200809L
>             Before glibc 2.10:
>                 _GNU_SOURCE
>
> DESCRIPTION
>         stpcpy()
>         strcpy()
>                These functions copy the string pointed to by src, into a =
string
>                at  the buffer pointed to by dst.  The programmer is respo=
nsible
>                for allocating a buffer large enough, that is, strlen(src)=
 +  1.
>                They only differ in the return value.

A destination buffer large enough? It's not that obvious to me from
the text, but maybe I'm tired :).
I was also a bit at a loss about the difference between the two; maybe
you can say "For the difference between the two, see RETURN VALUE"?

>
>         strcat()
>                This function catenates the string pointed to by src, at t=
he end
>                of  the string pointed to by dst.  The programmer is respo=
nsible
>                for allocating a buffer large enough,  that  is,  strlen(d=
st)  +
>                strlen(src) + 1.

Ditto here.

>
>         An implementation of these functions might be:
>
>             char *
>             stpcpy(char *restrict dst, const char *restrict src)
>             {
>                 char  *end;
>
>                 end =3D mempcpy(dst, src, strlen(src));
>                 *end =3D '\0';
>
>                 return end;
>             }
>
>             char *
>             strcpy(char *restrict dst, const char *restrict src)
>             {
>                 stpcpy(dst, src);
>                 return dst;
>             }
>
>             char *
>             strcat(char *restrict dst, const char *restrict src)
>             {
>                 stpcpy(dst + strlen(dst), src);
>                 return dst;
>             }

Are you sure this section adds any value? I think good documentation
should explain how a function works without delving into the
interpretation. Also, people might get confused and think this is the
actual implementation.

>
> RETURN VALUE
>         stpcpy()
>                This  function returns a pointer to the terminating null b=
yte at
>                the end of the copied string.
>
>         strcpy()
>         strcat()
>                These functions return dest.
>
> ATTRIBUTES
>         For an explanation of the terms  used  in  this  section,  see  a=
ttrib=E2=80=90
>         utes(7).
>         =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
>         =E2=94=82Interface                                   =E2=94=82 At=
tribute     =E2=94=82 Value   =E2=94=82
>         =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
>         =E2=94=82stpcpy(), strcpy(), strcat()                =E2=94=82 Th=
read safety =E2=94=82 MT=E2=80=90Safe =E2=94=82
>         =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
>
> STANDARDS
>         stpcpy()
>                POSIX.1=E2=80=902008.
>
>         strcpy()
>         strcat()
>                POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, C89, C99, SVr4=
, 4.3BSD.
>
> CAVEATS
>         The strings src and dst may not overlap.
>
>         If  the  destination  buffer is not large enough, the behavior is=
 unde=E2=80=90
>         fined.  See _FORTIFY_SOURCE in feature_test_macros(7).
>
> BUGS
>         strcat()
>                This function can be  very  inefficient.   Read  about  Sh=
lemiel
>                the      painter     =E2=9F=A8https://www.joelonsoftware.c=
om/2001/12/11/
>                back-to-basics/=E2=9F=A9.

I'm not sure this is a bug, rather a design limitation. Maybe it
belongs in NOTES or CAVEATS? Also, I think this can be summarized
along the lines of 'strcat needs to walk the destination buffer to
find the null terminator, so it has linear complexity with respect to
the size of the destination buffer up to the terminator' (hmm, I'm
sure this can be expressed more concisely), so the page is more self
contained. Outside links sometimes go dead, like on Wikipedia, so I
think just in case, it helps to make explicit the point that you want
the reader to study further in the URL.

Regards,
Stefan.

>
> EXAMPLES
>         #include <stdio.h>
>         #include <stdlib.h>
>         #include <string.h>
>
>         int
>         main(void)
>         {
>             char    *p;
>             char    buf1[BUFSIZ];
>             char    buf2[BUFSIZ];
>             size_t  len;
>
>             p =3D buf1;
>             p =3D stpcpy(p, "Hello ");
>             p =3D stpcpy(p, "world");
>             p =3D stpcpy(p, "!");
>             len =3D p - buf1;
>
>             printf("[len =3D %zu]: ", len);
>             puts(buf1);  // "Hello world!"
>
>             strcpy(buf2, "Hello ");
>             strcat(buf2, "world");
>             strcat(buf2, "!");
>             len =3D strlen(buf2);
>
>             printf("[len =3D %zu]: ", len);
>             puts(buf2);  // "Hello world!"
>
>             exit(EXIT_SUCCESS);
>         }
>
> SEE ALSO
>         strdup(3), string(3), wcscpy(3), string_copy(7)
>
> Linux man=E2=80=90pages (unreleased)        (date)                       =
    strcpy(3)
>
> --
> <http://www.alejandro-colomar.es/>
