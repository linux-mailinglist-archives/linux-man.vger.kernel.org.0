Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACF4C429952
	for <lists+linux-man@lfdr.de>; Tue, 12 Oct 2021 00:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235494AbhJKWID (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 18:08:03 -0400
Received: from esa3.mentor.iphmx.com ([68.232.137.180]:61657 "EHLO
        esa3.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235484AbhJKWIC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 18:08:02 -0400
IronPort-SDR: U0o8ivc/fDwv2fHTF6iVbUrBJHiwFYtAStygWaBYpv8oBJOdyfzydtw11uuTs4OOcwwmuF2FDY
 rvb0I5qehwz+6J76dJF0vv0lDzrGhd4f+3BbWJa4wUyPlK7gxtu8ip0B9f1ytiXspCtvIm1F1S
 B6FbmYP1PAfQ286XTyaryEsvbxsU0dTfvcEID4PdI2N1EaUXUyg4uVkTmLbssa66mJAdboQJJS
 pfO1ZLMYphRl+1OyAK/FYNy3qB0a/RpSLl6rn/MlXxdte948FASFolwuokKD6b4IXAkhyjbKDu
 XzYpNoHIz+mvsEhVo6cHZfaG
X-IronPort-AV: E=Sophos;i="5.85,365,1624348800"; 
   d="scan'208";a="66911524"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 11 Oct 2021 14:06:02 -0800
IronPort-SDR: ESO+7lai8D0hY/a3Dy79/fed1noKqpH3UIBtwvJC3iCMH13Jt+MvH9Bq/0PVShPenW8FMHj4mv
 sXTBKaFZI56KritK+NrUYSY3MKJ00LEjKUgQIf383pdUxjp3s3GfbymoC+Gm/BlSuHF7QBu5uu
 y4h1bTTWeJBvXQ+NPoik86CQYoh0ThrO49cRvWsSNwpx8Q5mlbbwAVWlAUPUZv2VuZA/X2CAE1
 VLDXfqA/fgdpPpjnm+2n/6DuL3ZCaL3VKHmXWtOz1BeBmdpOvns6klwfjUicIVEebLweltWkVR
 S6M=
Date:   Mon, 11 Oct 2021 22:05:55 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Paul Eggert <eggert@cs.ucla.edu>
CC:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>,
        <libc-alpha@sourceware.org>
Subject: Re: [PATCH] ctime.3: mktime() may modify tm_hour due to tm_isdst
In-Reply-To: <6ccf0867-33fe-53f0-0bb9-bf25d09aabb6@cs.ucla.edu>
Message-ID: <alpine.DEB.2.22.394.2110112204030.1524986@digraph.polyomino.org.uk>
References: <20211010105245.53896-1-alx.manpages@gmail.com> <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com> <6ccf0867-33fe-53f0-0bb9-bf25d09aabb6@cs.ucla.edu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed;
        boundary="-1152306461-2123193157-1633989955=:1524986"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---1152306461-2123193157-1633989955=:1524986
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8BIT

On Mon, 11 Oct 2021, Paul Eggert wrote:

> On 10/11/21 3:27 AM, Alejandro Colomar (man-pages) wrote:
> > timegm(3) says that you should "avoid their use" because timegm(3) is a
> > Linux and BSD extension, but its use can NOT be avoided (well, it can, but
> > if not done very carefully, you are likely to introduce bugs due to
> > setenv(3) not being thread-safe), so I'd remove that sentence from
> > timegm(3).  I think it should be in POSIX.
> 
> No, NetBSD's mktime_z should be in POSIX, as it nicely generalizes both mktime
> and timegm.

Arguably ISO C (there's no obvious dependence on any concepts that are in 
scope of POSIX but not of ISO C), but we're now past the deadline to 
request document numbers for proposals to C23 (and while there's a 
proposal to add timegm, there's no proposal to add functions using 
explicit time zones).

-- 
Joseph S. Myers
joseph@codesourcery.com
---1152306461-2123193157-1633989955=:1524986--
