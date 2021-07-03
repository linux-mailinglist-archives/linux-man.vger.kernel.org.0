Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE0C73BA9F6
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhGCSV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCSV0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:21:26 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4753C061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:18:52 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i8so3760113wrp.12
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mbhg00F+ewIM2mVg6xmE4U0K/ML1dygAq/21S5xgWrI=;
        b=ukJzNfmA2DQlcTUAS7YkTDPtsMcUaaeaMwnOwzbz5o3l3+/OfccdcQn+fYfr0Ikgm6
         XHPLlntUZah7htFYzRWAqi3Bk+86SndUZfcMg1sdtFbK6Sj0SoLGMhoxQvYsRlwOOew2
         unY3zuWV813HaQ9P+xwkoE18ldvlMuOMzVItT+JFtWIpP118/luzdr1oELpnnZwBoREc
         mjo+M7+vyNVDXVtbNndulkubIxkTmaNBCSKMSudgMksre4/YXBZr80oli8fYQBLwcS9Z
         5Lj9Ewc01I12tHLhFSIVDPR+Hlniku9YV3B/rXVLDJyZ3i78FUeKFBJpr7PcCzLAQ7Gh
         scWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mbhg00F+ewIM2mVg6xmE4U0K/ML1dygAq/21S5xgWrI=;
        b=Oqr6KYgH2qB0+7dA/QP8QwqcMbAohSg2WN2six2olm4QSpDZ1KgLkDClq796xFfoi8
         tc1MXMWbmC/vPafJwcqVesxptF4q2QONnydNgPIymK5Eng6LrJJm6eSpD+9oc1OJidfn
         cUEZ7YAk/4QkNHFtLwoa5W747oP0WZKScmSy3ui8P3c+DWRjXJl/unFa/o0o/ccyr8x1
         f64sDguhHbhSXeEzpm149e749FhSOZS2kesml6oDyCtDWdcYj5t99nQk+ujJ8Yn4XM0d
         FrsCZyitOOb+KbC2x6lxMpchI+Zud1JOXhIDvlEYkFjvbZPJnZ1kHJewzbm8V5SHE6Xh
         qshg==
X-Gm-Message-State: AOAM530cafG7XeT9giN2A1FcjOCA2jMaygO9mnDWSJd/ATLfIIlqPUdl
        /b+9Uuip+tx1L1qp03mWe+HDOz29S4c=
X-Google-Smtp-Source: ABdhPJwgYqsYkfAM4v9NenNzgCICk96SfKKciw+JNFNeIgCsA2kVX5SxKh5mdCqT/5q7NMnCvNZ+qg==
X-Received: by 2002:a05:6000:12d1:: with SMTP id l17mr6286317wrx.225.1625336331313;
        Sat, 03 Jul 2021 11:18:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h8sm7265139wrt.85.2021.07.03.11.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:18:51 -0700 (PDT)
Subject: Re: [PATCH 0/1] man2/fallocate.2: Fix documentation of shared blocks
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     djwong@kernel.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <20210621004453.7437-1-dan@dlrobertson.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <68fe16f4-9ec2-54a8-056a-c2239d8c8cfb@gmail.com>
Date:   Sat, 3 Jul 2021 20:18:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621004453.7437-1-dan@dlrobertson.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dan,

On 6/21/21 2:44 AM, Dan Robertson wrote:
> While doing some work on fallocate for bcachefs I think I stumbled on a
> typo in the fallocate man page. FALLOC_FL_UNSHARE should be
> FALLOC_FL_UNSHARE_RANGE. I believe this is a typo instead of an update
> as a brief look at git history in the kernel seems to indicate that the
> flag was never previously FALLOC_FL_UNSHARE.
> 
> If I missed something in my review of history, please let me know. Any
> feedback would be welcome :)

You seem to be correct.  There are 2 commits that talk about
FALLOC_FL_UNSHARE, but it seems that they do so for simplicity, and the
code only contains FALLOC_FL_UNSHARE_RANGE.

I applied the patch.

Thanks,

Alex

> 
> Dan Robertson (1):
>   man2/fallocate.2: tfix documentation of shared blocks
> 
>  man2/fallocate.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
