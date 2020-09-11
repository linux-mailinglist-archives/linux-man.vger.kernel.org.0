Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 881B6265C6C
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725792AbgIKJX1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725764AbgIKJX1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:23:27 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7877C061573;
        Fri, 11 Sep 2020 02:23:26 -0700 (PDT)
Received: from localhost (unknown [IPv6:2001:4d48:ad58:9a10:ebf2:10f4:8670:18b5])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: smcv)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BFC0129BDF4;
        Fri, 11 Sep 2020 10:23:22 +0100 (BST)
Date:   Fri, 11 Sep 2020 10:23:20 +0100
From:   Simon McVittie <smcv@collabora.com>
To:     Stephen Smalley <stephen.smalley.work@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, selinux@vger.kernel.org
Subject: Re: [PATCH] socket.7,unix.7: add initial description for SO_PEERSEC
Message-ID: <20200911092320.GA1302235@horizon>
References: <20200910210059.34759-1-stephen.smalley.work@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200910210059.34759-1-stephen.smalley.work@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 10 Sep 2020 at 17:00:59 -0400, Stephen Smalley wrote:
> +For SELinux, the security context string is a null-terminated
> +string and the returned length includes the terminating null.
> +Other security modules may differ.

We discussed this interface a while ago when I was setting up dbus to
use SO_PEERSEC. It would be really useful if the man page documented
what callers can and can't expect from an unknown LSM, so that the
author of the next D-Bus-equivalent doesn't have to turn up on the
linux-security-module list and annoy maintainers like I did.

Perhaps something like this?

    The security context string may include a terminating null character
    in the returned length, but is not guaranteed to do so:
    a security context "foo" might be represented as either {'f','o','o'}
    of length 3 or {'f','o','o','\0'} of length 4, which are considered
    to be interchangeable. It is printable, does not contain non-terminating
    null characters, and is in an unspecified encoding (in particular it is
    not guaranteed to be ASCII or UTF-8).

Thanks,
    smcv
