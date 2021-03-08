Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27361331961
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 22:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbhCHVaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 16:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231129AbhCHVaq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 16:30:46 -0500
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67CCBC06174A;
        Mon,  8 Mar 2021 13:30:46 -0800 (PST)
Received: from zn.tnic (p200300ec2f05ab009ff41a2f0cc105b9.dip0.t-ipconnect.de [IPv6:2003:ec:2f05:ab00:9ff4:1a2f:cc1:5b9])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id BA2ED1EC04DB;
        Mon,  8 Mar 2021 22:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
        t=1615239044;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
        bh=bz3zJSgx6mmXPFggnxmj99xFMiqQYB7dti5cBYcE25I=;
        b=P1PjxowdOmG2BuLcvLPuIOxwExwM12pTg1OrD853MltdrswmO/v/wBJ9GEMZNM8cv8IgMb
        9ufjhFItbad1cN5WbN8t3AtDfW3cvnJfklnpG8Hy7siJwM2munjIQtxGCTD+R4ldPRIZW1
        Ij7sqk7HpSlvmLKskAUeKwchbV0nLo8=
Date:   Mon, 8 Mar 2021 22:30:40 +0100
From:   Borislav Petkov <bp@alien8.de>
To:     Yu-cheng Yu <yu-cheng.yu@intel.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Florian Weimer <fweimer@redhat.com>,
        "H.J. Lu" <hjl.tools@gmail.com>, linux-kernel@vger.kernel.org,
        linux-api@vger.kenel.org
Subject: Re: [PATCH 2/2] sigaction.2: wfix - Clarify si_addr description.
Message-ID: <20210308212936.GD12548@zn.tnic>
References: <20210226172634.26905-1-yu-cheng.yu@intel.com>
 <20210226172634.26905-3-yu-cheng.yu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210226172634.26905-3-yu-cheng.yu@intel.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Feb 26, 2021 at 09:26:34AM -0800, Yu-cheng Yu wrote:
> SIGSEGV fills si_addr only for memory access faults.  Add a note to clarify.
> 
> Signed-off-by: Yu-cheng Yu <yu-cheng.yu@intel.com>
> Cc: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Florian Weimer <fweimer@redhat.com>
> Cc: "H.J. Lu" <hjl.tools@gmail.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-api@vger.kenel.org
> Link: https://lore.kernel.org/linux-api/20210217222730.15819-7-yu-cheng.yu@intel.com/
> ---
>  man2/sigaction.2 | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 49a30f11e..bea884a23 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -467,7 +467,7 @@ and
>  .BR SIGTRAP
>  fill in
>  .I si_addr
> -with the address of the fault.
> +with the address of the fault (see notes).
>  On some architectures,
>  these signals also fill in the
>  .I si_trapno
> @@ -955,6 +955,11 @@ It is not possible to block
>  .IR sa_mask ).
>  Attempts to do so are silently ignored.
>  .PP
> +In a
> +.B SIGSEGV,
> +if the fault is a memory access fault, si_addr is filled with the address
> +causing the fault, otherwise it is not filled.

"... otherwise it is uninitialized." or "zeroed" or whatever...

And I'm having trouble figuring out why do you need to clarify this?

Because of this sentence:

       * SIGILL,  SIGFPE, SIGSEGV, SIGBUS, and SIGTRAP fill in si_addr with the address
         of the fault.  On some architectures, these signals also fill in the si_trapno
         field.

?

If so, did you audit all architectures whether si_addr is populated only
on memory access faults or is this something POSIX dictates or what's
up? Because the sigaction(2) manpage is arch-agnostic and this is a
rather strong assertion.

What am I missing?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
