Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06BAC1C5B0F
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729335AbgEEP1L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:27:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729250AbgEEP1L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 May 2020 11:27:11 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 427E4C061A0F
        for <linux-man@vger.kernel.org>; Tue,  5 May 2020 08:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=yd8yNvRGtLxIKAp9JfvKsxk3BYc2M2YC3lEfdJ6s0PE=; b=YizWGAa0BvfwCGp8+JpBZZHMY
        H6cN5kJ7d5yqw2o7nK/j4UtqtFqmtjiJ/MYygG+yMnHgFaTSCSzdAYz5Cf5Uf2yqqssQzyWg82rpz
        Ew4Iy0z96EZw3ogEKueBxct7k92lL7Wt37fuH9/lKH9zptp8jG3aYOAgH4bhOzEwFsJZUEgX22fnY
        hFPKN/xWUxgmoyA/u7DFvVIRuMpE+tL18BjCvuXrjGDg6vAeKBn5iiyRDxZ0pxLR0U8DtmKHabyMC
        MqG8m3FREghRIOA4iaAKHHdfuKHv2SZXWSAVzzvLCSoA0BtGRmG/5FQ34Rcvft2+PSc6wzXn19HDz
        yonYWctOw==;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36350)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.90_1)
        (envelope-from <linux@armlinux.org.uk>)
        id 1jVzTI-0003FB-Ql; Tue, 05 May 2020 16:27:00 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1jVzTH-0007GE-0J; Tue, 05 May 2020 16:26:59 +0100
Date:   Tue, 5 May 2020 16:26:58 +0100
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Message-ID: <20200505152658.GL1551@shell.armlinux.org.uk>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 05, 2020 at 04:24:39PM +0100, Dave Martin wrote:
> The arm OABI syscall interface is currently documented in terms of
> register name aliases defined by the ARM Procedure Call Standard
> (APCS).  However, these don't make sense in the context of a binary
> interface that doesn't comply (or need to comply) with APCS.
> 
> Use the real architectural register names instead.
> 
> The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> the interface is just the same regardless of which set of names is
> used.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks Dave,

Acked-by: Russell King <rmk+kernel@armlinux.org.uk>

> ---
>  man2/syscall.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index f2b277b..53ab40e 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -201,7 +201,7 @@ Arch/ABI	Instruction	System	Ret	Ret	Error	Notes
>  _
>  alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
> -arm/OABI	swi NR	-	a1	-	-	2
> +arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
>  arm64	svc #0	x8	x0	x1	-
>  blackfin	excpt 0x0	P0	R0	-	-
> @@ -332,7 +332,7 @@ Arch/ABI	arg1	arg2	arg3	arg4	arg5	arg6	arg7	Notes
>  _
>  alpha	a0	a1	a2	a3	a4	a5	-
>  arc	r0	r1	r2	r3	r4	r5	-
> -arm/OABI	a1	a2	a3	a4	v1	v2	v3
> +arm/OABI	r0	r1	r2	r3	r4	r5	r6
>  arm/EABI	r0	r1	r2	r3	r4	r5	r6
>  arm64	x0	x1	x2	x3	x4	x5	-
>  blackfin	R0	R1	R2	R3	R4	R5	-
> -- 
> 2.1.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
