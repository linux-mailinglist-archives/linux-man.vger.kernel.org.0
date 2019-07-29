Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76C4E7938F
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 21:07:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728242AbfG2THs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 15:07:48 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:50322 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727987AbfG2THr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 15:07:47 -0400
Received: by mail-wm1-f65.google.com with SMTP id v15so54859182wml.0
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 12:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yo5q5RumZWvh9z1qy9ELX4UflUOzlDnqxZnB1gvsocI=;
        b=qOcOVxOsh5cgh0He8k9RIaX7w9YVbpoFfKGTTzEZHViBoxp1hy5PN/CAs8aFqib2WJ
         eICsWRjM6aGe1pHRDOFsFSQsZs7/ydbno6PBhJzRZU/XgdMZ8o3sKOratfbCN3Gm22XX
         7YXlsetIpz9N8zqs3fkoBfMDGrUdLq6O9uTHai4lh01ywYvCrrV1liEooftJsvGABL4j
         tdoe0SPIpx9ynHz3qjsuf2GhQ0rFxjnt32f0B6hLSJfO4jqCT3u0p7fDCK3+auzmxBWv
         aYi3CS2pWSnSsqTNAI9Fn452b9wU4vgV1rT4mPnLBqqjfWANzwwqAUkkpmJ0l1zSvBbS
         KeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yo5q5RumZWvh9z1qy9ELX4UflUOzlDnqxZnB1gvsocI=;
        b=S1mov/CoxxUZj7iUcanIK1fn1k4GKhASq9eIGXEPKkZ4KXWCLXAcRWgke6CbQrPf5X
         z+73yrgZbYPdLoC+uC+PJB91r5BK+aL1fWnV0H/ICCwpVnbFCylEU+3YYiDC2Wa0IcDb
         EtUwltgjcJWAs0Q8G0lBCPPHLzuO2+errzgLfYJ3PZ0bdTX78MzQhd2es/D/+GUEPtkc
         VVqd7m1JRpKfmqiHwI0fmA6msWMC54OTDDusDh9rOgSO6woUU1RBe11a36M7mlil2BdT
         bOlhe2w83Rujm1EKp4Zwh9bcN44FH01TWDlfnOeMKrzv84qdffdDGb/0bjbwKFdr0x3x
         /wFA==
X-Gm-Message-State: APjAAAV8TK9R9Di+OYEC5yZw4kObH/FNTRQJtI1hjGaI2r+/tN0jb8BI
        CNIOLE360WPfa+y2e2opoqA=
X-Google-Smtp-Source: APXvYqxjAtaztHZUO7ZUoysgO6DzDcUX7pQn9lFbWsxXyplagmW6CcdYY3a8AJRH2/Lhp7JvNWUGTA==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr51463986wma.80.1564427265665;
        Mon, 29 Jul 2019 12:07:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:3aff:2d01:3e8:cefd:7d80:b611? ([2001:a61:3aff:2d01:3e8:cefd:7d80:b611])
        by smtp.gmail.com with ESMTPSA id b203sm76525732wmd.41.2019.07.29.12.07.44
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:07:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1906e1af-961c-adee-b08a-7daf8663b56d@gmail.com>
Date:   Mon, 29 Jul 2019 21:07:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 5/11/19 9:20 AM, G. Branden Robinson wrote:
> ...plus a patch with some suggested wording fixes.
> 
> ...plus a patch with some suggestions on improving the formatting and
> markup.

Sorry for the late reply. I actually applied some of your
changes a few days back (they're already in Git).

You often have good inputs, but your idiosyncratic submission
style does make it harder than necessary for me to deal with
that input. Please:

* One patch per mail
* Patches best inline; if you are worried your mailer may
  break the patch, then both inline and as an attachment.
* Your patch 3 does so many things at the same time that it's
  impossible to apply. Some of the things I agree with. Others
  not. 
* Some of your points in patch 3 are really suggestions
  suggestions for global changes in the manual pages.
  Obviously, they would need discussion, and shouldn't
  be done piecemeal, page at a time. I made some of the
  uncontroversial changes from this patch manually.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
