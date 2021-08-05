Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFE383E1AD2
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 19:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240608AbhHERyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 13:54:43 -0400
Received: from mail.kernel.org ([198.145.29.99]:39544 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229873AbhHERyn (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 13:54:43 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 336DE6112F;
        Thu,  5 Aug 2021 17:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1628186068;
        bh=yZK9uF5xUpEdAWmlrj9my5V/NrGAJRVmKQwWRGwKKOU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VXkB+wZjEdwIlrJr5kGNOqCj1wt8qsR4yLePLTpSqI83FiIUb7MRJbzjXCA5eNKQ2
         u8F/6SbELyq/pzpMQUqRP4+h9y34rva4maCRoFsGPmUHpTRYPa+xZtMDVfQ1xL4eQv
         AJDCzyv0tg6BkZzjTyW3PD86PwOaq9kjFD4E+FBw=
Date:   Thu, 5 Aug 2021 19:54:25 +0200
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
        Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Walter Harms <wharms@bfs.de>, Andres Brouwer <aeb@cwi.nl>
Subject: Re: Licensing example programs in man-pages (was [PATCH v3]
 ioctl_tty.2: Add example how to get or set baudrate on the serial port)
Message-ID: <YQwl0dTUIFZf5Ax4@kroah.com>
References: <20210804220808.cetleob6dldpfnjk@pali>
 <YQt8g+ECel20fA/g@kroah.com>
 <20210805082243.qciylqnt5g74if7i@pali>
 <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali>
 <YQumV3qljhFSau0y@kroah.com>
 <20210805095100.n2qkm3kdiucwt6jd@pali>
 <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com>
 <YQwOaWqbHFG29wQF@kroah.com>
 <4757a0c3-896f-a402-acb1-7e7fcadaa907@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4757a0c3-896f-a402-acb1-7e7fcadaa907@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 05, 2021 at 06:45:57PM +0200, Alejandro Colomar (man-pages) wrote:
> Hi Greg,
> 
> On 8/5/21 6:14 PM, Greg Kroah-Hartman wrote:
> > On Thu, Aug 05, 2021 at 05:28:49PM +0200, Alejandro Colomar (man-pages) wrote:
> > > Hi Pali,
> > > 
> > > On 8/5/21 11:51 AM, Pali Rohár wrote:
> > > > > > > Also, you forgot a license for this code, that is required if you want
> > > > > > > people to use it...
> > > > > > 
> > > > > > Hm... I do not see any license in other manpage examples. Does not apply
> > > > > > for it global license defined in ioctl_tty.2 file?
> > > > > 
> > > > > That does not mean you do not need it.
> > > 
> > > I don't know what is the status of the current code examples in terms of
> > > licensing.
> > > 
> > > I thought I had seen an SPDX license identifier in one of them some time
> > > ago, but now I can't find it.
> > > 
> > > Technically, the pages have a license at the top of each file, which isn't
> > > printed on the rendered output (the license text doesn't require so) (see
> > > that text below).
> > > 
> > > If you want a different license for your example (let's say you want it BSD
> > > for example), I guess you could add an SPDX line at the top of the example
> > > for simplicity.
> > > 
> > > But if your code example adheres to the same license as the rest of the
> > > page, I guess you don't need to do anything in your patch.
> > 
> > What is the license of a man page?
> 
> Typically, the one I showed in my last email (the "Verbatim" license").
> See <https://www.kernel.org/doc/man-pages/licenses.html>.
> 
> > 
> > What is the license of this page?
> 
> .../linux/man-pages$ head -n8 man2/ioctl_tty.2
> .\" Copyright 2002 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
> .\" and Andries Brouwer <aeb@cwi.nl>.
> .\"
> .\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
> .\" Distributed under GPL

What version of GPL?

> .\" %%%LICENSE_END
> .\"
> .TH IOCTL_TTY 2 2021-03-22 "Linux" "Linux Programmer's Manual"
> 
> I'm don't know what GPL_NOVERSION_ONLINE is at all.

I would recommend adding proper SPDX markings to all of these files.
Even better, work to make the whole repo REUSE compliant which means
that there is no ambuiguity here.

But, the above license does not show up on the code in the original
example here, and that needs to be present if anyone wants this to be
used.

> Still, if the code is going to have a different license than the rest of the
> page, it could perfectly have an SPDX comment in the first line of the
> example program.

Even if it is different, it should still be present as no one can see
the license of a man page "easily" when reading the documentation
through normal tools.

thanks,

greg k-h
