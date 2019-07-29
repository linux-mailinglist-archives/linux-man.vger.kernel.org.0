Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8EA79946
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 22:14:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729247AbfG2UOi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 16:14:38 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:36650 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727559AbfG2T1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 15:27:54 -0400
Received: by mail-ua1-f66.google.com with SMTP id v20so24483182uao.3
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 12:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Lsub6vdWP9m85OXWgpid3xdmXoeNpSoukZ3RDSHonEA=;
        b=F48r3gWg5ooPKFxIXjaL2ser9U8juioJAmbbJg7DbxF5iONk6FxmwJm/mKT27ZeXSC
         TBpVQT2fEC7/spETKJqUAp3V3yFrDMrTOqWDdiMiNtCNd2j9kQzxwr6zQtn09x/WDags
         dtPlvglURRGyOqFFK2rXqPR3/jtfjRdrNs5EtRrcUhSUD5dS3qaUklCRzGTVzTBDX80K
         uemqNAvkgUMXIuTS1X2+DxZAUngqg8OgAVP3BeZg2Jq98FWJcpGro0rCTjR4QUW5m5dU
         IWasP1vaFtE1/OkzRq3WRSwRj/bn2qCrl9XCXceuKkd07dePBkYqCH5sBmJj9iDvvZDo
         Q+yA==
X-Gm-Message-State: APjAAAWz451p17pWSCkbSmOpwhsTaYgyxCrY/5XttJssPSD9yH6a4B5h
        ZTr91vW+4LHmZcMVxwn2ZIfDMQ==
X-Google-Smtp-Source: APXvYqzcc1sfKP7CuBMx6B6DcipQuPvxaEHb67/kOv2oXp3KTwNbvS1QGhWnKQkL3Cg0lx7O30AUGA==
X-Received: by 2002:ab0:618f:: with SMTP id h15mr66376304uan.17.1564428473454;
        Mon, 29 Jul 2019 12:27:53 -0700 (PDT)
Received: from [192.168.1.4] (192-0-145-99.cpe.teksavvy.com. [192.0.145.99])
        by smtp.gmail.com with ESMTPSA id n187sm61374259vkd.9.2019.07.29.12.27.52
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:27:52 -0700 (PDT)
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
 <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com>
 <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
 <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
 <3f28f3b3-8fde-2bfb-51bc-6958511ee666@gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <0e64d428-9293-33d3-85d6-0440452bf075@redhat.com>
Date:   Mon, 29 Jul 2019 15:27:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3f28f3b3-8fde-2bfb-51bc-6958511ee666@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/29/19 3:18 PM, Michael Kerrisk (man-pages) wrote:
> On 5/17/19 5:56 PM, Carlos O'Donell wrote:
>> On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
>> <g.branden.robinson@gmail.com> wrote:
>>> What would you prefer?  That the man page not document the bug at all?
>>> Was it a mistake in your view to have added the information about the
>>> bug to the man page in the first place?
>>
>> I think having the glibc upstream version information is useful.
> 
> And so do I. My compromise in such cases is to write something like:
> this:
> 
> BUGS
>         From  glibc  2.19 to 2.29, pldd was broken: it just hung when exe‐
>         cuted.  This problem was fixed in glibc 2.30, and the fix has been
>         backported to earlier glibc versions in some distributions.
> 
> Thanks,

Thank you for being accurate and informative.

-- 
Cheers,
Carlos.
