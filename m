Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E300E6D7D79
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 15:14:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237141AbjDENO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 09:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238123AbjDENO4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 09:14:56 -0400
X-Greylist: delayed 600 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 05 Apr 2023 06:14:54 PDT
Received: from common.maple.relay.mailchannels.net (common.maple.relay.mailchannels.net [23.83.214.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC87D171F
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 06:14:54 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 802C6101DD0;
        Wed,  5 Apr 2023 12:58:12 +0000 (UTC)
Received: from pdx1-sub0-mail-a304.dreamhost.com (unknown [127.0.0.6])
        (Authenticated sender: dreamhost)
        by relay.mailchannels.net (Postfix) with ESMTPA id CADE5101D81;
        Wed,  5 Apr 2023 12:58:11 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1680699491; a=rsa-sha256;
        cv=none;
        b=V29w7V28UmuF6aT0jXHJpst/lG924HiKq33fp2WxsY5LiPYd4dcyqHKBuKzzZocXuuQhYb
        cAs67NppCicDc5zNS305mUmZHZBd1OLysPB0wCPzBtpQ1mNPqviSNOX5PJa34YgF+oWCwY
        S/pkpshBThKAOw9hqhzZsxxD50xnbZ0pob0XWeIlWqSUjVZiaajyTSND9lKYjz6PPorox1
        ktY2rjerFp1tLQCn5T++PTbmBYLlU4ayctw099xbmK/UyXoqTQc5PDJNlmgOuj29u92w9N
        fYwC3tvLiN5yoLpLj0/wZlaJ4xAl2X7COMi6Cn55bUrEeHEtZr3UngR+4btvog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1680699491;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references:dkim-signature;
        bh=U00ZlFd2Cdzkd2OPKSAWhCbgnC4APXh/1qo49aeH/tA=;
        b=c73zSFNoMXT5bEHjQR3ewNEwLItEBzGIfe1pm+fhCCaxR8jVcNSwA/BTFAIK8a18Kz4YFd
        0iPWJRdC9cvdZgTNJLMRuUSVyvo/LnylZXoWAsTvij/YCk54GB8kC7jwl7rg4Uidguwtvm
        srMcwl94JfMexC6GTeWc3fyIWPuxX/VIXl9houlzkWYxH8cCX7AGn2akH3o60wKs7p5C17
        P2G2V8Tqyc0faB4k8VKe0/DEZMVTTIZlFsLzDF6qgqJ6f/OdHSj/gPGIaiDjBh8L1sV7fq
        vz2DoGyKfSOWwguTjJt3vFIH1G9wU3J4QyfSQRxemWHUnOBytjDiS77kqBhpug==
ARC-Authentication-Results: i=1;
        rspamd-786cb55f77-drcbl;
        auth=pass smtp.auth=dreamhost smtp.mailfrom=siddhesh@gotplt.org
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
X-MC-Relay: Bad
X-MailChannels-SenderId: dreamhost|x-authsender|siddhesh@gotplt.org
X-MailChannels-Auth-Id: dreamhost
X-Cure-Illustrious: 0208b99307e4ea06_1680699492136_4074759812
X-MC-Loop-Signature: 1680699492136:4015758892
X-MC-Ingress-Time: 1680699492136
Received: from pdx1-sub0-mail-a304.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
        by 100.103.24.120 (trex/6.7.2);
        Wed, 05 Apr 2023 12:58:12 +0000
Received: from [192.168.2.12] (bras-vprn-toroon4834w-lp130-09-174-91-45-153.dsl.bell.ca [174.91.45.153])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: siddhesh@gotplt.org)
        by pdx1-sub0-mail-a304.dreamhost.com (Postfix) with ESMTPSA id 4Ps4S30hBrz7w;
        Wed,  5 Apr 2023 05:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gotplt.org;
        s=dreamhost; t=1680699491;
        bh=U00ZlFd2Cdzkd2OPKSAWhCbgnC4APXh/1qo49aeH/tA=;
        h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
        b=QYgVqKuTuViDfv+tEhpRA46nQ3Rk0dkRzEYN9BUTcL9JwlxvzYRRJA1ByvL7VAS3R
         FfjKOT6K3K6YDlretlaPZeERaGRiP8eH2TkPW5J+9ci/TfQI7m8bZgsdAdJppxYAcL
         xCDXB/Zoj1eaQbVDBhK3mnzLUsMw7GB+BV7cU/rhfGabRFoWtWI4PGv7QLvE2Enn2W
         0Y5UippTnPrDZ8/aHLTxyd4E3rXkO7aAQXsCcxeXWdeVizg+2PHagwRddEIhwM0ycW
         jXu2E3uhbvRJVX85lsTzCVCKaT1htwLSYfJtVhUiVNeoDXOdp6+EOex2uTGUedAp8W
         TPhRhWYZWg2uw==
Message-ID: <c2de29e8-8d79-c754-0eb2-99e55d8c60cc@gotplt.org>
Date:   Wed, 5 Apr 2023 08:58:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>, Sam James <sam@gentoo.org>
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
 <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
 <62c2e2dd-fe20-774d-cecb-3c629336e87c@gmail.com>
From:   Siddhesh Poyarekar <siddhesh@gotplt.org>
In-Reply-To: <62c2e2dd-fe20-774d-cecb-3c629336e87c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-04-04 22:35, Alejandro Colomar wrote:
> This might be useful to you: I happen to comaintain a code base that
> uses malloc_usable_size(3).  I have no idea why it was added, and it
> seems to be used in a test, but not in the actual program, which makes
> me happy to not have to fix that :).  Maybe it is useful to you to check
> that code to see why would some heavily-optimized code base want to use
> it.  You may very well find that it was not really used for anything
> useful; there's a lot of dead code which I haven't been able to remove
> yet due to discrepancies.
> 
> Here are all the mentions I see to this API:
> 
> $ grep -rn malloc_usable_size
> src/test/nxt_malloc_test.c:54:        nxt_malloc_usable_size(p[i], s);
> src/nxt_malloc.h:37: * memory than is requested, so malloc_usable_size() allows to use all
> src/nxt_malloc.h:52: * with small cutback and then to adjust size with malloc_usable_size().
> src/nxt_malloc.h:53: * Glibc malloc_usable_size() is fast operation.
> src/nxt_malloc.h:56:#define nxt_malloc_usable_size(p, size)                                       \
> src/nxt_malloc.h:57:    size = malloc_usable_size(p)
> src/nxt_malloc.h:77: * FreeBSD 7.0 malloc_usable_size() is fast for allocations, which
> src/nxt_malloc.h:81:#define nxt_malloc_usable_size(p, size)                                       \
> src/nxt_malloc.h:82:    size = malloc_usable_size(p)
> src/nxt_malloc.h:101:#define nxt_malloc_usable_size(p, size)                                       \
> src/nxt_malloc.h:108:#define nxt_malloc_usable_size(p, size)
> src/nxt_unix.h:32:#include <malloc.h>                 /* malloc_usable_size(). */
> src/nxt_unix.h:49:#include <malloc_np.h>              /* malloc_usable_size(). */
> auto/malloc:53:# Linux malloc_usable_size().
> auto/malloc:55:nxt_feature="Linux malloc_usable_size()"
> auto/malloc:66:                      if (malloc_usable_size(p) < 4096)
> auto/malloc:75:    # FreeBSD malloc_usable_size().
> auto/malloc:77:    nxt_feature="FreeBSD malloc_usable_size()"
> auto/malloc:89:                          if (malloc_usable_size(p) < 4096)
> 
> The only ones that may be interesting to you are the single use (the
> commit that added the line says "Initial version.", so it won't help):
> 
> <https://github.com/nginx/unit/blob/c54331fa3d9597ba6bc85e7b7242981f00ed25c2/src/test/nxt_malloc_test.c#L54>
> 
> and the header where we define a wrapper macro, which contains several
> comments about assumptions made about different libc implementations:
> 
> <https://github.com/nginx/unit/blob/c54331fa3d9597ba6bc85e7b7242981f00ed25c2/src/nxt_malloc.h#L35>
> 
> I hope that tells you something.  It doesn't tell me anything, but I'm
> not used to fiddling with allocators.  :)

I'm sorry it doesn't, I can't tell from a quick peek what that test is 
trying to do :/

>> This amendment that DJ wrote is probably the most precise description of
>> the current malloc_usage_size situation:
>>
>>     The value returned by malloc_usable_size() may be greater than the
>>     requested size of the allocation because of various internal
>>     implementation details, none of which the programmer should rely on.
>>     This function is intended to only be used for diagnostics and
>>     statistics; writing to the excess memory without first calling
>>     realloc() to resize the allocation is not supported.  The returned
>>     value is only valid at the time of the call; any other call to a
>>     malloc family API may invalidate it.

I should probably add that I'm trying to come up with something that 
will provide the functionality most people depend on malloc_usable_size 
for but with more defined semantics that doesn't simply leak internals 
like malloc_usable_size does.  However it's too early for me to promise 
anything and whatever solution that comes up will likely be ABI 
incompatible anyway.  So the above is the most precise description of 
the situation and whatever happens, we'll only end up adding to it, not 
replacing it.

Thanks,
Sid
