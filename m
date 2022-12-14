Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF65864C6FE
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 11:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237758AbiLNKWK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 05:22:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237767AbiLNKWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 05:22:04 -0500
Received: from smtp74.ord1d.emailsrvr.com (smtp74.ord1d.emailsrvr.com [184.106.54.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB8821B1E1
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1671013322;
        bh=07WH2LKrOsHK6uXZEZ4T7BUk+6KgDrlmI6G5QE6WWkg=;
        h=Date:Subject:To:From:From;
        b=Kgo9SwxhPUzxbYRm46CcHChPYuk3/i8pRIeIlqmhLr+R4IwJfUqG224jxugs74jhb
         ZkBDNoZs0Wj69XQ+sAjjPjhzex9ytBs+6DtzOoI70bNqMpYU1qBJa8SvdkN61xhx6O
         4iGZ9o1vdzKtxDLsBjoR5dEcEziVSn9Lq3gonz2o=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp18.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 5CE78A00F2;
        Wed, 14 Dec 2022 05:22:01 -0500 (EST)
Message-ID: <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
Date:   Wed, 14 Dec 2022 10:22:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-GB
To:     Zack Weinberg <zack@owlfolio.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <ypiksfhiafsn.fsf@owlfolio.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 6335bc75-ec13-417e-b25f-4f4a789bb77c-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 14/12/2022 02:18, Zack Weinberg wrote:
> Ian Abbott <abbotti@mev.co.uk> writes:
> 
>> On 12/12/2022 02:11, Zack Weinberg wrote:
>>> Field widths are awkward to use because you have to write them as
>>> decimal constants _inside the format string_…
>>
>> It's a shame that scanf's maximum field width couldn't be specified
>> using an integer parameter in the same was as printf's minimum field
>> width, but the '*' flag was already taken!
> 
> Yup.  I suppose we could make up another flag … ‘@’ isn’t used for
> anything …

'@' isn't included in C's basic character set though.  '&' is available.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
