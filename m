Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C24A6457885
	for <lists+linux-man@lfdr.de>; Fri, 19 Nov 2021 23:08:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232960AbhKSWLs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Nov 2021 17:11:48 -0500
Received: from brightrain.aerifal.cx ([216.12.86.13]:60448 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230141AbhKSWLr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Nov 2021 17:11:47 -0500
X-Greylist: delayed 914 seconds by postgrey-1.27 at vger.kernel.org; Fri, 19 Nov 2021 17:11:47 EST
Date:   Fri, 19 Nov 2021 16:53:30 -0500
From:   Rich Felker <dalias@libc.org>
To:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     musl@lists.openwall.com
Subject: getsubopt error behavior documentation in man page
Message-ID: <20211119215327.GY7074@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The getsubopt man page documents the return value on error as:

    Otherwise, -1 is returned and *valuep is the entire name[=value]
    string.

without mentioning that this is a nonstandard extension. A couple
times now this has been raised against musl libc, which does not
support the extension, and we looked into supporting it, but it looks
like it violates our criteria for not supporting extensions where
historical implementations have conflicting behavior, which POSIX's
APPLICATION USAGE notes claim:

    The value of *valuep when getsubopt() returns -1 is unspecified.
    Historical implementations provide various incompatible extensions
    to allow an application to access the suboption text that was not
    found in the keylistp array.

Source: https://pubs.opengroup.org/onlinepubs/9699919799/functions/getsubopt.html

It's also not entirely clear that presence of the extension conforms
to the specified behavior.

Perhaps the text could be amended to something like:

    Otherwise, -1 is returned. In this case, the GNU C Library stores
    a pointer to the entire name[=value] string in *valuep as an
    extension; other implementations may differ in their behavior.

Rich
