Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92BD93E3CD8
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhHHVFx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:05:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:37508 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229895AbhHHVFw (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 8 Aug 2021 17:05:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D3D360EBB;
        Sun,  8 Aug 2021 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628456733;
        bh=6pcERgdgkwJx2e5SYjOR5ucjyXYeLRfuq63EiMcMBSE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Aid+xo1elqgo50axopXKVDflSlcykqcfREPpsz5mIdBgwaw0SZ7e39wnJ7zttJktW
         jHBZtnIVDh7AfAAfI90UUE3Bld0477PvxV0aj1r4JVbtiwuiIv96NpXGtoflshf1hy
         Q0EAR70QG6EizOLtpmFuXy1+KNV4Y23KkTuhZIYZl9b53MFNLLGL32EC0PgcfN0P11
         6TwISLRQsUow70Uw4hi0SoYUxnxTLGAAKeGesXLx97Ln61J7StUlsswSpQK2CP7MCF
         ENbX5YIi5gk8rwJ6VrFXGhesEbxnzH4FRjCvWdPfrLgDvPf0qEq7Zs8AzulH0H2PMA
         HtT9BYvAWQJnA==
Received: by pali.im (Postfix)
        id B19C113DC; Sun,  8 Aug 2021 23:05:30 +0200 (CEST)
Date:   Sun, 8 Aug 2021 23:05:30 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <20210808210530.ykqrihpfmdabbdl2@pali>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <54c8c04d-4f9b-1ab6-a3a5-c23b2be74a9d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <54c8c04d-4f9b-1ab6-a3a5-c23b2be74a9d@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sunday 08 August 2021 10:35:24 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> On 8/1/21 3:51 PM, Pali Rohár wrote:
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > 
> > ---
> > Changes in v3:
> > * Check support for custom baudrate only based on BOTHER macro
> > * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
> > 
> > Changes in v2:
> > * Use \e for backslash
> > * Use exit(EXIT_*) instead of return num
> > * Sort includes
> > * Add comment about possible fallback
> > ---
> > 
> > Hello Alejandro!
> > 
> > I found out that this stuff is more complicated as I originally thought.
> > And seems that additional documentation on this topic is needed...
> > 
> > For setting custom baudrate it is needed to set BOTHER flag in c_cflag
> > field and baudrate value itself in c_ospeed and c_ispeed fields.
> > 
> > So when BOTHER flag is not provided by <asm/termbits.h> then setting custom
> > baudrate is not possible, fields c_ospeed and c_ispeed do not exist (and
> > only some predefined Bnnn baudrate values are supported). This applies when
> > compiling application with older version of header files (prior support for
> > custom baudrate was introduced into header files).
> > 
> > First caveat: BOTHER constant is different for different architectures.
> > So it is not possible to provide fallback #ifndef..#define BOTHER.
> > 
> > And now the biggest issue: Some architectures have these c_ospeed and
> > c_ispeed fields in struct termios and some in struct termios2.
> > 
> > TCGETS/TCSETS ioctls use struct termios and TCGETS/TCSETS2 use
> > struct termios2.
> > 
> > Some architectures (e.g. amd64) provide both struct termios and struct
> > termios2, but c_ospeed and c_ispeed are only in struct termios2.
> > 
> > Some other architectures (e.g. alpha) provide both struct termios and struct
> > termios2 and both have c_ospeed and c_ispeed fields.
> > 
> > And some other architectures (e.g. powerpc) provide only struct termios
> > (no struct termios2) and it has c_ospeed and c_ispeed fields.
> > 
> > So basically to support all architectures it is needed to use
> > struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> > to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
> 
> When you send v4, please include the above text (or something similar) to
> the commit message.

Hello Alejandro! Sure I will put description into commit message.

Moreover this kind of information should be properly documented into
ioctl_tty.2 manpage itself. But I really do not know in which part. Into
ioctl (and which?)? Or separate paragraph? As it basically describe some
field of struct termios and struct termios2, which are undocumented too.

Do you have some idea or picture how such thing should be properly
documented in man-pages project?

> Thanks,
> 
> Alex
> 
> > 
> > I updated v3 patch to handle this logic.
> > ---
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
