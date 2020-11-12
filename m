Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8210A2B1010
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 22:21:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727337AbgKLVUW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 16:20:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727164AbgKLVUW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 16:20:22 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0961BC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:20:22 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id a3so6700262wmb.5
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1IUwXl5W0hI3RDsBkOA5K+XDMP9wvse4WstNEJQ0M+U=;
        b=mGaNBEw6QZppqShgz6AZw3WY3RqOk/6SsWuIFNvDlbX5zQcTTdoGLD5HT71Mm6faM7
         kDzM62zKWcwTvYI093qhLD3CLbnJLFE32chxYGtpsmwTnUlFF+oGpjZ5ZHND5Y3mcUHw
         d7EYOypXLdZkslYd7mB37DuLX2NkD3RZ4/0Cu2RvcpOv0MLZdP/8FYAUgr6TLfonxytk
         GH+//4d8t8yA0LywYvzV/Q+j/4Wd6LEg17hZrxd8OqcFy+/LTw/KnHdykf0PB2vZeHY9
         gaei7mKVJHzadVyRQdWW7pSh0rft+Jkqk6KljeL+Q3CFeERJ4j5DYobyP3REyQzhmJ49
         8QYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1IUwXl5W0hI3RDsBkOA5K+XDMP9wvse4WstNEJQ0M+U=;
        b=D/bxS2magdLiTInCCHBTr0oQqWIOF1OKg6DDp/5b26kMTXrg/fXPVArUmFAe+GapKL
         RFNt76cb5N5mqolbEla4mUqdJP4mzCPotpIiuruTguMDWsBb3EaW92oSuovuXMzyinsa
         j5LO07m0Ak/ieP/YOu58jLDbrfQWPGmUp1OhB3nVlh1D6PqRxwwBt1oo5ZM5iQzxU/7d
         8Ix3wXYtErJ/lL3J1fEBj2qi823fPVjG6kZh8to7T6ue24j1jw1Om00w798r6fFkZXZU
         fFKsVHcskeaI43ayWAi+AXLjVyRZkSxks+rJRH3BAN28ax96/1616pkicD1+diHmu92v
         JmlA==
X-Gm-Message-State: AOAM531HrfQ7b0CFqKaZVas7yA77pnu9AMTi2ogy7DFQTnD6uiW/VwKq
        Qn7XwlyQ5C2xjJzsVVJt42dAO+kyd5fRNQ==
X-Google-Smtp-Source: ABdhPJxGX0GoqMy+zdGaIk+dL83FVHIUMIeFUmMvmQmEix3RAR8VAiYpRuYWctPrOGZkWclA4Ye8rQ==
X-Received: by 2002:a05:600c:209:: with SMTP id 9mr1557098wmi.89.1605216008971;
        Thu, 12 Nov 2020 13:20:08 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n9sm7775629wmd.4.2020.11.12.13.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:20:04 -0800 (PST)
Subject: Re: Format inline code
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
 <fbaf2a56-3f2e-e5ce-6ca2-e8f30156947d@gmail.com>
Message-ID: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
Date:   Thu, 12 Nov 2020 22:20:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <fbaf2a56-3f2e-e5ce-6ca2-e8f30156947d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


> [[
> .IP * 2
> If
> .B PERF_FORMAT_GROUP
> was specified to allow reading all events in a group at once:
> .IP
> .in +4n
> .EX
> struct read_format {
>     u64 nr;            /* The number of events */
>     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
>     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
>     struct {
>         u64 value;     /* The value of the event */
>         u64 id;        /* if PERF_FORMAT_ID */
>     } values[nr];
> };
> .EE
> .in
> .IP *
> If
> .B PERF_FORMAT_GROUP
> was
> .I not
> specified:
> .IP
> .in +4n
> .EX
> struct read_format {
>     u64 value;         /* The value of the event */
>     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
>     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
>     u64 id;            /* if PERF_FORMAT_ID */
> };
> .EE
> .in
> ]]

Unless there's some simple fix for this using [.RS/.RE]
that I didn't come up with...
