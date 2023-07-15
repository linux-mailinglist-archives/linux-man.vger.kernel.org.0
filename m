Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B805754AC2
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjGOSfO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:35:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOSfN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:35:13 -0400
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5FA8128
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:35:11 -0700 (PDT)
Date:   Sat, 15 Jul 2023 14:35:11 -0400
From:   Rich Felker <dalias@libc.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, Sam James <sam@gentoo.org>,
        libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
        "A . Wilcox" <AWilcox@wilcox-tech.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [musl] Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for
 splice, etc.
Message-ID: <20230715183511.GJ4163@brightrain.aerifal.cx>
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu>
 <87lefpehgo.fsf@gentoo.org>
 <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 15, 2023 at 05:08:18PM +0200, Alejandro Colomar wrote:
> Hi Paul, Sam, and Rich,
> 
> On 2023-07-09 08:16, Sam James wrote:
> > 
> > Paul Eggert <eggert@cs.ucla.edu> writes:
> > 
> >> For the few functions that come only in 64-bit off_t flavors,
> >> document their APIs as using off_t instead of off64_t,
> >> and say also that code should #define _FILE_OFFSET_BITS 64.
> >> This documents what user code is (and should be) doing anyway,
> >> if it needs to work on traditional x86 and ARM Linux.
> > 
> > LGTM and thank you Paul.
> > 
> > I haven't checked for other prototypes/examples which need
> > changing.
> 
> Thanks, I'm going to apply the patch.  Can you please confirm if I'm
> correct in adding the following tags?
> 
>     Reported-by: Rich Felker <dalias@libc.org>
>     Fixes: 9bebb17e5b57 ("splice.2: Use 'off64_t' instead of 'loff_t'")
>     Fixes: 76c5631fb442 ("copy_file_range.2: Document glibc wrapper instead of kernel syscall")
>     Fixes: 5cabfa06b407 ("man-pages 1.68")
>     Fixes: 3ca974e3988a ("New page for sync_file_range(2), new in kernel 2.6.17.")
>     Fixes: 9bebb17e5b57 ("sync_file_range.2: Document the architecture-specific sync_file_range2() system call")
>     Fixes: 79bf8cdcf36a ("Document fopencookie(3), a library function that allows custom implementation of a stdio stream.")
>     Signed-off-by: Paul Eggert <eggert@cs.ucla.edu>
>     Reviewed-by: Sam James <sam@gentoo.org>
>     Cc: Jonathan Wakely <jwakely@redhat.com>
>     Cc: Szabolcs Nagy <nsz@port70.net>
>     Cc: Jakub Wilk <jwilk@jwilk.net>
>     Cc: A. Wilcox <AWilcox@wilcox-tech.com>
>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 
> BTW, Rich, please note the commits that this fixes: most of them are
> the initial commit that adds a page, which means that the function
> had always been documented with off64_t in the "spec".  Only splice(2)
> and copy_file_range(2) have been adjusted afterwards, and in a manner
> to be consistent with the rest of the pages, so I can only conclude
> that we didn't break the spec, but rather fixed it.
> 
> Nevertheless, I'm sorry that it caused any problems to musl, and I'm
> happy that you reported them and so we can now improve the pages.

While I like off_t, I am still unhappy that this seems to have been a
unilateral action from documentation side without even hearing input
from any major implementors other than myself. Is "you can't use these
interfaces without -D_FILE_OFFSET_BITS=64" an acceptable outcome to
the glibc folks?

Rich
