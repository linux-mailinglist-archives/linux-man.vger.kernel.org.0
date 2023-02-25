Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 482016A28BF
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 11:10:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbjBYKKS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Feb 2023 05:10:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjBYKKQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Feb 2023 05:10:16 -0500
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ADB39BDE1
        for <linux-man@vger.kernel.org>; Sat, 25 Feb 2023 02:10:15 -0800 (PST)
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id C7AF972C90B;
        Sat, 25 Feb 2023 13:10:14 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id AA8287CFDF8; Sat, 25 Feb 2023 13:10:14 +0300 (MSK)
Date:   Sat, 25 Feb 2023 13:10:14 +0300
From:   "Dmitry V . Levin" <ldv@strace.io>
To:     Fotios Valasiadis <fvalasiad@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Message-ID: <20230225101014.GB16562@altlinux.org>
References: <20230225024212.31500-1-fvalasiad@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230225024212.31500-1-fvalasiad@gmail.com>
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Feb 25, 2023 at 04:42:12AM +0200, Fotios Valasiadis wrote:
> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.

I'm not sure about the word "fix" in this context as we are not
correcting some wrong information but simply extending the documentation.

How about the following wording:

Document the role of PTRACE_O_TRACESYSGOOD option in connection with
PTRACE_GET_SYSCALL_INFO.

> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
> Cowritten-by: Dmitry V. Levin <ldv@strace.io>

Feel free to add
Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"

> ---
>  man2/ptrace.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..ad0543b0b 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ stop.
>  .B PTRACE_SYSCALL_INFO_NONE
>  No component of the union contains relevant information.
>  .RE
> +.IP
> +Note that in case of
> +syscall entry or exit stops, the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding ptrace stop has occurred.
>  .\"
>  .SS Death under ptrace
>  When a (possibly multithreaded) process receives a killing signal
> -- 
> 2.39.2

-- 
ldv
