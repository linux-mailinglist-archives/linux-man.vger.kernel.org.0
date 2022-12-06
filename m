Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8C9643B2A
	for <lists+linux-man@lfdr.de>; Tue,  6 Dec 2022 03:08:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233686AbiLFCI3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 21:08:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233748AbiLFCI2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 21:08:28 -0500
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5265EB7DA
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 18:08:27 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,220,1665475200"; 
   d="scan'208";a="91779716"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa1.mentor.iphmx.com with ESMTP; 05 Dec 2022 18:08:27 -0800
IronPort-SDR: zfQePd2vVI7sG0C0lCl4fOpfD4QuR+UUIGY/8VwQG1C+moIFmWRCwVhfsdYy7dVKMyvJhVJD0W
 lctvx1y8eLqb2PHPRs+CW35bvyzVBwoR/+qvym5FJRRAM95ewKOmOGe9iMryPyrl14b/D+rr8B
 /WZfWr7uQJCVOkZqSV21//MNOHNjZvnAiJKM3lNImt7qZQ7Bx/Lr4EB2XGyRUBE4yCD7r/BzIl
 UOdusWY0KoKyOa+Qt8xdcKx/ykYDTa3UdqHAuSRgVG0RiXst7nohWEWsWJ4lzs2ryeZ6tgJv4B
 /+U=
Date:   Tue, 6 Dec 2022 02:08:21 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
Message-ID: <e0908bff-3426-eeee-bdfe-2d3b684452c8@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com> <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at> <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com> <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com> <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com> <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de> <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com> <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com> <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com> <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com> <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-14.mgc.mentorg.com (139.181.222.14) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 3 Dec 2022, Alejandro Colomar via Gcc wrote:

> What do you think about it?  I'm not asking for your opinion about adding it
> to GCC, but rather for replacing the current '.' in the man-pages before I
> release later this month.  Do you think I should apply that change?

I think man pages should not use any novel syntax - even syntax newly 
added to the C standard or GCC, unless required to express the standard 
prototype for a function.  They should be written for maximal 
comprehensibility to C users in general, who are often behind on knowledge 
standard features let alone the more obscure extensions - and certainly 
don't know about random, highly speculative suggestions for possible 
features suggested in random mailing list threads.  So: don't use any 
invented syntax (even if you explain it somewhere in the man pages), don't 
use any syntax newly introduced in C23 unless strictly necessary and 
you're sure it's already extremely widely understood among C users, be 
wary of syntax introduced in C11.  If a new feature in this area were 
introduced in C29, waiting at least several years after that standard is 
released (*not* just after the feature gets added to a draft) to start 
using the new syntax in man pages would be a good idea.

-- 
Joseph S. Myers
joseph@codesourcery.com
