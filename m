Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86C952E3566
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:20:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726631AbgL1JUr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:20:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726555AbgL1JUr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:20:47 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 300D5C061794
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:20:07 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id w5so10730453wrm.11
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=slHR5/BFkHK92gT/E2pJ6ptRpx8wBMObKImIYRhvB3g=;
        b=I/IdTlYywjPe0OQYCiLD9TGtT40vCBdwkXhgKtrsA7jvV3FSEO2UsNmlQr86QJt0uE
         CRiK1RQCuqaRTjj4YOHlIGdaD83mxz9Tu0zf7T3BFhYXJTxn/IpJIdHBn7vD0rgvsKyL
         ug8X++sW7+KKxHHT6bvpxNBwowAq+RDYrzrG57V2dZNMg9GC9wHRWvrHXtMrYpwagV0Y
         jIksvTS3/NddUQZANVltiI1lIhcGV5P2twUsvZ5fcMmEAAw7nXyiJckX0IyW0ElxIDUF
         x9F/2wjKvkbBUpXEM3yKZtH1DvVqdaf0obFgm13k15WTcna5f63xABA6OT+ZUmY2koWR
         n1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=slHR5/BFkHK92gT/E2pJ6ptRpx8wBMObKImIYRhvB3g=;
        b=XK5rIL7Rwthqz30008SjnEiAzHeqJhonY8wJTyVbcyE3stKwG6CVULvlPyM9VJSBle
         BChx8fF/zhZ/TLwS7tskGOGIxlNWE0O0+068FRtrQFz94KSyoylASdBM0OnUSEq+cAJq
         VqWYfyRIkhItnoGU+I6Wms+VTRg+rF9Bfpd3pWr518YDngKkS0wiiqOXqJJPHA7rj6ah
         XnEC5X48QSFSkXard6RcbO9oNi3ZmbgC5tDdqD9AT6gzHieRaN6w4jmeJUhQD2PfDM5P
         nUuXqWEQxZl4yuiVV5GSuOsXJtaqysdpT3Uyh4CyGK84MkKx5LhzqTePc97W+r43yLWG
         eZ2w==
X-Gm-Message-State: AOAM530EoTNdzfbxEq2dWlg7Zv2WlgRmJrl62/pcxMmNYHqYeO0Hhf+J
        Bm++FD+WF5HcpVpGF0H0ZOR5q9IeljQ=
X-Google-Smtp-Source: ABdhPJy5rCd3/lQlzH3ESXqYwNSvU58pORf0unn3FSrn+STWsjfEKz4m9m9a1xMNSAtLOMletxPGYA==
X-Received: by 2002:adf:bc92:: with SMTP id g18mr48916907wrh.160.1609147205759;
        Mon, 28 Dec 2020 01:20:05 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b7sm48598552wru.33.2020.12.28.01.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 01:20:05 -0800 (PST)
Subject: Re: [PATCH] Various pages: tfix
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201223190202.12758-1-alx.manpages@gmail.com>
 <CAKgNAkhSoriQZdagMHMz5QJF59LbmQLddvNCWOGJhDHc5jXxdg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <45faf85c-165d-c6a9-9287-6b9601bc96ee@gmail.com>
Date:   Mon, 28 Dec 2020 10:20:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhSoriQZdagMHMz5QJF59LbmQLddvNCWOGJhDHc5jXxdg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael and Branden!

I agree with having periods in full sentences in comments.

I've been looking at the 3 commits, and I'm seeing some inconsistencies.
 I'll have a look at it, and maybe send you a patch (v2).  See for
example the changes in pidfd_send_signal.2:

-    /* Send the signal */
+    /* Send the signal. */

Thanks,

Alex

On 12/27/20 12:54 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Wed, 23 Dec 2020 at 20:03, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> Remove "." at the end of sentence fragments/short single sentences
>> in comments.  See: c2e81ff9641a7743b1f47cbf4fcf899c391df77f.
>>
>> $ sed -i '/[^.]\. \*\//s%\. \*/% */%' man?/*
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> There is probably still a bit of inconsistency in the pages, But, your
> change removes some periods what really should be present.
> 
> For example:
> 
>> --- a/man2/clone.2
>> +++ b/man2/clone.2
>> @@ -1843,7 +1843,7 @@ childFunc(void *arg)
>>
>>      /* Keep the namespace open for a while, by sleeping.
>>         This allows some experimentation\-\-for example, another
>> -       process might join the namespace. */
>> +       process might join the namespace */
>>
>>      sleep(200);
>>
>> @@ -1887,7 +1887,7 @@ main(int argc, char *argv[])
>>      sleep(1);           /* Give child time to change its hostname */
>>
>>      /* Display hostname in parent\(aqs UTS namespace. This will be
>> -       different from hostname in child\(aqs UTS namespace. */
>> +       different from hostname in child\(aqs UTS namespace */
> 
> Here are a couple of cases where the comment contains two sentences,
> but the change removes the period from the second sentence. That's
> definitely not right.
> 
> My general philosophy is complete sentences in comments should be
> terminated by periods. In sentence fragments, especially for tag
> comments (i.e., comment on same line as the code), I'm inclined to
> omit the period. And there are doubtless inconsistencies in existing
> pages (and grey areas). Commit c2e81ff964 was intended to clean up
> some of the most obvious cases.
> 
> I've made a few more commits now to bring more consistency. (I think
> Branden's suggestion that complete sentences should generally always
> be punctuated is true.) And I've added some notes to man-pages(7). See
> commits f18f9c409...46b20ca1b
> 
> Thanks,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
