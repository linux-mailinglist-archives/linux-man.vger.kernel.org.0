Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50D023E262B
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 10:32:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241962AbhHFIct (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 04:32:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:35790 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S242206AbhHFIcq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 6 Aug 2021 04:32:46 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C66F611F0;
        Fri,  6 Aug 2021 08:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628238751;
        bh=pkduKxG75bOFS7Mu9r1UK0lVa8oyh2IcVqJAW1oD38s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dGusvExKQOxVinelJT9LtZvAg4xNc0/hRVU/2BYA2p3BpT7LmUV5wWZ6T2awGg9SJ
         6cK5OYtH36E/mO1u+Gj2qh8qIR/W6M9cK13yrl7KV0iRaZCjU/GrdFc2lY+zVB8tdw
         ONUCv7J/6DzIlC7mo/ZIStjB0qdg7nfii+Zyu9gMYZFZTX/qwi/vPnfu7uI5zdP/BI
         SlAbJlwB/km6eEgJJXXTMOXbVHNsNTc+SYQT+VWbiOrzMy1WTUfpk/GHfmGByppjV8
         +wEkxHCX/z8AM12L5AohYnCkUi7qeBd8Eyo5jj8bZv09mWuOQy2erSwpYR4ZtirqyS
         73PPKZZTyGp0g==
Received: by pali.im (Postfix)
        id 93E75768; Fri,  6 Aug 2021 10:32:28 +0200 (CEST)
Date:   Fri, 6 Aug 2021 10:32:28 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Walter Harms <wharms@bfs.de>, Andres Brouwer <aeb@cwi.nl>
Subject: Re: Licensing example programs in man-pages (was [PATCH v3]
 ioctl_tty.2: Add example how to get or set baudrate on the serial port)
Message-ID: <20210806083228.vja7jqnophuomg73@pali>
References: <20210805082243.qciylqnt5g74if7i@pali>
 <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali>
 <YQumV3qljhFSau0y@kroah.com>
 <20210805095100.n2qkm3kdiucwt6jd@pali>
 <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com>
 <YQwOaWqbHFG29wQF@kroah.com>
 <4757a0c3-896f-a402-acb1-7e7fcadaa907@gmail.com>
 <YQwl0dTUIFZf5Ax4@kroah.com>
 <40ed8a18-cf49-f807-9227-201e994e9a5a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40ed8a18-cf49-f807-9227-201e994e9a5a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday 06 August 2021 09:22:59 Alejandro Colomar (man-pages) wrote:
> Hi Greg, Pali,
> 
> Hi GregOn 8/5/21 7:54 PM, Greg Kroah-Hartman wrote:
> > > > What is the license of this page?
> > > 
> > > .../linux/man-pages$ head -n8 man2/ioctl_tty.2
> > > .\" Copyright 2002 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
> > > .\" and Andries Brouwer <aeb@cwi.nl>.
> > > .\"
> > > .\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
> > > .\" Distributed under GPL
> > 
> > What version of GPL?
> 
> I don't know :/
> Maybe v1...
> 
> > 
> > > .\" %%%LICENSE_END
> > > .\"
> > > .TH IOCTL_TTY 2 2021-03-22 "Linux" "Linux Programmer's Manual"
> > > 
> > > I'm don't know what GPL_NOVERSION_ONLINE is at all.
> > 
> > I would recommend adding proper SPDX markings to all of these files.
> > Even better, work to make the whole repo REUSE compliant which means
> > that there is no ambuiguity here.
> > 
> 
> Agree.  If Michael has no problems with that, I'll add it to my TODO list.
> 
> > But, the above license does not show up on the code in the original
> > example here, and that needs to be present if anyone wants this to be
> > used.
> 
> Yup.
> 
> > 
> > > Still, if the code is going to have a different license than the rest of the
> > > page, it could perfectly have an SPDX comment in the first line of the
> > > example program.
> > 
> > Even if it is different, it should still be present as no one can see
> > the license of a man page "easily" when reading the documentation
> > through normal tools.
> 
> Yup.
> 
> > 
> > thanks,
> > 
> > greg k-h
> > 
> 
> Pali,
> 
> If you want to specify a specific license for your code, add 2 SPDX lines
> according to REUSE <https://reuse.software/>.  If not, I'll assume that you
> don't care, and when I fix the pages to show the license (which in this case
> I'm not sure which one will be, maybe GPLv1) your code will use that same
> license.  I'll take care of any necessary adjustments such as providing  the
> license text in the repository; you don't need to do that.

Just do not complicate it and use same license as for other manpages or
examples.

> 
> Cheers,
> 
> Alex
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
