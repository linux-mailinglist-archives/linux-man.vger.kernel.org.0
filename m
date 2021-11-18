Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0F9B455412
	for <lists+linux-man@lfdr.de>; Thu, 18 Nov 2021 06:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243072AbhKRFLZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Nov 2021 00:11:25 -0500
Received: from pi.codeconstruct.com.au ([203.29.241.158]:52378 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242463AbhKRFLV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Nov 2021 00:11:21 -0500
Received: from [172.16.67.241] (unknown [49.255.141.98])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 0F3D32012D;
        Thu, 18 Nov 2021 13:08:19 +0800 (AWST)
Message-ID: <833fa653b978889d929638e925bb187ba8886b4e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Date:   Thu, 18 Nov 2021 13:08:18 +0800
In-Reply-To: <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
         <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
         <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
         <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> I didn't even know there was such a convention, but if there is, yes,
> I explicitly want to override it.

OK, I'll update to suit.

> man-pages(7) recommends breaking long lines at clause boundaries
> (commas, semicolons, and so on), but somethimes clauses (if you don't
> know the difference between phrases and clauses, which you don't need
> to, basically clauses are made up of phrases) are too long, and you
> can have a single clause that uses more than a single line.  In those
> cases, the most sensible place to break the line is at the next level:
> phrase boundaries.

OK, understood, thanks for that.

> What I mean is, if in the future this structure will have additional 
> trailing fields, documenting this padding is unnecessary, since that
> may 
> vary.  Code should not rely on this structure having _only_ that 
> padding.  And if code handles any arbitrary extra stuff in this 
> structure, it will implicitly also handle that __smctp_pad1 field, so
> there's no need to mention it.
> 
> Example:
> 
> struct sockaddr_mctp {
>      unsigned short     smctp_family;  /* = AF_MCTP */
>      uint16_t           __smctp_pad0;  /* pad, must be zero */
>      int                smctp_network; /* local network identifier */
>      struct mctp_addr   smctp_addr;    /* EID */
>      uint8_t            smctp_type;    /* message type byte */
>      uint8_t            smctp_tag;     /* tag value, including TO flag */
>      uint8_t            foo;           /* was __smctp_pad1 */
>      uint8_t            bar;           /* extra stuff */
> };
> 
> Here I got rid of the pad, and even added an extra field.

Right, but you've also broken the ABI if that previous padding byte
wasn't explicitly present, and required to be zero. In that future ABI
implementation, the kernel can't distinguish between 'foo' being properly
initialised, and not just random stack garbage from an old-ABI caller.

That's why we have the _pad1 field, and why we require it to be zero.
Since that's enforced by the kernel, I'd rather have it documented,
rather than users seeing their calls fail for "invisible" reasons, when
a call's _pad1 happens to contain a non-zero byte due to not being
initialised.

> Code should be written to be compatible with this case, right?

I'm not 100% clear on you mean by compatible there - you want to prevent
the case where __smctp_pad1 is removed from the header, and that code is
now referencing an invalid struct member?

That's somewhat unavoidable, and also applies to _pad0; I'm not sure why
_pad1 needs to be different.

> Also, we prevent some crazy programmers from relying on that padding 
> byte being actually padding and not something else, even if it "must"
> be zero.

Right, and the kernel's zero check helps to prevent that.

> I've seen too much crazy stuff; programmers relying on
> undefined behavior just because "we don't plan to move from C++17 to
> C++20, so this is safe".

... sure, but I don't think hiding implementation details will fix that.

Regards,


Jeremy

