Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED15427AF1D
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:33:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726461AbgI1NdZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726406AbgI1NdZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:33:25 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9857C061755;
        Mon, 28 Sep 2020 06:33:24 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so1140588wmj.2;
        Mon, 28 Sep 2020 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tNvc95F86PSNz6MYQv4pujClTJG7ZJVCLJQbS+yEorU=;
        b=HSX+TDHcziofRg+i+V5l++OIDjq4NUY7bzqdftkfesyYmuJbce7NndMiMxqaL8+18x
         NurEihELDSAz6N1UiBpvEeOxYd3c95YOZrjNfAi8oTdDuvjP5fDBzOjIoH16QRNor5Og
         z1txVbtUubjnHjsbXVapVdik8OJhv4GKjdnY/UryePIM9hRNwXOBl3ye26GnRnMkr5L2
         01k/7DFtYYyF3k87qx6Ll5P8i+Fdb51Cbil7UC1xCN11X/BfQnoJIETjn5jbkrEcoqJC
         orYQF05qEOrBlAGCatjWv2txgMr6TRIrSKcW0+v+DWuTQ4booaTqcFC+N1PgruDDF2DZ
         epIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tNvc95F86PSNz6MYQv4pujClTJG7ZJVCLJQbS+yEorU=;
        b=BWQCwclyVZFC7P+zmX9SwjRn5vaGtFW032oN/lIJBOqv4VtMkxm74PJqb8KshKg1n9
         9/chivoZN+x1pjUDhSfrnAXgiVrHxFM1gj1cMvoHUhz2UeTHS5auFFkAX97EWSptAzbw
         n4N1nFmO2tt2fOySWmxbNde/6Dhx32/Xo0rpEEdDYr/0I4YbH9f/nIuEh8R19THj9boO
         G5ObuJdrQPVvDZhMg2amGGYjHwvAUGIlxwftiI/UktsHLfHaQJ7D6n9Vz9r68T6yOdiL
         ofBH/V8bhZWs2/COq0h0r6aKBiOGoE3j+ZT64r+BQT3sSbOQNqootoAKWQMP86wT8JjO
         l08Q==
X-Gm-Message-State: AOAM531S2oscy1ZnfeeipInVpc4jDVHLYQFE46HJrnqRVVyEeIhryStX
        KMVPfvhi9KUI/RvQeUgoAcs=
X-Google-Smtp-Source: ABdhPJw/7y2FqbRwW4UCi91xfoQfvg2pXTTVPK4Ox3/z30n1Ala60p8hzczqXtwobQZH2MM8jCISsQ==
X-Received: by 2002:a1c:3985:: with SMTP id g127mr1775636wma.32.1601300003555;
        Mon, 28 Sep 2020 06:33:23 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id f23sm8808581wmc.3.2020.09.28.06.33.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 06:33:22 -0700 (PDT)
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
 <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
Date:   Mon, 28 Sep 2020 15:33:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-28 14:52, G. Branden Robinson wrote:
 > At 2020-09-27T22:05:14+0200, Alejandro Colomar wrote:
 >> Hi Branden,
 >>
 >> * G. Branden Robinson via linux-man:
 >>
 >> 1)
 >>
 >>> .EX
 >>> .B int fstat(int \c
 >>> .IB fd , \~\c
 >>> .B struct stat *\c
 >>> .IB statbuf );
 >>> .EE
 >>
 >> 2)
 >>
 >>> .EX
 >>> .BI "int fstat(int " fd ", struct stat *" statbuf );
 >>> .EE
 >>
 >> 3)
 >>
 >>> .EX
 >>> .BI "int fstat(int\~" fd ", struct stat *" statbuf );
 >>> .EE
 >>
 >> I'd say number 2 is best.  Rationale: grep :)
 >> I agree it's visually somewhat harder, but grepping is way easier.
 >
 > I don't see how (2) is any tougher to grep than (3)...?
 >
 > If I'm grepping, I'm usually concerned with things like
 > variable/function names and not with punctuation, so if I were grepping
 > for the above function signature I'd probably write:
 >
 > $ grep 'fstat.*fd.*statbuf' man2/*
 >
 > ...which would catch either of the above just fine.
 >
 > Am I missing something?
 >
 > Regards,
 > Branden
 >

There are a few cases:  if I want to find declarations of type int,
I'd start with:

$ grep -rn "int\s"

or something like that.  "int\~" would break the ability to do that.

Regards,
Alex

