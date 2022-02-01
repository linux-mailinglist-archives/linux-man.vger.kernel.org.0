Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E65684A65B1
	for <lists+linux-man@lfdr.de>; Tue,  1 Feb 2022 21:32:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237143AbiBAUc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Feb 2022 15:32:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234508AbiBAUcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Feb 2022 15:32:25 -0500
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80090C061714
        for <linux-man@vger.kernel.org>; Tue,  1 Feb 2022 12:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=EmL4B2JU2XDOkgiIbS9iiyRmz0LOZu8/dshc/MXUFAM=; b=CODdsbncAziBHKrZLp7NFnO6Cw
        utO3JsKrYrvm/+FwBJybTCj4slGhm5SsN8b1o+qRqPq4fx8zHv6fi5Ash+tyqq7buD2o6cxo9/LWH
        +sYv3qJp0Ogjv2czQx8KzHRyxeyCxYy83Zta9GM9wcNayOHmxVZU4J2IumbrHly0PbLtEerHUzfou
        VpYg9A5bTsCpMehLtargn0f3yOUiO2GxoaUZQ/esChYbpQr55zPIrL6uNfkdnv3FERI8BWO94MxBZ
        M3xqejl7FV42EL/x5zT7OPbLr4WX0f09MPJL7lr/B4gGY8oGLnRfGetT0jaM0cv/r4Xw8Vgr9KRf8
        y3+hc8PA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
        id 1nEzp3-00D2t6-IG; Tue, 01 Feb 2022 20:32:17 +0000
Date:   Tue, 1 Feb 2022 20:32:17 +0000
From:   Matthew Wilcox <willy@infradead.org>
To:     Mathnerd314 <mathnerd314.gph@gmail.com>
Cc:     Dan Carpenter <dan.carpenter@oracle.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
Subject: Re: EINTR for fsync(2)
Message-ID: <YfmY0RMh/UN/rRGl@casper.infradead.org>
References: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
 <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com>
 <Yfh/E5i/oqhe6KsQ@casper.infradead.org>
 <CADVL9rEWuAyNtSOM2JWhPk7Q1D9pF0amTg09rYw0T1ZSXi5zYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADVL9rEWuAyNtSOM2JWhPk7Q1D9pF0amTg09rYw0T1ZSXi5zYg@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Feb 01, 2022 at 12:56:51PM -0700, Mathnerd314 wrote:
> On Mon, Jan 31, 2022 at 5:30 PM Matthew Wilcox <willy@infradead.org> wrote:
> > So while it's worth adding EINTR to the man page, I don't think it's
> > worth going through an exercise of trying to add every possible
> > errno to every syscall.
>
> It's true that POSIX's error list is purely a guideline. But that
> doesn't mean Linux can't specify the precise set of possible error
> codes. There are currently 133 error codes defined, across an equally
> large number of syscalls - coding defensively and handling every
> combination is impossible. Not to mention that the meaning of the
> error codes differs from syscall to syscall. But with precise
> information there are likely only 5-10 codes per syscall, so handling
> every error appropriately is feasible. So the information can be quite
> useful.

Ahahahaha.  For one, every filesystem gets to return its own errors.
So basically any syscall that takes an fd gets to return all the errors
that any of our 50+ filesystems decides to use.

Then there are the interposers.  Things like seccomp, Linux Security
Modules, and other such hooks which might return their own errors.

On top of that there's error injection, which might allow eBPF to
return any error that userspace has deemed appropriate from basically
any function.

Further, you generally don't execute syscalls.  You call glibc, which
might decide to return its own errors, not even bothering to call
the kernel.

But the real problem is that the kernel might decide to return new
errors at any time.  Just because you exhaustively handled every error
that could have occurred in 5.15 doesn't mean that there might not be
an error returned by 5.20.

This isn't even an Herculean task.  This is Sisyphean, and you'll
probably feel like Prometheus by the end of it.  I mean, you'd learn a
lot by attempting it, but you'd be better off picking a task that would
actually help people.
