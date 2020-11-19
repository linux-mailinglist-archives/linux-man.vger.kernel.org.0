Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF2A2B921F
	for <lists+linux-man@lfdr.de>; Thu, 19 Nov 2020 13:10:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbgKSMIM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Nov 2020 07:08:12 -0500
Received: from avasout03.plus.net ([84.93.230.244]:57896 "EHLO
        avasout03.plus.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbgKSMIL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Nov 2020 07:08:11 -0500
X-Greylist: delayed 450 seconds by postgrey-1.27 at vger.kernel.org; Thu, 19 Nov 2020 07:08:10 EST
Received: from deneb ([80.229.24.9])
        by smtp with ESMTP
        id fic6kdfGf99nqfic7knhAP; Thu, 19 Nov 2020 12:00:39 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=Uoz4y94B c=1 sm=1 tr=0
 a=E/9URZZQ5L3bK/voZ0g0HQ==:117 a=E/9URZZQ5L3bK/voZ0g0HQ==:17
 a=kj9zAlcOel0A:10 a=nNwsprhYR40A:10 a=uklwQx5-JsBssaufGwYA:9 a=CjuIK1q_8ugA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mcrowe.com;
         s=20191005; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description; bh=3SbudvcThHymdd4UEuDpYMK0gZI9O6yfVlVCx0q2azA=; b=kth6n
        7q3IP+viQ44EETu+IYiCR7e4pCng42GHwT0NVwytyq9LinK/WLgBe+v7HsGp/+ijnx3SsIPU1KuO5
        UFnUR/s+vyH1sOEloFLI9hleBhvsvoqdOpb5d5Ha0nktXHCPR7gb4Pha84ORhKZBMAe8hQWKW6lgg
        oQvI3AXilXEqyBAHnIf451ex1R8KhaDw9oUQMARnHN5oN3PNWwnUl2chK4hZIGoEGLeTb/STOu/sz
        BcITX1FDmSe5gPtRfvaEmJRQsXXgmmmbfDJbq0RiSXSCNvWyaQ3HCBMQG3Rhq7+aI2ezcappHiqZ3
        SFS9Duo++s6ifscalOAUBvmpKSnMA==;
Received: from mac by deneb with local (Exim 4.92)
        (envelope-from <mac@mcrowe.com>)
        id 1kfic6-0005vB-3N; Thu, 19 Nov 2020 12:00:34 +0000
Date:   Thu, 19 Nov 2020 12:00:34 +0000
From:   Mike Crowe <mac@mcrowe.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: What clocks are supported by pthread_clockjoin_np()
Message-ID: <20201119120034.GA20599@mcrowe.com>
References: <CAKgNAkj26iqAZoez08YVmA-u0fWAvDV9DcctM4hRHhAjwpvcvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkj26iqAZoez08YVmA-u0fWAvDV9DcctM4hRHhAjwpvcvQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Envelope: MS4wfLK2xy3hEZ0iIGbnBZTZXR1rNBV2FlCLJDV/tsM7Lq4HDwq82Ber4Buhi4mbOd7PFcHGd4mGQyB265Lk6i2Ck+OsWQFw4JzsS711LvTzQ7ca/XcKiar3
 uXJBHBox9OjzHJVfpRRtYrWv4MnAcW9giB14+2ev/mCZ3oiYTcBc6ykv
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thursday 19 November 2020 at 09:42:07 +0100, Michael Kerrisk (man-pages) wrote:
> I was looking at adding manual page documentation for
> pthread_clockjoin_np(), but it's not clear to me from the code what
> clocks are supported by the API, and the glibc info docs seem to be
> silent on this point. What clocks are supported?

That's an interesting question. My intention was that it would support
CLOCK_REALTIME and CLOCK_MONOTONIC just like pthread_cond_clockwait,
sem_clockwait etc.

However, since the current implementation currently just calls
clock_gettime to calculate a relative timeout to pass to futex it will work
with any clock that clock_gettime supports.

Perhaps we ought to document pthread_clockjoin_np as supporting only
CLOCK_REALTIME and CLOCK_MONOTONIC and then change the implementation to
fail with EINVAL on any other clocks? Doing this means that the
implementation can switch to passing an absolute timeout to futex in the
future, which would mean that warping of CLOCK_REALTIME would be honoured
correctly by the kernel (although it's not clear to me how important that
really is to anyone.)

Thanks.

Mike.
