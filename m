Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D301430F98
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 07:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbhJRFHz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 01:07:55 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:39924 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230166AbhJRFHi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 01:07:38 -0400
Received: from [172.16.66.209] (unknown [49.255.141.98])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id BFDBD20164;
        Mon, 18 Oct 2021 13:05:25 +0800 (AWST)
Message-ID: <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Date:   Mon, 18 Oct 2021 13:05:25 +0800
In-Reply-To: <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
         <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> Thanks for the manual page!

And thanks for the review! In general, I've updated to suit your
comments, just a couple of queries inline.

> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <sys/socket.h>
> > +.B #include <linux/mctp.h>
> > +.PP
> > +.B mctp_socket = socket(AF_MCTP, SOCK_DGRAM, 0);
> 
> mctp_socket is a variable name.  See socket.7 for an example.
> It should be in italics.

This was based on udp.7; want me to send a patch for that too?

> > +Packets between a local and remote endpoint are identified by the
> > source
> > +and destination EIDs, plus a three-bit tag value.
> > +.PP
> > +Addressing data is passed in socket system calls through
> > +.B struct sockaddr\_mctp
> 
> That escape is unnecessary.  Did you see it in another page perhaps?

I thought I'd seen some odd line-breaks at the underscore, but can't
replicate that now. Will remove.

> > +typedef uint8_t        mctp_eid_t;
> > +
> > +struct mctp_addr {
> > +    mctp_eid_t         s_addr;
> > +};
> > +
> > +struct sockaddr_mctp {
> > +    unsigned short int smctp_family;  /* = AF_MCTP */
> 
> We only use 'int' in 'unsigned int', as the kernel does (or attempts
> to do).  checkpatch.pl warns about 'unsigned short int', IIRC.

No, there are no warnings from checkpatch there; that's just copied from
the current kernel header.

However, I have just sent a separate patch to change that to
__kernel_sa_family_t. Should I use that here (keeping this an exact
match of the kernel header), or stick to the more familiar unsigned
short?

Cheers,


Jeremy

