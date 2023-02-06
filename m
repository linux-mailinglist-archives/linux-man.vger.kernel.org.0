Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1337368BB2B
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 12:20:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbjBFLU0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 06:20:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbjBFLUZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 06:20:25 -0500
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B94DEB71
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 03:20:22 -0800 (PST)
Date:   Mon, 6 Feb 2023 06:20:20 -0500
From:   Rich Felker <dalias@libc.org>
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
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
Message-ID: <20230206112019.GH3298@brightrain.aerifal.cx>
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Feb 06, 2023 at 02:02:23PM +0800, Xi Ruoyao wrote:
> On Sun, 2023-02-05 at 16:31 +0100, Alejandro Colomar via Libc-alpha wrote:
> 
> > The only correct way to use  different  types  in  an  API  is
> > through  a  union.
> 
> I don't think this statement is true (in general).  Technically we can
> write something like this:
> 
> struct sockaddr { ... };
> struct sockaddr_in { ... };
> struct sockaddr_in6 { ... };
> 
> int bind(int fd, const struct sockaddr *addr, socklen_t addrlen)
> {
>     if (addrlen < sizeof(struct sockaddr) {
>         errno = EINVAL;
>         return -1;
>     }
> 
>     /* cannot use "addr->sa_family" directly: it will be an UB */
>     sa_family_t sa_family;
>     memcpy(&sa_family, addr, sizeof(sa_family));
> 
>     switch (sa_family) {
>         case AF_INET:
>             return _do_bind_in(fd, (struct sockaddr_in *)addr, addrlen);
>         case AF_INET6:
>             return _do_bind_in6(fd, (struct sockaddr_in6 *)addr, addrlen);
>         /* more cases follow here */
>         default:
>             errno = EINVAL;
>             return -1;
>         }
>     }
> }
> 
> In this way we can use sockaddr_{in,in6,...} for bind() safely, as long
> as we can distinguish the "real" type of addr using the leading byte
> sequence (and the caller uses it carefully).
> 
> But obviously sockaddr_storage can't be distinguished here, so casting a
> struct sockaddr_stroage * to struct sockaddr * and passing it to bind()
> will still be wrong (unless we make sockaddr_storage an union or add
> [[gnu::may_alias]]).

If you wanted to make this work, you can just memcpy sockaddr_storage
to a local object of the right declared type to access it. But this is
only relevant for a userspace implementation of bind() rather than one
that just marshalls it across some syscall boundary to a kernel.

Rich
