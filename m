Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59AFC3E1949
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 18:14:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbhHEQPC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 12:15:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:35228 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229695AbhHEQPC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 12:15:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C3CB61157;
        Thu,  5 Aug 2021 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1628180086;
        bh=SAb64SGOTKYdQ3bPgl0BP//RwPGaAr+8jej1riCqpGM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qEVrCR+GJui6BLUubQb+Cj5AzbnTxTpGYXP0bCKAcYgzrQGMrhLRZybLOdtbNnc2z
         ia1XeGH5xlst+juPfoAg1tDrabXSUByfd7js2vM9ka3wUjmkTNJ2m2B5/RNv4mt5M9
         N4uqzeWv7TJXDp8CO0kanyucFFlVG5hLrHYJZQqk=
Date:   Thu, 5 Aug 2021 18:14:33 +0200
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <YQwOaWqbHFG29wQF@kroah.com>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <20210804220808.cetleob6dldpfnjk@pali>
 <YQt8g+ECel20fA/g@kroah.com>
 <20210805082243.qciylqnt5g74if7i@pali>
 <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali>
 <YQumV3qljhFSau0y@kroah.com>
 <20210805095100.n2qkm3kdiucwt6jd@pali>
 <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 05, 2021 at 05:28:49PM +0200, Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> On 8/5/21 11:51 AM, Pali Rohár wrote:
> > > > > Also, you forgot a license for this code, that is required if you want
> > > > > people to use it...
> > > > 
> > > > Hm... I do not see any license in other manpage examples. Does not apply
> > > > for it global license defined in ioctl_tty.2 file?
> > > 
> > > That does not mean you do not need it.
> 
> I don't know what is the status of the current code examples in terms of
> licensing.
> 
> I thought I had seen an SPDX license identifier in one of them some time
> ago, but now I can't find it.
> 
> Technically, the pages have a license at the top of each file, which isn't
> printed on the rendered output (the license text doesn't require so) (see
> that text below).
> 
> If you want a different license for your example (let's say you want it BSD
> for example), I guess you could add an SPDX line at the top of the example
> for simplicity.
> 
> But if your code example adheres to the same license as the rest of the
> page, I guess you don't need to do anything in your patch.

What is the license of a man page?

What is the license of this page?

And if it is not shown in the code segment itself, that's going to be a
mess, please make it explicit, otherwise no one can ever use any of the
code examples for anything.

thanks,

greg k-h
