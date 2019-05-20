Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 151B023DEA
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2019 18:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389339AbfETQ66 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 May 2019 12:58:58 -0400
Received: from relay1.mentorg.com ([192.94.38.131]:45791 "EHLO
        relay1.mentorg.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388660AbfETQ66 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 May 2019 12:58:58 -0400
Received: from nat-ies.mentorg.com ([192.94.31.2] helo=svr-ies-mbx-01.mgc.mentorg.com)
        by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
        id 1hSlck-0003bY-Nj from joseph_myers@mentor.com ; Mon, 20 May 2019 09:58:54 -0700
Received: from digraph.polyomino.org.uk (137.202.0.90) by
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP Server
 (TLS) id 15.0.1320.4; Mon, 20 May 2019 17:58:51 +0100
Received: from jsm28 (helo=localhost)
        by digraph.polyomino.org.uk with local-esmtp (Exim 4.90_1)
        (envelope-from <joseph@codesourcery.com>)
        id 1hSlcg-0003cc-RG; Mon, 20 May 2019 16:58:50 +0000
Date:   Mon, 20 May 2019 16:58:50 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Carlos O'Donell <carlos@redhat.com>
CC:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
In-Reply-To: <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1905201651260.2935@digraph.polyomino.org.uk>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain> <8736liit24.fsf@oldenburg2.str.redhat.com> <20190513141746.mail6ny43wh4t5oj@localhost.localdomain> <87y335m6fq.fsf@oldenburg2.str.redhat.com> <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
 <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 17 May 2019, Carlos O'Donell wrote:

> On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
> > What would you prefer?  That the man page not document the bug at all?
> > Was it a mistake in your view to have added the information about the
> > bug to the man page in the first place?
> 
> I think having the glibc upstream version information is useful.

Likewise - if a bug is worth documenting there I think it's unavoidable 
that the version numbers describe when things changed in glibc upstream.

What's more of an issue is when the BUGS section gets out of date or the 
descriptions of the conditions for an issue are misleading.  pow(3) is a 
case in point; it says "On 64-bits" meaning "on systems using the generic 
implementation" (i.e., it's written from an assumption that x86_64 and 
i386 are the only architectures and that i386 is the default), and that 
issue was fixed in 2.28, while the "If x is negative" described there was 
both i386-specific (not mentioned as such) and fixed in 2.16.

-- 
Joseph S. Myers
joseph@codesourcery.com
