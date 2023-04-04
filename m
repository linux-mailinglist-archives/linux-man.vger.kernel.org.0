Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA7F46D5F4F
	for <lists+linux-man@lfdr.de>; Tue,  4 Apr 2023 13:42:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234075AbjDDLm4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 07:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbjDDLmz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 07:42:55 -0400
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24E2E138
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 04:42:51 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id C9F12641D8A;
        Tue,  4 Apr 2023 11:42:50 +0000 (UTC)
Received: from pdx1-sub0-mail-a307.dreamhost.com (unknown [127.0.0.6])
        (Authenticated sender: dreamhost)
        by relay.mailchannels.net (Postfix) with ESMTPA id 4A053641E2D;
        Tue,  4 Apr 2023 11:42:50 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1680608570; a=rsa-sha256;
        cv=none;
        b=OR+W741dVWtUf8oz8BE45TkArqv5zZvklSf+PJ/WhQSQZBLTxjpPo5yLBNLS455V0B7eq2
        Rmg6PVhbg848ruR3pQGLgiepwQiS4aG8tVBRqjBu2FA/iGeKyQkirio5MDRkBSox8T47q5
        VA4GRARS7N3gNDo5wcTtvOB3Yys4m8GDa+FtzJgjdG0oB09YomPRDZdArhcuahAKWvxUq3
        z/PPc75Da+glV2GlApTCtNOyjmjKcj8+cr47u113VzvI4IxQIre6uylYu+iHw8AbMAYRKj
        ASGsowvETJUlVTIekgWri+PtFCb2JSFkw/D9hbzGinBBSbmwL6prPAzs2elv7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1680608570;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references:dkim-signature;
        bh=hKIGfZ+zJQNmdFo9ZeKRiB1MwE4H7mtllnRmHVWIwkE=;
        b=u6os/iuTUcVoXVCqY6KAKALjnNrTgMMMswqog2KURYTiRQ0dQiZV8Bzdnd3F9wvX3HJLve
        t9Eq1vtljxAMJGiEWLIIfCei89irGa8N0fOtEGT+iHFHdepIwc9Bw6N6ILJ4bS36lDNV7U
        rq2BgNu6Pnvgr5+k98Wk7bmiCUd+QG4WYMiw9Hqf5kSwbJ7ZV+cqn5DnFeP3GeFJSMmdrj
        EmKEl+0G9LATbtkZq8EU21v99kxh7A0wgAcifN+m6ETHgQHBLeMuIgGrwnWKlugQpR8OOl
        OgPoYK66njWPhEoWToMQ/05eyoAPC7Fm2fD8J8W3Md6rPr7HGdqm322t2qPd0Q==
ARC-Authentication-Results: i=1;
        rspamd-786cb55f77-5wm9m;
        auth=pass smtp.auth=dreamhost smtp.mailfrom=siddhesh@gotplt.org
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|siddhesh@gotplt.org
X-MailChannels-Auth-Id: dreamhost
X-Wiry-Lonely: 15573d4925809252_1680608570591_2621405331
X-MC-Loop-Signature: 1680608570591:3150206419
X-MC-Ingress-Time: 1680608570591
Received: from pdx1-sub0-mail-a307.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
        by 100.126.30.62 (trex/6.7.2);
        Tue, 04 Apr 2023 11:42:50 +0000
Received: from [192.168.2.12] (bras-vprn-toroon4834w-lp130-09-174-91-45-153.dsl.bell.ca [174.91.45.153])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: siddhesh@gotplt.org)
        by pdx1-sub0-mail-a307.dreamhost.com (Postfix) with ESMTPSA id 4PrQqY4qc2zM5;
        Tue,  4 Apr 2023 04:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gotplt.org;
        s=dreamhost; t=1680608570;
        bh=hKIGfZ+zJQNmdFo9ZeKRiB1MwE4H7mtllnRmHVWIwkE=;
        h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
        b=h1g35rf4+SXuZsDgGQNf3cLZLrseWP4eLSeXWCfx75Zfa+qDwFyU2BaUrfnARu32F
         ca5AyhEiyHyC/V7GsGgpDW57j4InJrpNQmBIUWBRAMkCuqELWmNFjnZ2AO5l3VF9mJ
         zWZh0E4xm+MhdO/ceQtGkyLK+3X2ONVQk+DuCQqrdKQygQdFc/V7C5RMdaamcZAfD+
         Ql2iWMrpKeQYtmhhrC5Y8BRZfxVEvcTI4YG/Z3hzmzBeo17AZT95TSLaOG/gxi09TJ
         Y9tMhrL3rEHMgXW9pLTLyHWcR2gL7Zl3NOrzhH55KN2j7oSC/JuW8ETTTqzWdDn9uL
         MJ2OWGkjDVbjQ==
Message-ID: <fdbd4b16-6e99-ffb6-40c0-85a2b1509222@gotplt.org>
Date:   Tue, 4 Apr 2023 07:42:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
From:   Siddhesh Poyarekar <siddhesh@gotplt.org>
In-Reply-To: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-04-04 01:52, Mingye Wang wrote:
> Hi all,
> 
> In (somewhat) recent discussions about _FORTIFY_SOURCE level 3, a
> common snag to hit seems to be abuse of malloc_usable_size(). The
> attached patch is my attempt at making the situation easier to sort
> through.
> 
> See siddhesh's comment on GitHub.[0] I wonder if the language needs to
> be stronger.
>    [0]: https://github.com/systemd/systemd/issues/22801#issuecomment-1343041481

For more context of my statement, please see this discussion:

https://sourceware.org/pipermail/libc-alpha/2022-November/143599.html

which continued into the next month:

https://sourceware.org/pipermail/libc-alpha/2022-December/143667.html

This amendment that DJ wrote is probably the most precise description of 
the current malloc_usage_size situation:

   The value returned by malloc_usable_size() may be greater than the
   requested size of the allocation because of various internal
   implementation details, none of which the programmer should rely on.
   This function is intended to only be used for diagnostics and
   statistics; writing to the excess memory without first calling
   realloc() to resize the allocation is not supported.  The returned
   value is only valid at the time of the call; any other call to a
   malloc family API may invalidate it.

Thanks,
Sid
