Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0406728BB89
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 17:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388982AbgJLPHl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 11:07:41 -0400
Received: from mx2.suse.de ([195.135.220.15]:45378 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388977AbgJLPHk (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 12 Oct 2020 11:07:40 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1602515259;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bDvkUn6W/CbGive27aVQ7KFTue7EggU4CcSm4xtTLFQ=;
        b=ho5mAtbXjxRZyPMPqUQO+TGH47+P7lF3p+cgxwd4wfxnThvAzqJVX56rz9Mgls2X2L1x7s
        Cux8mQ6tDkT7aqu46sYDYjJoAVfvXJovAEmeCzupYALtPSWD4Z8yFlSRdOAHpyifw+uDxv
        7kPDrSu649eP8pP91wspFzJqusKpkBs=
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id A0740AC3C;
        Mon, 12 Oct 2020 15:07:39 +0000 (UTC)
Date:   Mon, 12 Oct 2020 17:07:38 +0200
From:   Michal Hocko <mhocko@suse.com>
To:     Jann Horn <jannh@google.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-mm@kvack.org, Mark Mossberg <mark.mossberg@gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
Message-ID: <20201012150738.GF29725@dhcp22.suse.cz>
References: <20201012114940.1317510-1-jannh@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201012114940.1317510-1-jannh@google.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 12-10-20 13:49:40, Jann Horn wrote:
> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> the per-mm counters. With a 4K page size, that means that you can end up
> with the counters off by up to 252KiB per thread.

Do we actually have any strong case to keep this exception to the
accounting? 
-- 
Michal Hocko
SUSE Labs
