Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8EC826892D
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 12:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbgINKWL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 06:22:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726434AbgINKWK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 06:22:10 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD2CC06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:22:09 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z1so18088216wrt.3
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=onk5VlFLt/2rbYSdkglBN0pjaK0X6hkgSFRRhp6WJag=;
        b=AUrk/PzooEQAM9vsoC9+afbYTu0eIqM4+7HDQqxabBfOQa0PGhI7Jhqem4ft7Uz68Z
         2bfKt2YOhReBHcDmLyniYoFMImqbSY4FqjNbVM2Z4J2Z77Jl4ghgzY7jQ3z0N/8ZAKcU
         rQZdYMUjgL/6oSorbb93dXi1AuGaOD8SOCAVCG36UmKmH40O1PXJdgbrL8RC/B51NMi9
         GOUoHvSG1Epdb58ck+wgEKbHVk3DvA6RMeiwTugBZRJw9/tsD/ZvtcOwxG6CudlHMOl/
         uj9QmhDeC6Ymd1xKMy95DiJ9TtEIl0eCfYnBcpyqAGz0hpIzcTiMPYR40pgR6vnnliD9
         MFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=onk5VlFLt/2rbYSdkglBN0pjaK0X6hkgSFRRhp6WJag=;
        b=lVK4H9iuV/HkxKMzL50kzmdcVkzailAhn2zPfO5HSp39O+DT2tcCS+y5TH5qxr3cyK
         6Y1XYBaSiOGTWSn07W7ACpvYrGDqfyFs71fE/zRmJBaBwsEm4Lx56C7Psso5qhvL170H
         dXpKL7WCBUcdkfwryAdbQVcBqd9tfWX8zXcHOZxGPNOy+0Ip2rHJgr1+het436HtQud3
         0EEzGJtxxF8hG3VG4KFgaznDSoVwHaDGw5s5w6zprLLRN7X6epvN6XMN1GuvvA26ldum
         L5NZ89bthdfuv/DpgyBZiK3woZC8GWFxgfNun4/TzKDjQhEXeyDfp4o4+oo9t9QFSqJO
         b88g==
X-Gm-Message-State: AOAM531JhfIz2+kmXQfqeMo3wEUpGOMb8d+Tq4i/QRalkoM7i6I2Q2Rg
        you5AOiXFc3VTJoFF3mPbVs=
X-Google-Smtp-Source: ABdhPJxQSb36ozQawplNgz4ooWiyw8w/utq+u6wncg4CL2KTuKvTnXb5Vaig3gsMW/Zeh1fVvmEvSw==
X-Received: by 2002:a5d:5281:: with SMTP id c1mr15046867wrv.184.1600078928418;
        Mon, 14 Sep 2020 03:22:08 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id z83sm19525364wmb.4.2020.09.14.03.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 03:22:07 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org, Jakub Wilk <jwilk@jwilk.net>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
Message-ID: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
Date:   Mon, 14 Sep 2020 12:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Here's a link to my branch where I'm developing system_data_types.7 and
the many link pages:

https://github.com/alejandro-colomar/man-pages/tree/system_data_types

I'll usually send an update to this thread from time to time, in the
form of a single commit, to ask for comments.

However, to find the latest version, and also see a detailed commit
history of the changes, you can follow that link.

Alex
