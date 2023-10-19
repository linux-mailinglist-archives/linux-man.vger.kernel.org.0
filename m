Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55A1B7CF12C
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 09:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbjJSH0W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 03:26:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232326AbjJSH0V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 03:26:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ADDE9F
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 00:26:20 -0700 (PDT)
Received: from [192.168.10.2] (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 2730E6607319;
        Thu, 19 Oct 2023 08:26:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697700378;
        bh=YBHbMTXbI0AianywYsCfI/KWRXqvxJGpVAL0KEf2SHo=;
        h=Date:Cc:Subject:To:References:From:In-Reply-To:From;
        b=aejuH5dtfHS8ZAXdjLsrt9iWvBe6tnOiTfiUKJUpqcUN/Grmv8l7lO+j2fLgSHjEE
         1uSEKZtVZ14AJulaumQeEy5RC+C8J/YNPU9PXN7D7DSMgqf9Sjp4x0zqXdbfotDFMA
         qOKqqXgc2cA/8EC38aFWpYpgWPo1Llrl0GMflj8vbmoWvMqZQvN9qvIlefmo3ysF0g
         xcXnKV20jKWKeJkZCBg8lgBViSDEQeYe9dNx+v9etUUSTVeV4WcL4H2gQc5YFyOF6K
         Ne1qoCCLsc9hQk+ddHA4zDYLOzLI+cVhyPDqj+LGqlk3KDgMH3fHKfSTW4WQkt1R0b
         klilwCEvSnh5w==
Message-ID: <bfcfa592-4681-4a70-807f-3144b35efec5@collabora.com>
Date:   Thu, 19 Oct 2023 12:26:11 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
References: <20231017150138.3406580-1-usama.anjum@collabora.com>
 <ZS65UouGx3_wm0Go@debian>
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
In-Reply-To: <ZS65UouGx3_wm0Go@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Thank you so much for reviewing.

On 10/17/23 9:41 PM, Alejandro Colomar wrote:
> Hi Muhammad,
> 
> On Tue, Oct 17, 2023 at 08:01:31PM +0500, Muhammad Usama Anjum wrote:
>> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
>> ---
>>  man2/ioctl_userfaultfd.2 | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
>> index e68085262..cdf90882a 100644
>> --- a/man2/ioctl_userfaultfd.2
>> +++ b/man2/ioctl_userfaultfd.2
>> @@ -244,6 +244,11 @@ If this feature bit is set,
>>  the kernel supports resolving faults with the
>>  .B UFFDIO_POISON
>>  ioctl.
>> +.TP
>> +.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
>> +If this feature bit is set,
>> +the write protection faults would be asynchronously resolved by the
> 
> Please use semantic newlines.  See man-pages(7):
Okay. I'll break this line before "by".

> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on  new  lines,  long  sentences  should be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier to  see
>        the  effect of patches, which often operate at the level of in‐
>        dividual sentences, clauses, or phrases.
> 
> Thanks,
> Alex
> 
>> +kernel.
>>  .PP
>>  The returned
>>  .I ioctls
>> -- 
>> 2.40.1
>>
> 

-- 
BR,
Muhammad Usama Anjum
