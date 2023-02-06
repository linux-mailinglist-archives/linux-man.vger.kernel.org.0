Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB8168C51A
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 18:48:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjBFRsx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 12:48:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBFRsw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 12:48:52 -0500
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 376C19EDC
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 09:48:51 -0800 (PST)
Date:   Mon, 6 Feb 2023 12:48:49 -0500
From:   Rich Felker <dalias@libc.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Xi Ruoyao <xry111@xry111.site>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
        glibc <libc-alpha@sourceware.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Message-ID: <20230206174849.GJ3298@brightrain.aerifal.cx>
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
 <ae73337b-7b37-9c94-e5e0-d6ebbf2c7ffb@gmail.com>
 <20230206133850.GI3298@brightrain.aerifal.cx>
 <9998a4eb-528b-b006-ebeb-d94816e62d82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9998a4eb-528b-b006-ebeb-d94816e62d82@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Feb 06, 2023 at 03:11:10PM +0100, Alejandro Colomar wrote:
> Hi Rich,
> 
> On 2/6/23 14:38, Rich Felker wrote:
> >There is absolutely not any need to declare the union for application
> >code calling the socket APIs. You declare whatever type you will be
> >using. For binding or connecting a unix socket, sockaddr_un. For IPv6,
> >sockaddr_in6. Etc. Then you cast the pointer to struct sockaddr * and
> >pass it to the function.
> 
> Except that you may be using generic code that may use either of
> AF_UNIX, AF_INET, and AF_INET6.  A web server may very well use all
> the three.

If you have generic code, the generic code is not what's creating the
object. It got the object from the calling code or from some callback
that allocated it, in which case it doesn't have to care about any of
this.

> >But normally you don't use declared-type objects for this anyway. You
> >use the struct sockaddr * obtained from getaddrinfo as an abstract
> >pointer and never dereference it at all.
> 
> That's right.  Most of the time, we should be using getaddrinfo(3),
> which already provides the storage.  I don't know for sure if there
> are any cases that can't be rewritten to work that way.
> 
> However, there are some APIs that require you to allocate an object.
> For example recvfrom(2).  How would you recommend using recvfrom(2),
> or is it some API to avoid?  Example of usage:
> <Mhttps://man7.org/tlpi/code/online/dist/sockets/id_echo_sv.c.html>.

If using allocated storage, there's nothing special you have to do.
But if you want to avoid malloc and use a declared object, you have a
few options:

If it's your socket and you know what address family it's associated
with, you just pass an object of that type. recvfrom will always
produce output of the same AF.

If you're in a situation like having been invoked from inetd, you can
use getsockname into a sockaddr_storage object or union or whatever,
then read out the family field (with memcpy if needed). Then you know
the AF to use. Or, you can just recvfrom into a sockaddr_storage
object, determine the family at that time, then memcpy the the
appropriate object type. Alternatively, for the common case where you
want a printable name for the address, you just pass it to getnameinfo
as-is and let getnameinfo deal with how to read it.

Rich
