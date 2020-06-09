Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96C681F360F
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 10:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728072AbgFIIZM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 04:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728020AbgFIIZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 04:25:12 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F0E6C05BD43
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 01:25:10 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id f185so2182436wmf.3
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 01:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k4KhMsxFccY3UiByq4WkainWQtLWvzatlna7sT27tb4=;
        b=LXrma8Uj0n6fA9N2VQTRngIxxmv67SDcDHCCt5QBn/OJQpkC+19eUVeeBooyblDDgc
         RLttbyb+LRJVqKOX7zOohYVKb5v7obkyqE3e/ScW/DDYG1iGau7+93EVPNqTiEo3d3EC
         5S++vXUrmDn1GRpfl61mc0qJXS+8qfLq48emyytqhdgB2J7dtJfCxabjNOe2TiYRujnC
         Tv5gGVdUf8NuT0bjhdKry6GPhhbw1CT58JAe28x4BGEdmjdQzcQMGjlUpf5II1I+g3OM
         Pw2WIYsCfNLolSpley3cdiqNYzTfqk1tspb8weyujBZ93EOGQkQE6T49NMK/S91JdleB
         ZM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k4KhMsxFccY3UiByq4WkainWQtLWvzatlna7sT27tb4=;
        b=mLU/Ba+h5ytHNjLJzBCbjTNuZ0o3SfwmRP0bova0HqPBm4xdFjD2PcuwpFR4sOSwNu
         sqdU1ORGdbTx1aNRNKzlWWYvYA0fsbl2Rxo2bcZpMtE4DwiqBShL7BtAWuuLy02G6fML
         21kmrj/JPWV1xy+LAiR6KzIKULx+tCkRyD5/Gt87tdj1RDK7mu2PbkYlgjDSbSwj3AN3
         8u4Rzeob6goZo3OPY7a+/7Vbj3LhWQtC35MzgS5TPCjsK8nbRqkNc/FU18Ta1TCbwITl
         7tBY/mAcf328ekdwV4Z4gP8TaMPzWGcg0GJNCzS/T+WHrl3Df3AzvraKnpe0cRupsILk
         ypSw==
X-Gm-Message-State: AOAM533Ww3m0GbqlBMYxxoLS58hpAgJXItDYT42NDcmIzzlNunH3rSlX
        nmdea43PuTooUzzPkyEYQHY=
X-Google-Smtp-Source: ABdhPJwfsE7hPZgeCHJeRpL/AaaBVsrx1lFIaUv8kwCpWW8wOQasf15bd20g9mJYplvTcfkvlwADGA==
X-Received: by 2002:a1c:49d6:: with SMTP id w205mr2904487wma.151.1591691109148;
        Tue, 09 Jun 2020 01:25:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id l1sm2635105wrb.31.2020.06.09.01.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 01:25:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: core man page %e
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
 <99a02979-3d47-6ef8-c619-00d9115321ec@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e7172932-4584-916b-9ccc-29eb71b17fac@gmail.com>
Date:   Tue, 9 Jun 2020 10:25:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <99a02979-3d47-6ef8-c619-00d9115321ec@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/1/20 12:21 PM, Jonny Grant wrote:
> Hi Mtk,
> 
> BTW, if I add "%P-%e-%s.core" every core starts with the same
> "P1000-"
> 
> The man page shows:
>   %P  PID of dumped process, as seen in the initial PID namespace
>                 (since Linux 3.12)
> 
> Do you see similar? I was only needing something to make the filename
> unique, so %t is enough.
I don't see the same. What do you see when you verify the change with:

sysctl kernel.core_pattern

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
