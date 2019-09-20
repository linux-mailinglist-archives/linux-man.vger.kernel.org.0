Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F2110B934E
	for <lists+linux-man@lfdr.de>; Fri, 20 Sep 2019 16:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393076AbfITOkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 10:40:22 -0400
Received: from gateway34.websitewelcome.com ([192.185.150.107]:36433 "EHLO
        gateway34.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2393071AbfITOkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 10:40:21 -0400
X-Greylist: delayed 1266 seconds by postgrey-1.27 at vger.kernel.org; Fri, 20 Sep 2019 10:40:21 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway34.websitewelcome.com (Postfix) with ESMTP id AC9ED81549
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 09:19:14 -0500 (CDT)
Received: from gator3203.hostgator.com ([198.57.247.167])
        by cmsmtp with SMTP
        id BJkgiDAHUdnCeBJkgiWWNe; Fri, 20 Sep 2019 09:19:14 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rsiny.com;
         s=default; h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:Cc:To:
        Reply-To:From:Subject:Message-ID:Sender:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=Ny4Dw/aO8fgO2eBszrMSrGnJRDIEi2nJXOZJlEBo6KI=; b=kFFS3NusUBvgeUFA6gVwu890ZY
        mOxFxRquje3rRXXaq3+F6MAc9a2Ag+UlkDrscrTBmvaSmSGpeQPCdedxMFceDhSgS19vvYFpYgCK8
        ZOgnqEL6zaQB+m3mw6Yo8y2sc7UKziQFHSfNNwPeWVJEpRt6V8EHjzhpPSR+9ySryNyrWzmOFje+g
        epy+GOQ7OiZ8zavi7Weo6fwEKkVNH3XMwiWFAiOIqBa6YvmVtaeob+yPRXUbBYe2Oj2IValVZk13b
        fXwMzZLiahfZ8vZeFowcG4uWlXWeDuR6Ct50gqzPP9IUGQtClaXZqWCfMchxDwTgHA/SCppyP/1O6
        HYhiHxnA==;
Received: from pool-100-37-189-229.nycmny.fios.verizon.net ([100.37.189.229]:58168 helo=[192.168.1.4])
        by gator3203.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.92)
        (envelope-from <rstanley@rsiny.com>)
        id 1iBJkf-0023wh-US; Fri, 20 Sep 2019 09:19:14 -0500
Message-ID: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
Subject: Man page pre & post operators error
From:   Rick Stanley <rstanley@rsiny.com>
Reply-To: rstanley@rsiny.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Fri, 20 Sep 2019 10:19:12 -0400
Organization: RSI
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3203.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - rsiny.com
X-BWhitelist: no
X-Source-IP: 100.37.189.229
X-Source-L: No
X-Exim-ID: 1iBJkf-0023wh-US
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-100-37-189-229.nycmny.fios.verizon.net ([192.168.1.4]) [100.37.189.229]:58168
X-Source-Auth: rstanley@rsiny.com
X-Email-Count: 1
X-Source-Cap: cnN0YW5sZXk7cnN0YW5sZXk7Z2F0b3IzMjAzLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Greetings!

In the man pages, both in Linux and online in multiple sites, the pre
and post operators are listed as equal precedence.  Two different web
sites list them on different levels:

http://man7.org/linux/man-pages/man7/precedence.7.html
	Level 1

https://linux.die.net/man/7/operator
	Level 2

Linux `man operator` list them on the second level, with right to left
associativity:

       Operator                            Associativity
       () [] -> .                          left to right
       ! ~ ++ -- + - (type) * & sizeof     right to left
       ...

Section "A.2.1 Expressions" of both the C99 & C11 C Draft Standards,
list them on different levels:

	postfix ++ & -- on level 1, with left to right associativity

	prefix ++ & -- on level 2, with right to left associativity

Please review this and all the operator precedence and associativity in
the current man page "man operator" against the official C99 & C11
Standards documents, plus the current working draft for the next
version of the Standard.

Please correct me if I am mistaken.

References:

Debian Linus Testing, Debian 5.2.9-2 (2019-08-21) x86_64 GNU/Linux

Thank you!

Cheers!

Rick Stanley


-- 
RSI (Rick Stanley, Inc.)
(917) 822-7771
www.rsiny.com
Computer Systems Consulting
Linux & Open Source Specialists

