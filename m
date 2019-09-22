Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50DFABAC15
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 01:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389039AbfIVXLQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Sep 2019 19:11:16 -0400
Received: from gateway22.websitewelcome.com ([192.185.47.168]:14993 "EHLO
        gateway22.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388978AbfIVXLQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Sep 2019 19:11:16 -0400
X-Greylist: delayed 1219 seconds by postgrey-1.27 at vger.kernel.org; Sun, 22 Sep 2019 19:11:15 EDT
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway22.websitewelcome.com (Postfix) with ESMTP id 8496E228E2
        for <linux-man@vger.kernel.org>; Sun, 22 Sep 2019 17:50:55 -0500 (CDT)
Received: from gator3203.hostgator.com ([198.57.247.167])
        by cmsmtp with SMTP
        id CAgxiczWx90onCAgxiK5N9; Sun, 22 Sep 2019 17:50:55 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rsiny.com;
         s=default; h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
        In-Reply-To:Date:Cc:To:Reply-To:From:Subject:Message-ID:Sender:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=3BH2YM0XBP8knV0u2IdiWXrLrL1PlZnQ9apzBm9yCnQ=; b=rHJ8eBWgj3M7ryrEc/X+B4dgzN
        9il1gP80uBr7KMx2wjixCcRxpKPcvIGCTtZSobf2UMoWZ7F0eP5WVDHjBfPrcbvLJpadr8fCqb9sG
        fipFNXvFpLQzv8aljehQqFUWYJCdFLEMcJ+hekNedMkgQPMM2r06AQbubWyQHjKL+FWB/xAAUFVzb
        HijMpGaTAUNVw76YgIrvPrjtKVjlJ9VHY2tcii8kymfoHcp56JqtTiXH04zZsnfnmBq2iktH+qDUZ
        3U5kpEt4A58CK6tKGKqXM8ai8MI8PNbzkH2P4CRV7AE5XR5ggnQCQYslO0EoAtZem+LFJGPwynse5
        m7ihVkdw==;
Received: from pool-100-37-189-229.nycmny.fios.verizon.net ([100.37.189.229]:57534 helo=[192.168.1.4])
        by gator3203.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.92)
        (envelope-from <rstanley@rsiny.com>)
        id 1iCAgw-003dGL-QA; Sun, 22 Sep 2019 17:50:54 -0500
Message-ID: <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
Subject: Re: Man page pre & post operators error
From:   Rick Stanley <rstanley@rsiny.com>
Reply-To: rstanley@rsiny.com
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Date:   Sun, 22 Sep 2019 18:50:53 -0400
In-Reply-To: <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
         <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
Organization: RSI
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3203.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - rsiny.com
X-BWhitelist: no
X-Source-IP: 100.37.189.229
X-Source-L: No
X-Exim-ID: 1iCAgw-003dGL-QA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-100-37-189-229.nycmny.fios.verizon.net ([192.168.1.4]) [100.37.189.229]:57534
X-Source-Auth: rstanley@rsiny.com
X-Email-Count: 1
X-Source-Cap: cnN0YW5sZXk7cnN0YW5sZXk7Z2F0b3IzMjAzLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you for the update.

I am sorry you have interpreted my request as a demand.  It was not
meant or presented as such.

Cheers!

Rick Stanley

On Sun, 2019-09-22 at 23:01 +0200, Michael Kerrisk (man-pages) wrote:
> Hello Rick,
> 
> On 9/20/19 4:19 PM, Rick Stanley wrote:
> > Greetings!
> > 
> > In the man pages, both in Linux and online in multiple sites, the
> > pre
> > and post operators are listed as equal precedence.  Two different
> > web
> > sites list them on different levels:
> > 
> > http://man7.org/linux/man-pages/man7/precedence.7.html
> > 	Level 1
> > 
> > https://linux.die.net/man/7/operator
> > 	Level 2
> > 
> > Linux `man operator` list them on the second level, with right to
> > left
> > associativity:
> > 
> >        Operator                            Associativity
> >        () [] -> .                          left to right
> >        ! ~ ++ -- + - (type) * & sizeof     right to left
> >        ...
> > 
> > Section "A.2.1 Expressions" of both the C99 & C11 C Draft
> > Standards,
> > list them on different levels:
> > 
> > 	postfix ++ & -- on level 1, with left to right associativity
> > 
> > 	prefix ++ & -- on level 2, with right to left associativity
> 
> So, Harbison & Steele also seems to agree here. Things changed since
> K&R! I've fixed the page:
> 
>        Operator                            Associativity   Notes
>        () [] -> . ++ --                    left to right   [1]
>        ! ~ ++ -- + - (type) * & sizeof     right to left   [2]
>        [...]
> 
>        The following notes provide further information to
> the  above  ta‐
>        ble:
> 
>        [1] The ++ and -- operators at this precedence level are the
> post‐
>            fix flavors of the operators.
>        [2] The ++ and -- operators at this precedence level are
> the  pre‐
>            fix flavors of the operators.
> 
> > Please review this and all the operator precedence and
> > associativity in
> > the current man page "man operator" against the official C99 & C11
> > Standards documents, plus the current working draft for the next
> > version of the Standard.
> 
> You are free to do so. But please don't demand that someone else
> does so, even if you say "please".
> 
> Thank you for the bug report!
> 
> Cheers,
> 
> Michael
> 
-- 
RSI (Rick Stanley, Inc.)
(917) 822-7771
www.rsiny.com
Computer Systems Consulting
Linux & Open Source Specialists

