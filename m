Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 577DB7418CC
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 21:19:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230361AbjF1TTv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 15:19:51 -0400
Received: from port70.net ([81.7.13.123]:37108 "EHLO port70.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232109AbjF1TTt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 28 Jun 2023 15:19:49 -0400
Received: by port70.net (Postfix, from userid 1002)
        id E2FD8ABEC0C7; Wed, 28 Jun 2023 21:19:47 +0200 (CEST)
Date:   Wed, 28 Jun 2023 21:19:47 +0200
From:   Szabolcs Nagy <nsz@port70.net>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org,
        libc-coord@lists.openwall.com
Subject: Re: regression in man pages for interfaces using loff_t
Message-ID: <20230628191947.GE3630668@port70.net>
Mail-Followup-To: Paul Eggert <eggert@cs.ucla.edu>,
        Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org,
        libc-coord@lists.openwall.com
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Paul Eggert <eggert@cs.ucla.edu> [2023-06-28 11:21:39 -0700]:

> On 2023-06-28 10:53, Rich Felker wrote:
> > The whole reason loff_t exists is to avoid this problem and make a
> > type that's "always full width offset, regardless of _FILE_OFFSET_BITS
> > or _LARGEFILE64_SOURCE" to match with the kernel expectation for these
> > interfaces.
> 
> Why can't off64_t be that type, as it is in glibc? I'm not seeing why we
> need two names for the same type.

umm because off64_t is not a defined type?

https://godbolt.org/z/9sf6n8Y3e

