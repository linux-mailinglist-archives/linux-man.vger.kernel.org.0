Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FCAD65F560
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 21:48:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235077AbjAEUsR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 15:48:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234503AbjAEUsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 15:48:16 -0500
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298A863D24
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 12:48:13 -0800 (PST)
Received: by mail-oo1-xc31.google.com with SMTP id o5-20020a4a2c05000000b004ac6ea6c75dso7415671ooo.8
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 12:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V+FToNg7wrik3o1BivYrT0ZHuQaA/f1M8+e4R4n95Ww=;
        b=EbK0VzQNzBBivYZ9AFg5rJsO1W0LFctX9pVDDmZAxKjknuBoS6brudSBYdXBtzAi5O
         ncqePtUIc01dVnLvJwBqVIdohoXO9FXyL70qRdZVQfGx1M/7EGlFknQJTvFKCR0w/mvu
         0CFzye2Ic7gfITXOmMQgiANejZnyLVKo0yyJZ40ISGs8WfIcaO7BwIyEIa8Ait4aGG2K
         CjHdCfkNcfstivoo6K40+Aik+xajqvEbHNIdfzWdRFkS7L7CQF/LvM2YxK/wOoADMH5t
         74QE+iEZWw9ijK3uLnE7B6s/bNzpMmsKAJlN2AvQDQnHji00yKNkPNaCxB0330crajLk
         6reQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+FToNg7wrik3o1BivYrT0ZHuQaA/f1M8+e4R4n95Ww=;
        b=NgGIGy/DG3YKNfaZoMEI0ukRW3ii5ncFZ4ST2jj2Y1x365xZ0uZ2Atc80NFlU30he+
         CSrZ90GUHm4Kpl8QwlawydA9b/WdYI34lXOzBYP2fLFJvyX01lG5zwysnC5l9shDm7jv
         P7TMaVWj72Jtr3OwObXF3jhVHn40TWl7s+us5fW1sOANTLcF/brv3V2f2GOdMWHeh9bF
         FIgHRhbNLAV+LNqbH7w9ZhHjb3VIH1YrjsYOMxlrRxSg7mS2s4iJJIify0J7/IVrRC9C
         7GxHMxSVCHFqDJj/TPmLXwOaSP6WpBVXsviG6gVmRUts9xsAWIYrjeLAb4mDfctayV8y
         9X/g==
X-Gm-Message-State: AFqh2kotEIeT6jG0q9seA0tDpIbS5wWpyX6H9KcAmKNr7fyiRGGgL7TT
        TRLba6BZNrmA9dhPpJ18cByj41Iq3vwXm/PRIQQ=
X-Google-Smtp-Source: AMrXdXs0YLK0Ujttwk2ADB0o018qJjW/gAfynRqAq10cor/We1KYBW7DW32gFYK4g6pDSDkZd1L+cQ==
X-Received: by 2002:a4a:21c5:0:b0:4af:70e8:8afd with SMTP id u188-20020a4a21c5000000b004af70e88afdmr24949277oou.4.1672951692402;
        Thu, 05 Jan 2023 12:48:12 -0800 (PST)
Received: from ?IPV6:2804:1b3:a7c0:1729:d199:4137:cb7:b882? ([2804:1b3:a7c0:1729:d199:4137:cb7:b882])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ac695000000b004d8c6815287sm10755705ooq.17.2023.01.05.12.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 12:48:11 -0800 (PST)
Message-ID: <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
Date:   Thu, 5 Jan 2023 17:48:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3, strptime.3,
 NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7: Prefer
 bzero(3) over memset(3)
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230105193751.18846-1-alx@kernel.org>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <20230105193751.18846-1-alx@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 05/01/23 16:37, Alejandro Colomar via Libc-alpha wrote:
> bzero(3) is simpler to use, and can avoid silly mistakes that are hard
> to spot.  memset(3), while it is necessary in a few very-specific cases,
> should be avoided when the memory is to be zeroed.
> 
> POSIX and ISO can say otherwise, but it doesn't make any sense to
> recommend using memset(3) over bzero(3).

bzero is deprecated by POSIX.1-2001, removed by POSIX.1-2008, and on glibc 
implementation now calls memset (previously some architecture added ifunc 
redirection to optimized bzero to avoid the extra function call, it was
removed from all architectures). 

Also, GCC for some time also replaces bzero with memset so there is no gain
in actually call bzero (check glibc commit 9403b71ae97e3f1a91c796ddcbb4e6f044434734).
