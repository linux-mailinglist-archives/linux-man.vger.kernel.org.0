Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 839D4741785
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 19:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231854AbjF1Rxd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 13:53:33 -0400
Received: from brightrain.aerifal.cx ([216.12.86.13]:53536 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229763AbjF1Rxa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 13:53:30 -0400
Date:   Wed, 28 Jun 2023 13:53:30 -0400
From:   Rich Felker <dalias@libc.org>
To:     linux-man@vger.kernel.org
Cc:     musl@lists.openwall.com, libc-alpha@sourceware.org,
        libc-coord@lists.openwall.com
Subject: regression in man pages for interfaces using loff_t
Message-ID: <20230628175329.GA16113@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://github.com/mkerrisk/man-pages/commit/9bebb17e5b5794e495ba8e6c0a75266c65b9d2d7
https://github.com/mkerrisk/man-pages/commit/76c5631fb442f1c7c0b5ec8c653e84f2997249c8

and perhaps related changes for other functions introduced a breaking
change in the documentation for the way applications should call libc
functions for Linux-specific APIs that always take a 64-bit file
offset. The type for this is loff_t, not off64_t, which is an LFS64
type which only exists when LFS64 is supported and enabled.

Applications following the documentation change will not compile on
musl libc, and in theory would not compile even on glibc if it
followed reasonable policy for exposing visibility of off64_t, though
it might happen to be that on glibc, all feature profiles that expose
the relevant functions also expose LFS64.

The whole reason loff_t exists is to avoid this problem and make a
type that's "always full width offset, regardless of _FILE_OFFSET_BITS
or _LARGEFILE64_SOURCE" to match with the kernel expectation for these
interfaces.

For an example of the breakage resulting from following the change in
documentation, see:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110462

Please revert this.

Rich
