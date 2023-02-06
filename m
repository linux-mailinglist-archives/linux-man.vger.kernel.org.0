Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6618968B310
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 01:15:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjBFAPw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 19:15:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBFAPv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 19:15:51 -0500
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15E01816E
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 16:15:49 -0800 (PST)
Date:   Sun, 5 Feb 2023 19:15:47 -0500
From:   Rich Felker <dalias@libc.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Message-ID: <20230206001546.GG3298@brightrain.aerifal.cx>
References: <20230205152835.17413-1-alx@kernel.org>
 <20230205234359.GF3298@brightrain.aerifal.cx>
 <29bb163d-ab7b-2fb7-a1c8-cfd720984a8d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29bb163d-ab7b-2fb7-a1c8-cfd720984a8d@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Feb 06, 2023 at 12:59:48AM +0100, Alejandro Colomar wrote:
> Hi Rich,
> 
> On 2/6/23 00:43, Rich Felker wrote:
> >On Sun, Feb 05, 2023 at 04:28:36PM +0100, Alejandro Colomar wrote:
> >>As discussed before, and Bastien and I seem to agree, ideally we should
> >>define the following types:
> >>
> >>     struct sockaddr_storage {
> >>         union {
> >>             struct {
> >>                 sa_family_t      ss_family;
> >>             };
> >>             struct sockaddr_in   sin;
> >>             struct sockaddr_in6  sin6;
> >>             struct sockaddr_un   sun;
> >>             // ...
> >>         };
> >>     };
> >
> >AFAIK this is not permitted because of namespace. sys/socket.h is not
> >permitted to expose sockaddr_{in,in6,un}. And if you defined
> >differently-tagged structures with the same contents, it would not do
> >any good; accessing the members with the wrong-tagged struct type
> >would still be UB.
> 
> I'm not sure.  ISO C has that restriction that a header can only
> define what the standard says it defines.  However, does POSIX have
> the same restriction?

Yes.

> Doesn't POSIX allow including any other POSIX
> headers (maybe it does, but IIRC it doesn't)?

Not except where it's explicitly allowed.

> Since <sys/socket.h>
> is just a POSIX thing, that's the only standard we should care
> about.

The relevant text is here:

https://pubs.opengroup.org/onlinepubs/9699919799/functions/V2_chap02.html#tag_15_02_02

> >Really, there is no action needed here. Nothing is wrong on libc's
> >side. The problem is just that the type is *not useful for anything*
> >and should not be used except in the context of sizeof, which is
> >purely a documentation issue.
> >
> >>     struct [[deprecated]] sockaddr {
> >>         sa_family_t              sa_family;
> >>     };
> >>
> >>     union [[gnu::transparent_union]] sockaddr_ptr {
> >>         struct sockaddr_storage  *ss;
> >>         struct sockaddr          *sa;
> >>     };
> >>
> >>And then we could define APIs like:
> >>
> >>     int bind(int sockfd, const union sockaddr_ptr *addr, socklen_t len);
> >
> >You cannot just change APIs because you wish they were different.
> 
> This API is compatible.  In fact, it already is now like that:

Unless I'm mistaken, it's not. The function pointer the name 'bind'
produces will not have the right type, and will have problems being
stored in a function pointer object with the right type, as well as
wrong results with _Generic, etc. Only plain calls to it are
unaffected.

> alx@debian:/usr/include$ grepc bind
> ./x86_64-linux-gnu/sys/socket.h:112:
> extern int bind (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len)
>      __THROW;
> 
> alx@debian:/usr/include$ sed -n 83,84p x86_64-linux-gnu/sys/socket.h
> typedef union { __SOCKADDR_ALLTYPES
> 	      } __CONST_SOCKADDR_ARG __attribute__ ((__transparent_union__));
> 
> 
> >Ideally bind, etc. would just take void *,
> 
> void * is a bit too much unsafe.  GCC's transparent unions are a
> restricted catch-many pointer, rather than a catch-all.
> 
> >which is what the struct
> >sockaddr * is being used as.
> 
> And in fact, void* wouldn't sole the union problem.
> 
> >But they don't, so callers have to cast.
> 
> With the current glibc implementation, you don't need to cast,
> thanks to the [[gnu::transparent_union]]:

This is just facilitating writing non-portable code, since correct
code written to the spec *does* have to cast.

> >It's ugly but it's really not a big deal. Much less of a big deal than
> >breaking the interface because you think it would look prettier if it
> >had been done differently.
> 
> It's not breaking the interface; not in GNU C.  Current code still
> falls back to the a POSIX-complying UB-invoking interface when you
> don't ask for _GNU_SOURCE, but we can keep that.  I'm only asking
> that we fix the GNU C version.  Moreover, in POSIX-complying code,
> you can keep the interface pointer, since you'll need to cast
> anyway, but can still make sockaddr_storage be implemented through
> an anonymous union.

If it's only for _GNU_SOURCE it's probably mostly harmless, and
allowable to violate the namespace rules, but also not terribly
helpful...

Rich
