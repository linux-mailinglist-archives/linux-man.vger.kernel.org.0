Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F305868B2E7
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 00:44:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbjBEXoD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 18:44:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBEXoC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 18:44:02 -0500
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE03144A5
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 15:44:01 -0800 (PST)
Date:   Sun, 5 Feb 2023 18:43:59 -0500
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
Message-ID: <20230205234359.GF3298@brightrain.aerifal.cx>
References: <20230205152835.17413-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230205152835.17413-1-alx@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Feb 05, 2023 at 04:28:36PM +0100, Alejandro Colomar wrote:
> As discussed before, and Bastien and I seem to agree, ideally we should
> define the following types:
> 
>     struct sockaddr_storage {
>         union {
>             struct {
>                 sa_family_t      ss_family;
>             };
>             struct sockaddr_in   sin;
>             struct sockaddr_in6  sin6;
>             struct sockaddr_un   sun;
>             // ...
>         };
>     };

AFAIK this is not permitted because of namespace. sys/socket.h is not
permitted to expose sockaddr_{in,in6,un}. And if you defined
differently-tagged structures with the same contents, it would not do
any good; accessing the members with the wrong-tagged struct type
would still be UB.

Really, there is no action needed here. Nothing is wrong on libc's
side. The problem is just that the type is *not useful for anything*
and should not be used except in the context of sizeof, which is
purely a documentation issue.

>     struct [[deprecated]] sockaddr {
>         sa_family_t              sa_family;
>     };
> 
>     union [[gnu::transparent_union]] sockaddr_ptr {
>         struct sockaddr_storage  *ss;
>         struct sockaddr          *sa;
>     };
> 
> And then we could define APIs like:
> 
>     int bind(int sockfd, const union sockaddr_ptr *addr, socklen_t len);

You cannot just change APIs because you wish they were different.
Ideally bind, etc. would just take void *, which is what the struct
sockaddr * is being used as. But they don't, so callers have to cast.
It's ugly but it's really not a big deal. Much less of a big deal than
breaking the interface because you think it would look prettier if it
had been done differently.

Rich
