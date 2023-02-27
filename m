Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 504F26A4624
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 16:34:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjB0PeE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 10:34:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbjB0Pdp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 10:33:45 -0500
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7F337EF8A
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 07:33:41 -0800 (PST)
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 9C12E72C97F;
        Mon, 27 Feb 2023 18:33:40 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 820027CFE37; Mon, 27 Feb 2023 17:33:40 +0200 (IST)
Date:   Mon, 27 Feb 2023 17:33:40 +0200
From:   "Dmitry V. Levin" <ldv@strace.io>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, lineprinter0@gmail.com
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Message-ID: <20230227153340.GA9755@altlinux.org>
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
 <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Feb 27, 2023 at 02:28:45PM +0100, Alejandro Colomar wrote:
[...]
> Ahh, sorry, I forgot about that.  I reworded it to the following:
> 
>     ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
>     
>     Document the role of PTRACE_O_TRACESYSGOOD option in connection with
>     PTRACE_GET_SYSCALL_INFO.
>     
>     Came upon this after writing a test program using PTRACE_O_TRACESYSGOOD.

Just otherwise, PTRACE_O_TRACESYSGOOD was not used in that test,
otherwise there wouldn't be any question in the first place.
Did you mean PTRACE_GET_SYSCALL_INFO?

>     After failing to find what's wrong I posted a StackOverflow question
>     which you can find right here:
>     <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none>
>     
>     Nate Eldredge found out what happens by looking into the kernel's source
>     code, here is a link to the relevant part
>     <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018>
>     
>     In the code it can be seen that the union is filled if and only if the
>     signal matches "SIGTRAP | 0x80", a signal which is only sent if the
>     PTRACE_O_TRACESYSGOOD option is set.  You can read about that in the
>     PTRACE_O_TRACESYSGOOD section of ptrace(2)'s manual.

Once again, this "if and only if" is confusing, as PTRACE_EVENT_SECCOMP
event that can happen when PTRACE_O_TRACESECCOMP option is enabled
fills the union with the data of type PTRACE_SYSCALL_INFO_SECCOMP.

PTRACE_EVENT_SECCOMP stop is similar to system call enter stop, but it's
not exactly the same kind of stop.

The note we're adding to the manual page is more correct in this regards.


-- 
ldv
