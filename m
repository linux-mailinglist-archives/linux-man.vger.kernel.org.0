Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1F33EE079
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 01:31:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232795AbhHPXby convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 16 Aug 2021 19:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234821AbhHPXby (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 19:31:54 -0400
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DD90DC061764
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 16:31:18 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 17GNSFjr027343
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Mon, 16 Aug 2021 23:28:18 GMT
Date:   Mon, 16 Aug 2021 23:28:15 +0000 (UTC)
From:   Thorsten Glaser <tg@debian.org>
X-X-Sender: tg@herc.mirbsd.org
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: request: calling conventions documentation
In-Reply-To: <CAKgNAkge=h68w=5Vd9g9i8-vZnrPuN+pyVd=NgTxq9DNLUu-aA@mail.gmail.com>
Message-ID: <Pine.BSM.4.64L.2108162316580.2192@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108162130380.2192@herc.mirbsd.org>
 <CAKgNAkge=h68w=5Vd9g9i8-vZnrPuN+pyVd=NgTxq9DNLUu-aA@mail.gmail.com>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael Kerrisk (man-pages) dixit:

>So, the manual page already has the info below. And from your mail
>above, it's not immediately clear to me what you would like to see
>added. Could you provide a concrete example for a specific
>architecture?

Sure. I’m using i386 as I’m the most familiar with it.


>       Arch/ABI      arg1  arg2  arg3  arg4  arg5  arg6  arg7  Notes
>       ──────────────────────────────────────────────────────────────
>       i386          ebx   ecx   edx   esi   edi   ebp   -

This is syscall args. It doesn’t say how userspace args are
handled (not in registers by default, but the return value
is in edx:eax normally), nor which registers are caller-saved
(eax, ecx, edx) or callee-saved (ebx, ebp, esi, edi). Add the
name of the stack pointer register (here esp) and you have
additionally mapped out the entire basic register file.

https://en.wikipedia.org/wiki/X86_calling_conventions#List_of_x86_calling_conventions
(look at IA-32 / cdecl) has more information, I guess, but
that’s the most important ones. (It’s also incorrect; many
Unix systems only align the stack to 4 bytes, and 64-bit
values are returned in EDX:EAX, not EAX:EDX, on either.)

Some architectures have a more complex register file involving
renaming on function call (IIRC sparc does this); this is
something I’d also like to see mentioned. Anything more complex
the user would still need to look up, but even having this much
would enable really fast lookup of the basics that are surprisingly
hard to track down for all architectures as there doesn’t seem to
be a single place for this. (I recently had to fix something on
sh4 and wished for it.)

Thanks,
//mirabilos
-- 
When he found out that the m68k port was in a pretty bad shape, he did
not, like many before him, shrug and move on; instead, he took it upon
himself to start compiling things, just so he could compile his shell.
How's that for dedication. -- Wouter, about my Debian/m68k revival
