Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F69A1C5CA6
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729541AbgEEPzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:55:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:41496 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729377AbgEEPzC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 11:55:02 -0400
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E7A7B207DD;
        Tue,  5 May 2020 15:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1588694102;
        bh=8be2lsxcesOAgyrKd3tvzwvIRN1AjWgE5EIS7dYaLUA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eazZOOK9HnpQz7eVHE2lFvTkM0ELl0pD+Y/+mHz2tp6LSu2nkvVBNxFFsNsGlL8N9
         aOpudv4mR8BeHfO32aybIFOakrFK5mdiEbIfcxcsg/0oE4n89/xj0PBXnXOqqXoTV9
         aH0wwGhlUKmaq8f7fyrTC8fTVQBRaDzzXbbIQQ2U=
Date:   Tue, 5 May 2020 16:54:57 +0100
From:   Will Deacon <will@kernel.org>
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        linux-man@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Message-ID: <20200505155457.GE24239@willie-the-truck>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 05, 2020 at 04:24:40PM +0100, Dave Martin wrote:
> arm64 is currently documented as receiving the syscall number in
> x8.
> 
> While this is the correct register, the syscall number is a 32-bit
> integer.  Bits [63:32] are ignored by the kernel.
> 
> So it is more correct to say "w8".
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/syscall.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 53ab40e..d724651 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
>  arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
> -arm64	svc #0	x8	x0	x1	-
> +arm64	svc #0	w8	x0	x1	-

Acked-by: Will Deacon <will@kernel.org>

Will
