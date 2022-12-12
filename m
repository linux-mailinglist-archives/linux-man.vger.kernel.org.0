Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66F3564A42D
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 16:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232499AbiLLPbu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 10:31:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232362AbiLLPbr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 10:31:47 -0500
X-Greylist: delayed 579 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 12 Dec 2022 07:31:46 PST
Received: from smtp84.ord1d.emailsrvr.com (smtp84.ord1d.emailsrvr.com [184.106.54.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E908210543
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 07:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1670858526;
        bh=wKqHGrIlXTxkBtWdgqPUJSNQiaf93hYqCNOSZ7i8lJY=;
        h=Date:Subject:To:From:From;
        b=gWXW6t7L1QfxfLRz0Ft46BULN1PGwwbfWViJOZKWm64S9JKe+QPmBSwAViTZzc/33
         4LlAlW15weUWldglSBcBUUyp+hxm5riKC8XXVcqlGTycvzB9QAfUJZcnK3C6e+lbbH
         ue7MVmTYrFaS9/Y+HxHWA46MYPdBnj+iCsxyyq/E=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp11.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id C851660128;
        Mon, 12 Dec 2022 10:22:05 -0500 (EST)
Message-ID: <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
Date:   Mon, 12 Dec 2022 15:22:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
To:     Zack Weinberg <zack@owlfolio.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
Content-Language: en-GB
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <ypikk02xv09c.fsf@owlfolio.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 54ce03fd-dc0b-4db6-9b8b-0d13a8b7c1f6-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/12/2022 02:11, Zack Weinberg wrote:
> (Field widths are awkward to use because you have to write them as
> decimal constants _inside the format string_, which makes them more
> likely to get out of sync with the actual size of the buffer than,
> say, the buffer-size argument to ‘fgets’, but this is not a fatal
> flaw in and of itself.)

It's a shame that scanf's maximum field width couldn't be specified 
using an integer parameter in the same was as printf's minimum field 
width, but the '*' flag was already taken!

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

