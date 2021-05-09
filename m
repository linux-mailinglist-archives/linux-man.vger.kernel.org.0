Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC0FD3777C3
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 19:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbhEIRVr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 13:21:47 -0400
Received: from mail.ispras.ru ([83.149.199.84]:53668 "EHLO mail.ispras.ru"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229662AbhEIRVr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 9 May 2021 13:21:47 -0400
Received: from monopod.intra.ispras.ru (unknown [10.10.3.121])
        by mail.ispras.ru (Postfix) with ESMTPS id 558F340D3BFF;
        Sun,  9 May 2021 17:20:40 +0000 (UTC)
Date:   Sun, 9 May 2021 20:20:40 +0300 (MSK)
From:   Alexander Monakov <amonakov@ispras.ru>
To:     mtk.manpages@gmail.com
cc:     Dave Chupreev <cdn.dev@yandex.ru>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Roland McGrath <roland@hack.frob.com>
Subject: Re: Bug reporting
In-Reply-To: <CAKgNAkgbJBM5yiOtq9X-Ber+ns_8xcp-8jr7rSYLanz+HnQWXw@mail.gmail.com>
Message-ID: <alpine.LNX.2.20.13.2105092008010.5297@monopod.intra.ispras.ru>
References: <1621111620246345@mail.yandex.ru> <9068beb3-70a7-ad96-e260-f53a886d622c@gmail.com> <1492841620310804@mail.yandex.ru> <CAKgNAkgbJBM5yiOtq9X-Ber+ns_8xcp-8jr7rSYLanz+HnQWXw@mail.gmail.com>
User-Agent: Alpine 2.20.13 (LNX 116 2015-12-14)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On Mon, 10 May 2021, Michael Kerrisk (man-pages) via Libc-alpha wrote:

> Hello,
> 
> On Fri, 7 May 2021 at 02:21, Dave Chupreev <cdn.dev@yandex.ru> wrote:
> >
> > Well I see, I've tried on Linux and yea I didn't find any option to insert multiple definitions.
> 
> I think the only way to insert multiple definitions is by direct
> manipulation of 'extern char **environ'.

You can cause a program to start with multiple definitions, because it is
possible to pass arbitrarily funny stuff as 'envp' argument to execve, such as:

- duplicated entries
- entries without a '='
- entries starting with '='
- empty strings
- "2 x 2 = 4"

All of that will be present in the exec'd program's environment array.

Alexander
