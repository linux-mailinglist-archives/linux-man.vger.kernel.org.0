Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 045F66775BE
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 08:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjAWHlJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 02:41:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjAWHlI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 02:41:08 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F08CD7AA6
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 23:41:06 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id bk15so28061307ejb.9
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 23:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j6whu3VaAOHrIT3vygPRqMwjbob4XsZ9l8PAHsFl4uc=;
        b=foQwRnU83HiiFVd+2ryI/5oXrVC8NidMqPHqnqTA/Ywc1x95Xh4qU8OZE3p1gxb5Ed
         S4qSYpXN8ut+Xz+ZDE7fDat453qCBYnhm5Me726+86Se7UOCDJ2RcLhUuws78vCnKJzF
         Kkbd57dBx8770Tc2obJfDDPLMgDNV3FzlH0ELKFF0whTdos1e5kLOkKuG2Lsxaoakiil
         cw/EvTiVpOiDc1Fn8Dh65KC35ka4bRC+Sd32Wjk4cpJSoJtRiW241TGmQNFW7xe45yD2
         9WsfWYbSQWLfQDn8IADs6qHkOzENU9ob7RRedMhrWYcZiW0al3UDqtsdT6v3CpLwlIL1
         dW5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6whu3VaAOHrIT3vygPRqMwjbob4XsZ9l8PAHsFl4uc=;
        b=BhL4ND/Qqu1JHbO5/jc2g/VoBvz8c3cxyXAkZx2SGUHZpCKxZxpY8MsGaaPnmFtf52
         O8ZN2qvXR8tP0zN4ererGFKkU1L+KlDxIuCB5zMgF+dass/audEB/bmbwpnKw8D9XhNd
         b5AtIlCAjsUDnsVB7o8NfMCUIQugfw6/TbW7XvVCzJZWoEPUtKLJ8P3eKBZQr4MUfnCU
         Xvrx7sFrYFi4e9LBvI4PoL7UaFtESiiDKqYVHTiIdsQ7rSgWkqe+zgCVG7CWydf+FVv2
         swuZDH8pDxjX+dUkXv28S+Bn47FsFT4wYrc9UQP26i3oX23fBuElESbICNJ6WUfBUKjN
         6GbQ==
X-Gm-Message-State: AFqh2krjZA3GJO2J/Wo/b4QRv6iMcJV1xYWuXQUYm82pWcTzCe5cWRGz
        MTgw+wXq+xJteeufmBBwLdPOlQs7LC/TRqH35Ht7v41z
X-Google-Smtp-Source: AMrXdXvoaVZIIuqnXwfYcnxqJMPWTyKguzsAp4OW7e1Ldj33f8RX2V3WEwZvzcb9rSxw7+evzWP+KUSCe6jcTXDpazI=
X-Received: by 2002:a17:906:cc11:b0:877:61e9:80ad with SMTP id
 ml17-20020a170906cc1100b0087761e980admr2050349ejb.495.1674459665274; Sun, 22
 Jan 2023 23:41:05 -0800 (PST)
MIME-Version: 1.0
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com> <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
In-Reply-To: <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 23 Jan 2023 09:40:57 +0200
Message-ID: <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
Subject: Re: struct sockaddr_storage
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, Jan 20, 2023 at 2:40 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Stefan,
>
> On 1/20/23 11:06, Stefan Puiu wrote:
> > Hi Alex,
> >
> > On Thu, Jan 19, 2023 at 4:14 PM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi!
> >>
> >> I just received a report about struct sockaddr_storage in the man pages.  It
> >> reminded me of some concern I've always had about it: it doesn't seem to be a
> >> usable type.
> >>
> >> It has some alignment promises that make it "just work" most of the time, but
> >> it's still a UB mine, according to ISO C.
> >>
> >> According to strict aliasing rules, if you declare a variable of type 'struct
> >> sockaddr_storage', that's what you get, and trying to access it later as some
> >> other sockaddr_8 is simply not legal.  The compiler may assume those accesses
> >> can't happen, and optimize as it pleases.
> >
> > Can you detail the "is not legal" part?
>
> I mean that it's Undefined Behavior contraband.

OK, next question. Is this theoretical or practical UB? People check
documentation about how to write code today, I think.

