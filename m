Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED03F9176B
	for <lists+linux-man@lfdr.de>; Sun, 18 Aug 2019 16:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726478AbfHRO6e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Aug 2019 10:58:34 -0400
Received: from jojo.truelite.it ([144.76.21.38]:57582 "EHLO jojo.truelite.it"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726115AbfHRO6e (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 18 Aug 2019 10:58:34 -0400
X-Greylist: delayed 598 seconds by postgrey-1.27 at vger.kernel.org; Sun, 18 Aug 2019 10:58:33 EDT
Received: from localhost (localhost.localdomain [127.0.0.1])
        by jojo.truelite.it (Postfix) with ESMTP id E3CA5C1B2B;
        Sun, 18 Aug 2019 16:48:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at truelite.it
Received: from jojo.truelite.it ([127.0.0.1])
        by localhost (jojo.truelite.it [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 0-gt8f5n_ZFe; Sun, 18 Aug 2019 16:48:30 +0200 (CEST)
Received: from [192.168.1.154] (unknown [151.61.13.47])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by jojo.truelite.it (Postfix) with ESMTPSA id 28143C1B0E;
        Sun, 18 Aug 2019 16:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=truelite.it; s=mail;
        t=1566139710; bh=bHK97asxV47cEdVTssQYXmny3JDrHz1IYfuPdUZoSJM=;
        h=To:Cc:From:Subject:Date:From;
        b=l6tq27hGzQBjFmFvuGXfvV4Ty4Rd2rgT0c32VisLdOD28G73RrzReb2wf8bJcUVQE
         /FUQc89XNRMnvCwdgSqa+bO7uxDXaB3ncc5T2mlm1xZIxiX+4F2r4Set/j2cuzlXJI
         TocxKwjhmGHgJg3tIgpJBhy+ypkRZFhi9Sep57XnRt+vVyqgAx/LesiXhsq88IxtgM
         NAO0qH2TD9Yj1vLM9aUC3wl00nwTg18ZhtWW//CujSUkY0nZhhiBiv4w+ETjaA3aN1
         BsMor5WdTiV9zTQdHzEwn/bIU7FJTX49dgR+3XmkhYeQAZ2IFVQ4zZHRYC7T/rePJS
         UL36l4QgNS4JA==
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Simone Piccardi <piccardi@truelite.it>
Subject: statx man page
Message-ID: <9ca3a9eb-47d5-26ed-f454-6b6c758d406b@truelite.it>
Date:   Sun, 18 Aug 2019 16:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi,

I was looking at version from 2017-09-15 but it's the same on:
http://man7.org/linux/man-pages/man2/statx.2.html (2019-03-06)

There is reported (about the mask argument) after the list of constats:

 > Note that the kernel does not reject values in mask other than the
 > above.  Instead, it simply informs the caller which values are sup‐
 > ported by this kernel and filesystem via the statx.stx_mask field.

But as reported in the error values, there can be EINVAL if mask has a 
reserved valued, and I found a check against STATX__RESERVED in 
fs/stat.c for this. So if you use a that bit (0x80000000U) the kernel 
will reject the value.

Probably is better to say that the kernel do not enforce the use of only 
the listed values, but there are anyway reserved values so and so you 
cannot put whatever you want on mask (that apply to more values than 
UINT_MAX).

Regards
Simone
