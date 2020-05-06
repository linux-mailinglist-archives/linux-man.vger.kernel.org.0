Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C47F31C6E72
	for <lists+linux-man@lfdr.de>; Wed,  6 May 2020 12:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728338AbgEFKfE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 May 2020 06:35:04 -0400
Received: from foss.arm.com ([217.140.110.172]:33366 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728890AbgEFKfD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 6 May 2020 06:35:03 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 811531FB;
        Wed,  6 May 2020 03:35:03 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B6943F71F;
        Wed,  6 May 2020 03:35:02 -0700 (PDT)
Date:   Wed, 6 May 2020 11:35:00 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Message-ID: <20200506103500.GT30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
 <82affb91-8aa9-0316-421a-3ce503e396e0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82affb91-8aa9-0316-421a-3ce503e396e0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, May 06, 2020 at 12:16:07PM +0200, Michael Kerrisk (man-pages) wrote:
> On 5/5/20 5:24 PM, Dave Martin wrote:
> > arm64 is currently documented as receiving the syscall number in
> > x8.
> > 
> > While this is the correct register, the syscall number is a 32-bit
> > integer.  Bits [63:32] are ignored by the kernel.
> > 
> > So it is more correct to say "w8".
> 
> Thanks, Dave. Patch applied, with Will's Acked-by.
> 
> Cheers,
> 
> Michael

Thanks!
---Dave
