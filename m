Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E35982B71EB
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 00:00:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729335AbgKQW7z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 17:59:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728777AbgKQW7z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 17:59:55 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B70ADC0613CF;
        Tue, 17 Nov 2020 14:59:54 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 1so327704wme.3;
        Tue, 17 Nov 2020 14:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P1TJyGY+BYa1mFbZWP04pVqGJVIQxPSGykLyaoHtn+M=;
        b=Jlce5f6dkuPzgdOztJaunnHASYPiPSzEjWoTpX7CmO/CidMnTXPZ8kgU8EsgK8vm3q
         sTN3p1oLVLd2gwrAY1vDlz0Tp9tcms1ObIOHCUnpnCIrqsbTFD5r/Z8DWReb9t3E0I2C
         L9HQTYC84zpMUrmWXGiKISlb4Nuilg6fv7zIkuEicjahd5+C/R+1fS5TD4MxYrXtejNK
         dOz3WNUsw8zPjWsh72jl9Px5Qt7yPW+b6ymvQ1WRrVpQiDifr99fe2VCbrkELPIa3Gk/
         I/S2qAVqf12d0hOTxs5bgQkddVPDmGgQ6RPMOIUi0R6OJWfZ2bg6j709c9N/OeH12UD2
         0GTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P1TJyGY+BYa1mFbZWP04pVqGJVIQxPSGykLyaoHtn+M=;
        b=mrfVCcbAFx7me7TgWtqTgLuSqd/SxZYCoa+ODss7VhTsv9wXsGWW/idnyAk3PCGzLM
         u8rylL7g0GKT16BDR3+fB07wOJzy5Xb3JGHOQUKUFZQc2/ro+ccD93HTlpORrBJu4T3r
         9ZLR+0KsiyUeAMzpYBMwgdV237yeVbAmM/N1AVAD4o66wnzNDgYrZovaO3uOZTlmRtX4
         KvpyHgHn5D7INCPj3nV6k2ybQOecKxxKS2414i2bGiWf5mWBbBFHkZXCeYoMoSZqr3xj
         /NOvj5kUD/ccp/trrAZC7ts1AaLU6HZt1ZdhFakBvudQs+a9UJFOwfIpQp2B0m+5kLAz
         akmg==
X-Gm-Message-State: AOAM533S8qdwq38gieI/mMmYhuWrQ3kCikRlAmp34H5zVKPhJkBWL21n
        rNDVxKD0De5ZMB98iP7tHgo=
X-Google-Smtp-Source: ABdhPJyPI7YVMqL2D05Fkq3eZ/b0w6QhbfMYHBu4ZHm08FoyG3HMQa3vwVTIPei2eGKqpEK6nmgndw==
X-Received: by 2002:a1c:a548:: with SMTP id o69mr621445wme.23.1605653993536;
        Tue, 17 Nov 2020 14:59:53 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f11sm29151590wrs.70.2020.11.17.14.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 14:59:52 -0800 (PST)
Subject: Re: Ping(3): [PATCH v4] <sys/param.h>: Add nitems()
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com,
        fweimer@redhat.com, gcc@gcc.gnu.org, ville.voutilainen@gmail.com,
        linux-man@vger.kernel.org, rusty@rustcorp.com.au,
        linux-kernel@vger.kernel.org, libstdc++@gcc.gnu.org,
        jwakely@redhat.com, enh@google.com
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
 <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com>
 <alpine.DEB.2.22.394.2011172242582.28480@digraph.polyomino.org.uk>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <8fb9c722-4190-6115-1d60-d94f8db7f749@gmail.com>
Date:   Tue, 17 Nov 2020 23:59:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2011172242582.28480@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Joseph,

On 11/17/20 11:44 PM, Joseph Myers wrote:
> I've asked the WG14 reflector why N2529 (and N2530, though that one's not
> relevant to this feature) doesn't seem to have made it onto a meeting
> agenda yet, when there have been two WG14 meetings since that proposal
was
> made and a third one coming up.
>

Nice!
Please update me on any feedback you receive.

So glibc will basically hold this patch
at least until the WG answers to that, right?

Thanks,

Alex
