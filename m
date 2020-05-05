Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D562A1C5CF8
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 18:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729171AbgEEQG4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 12:06:56 -0400
Received: from foss.arm.com ([217.140.110.172]:44432 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728804AbgEEQG4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 12:06:56 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE2251FB;
        Tue,  5 May 2020 09:06:55 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 050A63F71F;
        Tue,  5 May 2020 09:06:54 -0700 (PDT)
Date:   Tue, 5 May 2020 17:06:52 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     Will Deacon <will@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        linux-man@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Message-ID: <20200505160652.GP30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
 <20200505155457.GE24239@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200505155457.GE24239@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 05, 2020 at 04:54:57PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 04:24:40PM +0100, Dave Martin wrote:
> > arm64 is currently documented as receiving the syscall number in
> > x8.
> > 
> > While this is the correct register, the syscall number is a 32-bit
> > integer.  Bits [63:32] are ignored by the kernel.
> > 
> > So it is more correct to say "w8".
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > ---
> >  man2/syscall.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/man2/syscall.2 b/man2/syscall.2
> > index 53ab40e..d724651 100644
> > --- a/man2/syscall.2
> > +++ b/man2/syscall.2
> > @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
> >  arc	trap0	r8	r0	-	-
> >  arm/OABI	swi NR	-	r0	-	-	2
> >  arm/EABI	swi 0x0	r7	r0	r1	-
> > -arm64	svc #0	x8	x0	x1	-
> > +arm64	svc #0	w8	x0	x1	-
> 
> Acked-by: Will Deacon <will@kernel.org>

Thanks!

---Dave
