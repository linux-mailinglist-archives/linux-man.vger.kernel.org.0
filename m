Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 215BA406CFD
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 15:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233553AbhIJNlC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 09:41:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:58812 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233230AbhIJNlC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 10 Sep 2021 09:41:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E73CB611BF;
        Fri, 10 Sep 2021 13:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631281191;
        bh=z89fQG60qtCELF3B6sptH+LfdWMNu7rT2PQSojN+LV4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bDsU8dXQtq50rwUreh+XUwOziXE01wAgpQrOLj1ldlCKC8D8ho50+6KEkTXrOnZ4n
         TPzqgSLxCDqqHY2q3AapSFfq2vyfG1MNUiG5GevCYIWt8inRA9zYtgizEC3ByKzQeQ
         ZAxIMp+8oKdzvOvoW3Xmb5AndAZFZ9Xbrvd6H5xB4F1kEN9y0l/vH7LRn4FtfYW3T8
         3zdVc96HIGnRaXL9vTRw700a4Ci8LlBNtHKCqTHjKXnaBS1JmZU9iZ52EoLtp5pTuu
         p1voe4XzqSqk561Yy1KR3KMGIFU/2IsZjq5WSEK4t56EE67ln7eePWd7E/5i+AsdXN
         FCdemk8LciAjw==
Received: by pali.im (Postfix)
        id 1FFEC2828; Fri, 10 Sep 2021 15:39:48 +0200 (CEST)
Date:   Fri, 10 Sep 2021 15:39:47 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <20210910133947.hr7nmpqmmwnmqp2f@pali>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210810194928.16408-1-pali@kernel.org>
 <20210831203436.hy52aimer5hozb6r@pali>
 <56938369-cd99-d768-55da-5eac4cd268d4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <56938369-cd99-d768-55da-5eac4cd268d4@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday 10 September 2021 15:37:54 Alejandro Colomar (man-pages) wrote:
> Hi, Pali!
> 
> On 8/31/21 10:34 PM, Pali Rohár wrote:
> > On Tuesday 10 August 2021 21:49:28 Pali Rohár wrote:
> > > Setting custom baudrate for which is not defined Bnnn constant is possible
> > > via BOTHER flag and then filling speed in c_ospeed and c_ispeed fields.
> > > 
> > > These two fields are either in struct termios or struct termios2. Former
> > > belongs to TCGETS/TCSETS ioctls, latter to TCGETS2/TCSETS2 ioctls.
> > > 
> > > BOTHER flag with these two fields and new struct termios2 is not supported
> > > by older versions of include header files.
> > > 
> > > Some architectures (e.g. amd64) provide both struct termios and struct
> > > termios2, but c_ospeed and c_ispeed are only in struct termios2.
> > > 
> > > Some other architectures (e.g. alpha) provide both struct termios and struct
> > > termios2 and both have c_ospeed and c_ispeed fields.
> > > 
> > > And some other architectures (e.g. powerpc) provide only struct termios
> > > (no struct termios2) and it has c_ospeed and c_ispeed fields.
> > > 
> > > So basically to support all architectures it is needed to use
> > > struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> > > to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
> > > 
> > > Setting input baudrate is done via IBSHIFT macro.
> > > 
> > > Signed-off-by: Pali Rohár <pali@kernel.org>
> > 
> > Hello! Do you have any comments on this patch?
> 
> Sorry, I started to fix the licensing issues Greg pointed out, and forgot
> about this.
> 
> I assume it's good since you have been doing a lot of related work in recent
> patches.  I'll only point out a cosmetic issue with the preprocessor stuff:
> I'd indent with a single space after '#' to clarify preprocessor #if #else
> #endif relationships and improve readability.  I also prefer '#if
> [!]defined()' rather than '#if[n]def' (except for include guards); and there
> seems to be a mix in the existing pages, so I'll standardize that way from
> now on.
> 
> For example:
> 
> #if !defined a
> #else
> # if defined b
> # endif
> #endif
> 
> However, I applied those changes myself in a following patch, so you don't
> worry about them.

Ok, perfect, thanks!

> Patch applied!
> 
> Thanks,
> 
> Alex
