Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41FD92B71D2
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 23:52:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729226AbgKQWvs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 17:51:48 -0500
Received: from esa2.mentor.iphmx.com ([68.232.141.98]:35923 "EHLO
        esa2.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728762AbgKQWvs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 17:51:48 -0500
X-Greylist: delayed 427 seconds by postgrey-1.27 at vger.kernel.org; Tue, 17 Nov 2020 17:51:48 EST
IronPort-SDR: jXIiX3rjnmfGtlQJmKR9zBILURxyn/fFmxg5e34zOwj4etLwdObxdagXpPc3daZDmOiPYImiOr
 v85noSsdp3V4QARzSlXiLcm664f9TQUlMc8NUJZs/SmeakiLBDs7I/FzGPJX1ilzAu84w/KhjC
 P9XTEJPdGo3SdOCi5Etm3eb8DXfEJSeLWS+ulO7jw3NN+2M5MzyyMGoNDzAZy5d7IuWP/0Ph3F
 0AcN+199pc1AbDd4fUxF9hmPPYYjaK3yeYPAJ6SBs9a/VO9+1nTp/CkrxZUMTlCL1WNL05sbdH
 gzQ=
X-IronPort-AV: E=Sophos;i="5.77,486,1596528000"; 
   d="scan'208";a="55200124"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 17 Nov 2020 14:44:39 -0800
IronPort-SDR: fGx7Oxnql/JMscYnW6rtjK+mFpGcUb1HfGd0KOOmonwNzCh/zKZl7H/UD9UrtcvYmLejENagyH
 JcvebM0glinD8n/cofuKvBdYPw6aql1i1Y81ppLQcAU1+N7p8JgneSJFZxv5LJC4WIvRLyn9r/
 ct8ygFHFGt3s0Li7rgIrf+90G0KjKHCPm+mYF03hZIwDSnaMX7VCGMZk9gwAX0OZSJ2NKMv0IB
 KIUv64ltwcIhZ6NBQPIJjKAmq+GEx5ax7Sx/BCXWrWhDleYM8XUMzLKZGChjcKdPDY4VijlLf3
 xPg=
Date:   Tue, 17 Nov 2020 22:44:32 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     <libc-alpha@sourceware.org>, <libc-coord@lists.openwall.com>,
        <fweimer@redhat.com>, <gcc@gcc.gnu.org>,
        <ville.voutilainen@gmail.com>, <linux-man@vger.kernel.org>,
        <rusty@rustcorp.com.au>, <linux-kernel@vger.kernel.org>,
        <libstdc++@gcc.gnu.org>, <jwakely@redhat.com>, <enh@google.com>
Subject: Re: Ping(3): [PATCH v4] <sys/param.h>: Add nitems()
In-Reply-To: <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2011172242582.28480@digraph.polyomino.org.uk>
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com> <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-08.mgc.mentorg.com (139.181.222.8) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I've asked the WG14 reflector why N2529 (and N2530, though that one's not 
relevant to this feature) doesn't seem to have made it onto a meeting 
agenda yet, when there have been two WG14 meetings since that proposal was 
made and a third one coming up.

-- 
Joseph S. Myers
joseph@codesourcery.com
