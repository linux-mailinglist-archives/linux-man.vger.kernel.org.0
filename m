Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C02F1C5C9C
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:53:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729377AbgEEPxV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:53:21 -0400
Received: from foss.arm.com ([217.140.110.172]:44046 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729317AbgEEPxV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 11:53:21 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA3551FB;
        Tue,  5 May 2020 08:53:20 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C52E53F68F;
        Tue,  5 May 2020 08:53:19 -0700 (PDT)
Date:   Tue, 5 May 2020 16:53:17 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Message-ID: <20200505155317.GO30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
 <20200505152658.GL1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200505152658.GL1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 05, 2020 at 04:26:58PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, May 05, 2020 at 04:24:39PM +0100, Dave Martin wrote:
> > The arm OABI syscall interface is currently documented in terms of
> > register name aliases defined by the ARM Procedure Call Standard
> > (APCS).  However, these don't make sense in the context of a binary
> > interface that doesn't comply (or need to comply) with APCS.
> > 
> > Use the real architectural register names instead.
> > 
> > The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> > the interface is just the same regardless of which set of names is
> > used.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Thanks Dave,
> 
> Acked-by: Russell King <rmk+kernel@armlinux.org.uk>

Thanks!
---Dave
