Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DF3527D21E
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 17:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731449AbgI2PGc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 11:06:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727360AbgI2PGb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 11:06:31 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5B7BC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 08:06:30 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g4so5813798wrs.5
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 08:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ajDUfmog3rMIQiryteNjEB+ggpuc1VVmxpTthNLwvLU=;
        b=VMqbWlu/uusEAcba1z3zmucmLpCypjXFRPK55FZzTEY5Jz/1OyYCEMl9zoAFGip5Lg
         n05DjmcFt/WQZJFyDIAyteQIebfdlCpWBVXwmxrkkU3aKd/lTxXfKhu97Hpi2c7aLXRh
         b8acvuMCp0RieEPkziI5C0s58ptudY59jWuau1BhpDR2MVjBdrVXmTqWB0L8SCuybDAh
         YSUM49JLVp0xZSuoTj32FtaOT4TnNlaL3HiCjA+R4Wu8bR04N9Itqgzj5RPyieRGwk4X
         fcZoV3vwuFRis69i6OgU6daV9RuTDr4/bHP8Inzt7//MrbtB4Ju7J55LqB6Wn0LTNaYn
         nlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ajDUfmog3rMIQiryteNjEB+ggpuc1VVmxpTthNLwvLU=;
        b=h5o0mFJk77q+sDik9UxPHefH5BokTdloFIhNqnGlQG50h9Yr8wgCOQ+H6+SizjFIoP
         he46oRo0PyaO8emVTneVL7E9wb0vA8zcnTDozdp5m/+G53VKVPf4laIr2YYUwbcU1u0R
         Hh0pojNb7SkmWb6t8QhgmDLA6AHf3rjoJym7euhP9oXt+vG4SfkgvaI8lkUMuy40J+Ba
         Uq4gj2p8gR1KzNMNwGHvfqG0B7kMjMXakCdRM8HRQLaXZ2xVBFU+7IxXiB4iNU6u97GN
         UphUZVBUf+aDIhqq5IWGeHd0Zc8eYAMh88F0ujBYtfA0hwsRoC7y91v4WZTaxZWOPn8o
         68nQ==
X-Gm-Message-State: AOAM533jaASmJxppDsQm1ZJE2258y/OwKK96YUKHyNPWblLHSKNfbETl
        WxL+uiWzCnWB1LkMVfRNYI4=
X-Google-Smtp-Source: ABdhPJxspRD5UhTwm+9IFwF+IvGumBBRzORMtKFDsLIlZUXJfwc9J6lnyLrEjLraROoQsnhJxPekvw==
X-Received: by 2002:a5d:4104:: with SMTP id l4mr4943594wrp.396.1601391989557;
        Tue, 29 Sep 2020 08:06:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h17sm6820273wro.27.2020.09.29.08.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 08:06:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, g.branden.robinson@gmail.com
Subject: Re: [PATCH v2] system_data_types.7: Improve "Include" wording and
 format, and explain it in NOTES
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Dave Martin <Dave.Martin@arm.com>
References: <d714d0e3-e9fd-0f31-4d5c-4f9232a6b55b@gmail.com>
 <20200929142219.72683-1-colomar.6.4.3@gmail.com>
 <20200929144324.GM6642@arm.com>
 <3dae4d7f-3c08-4f1c-47ce-8815255ca24c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b4bcd7f-8e60-943d-b127-6926a53a29d3@gmail.com>
Date:   Tue, 29 Sep 2020 17:06:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3dae4d7f-3c08-4f1c-47ce-8815255ca24c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


>  > Can we not just annotate each header listed with the originating
>  > standard, say:
>  >
>  > 	<stddef.h>	(C)
>  >
>  > 	<sys/types.h>	(POSIX)
>  > 	...		(POSIX)
>  > 	...
> 
> That may be a good idea; I've thought about doing that in the past;
> but also thought that it's still too much noise.
> Let's see what others think about it.

My thought is that maybe we can add this kind of info later,
providing we find a concise way to do it. But, for now, already
the info in the page is useful as is, and I don't want to stop
the momentum of Alex's work. So, for now, I think let's carry
on the current style.

> The downside is that it adds a lot of lines,
> being harder to read for types with too many headers (e.g., size_t).

That is also my concern.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
