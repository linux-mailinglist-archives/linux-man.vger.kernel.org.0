Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 259107CFB24
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345971AbjJSNeg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345945AbjJSNef (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:34:35 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D1D711D
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:34:34 -0700 (PDT)
Received: from [192.168.10.2] (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 15ADA6607332;
        Thu, 19 Oct 2023 14:34:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697722472;
        bh=Db9hYHg4rZQexrDnvF72gkEPFeSnuHXEBOemOHXhL7M=;
        h=Date:Cc:Subject:To:References:From:In-Reply-To:From;
        b=ejW83Y7Unwt6fLX1KiAfokplZ8FqEL4KQm8haSN495An1medNQi146UQkRxQjvWIE
         rwpiryEQ3nRhjNwvL0yAVF5A9BU1nfy24J7s2MLW9ysd4Zw1SMZV0p6xAN/bOWBBOt
         jeCsHSHgVqJlnCwkuY/zG1XrIz5p6+Mh2bn3hwUGfSVEzSPO4t6qcKzdjIfRnWvEFV
         CbQvWFMOyoxYZXVIrruFY6ixV6W7kF/R86UWijfqUVXTaOrAVmAth5epit+oVf/Mvq
         xd9ajdUhe0Cma62tMO4JHd28Iu/VqnysOKWlnLDLbcl9Cv0rFyDPxY5ocQ75Q9O1Xi
         0qIItkMrCASGQ==
Message-ID: <041045ed-55e4-44ff-b5a9-cfdf252c33d3@collabora.com>
Date:   Thu, 19 Oct 2023 18:34:26 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <ZTEvPcyhWINBS4aO@debian>
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
In-Reply-To: <ZTEvPcyhWINBS4aO@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/19/23 6:29 PM, Alejandro Colomar wrote:
> On Thu, Oct 19, 2023 at 06:12:44PM +0500, Muhammad Usama Anjum wrote:
>> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
>> ---
>> Changes since v1:
>> - Employ sementic new lines by breaking sentence before "by"
>> ---
>>  man2/ioctl_userfaultfd.2 | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
>> index e68085262..f6cafd9a2 100644
>> --- a/man2/ioctl_userfaultfd.2
>> +++ b/man2/ioctl_userfaultfd.2
>> @@ -244,6 +244,11 @@ If this feature bit is set,
>>  the kernel supports resolving faults with the
>>  .B UFFDIO_POISON
>>  ioctl.
>> +.TP
>> +.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
> 
> Has this feature been merged?
Yes, This patch is in maintainer's tree (in mm-stable these day).
https://lore.kernel.org/all/20231018213452.A78A8C433C8@smtp.kernel.org

It should be released with next kernel release.

I'm not sure if you can accept a patch which isn't in Linus's tree yet. But
these patches are already in maintainer's tree and in linux-next from
almost a month.
> 
> Thanks,
> Alex
> 
>> +If this feature bit is set,
>> +the write protection faults would be asynchronously resolved
>> +by the kernel.
>>  .PP
>>  The returned
>>  .I ioctls
>> -- 
>> 2.42.0
>>
> 

-- 
BR,
Muhammad Usama Anjum
