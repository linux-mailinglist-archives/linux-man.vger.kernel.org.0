Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4EF227AFCC
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 16:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgI1OP3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 10:15:29 -0400
Received: from foss.arm.com ([217.140.110.172]:52302 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726310AbgI1OP3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 28 Sep 2020 10:15:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B40AA1063;
        Mon, 28 Sep 2020 07:15:28 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8BEE3F73B;
        Mon, 28 Sep 2020 07:15:27 -0700 (PDT)
Date:   Mon, 28 Sep 2020 15:15:25 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
Message-ID: <20200928141524.GH6642@arm.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <20200928134122.GG6642@arm.com>
 <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
 <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 28, 2020 at 11:55:08PM +1000, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2020-09-28T15:48:14+0200, Alejandro Colomar wrote:
> > > Where does this arbitrary-looking list of headers come from?
> > 
> > There are two parts:  left to the ';', and right to the ';'.
> > 
> > Left: The canonical C standard header, and the canonical POSIX header,
> > in alphabetical order.
> > 
> > Right: All other headers that shall define the header, according to
> > either the C or the POSIX standards, in alphabetical order.

To clarify, does POSIX _guarantee_ that all of those headers define this
type?  (I admit I'm too lazy to search through the POSIX standard for an
answer to this).

If not, this list would serve only to legitimise bad habits and it may
be better to leave it out.


> That's not a bad scheme but it is not inferable from the current man
> page text; I almost commented on the inconsistency in one of my earlier
> messages but deemed it out of scope.  Please document it, perhaps in an
> introductory paragraph at the top of the Description section.

Ack, I think it would be better to state this explicity rather than
having some terse syntax that people need to understand.


IIUC, a program intended to be fully portable between C implementations
must include <stddef.h>, not rely on one of the others.

(In practice it seems reasonable to include any header that is specified
to declare types or function prototypes that themselves require a
definition of size_t, but this is awkward to describe, and not explicit
in the standard.)

[...]

Cheers
---Dave
