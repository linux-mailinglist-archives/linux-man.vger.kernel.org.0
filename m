Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A3AC20E080
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 23:57:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389742AbgF2Uqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 16:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731545AbgF2TNw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 15:13:52 -0400
X-Greylist: delayed 345 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 29 Jun 2020 05:13:48 PDT
Received: from buzzer.stormbind.net (buzzer.stormbind.net [IPv6:2a01:4f8:201:5373::85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68CDFC00E3F3
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 05:13:48 -0700 (PDT)
Received: from digital0638.lan (unknown [IPv6:2a02:6d40:2b51:fc01:49e5:d515:df94:338c])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by buzzer.stormbind.net (Postfix) with ESMTPSA id 81D38600392;
        Mon, 29 Jun 2020 14:08:00 +0200 (CEST)
Received: from sven by digital0638.lan with local (Exim 4.92)
        (envelope-from <sven@stormbind.net>)
        id 1jpsZr-0006iH-UH; Mon, 29 Jun 2020 14:07:59 +0200
Date:   Mon, 29 Jun 2020 14:07:59 +0200
From:   Sven Hoexter <sven@stormbind.net>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [patch] update kernel documentation references in cgroups(7) and
 cpuset(7)
Message-ID: <20200629120759.GA14586@stormbind.net>
References: <20200619163515.GA27524@stormbind.net>
 <CAKgNAkjJDC3ejYqh8sqg7Ka_yh+=TAdvi-=suHEihjqsbvGnpA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkjJDC3ejYqh8sqg7Ka_yh+=TAdvi-=suHEihjqsbvGnpA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.0 required=3.5 tests=UNPARSEABLE_RELAY
        autolearn=disabled version=3.4.2
X-Spam-Report: *  0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
        *      lines
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on buzzer.stormbind.net
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 29, 2020 at 01:40:50PM +0200, Michael Kerrisk (man-pages) wrote:
> On Fri, 19 Jun 2020 at 18:35, Sven Hoexter <sven@stormbind.net> wrote:

Hi,

> > cgroups-v1/v2 documentation got moved to the "admin-guide" subfolder
> > and converted from .txt files to .rst
> 
> Thanks for your patch and for the ping, and sorry I did not respond
> earlier. I had not forgotten this patch, but I was still working out
> what to do with it.
> 
> The general philosophy in man-pages is to maintain historical
> information, since the man-pages that are installed on a system may
> not correspond to the kernel running on that system.

Indeed, a valid point I did not consider.


> In the context of
> your patch, what this means is that I would prefer to have text like:
> 
> [[
> The kernel source file
> .IR Documentation/admin\-guide/cgroup\-v2.rst
> (or
> .IR Documentation/admin-guide/cgroup-v2.rst in Linux x.y and earlier)
> ]]
> 
> Would you be willing to revise your patch to that style?

Sure, I will prepare a new version.

Regards,
Sven
