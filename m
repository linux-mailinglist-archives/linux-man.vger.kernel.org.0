Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D45C43DAA01
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 19:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhG2RX2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 13:23:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:39556 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229906AbhG2RX0 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jul 2021 13:23:26 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E059760EE6;
        Thu, 29 Jul 2021 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627579403;
        bh=C1WoTc7kNCarMiTlrJBFNZRxQg6z93oZmCX1GoETHL4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DLal5lW2UhC7V61oYxrY3OstK45sqATKgpV2cZd5MfuxHHr/OPEeE0cLsgyYWHKN4
         IR40d0xC6J7JE/pmfVSgUVCPPZca2yEre72HSzijxsy0plS6GZhG4K5/3CYSY/M1Wu
         ySqYj3Tevk7f2UOhMYuqC1Jwl8Ocqh/m3NdPEZKtJeRpg4i3wtlidv8jiFnezEawGF
         QRiWiYbmkIjFSO/XGI31Lwe0W51eO8ZWLQC1jKdljcOsgNv/8n8Dibv5uaeZj7bMuf
         c9STLyN4yIzIaUpRiQea6c2x1pfrgf4md9WDSos+8PWZQOiyRDZ+AAOumcGIUsyJUE
         pqv4tq4QwLTYA==
Received: by pali.im (Postfix)
        id 86F66888; Thu, 29 Jul 2021 19:23:20 +0200 (CEST)
Date:   Thu, 29 Jul 2021 19:23:20 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
Message-ID: <20210729172320.xhrbonoxisqioe3e@pali>
References: <20210725225453.7341-1-pali@kernel.org>
 <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thursday 29 July 2021 13:21:40 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> On 7/26/21 12:54 AM, Pali Rohár wrote:
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > ---
> >   man3/termios.3 | 5 +++--
> >   1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man3/termios.3 b/man3/termios.3
> > index 01c20994424d..e603879e18d4 100644
> > --- a/man3/termios.3
> > +++ b/man3/termios.3
> > @@ -1068,8 +1068,9 @@ and
> >   are nonstandard, but available on the BSDs.
> >   .SH NOTES
> >   UNIX\ V7 and several later systems have a list of baud rates
> > -where after the fourteen values B0, ..., B9600 one finds the
> > -two constants EXTA, EXTB ("External A" and "External B").
> > +where after the fourteen values \fBB0\fP, ..., \fBB9600\fP
> 
> Could you please use .B and/or .BR instead of inline \fB...\fP?

Ok, no problem. I used inline style because few lines below is already
used this \fIduration\fP inline style.

How do you prefer to format this part? \fBB0\fP, ..., \fBB9600\fP

> See this extract from man-pages(7):
> 
>        Any  reference  to  the  subject of the current manual page
>        should be written with the name in bold followed by a  pair
>        of parentheses in Roman (normal) font.  For example, in the
>        fcntl(2) man page, references to the subject  of  the  page
>        would  be  written as: fcntl().  The preferred way to write
>        this in the source file is:
> 
>            .BR fcntl ()
> 
>        (Using this format, rather than the  use  of  "\fB...\fP()"
>        makes  it  easier to write tools that parse man page source
>        files.)
> 
> 
> Thanks,
> 
> Alex
> 
> > +one finds the two constants \fBEXTA\fP, \fBEXTB\fP
> > +("External A" and "External B").
> >   Many systems extend the list with much higher baud rates.
> >   .PP
> >   The effect of a nonzero \fIduration\fP with
> > 
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
