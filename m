Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CA467418BB
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 21:15:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbjF1TP3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 15:15:29 -0400
Received: from brightrain.aerifal.cx ([216.12.86.13]:53552 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232138AbjF1TPZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 15:15:25 -0400
Date:   Wed, 28 Jun 2023 15:15:26 -0400
From:   Rich Felker <dalias@libc.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org, libc-coord@lists.openwall.com
Subject: Re: regression in man pages for interfaces using loff_t
Message-ID: <20230628191525.GS20050@brightrain.aerifal.cx>
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

As for why off64_t is not an appropriate type, it's defined by and
associated with the LFS64 summit and the related intefaces, and
governed by them. Using it makes these interfaces non-standardizable,
because no standard is going to adopt a function whose public
interface depends on another optional thing they don't want to
mandate. This is exactly the problem why ISO C is stuck with the
broken and unusable fseek/ftell that take long, and hasn't adopted
fseeko/ftello from POSIX -- their public interfaces use the
POSIX-governed type off_t, and as such, ISO C adopting them without
adopting the whole POSIX off_t is out of the question.

As a particular practical concern, applications performing
configure-like tests may use the existence of an off64_t type to
conclude that the LFS64 API is supported on the system they're being
built on. This is not the case on musl (technically, it's still
supported at build-time with explicit -D_LARGEFILE64_SOURCE, but that
is slated for removal once known issues are fixed) and we don't want
to mislead applications that it is.

There's also the problem that off64_t is "exactly 64-bit" which makes
it unsuitable as an interface type for cross-platform functions where
one could imagine the native type being larger (rather horrifying but
possible). loff_t encodes no such assumption in its name or
specification; it's just "long offset" whatever that is, and an
implementation is free (as we do on musl) to just define it as off_t.

But more fundamentally, the problem here is that a documented
interface was just arbitrarily changed in an incompatible way, with no
process or accountability. The documented interface is what
applications are supposed to be writing to, and what alternate
implementations aiming to be compatible with applications using the
interfaces are supposed to match. Changing that out from under us
later is Not Nice.

Rich
