Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA852B7210
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 00:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727494AbgKQXSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 18:18:13 -0500
Received: from esa3.mentor.iphmx.com ([68.232.137.180]:41688 "EHLO
        esa3.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgKQXSN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 18:18:13 -0500
X-Greylist: delayed 426 seconds by postgrey-1.27 at vger.kernel.org; Tue, 17 Nov 2020 18:18:13 EST
IronPort-SDR: XHldiiZRA+30BzsH+EHXYDSI7AQ3fshp6mNDMQbI+yo2vS/aYmcBE5gjuaGhaNSPi2G8GVHENK
 umaeu1/bCktJkKyRJgWOHDP1I8ycszoI3iHHNEJgWaZJ7q3/iYg1SdMKnQGdYwgpC4tvQS08y9
 GlcfZNuPvY2dApWf7yhIQRsKdkVBrdw7sxSd9Ju0SHnFJz1dpA7S8UcX2zIufQ4CzeXALbQguk
 gIfp2etdVgHSzvgnffjQ8qC7MtDGr+kGDlshikNQXZtOY7dSvlmiRY/QFvGsQb+qiPEqLhaymr
 aGg=
X-IronPort-AV: E=Sophos;i="5.77,486,1596528000"; 
   d="scan'208";a="55169462"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 17 Nov 2020 15:11:06 -0800
IronPort-SDR: nAEuN5QYTj9l7XbSlzTwhB9wpenv4sxTfCuNsINMN7bvK5wWzlwMEyLK1G4lqREbV1rwWGq0Uf
 tsUy+/db311qXrE3oNpm6fB0nTlR7EARERohIBaE5QEEPBKsihw75o2M7FWcblo+i7iJ0GCrDq
 V19hWcpRmJpSJKNM1vn8sGdjWDESpiYFfW92kLP8HSZKxxa/IEV3GK/nvnPSCxeyaaC8B0NaEP
 5IB/6sIMfTaTPHidbAs791I4xftD6hL+2nWhSrK5QrUDPfh7Mx3dHWHGbSnuxzOuv/uHDxkSot
 Nwc=
Date:   Tue, 17 Nov 2020 23:11:00 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     <fweimer@redhat.com>, <gcc@gcc.gnu.org>,
        <ville.voutilainen@gmail.com>, <linux-man@vger.kernel.org>,
        <rusty@rustcorp.com.au>, <linux-kernel@vger.kernel.org>,
        <libstdc++@gcc.gnu.org>, <libc-coord@lists.openwall.com>,
        <libc-alpha@sourceware.org>, <jwakely@redhat.com>, <enh@google.com>
Subject: Re: Ping(3): [PATCH v4] <sys/param.h>: Add nitems()
In-Reply-To: <8fb9c722-4190-6115-1d60-d94f8db7f749@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2011172308010.28480@digraph.polyomino.org.uk>
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com> <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com> <alpine.DEB.2.22.394.2011172242582.28480@digraph.polyomino.org.uk> <8fb9c722-4190-6115-1d60-d94f8db7f749@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-05.mgc.mentorg.com (139.181.222.5) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 17 Nov 2020, Alejandro Colomar via Libc-alpha wrote:

> Nice!
> Please update me on any feedback you receive.

Apparently the author is planning new versions of those papers so WG14 
discussion is waiting for those.

> So glibc will basically hold this patch
> at least until the WG answers to that, right?

I think that whether C2x gets an array-size feature of some kind is 
relevant to whether such a feature goes in glibc and what it looks like in 
glibc, but the fact that it will be considered in WG14 doesn't rule out 
glibc considering such a feature without waiting for WG14.

-- 
Joseph S. Myers
joseph@codesourcery.com
