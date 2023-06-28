Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D21F7418D6
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 21:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjF1T2g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 15:28:36 -0400
Received: from brightrain.aerifal.cx ([216.12.86.13]:53568 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjF1T2g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 15:28:36 -0400
Date:   Wed, 28 Jun 2023 15:28:36 -0400
From:   Rich Felker <dalias@libc.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org, libc-coord@lists.openwall.com
Subject: Re: [musl] Re: regression in man pages for interfaces using loff_t
Message-ID: <20230628192836.GV4163@brightrain.aerifal.cx>
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
User-Agent: Mutt/1.5.21 (2010-09-15)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Jun 28, 2023 at 11:21:39AM -0700, Paul Eggert wrote:
> On 2023-06-28 10:53, Rich Felker wrote:
> >The whole reason loff_t exists is to avoid this problem and make a
> >type that's "always full width offset, regardless of _FILE_OFFSET_BITS
> >or _LARGEFILE64_SOURCE" to match with the kernel expectation for these
> >interfaces.
> 
> Why can't off64_t be that type, as it is in glibc? I'm not seeing
> why we need two names for the same type.

And to clarify one thing: nothing glibc is doing is wrong. It's fine
for glibc to define the function using off64_t as long as glibc's
underlying definitions of off64_t and loff_t are the same type. This
still matches the published documentation that says loff_t.

I'm not asking for any change by glibc here, just a revert to the man
page change which put a glibc implementation-detail in place of the
equivalent prior-documented public interface.

Rich
