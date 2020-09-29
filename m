Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A73527D240
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 17:13:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729424AbgI2PNn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 11:13:43 -0400
Received: from foss.arm.com ([217.140.110.172]:46954 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728983AbgI2PNn (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 29 Sep 2020 11:13:43 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D93241063;
        Tue, 29 Sep 2020 08:13:42 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1839D3F6CF;
        Tue, 29 Sep 2020 08:13:41 -0700 (PDT)
Date:   Tue, 29 Sep 2020 16:13:39 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        g.branden.robinson@gmail.com
Subject: Re: [PATCH v2] system_data_types.7: Improve "Include" wording and
 format, and explain it in NOTES
Message-ID: <20200929151339.GO6642@arm.com>
References: <d714d0e3-e9fd-0f31-4d5c-4f9232a6b55b@gmail.com>
 <20200929142219.72683-1-colomar.6.4.3@gmail.com>
 <20200929144324.GM6642@arm.com>
 <3dae4d7f-3c08-4f1c-47ce-8815255ca24c@gmail.com>
 <7b4bcd7f-8e60-943d-b127-6926a53a29d3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b4bcd7f-8e60-943d-b127-6926a53a29d3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 29, 2020 at 05:06:27PM +0200, Michael Kerrisk (man-pages) wrote:
> 
> >  > Can we not just annotate each header listed with the originating
> >  > standard, say:
> >  >
> >  > 	<stddef.h>	(C)
> >  >
> >  > 	<sys/types.h>	(POSIX)
> >  > 	...		(POSIX)
> >  > 	...
> > 
> > That may be a good idea; I've thought about doing that in the past;
> > but also thought that it's still too much noise.
> > Let's see what others think about it.
> 
> My thought is that maybe we can add this kind of info later,
> providing we find a concise way to do it. But, for now, already
> the info in the page is useful as is, and I don't want to stop
> the momentum of Alex's work. So, for now, I think let's carry
> on the current style.
> 
> > The downside is that it adds a lot of lines,
> > being harder to read for types with too many headers (e.g., size_t).
> 
> That is also my concern.

OK, that's fair -- I agree that the page makes a valuable contribution
already, so it makes sense to merge it in its current form and think
about improvements (if any are warranted) afterward.

Apologies for the noise!

Cheers
---Dave
