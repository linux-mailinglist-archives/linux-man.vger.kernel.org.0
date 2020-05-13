Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD191D0F2C
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2020 12:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732713AbgEMJqq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 May 2020 05:46:46 -0400
Received: from smtprelay06.ispgateway.de ([80.67.31.101]:27255 "EHLO
        smtprelay06.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732709AbgEMJqq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 May 2020 05:46:46 -0400
X-Greylist: delayed 767 seconds by postgrey-1.27 at vger.kernel.org; Wed, 13 May 2020 05:46:45 EDT
Received: from [77.20.249.160] (helo=[192.168.0.28])
        by smtprelay06.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1jYnm0-0006V9-EI; Wed, 13 May 2020 11:33:56 +0200
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Checking on Bug 206693 - hier is outdated
Message-ID: <fb7372eb-98bd-b659-bd1d-a0ecb623a4b8@deloquencia.de>
Date:   Wed, 13 May 2020 11:33:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hello,


I happen to stumble upon "Bug 206693 - hier is outdated" [1] while 
looking for (more) intriguing Open Source and Linux issues to look into.

Checking lore.kernel.org [2] and GIT Repository [3] it looks there 
haven't been provided any patches. Did anyone start to solve this issue?

When not I'd like to take a look, compare FHS 2.3 with 3.0 [4] and 
provide a patch.

I'll follow the page "patches for man-pages" [5] before submitting a 
patch. Is there anything else to be considered?



Thanks for your time and efforts :)
Thomas


Links:

[1]: https://bugzilla.kernel.org/show_bug.cgi?id=206693
[2]: https://lore.kernel.org/linux-man/?q=hier.7
[3]: 
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/man7/hier.7
[4]: https://refspecs.linuxfoundation.org/fhs.shtml
[5]: https://www.kernel.org/doc/man-pages/patches.html
