Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86B5644DF9F
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 02:12:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234605AbhKLBPq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 20:15:46 -0500
Received: from pi.codeconstruct.com.au ([203.29.241.158]:48948 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229725AbhKLBPp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 20:15:45 -0500
Received: from rico.lan (unknown [159.196.93.152])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 21C7A20164;
        Fri, 12 Nov 2021 09:12:50 +0800 (AWST)
Message-ID: <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Date:   Fri, 12 Nov 2021 09:12:49 +0800
In-Reply-To: <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
         <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Thanks for the review! I've updated in line with most of your comments,
and will send a v3 soon. However, I do have a couple of queries, mainly
for my own understanding:

> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <sys/socket.h>
> > +.B #include <linux/mctp.h>
> 
> I prefer alphabetic sorting of includes.

OK, does that take priority over the convention to list the header(s)
specific to this man page last?

In that case, we end up with:

    #include <linux/mctp.h>
    #include <sys/socket.h> /* Definition of socket() & SOCK_DGRAM */

> > +.PP
> > +The API for MCTP messaging uses a standard sockets interface, using the
> > +.BR sendto (2)
> > +and
> > +.BR recvfrom (2)
> > +classes of system calls to transfer messages.
> > +Messages may be fragmented into packets before transmission, and reassembled at
> > +the remote endpoint.
> 
> Break at the comma.

Just this comma? or all of them? There's a couple of sentences right
before this one that would seem to have a similar style - if it's the
former, for my own learning here: what makes this one different?

[and you mean a line-break, right? or a break-point escape sequence?]

> > +Packets between a local and remote endpoint are identified by the source
> 
> Break after "by" (or perhaps just before it).

Same as the above, why is this?

> > +struct sockaddr_mctp {
> > +    unsigned short     smctp_family;  /* = AF_MCTP */
> > +    uint16_t           __smctp_pad0;  /* pad, must be zero */
> > +    int                smctp_network; /* local network identifier */
> > +    struct mctp_addr   smctp_addr;    /* EID */
> > +    uint8_t            smctp_type;    /* message type byte */
> > +    uint8_t            smctp_tag;     /* tag value, including TO flag */
> > +    uint8_t            __smctp_pad1;  /* pad, must be zero */
> 
> Do we want to tie the implementation to this pad?

Yes. The pad will be there anyway, due to the natural alignment of the
struct. Since we want to be explicit about the padding (and require it
to be zeroed), I would strongly suggest keeping it documented.

There is an 'extended' MCTP addressing struct, which encapsulates a
struct sockaddr_mctp. For us to be absolutely clear about the layout of
that structure, the explicit pad here makes that unambiguous.

[unless, for man pages, we don't care about the ABI, only the API?]

> Future implementations of sockaddr_mctp are not going to use that
> byte for anything else?

They might, hence requiring zero at present.

Cheers,


Jeremy