>
> > How about the APIs like
> > connect() etc that use pointers to struct sockaddr, where the
> > underlying type is different, why would that be legal while using
> > sockaddr_storage isn't?
>
> That's also bad.  However, it can be fixed by fixing `sockaddr_storage` and
> telling everyone to use it instead of using whatever other `sockaddr_*`.  You
> need a union for the underlying storage, so that the library functions can
> access both as `sockaddr` and as `sockaddr_*`.
>
> The problem isn't really in the implementation of connect(2), but on the type.
> The implementation of connect(2) would be fine if we just fixed the type.  See
> some example:
>
> struct my_sockaddr_storage {
>         union {
>                 sa_family_t          ss_family;
>                 struct sockaddr      sa;
>                 struct sockaddr_in   sin;
>                 struct sockaddr_in6  sin6;
>                 struct sockaddr_un   sun;
>         };
> };
>
>
> void
> foo(foo)
> {
>         struct my_sockaddr_storage  mss;
>         struct sockaddr_storage     ss;
>
>         // initialize mss and ss
>
>         inet_sockaddr2str(&mss.sa);  // correct
>         inet_sockaddr2str((struct sockaddr_storage *)&ss);  // UB
> }
>
> /* This function is correct, as far as the accessed object has the
>   * type we're using.  That's only possible through a `union`, since
>   * we're accessing it with 2 different types: `sockaddr` for the
>   * `sa_family` and then the appropriate subtype for the address
>   * itself.
>   */
> const char *
> inet_sockaddr2str(const struct sockaddr *sa)
> {
>         struct sockaddr_in   *sin;
>         struct sockaddr_in6  *sin6;
>
>         static char          buf[INET_ADDRSTRLENMAX];
>
>         switch (sa->sa_family) {
>         case AF_INET:
>                 sin = (struct sockaddr_in *) sa;
>                 inet_ntop(AF_INET, &sin->sin_addr, buf, NITEMS(buf));
>                 return buf;
>         case AF_INET6:
>                 sin6 = (struct sockaddr_in6 *) sa;
>                 inet_ntop(AF_INET6, &sin6->sin6_addr, buf, NITEMS(buf));
>                 return buf;
>         default:
>                 errno = EAFNOSUPPORT;
>                 return NULL;
>         }
> }
>
>
> BTW, you need a union _even if_ you only care about a single address family.
> That is, if you only care about Unix sockets, you can't declare your variable of
> type sockaddr_un, because the libc functions and syscalls still need to access
> it as a sockaddr to see which family it has.
>
> > Will code break in practice?
>
> Well, it depends on how much compilers advance.  Here's some interesting experiment:
>
> <https://software.codidact.com/posts/287748/287750#answer-287750>

That code plays with 2 pointers to the same area, one to double and
one to int, so I don't think it's that similar to the sockaddr
situation. At least for struct sockaddr, the sa_family field is the
same for all struct sockaddr_* variants. Also, in practical terms, I
don't think any compiler optimization that breaks socket APIs (and, if
I recall correctly, there are instances of this pattern in the kernel
as well) is going to be an easy sell. It's possible, but realistically
speaking, I don't think it's going to happen.

>
> I wouldn't rely on Undefined Behavior not causing nasal demons.  When you get
> them, you can only kill them with garlic.

OK, but not all theoretical issues have practical implications. Is
there code that can show UB in practical terms with struct
sockaddr_storage today? Like Eric mentioned in another thread, does
UBSan complain about code using struct sockaddr_storage?

Thanks,
Stefan.

>
> >
> >>
> >> That means that one needs to declare a union with all possible sockaddr_* types
> >> that are of interest, so that access as any of them is later allowed by the
> >> compiler (of course, the user still needs to access the correct one, but that's
> >> of course).
> >>
> >> In that union, one could add a member that is of type sockaddr_storage for
> >> getting a more consistent structure size (for example, if some members are
> >> conditional on preprocessor stuff), but I don't see much value in that.
> >> Especially, given this comment that Igor Sysoev wrote in NGINX Unit's source code:
> >>
> >>    * struct sockaddr_storage is:
> >>    *    128 bytes on Linux, FreeBSD, MacOSX, NetBSD;
> >>    *    256 bytes on Solaris, OpenBSD, and HP-UX;
> >>    *   1288 bytes on AIX.
> >>    *
> >>    * struct sockaddr_storage is too large on some platforms
> >>    * or less than real maximum struct sockaddr_un length.
> >>
> >> Which makes it even more useless as a type.
> >
> > I'm not sure using struct sockaddr_storage for storing sockaddr_un's
> > (UNIX domain socket addresses, right?) is that common a usage. I've
> > used it in the past to store either a sockaddr_in or a sockaddr_in6,
> > and I think that would be a more common scenario. The comment above
> > probably makes sense for nginx, but different projects have different
> > needs.
> >
> > As for the size, I guess it might matter if you want to port your code
> > to AIX, Solaris, OpenBSD etc. I don't think all software is meant to
> > be portable, though (or portable to those platforms). Maybe a warning
> > is in order that, for portable code, developers should check its size
> > on the other platforms targeted.
>
> The size thing is just an added problem.  The deep problem is that you need to
> use a union that contains all types that you care about _plus_ plain sockaddr,
> because the structure will be accessed at least as a sockaddr, plus one of the
> different specialized structures.  So even for only sockaddr_un, you need at
> least the following:
>
> union my_unix_sockaddr {
>         struct sockaddr     sa;
>         struct sockaddr_un  sun;
> };
>
> Not doing that will necessarily result in invoking Undefined Behavior at some point.
>
> >
> > Just my 2 cents, as always,
> > Stefan.
>
> The good thing is that fixing sockaddr_storage and telling everybody to use it
> always fixes the problem, so I'm preparing a patch for glibc.
>
> Cheers,
>
> Alex
>
> >
> >>
> >>
> >> Should we warn about uses of this type?  Should we recommend against using it in
> >> the manual page, since there's no legitimate uses of it?
> >>
> >> Cheers,
> >>
> >> Alex
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
>
> --
> <http://www.alejandro-colomar.es/>
