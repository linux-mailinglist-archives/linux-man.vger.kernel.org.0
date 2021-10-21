Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DDB7436932
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 19:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbhJURmb convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 21 Oct 2021 13:42:31 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:50438 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231905AbhJURmb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 13:42:31 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 0332916005E;
        Thu, 21 Oct 2021 10:40:14 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id lK1y2fEZWI1g; Thu, 21 Oct 2021 10:40:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 48E7A1600AE;
        Thu, 21 Oct 2021 10:40:13 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id iCn__cTBLYc6; Thu, 21 Oct 2021 10:40:13 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 15DF116005E;
        Thu, 21 Oct 2021 10:40:13 -0700 (PDT)
Message-ID: <d015464c-714d-771e-6829-c1032efab15d@cs.ucla.edu>
Date:   Thu, 21 Oct 2021 10:40:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: AW: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add
 [[gnu::nonnull]] to <time.h> prototypes
Content-Language: en-US
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Walter Harms <wharms@bfs.de>,
        Jens Gustedt <jens.gustedt@loria.fr>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Glibc <libc-alpha@sourceware.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211020202241.171180-2-alx.manpages@gmail.com>
 <e42cc9f415ea4b069dd5cfdee04e3e87@bfs.de>
 <35ae1737-f167-e611-c5e0-26ed3e54618a@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <35ae1737-f167-e611-c5e0-26ed3e54618a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/21/21 02:01, Alejandro Colomar (man-pages) via Libc-alpha wrote:
> 10 EXAMPLE    In the declaration for an entity, attributes appertaining 
> to that entity may appear at the start of the declarationand after the 
> identifier for that declaration.
> 
>      [[deprecated]] void f [[deprecated]] (void); // valid
> 
> Forward references: declarators (6.7.6), enumeration specifiers 
> (6.7.2.2), initialization (6.7.9), typenames (6.7.7), type qualifiers 
> (6.7.3).
> ]
> 
> So we could put it in any of those 2 positions.  Is there any reason 
> that one is better (more readable / less ambiguous) than the other?  We 
> should decide very carefully which one to use.

"f (...)" is hardwired into people's brains for function calls, and we 
shouldn't put anything between the "f" and the "(" to confuse this 
longstanding syntactic pattern. So this stuff should go at the start of 
the declaration, not after the identifier.
