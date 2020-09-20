Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4BB2717CF
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 22:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbgITUTy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 16:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbgITUTx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 16:19:53 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D95EC061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:19:53 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id a17so10629871wrn.6
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OtFg5mLxQ/KmM75gPqyFZiBJXOkr3ryoVxtCyydLi2g=;
        b=cT0nXQNq0yV2h36WFAsqf5rgvaQ/pO3EE9dkI08Uou3Fj5rn8rieeS0cvBNdUA6NJj
         Yt5pcrv5aubS+iG+XCYfKcOnAznuxcHkc0ENLldEeuX3T/Is4UGzWTX+E5NZRZ4YlTgN
         3SVJCs8c+kncUfxZsAEHtvHxdMJAhqWGRSEXM9kIl38xWP5Hi9l2icJ0Is+LOjNt1U8n
         qukAmeBCffB15s+Db3Enstl0w6LQcSuV0MbiEADnZoWPdZ6AKSPlL100i90wu6KzyeK0
         mgA03mCVleULmCyjHYSl7S67PGKNglnqtX1Um7iXyj1tusyo9LTSqE45hsIwnRQ5c7tL
         Tm5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OtFg5mLxQ/KmM75gPqyFZiBJXOkr3ryoVxtCyydLi2g=;
        b=WqBMTHAuftF+v0s82ZqWiNxh4HSchsVWafJ6wiblM+yGjx9jZ0Byi+f1MqjCwMhZx4
         mOFgOJ/AkXgIpSZQSdHdb9aJpSazCer34Ol4OyfJkWc4pQnkWnCNSr/m8FKla/WxMKJe
         GASDFs0Oj/LB3yHR5tHf2Sn9nMDilA3fagDKncwQ4obwz0HJUyzhMUxwSAg3KDUBqq1D
         5geLbbYjgdQp7KbMq4OhtYTZ6HPwdXqr5wPuqckkgPImxe+rMcWuB8qHrdlhLRXBMrPl
         JXDQ+EOD1Jeyq/2ZOGvtt0Sl3Lo1Frjy8JIKTKKugWSg1sFscAUBLthh8Ts1NFOKYKVx
         jOJQ==
X-Gm-Message-State: AOAM532tU8feIShrmAjp5X4issKhqHzklXm29vF2MKbmRFFS0KnR6oN/
        rnnpxcXaSQFlnbQe1PTXFn8=
X-Google-Smtp-Source: ABdhPJymAT3fdFPYc8fc5gSahR4tzGQDYvt5fLDvFY+934/gpp37zz2prOwOFjgY53MXcPbsNReARw==
X-Received: by 2002:adf:f04c:: with SMTP id t12mr49875764wro.121.1600633192138;
        Sun, 20 Sep 2020 13:19:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t15sm16394170wrp.20.2020.09.20.13.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2020 13:19:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 9/9] siginfo_t.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
 <20200920180551.63608-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e0cd1905-c3e9-4e88-9104-9e8f5aa9fdd1@gmail.com>
Date:   Sun, 20 Sep 2020 22:19:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920180551.63608-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/20/20 8:05 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/siginfo_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/siginfo_t.3
> 
> diff --git a/man3/siginfo_t.3 b/man3/siginfo_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/siginfo_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 

Thanks, Alex. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
