Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABB34A9978
	for <lists+linux-man@lfdr.de>; Fri,  4 Feb 2022 13:43:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236869AbiBDMnZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Feb 2022 07:43:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbiBDMnZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Feb 2022 07:43:25 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFEC8C061714
        for <linux-man@vger.kernel.org>; Fri,  4 Feb 2022 04:43:24 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d15so2317354wrb.9
        for <linux-man@vger.kernel.org>; Fri, 04 Feb 2022 04:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nzrtqBzr920o6tbdfx6iMU6hjPL0Y+9ILGTWF8tyw8s=;
        b=eX/Zyv8OaEnB+isTBFA2/Wf1gu7QICvPCgVKwhUzpek/O6VTCHkAmcS2Gbife8GZis
         cpkHp5hjCWrzl/tu9w0CuZ4YsLIuXBH9CgOHB0Xg8FsLRnXoJ26rTyL/vvLPhbS0ftQQ
         oXtTzaroF43I2tsAaAFjtlwhXiRsEfOoccqJizQi4jqI5LG1pS8E7Wggy/dLdCVPPY22
         8D0bxjX9cSm58NXGJawAfEHoCycvMxSQdlJ2nzroHLyMIE3FM6f6UqxcJkOSKfIvA1bF
         WKKmQojDKB00hJF+qb0wERYrmuVy7HvF1bmr7CvTZcts/prTvD4yg6zjseBrLOybq+TP
         vLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nzrtqBzr920o6tbdfx6iMU6hjPL0Y+9ILGTWF8tyw8s=;
        b=J1HXpXsvF49BoH59ADTly4xXEaeJkFzZQfFEP/bSnFoUeAC/riyNnx1qDO01nle3e1
         Rsdhh6y+ZuNx3sji67PBPn44bm1Fr06ZHNNuI628oyAzUsXorSG1H7bTfzGPF6xTH7RC
         0NI0K4rzrMrOyBQcfCBfq8m6exw57lNhxILMU6/haDeFym09q1MwX8ieAy3cPFRHeYVs
         8V1z3neVGxLCa9O1JtPWONan4cvULHeyA6N7RfZqNiHLKQKIUc7mJqz2ybIo6DzPkBDH
         FoNzexJvO4aC/+hsh2GrwJ6EEXLy2P+xWkkF3FCfsSjQVJ63C6XOwAd+VXfxCIPI1iue
         HvzA==
X-Gm-Message-State: AOAM532Kol/6AZUGdN6DvzioXwfcLaTEuaOXfHshFwtNWkilWEZiAgqf
        NuGMt9+Pr5VPPPWIxmeLxE4=
X-Google-Smtp-Source: ABdhPJzNjzPt6/Ff9qBhSAPRfzKj/LKU3rpPrDTc1XgZ6pMBYTSAEtWsAO4fCJtJ9WDOVnKKbo2YBQ==
X-Received: by 2002:a05:6000:3c8:: with SMTP id b8mr2370900wrg.132.1643978603226;
        Fri, 04 Feb 2022 04:43:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c11sm2189321wri.43.2022.02.04.04.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Feb 2022 04:43:22 -0800 (PST)
Message-ID: <b28e77d0-c0d7-a0f7-054e-2da546721da0@gmail.com>
Date:   Fri, 4 Feb 2022 13:43:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: fmemopen manpage (3)
Content-Language: en-US
To:     Lucien Gentis <lucien.gentis@waika9.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <13b895bd-7dca-1d14-2703-0fb5e90381fe@waika9.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <13b895bd-7dca-1d14-2703-0fb5e90381fe@waika9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Lucien,

On 2/3/22 13:27, Lucien Gentis wrote:
> Hello,
> 
> In that phrase:
> 
> "If  buf is not NULL, then it should point to a buffer of at least len
> bytes allocated by the caller."
> 
> Should'nt it be "of at least size bytes" instead of "of at least len
> bytes" ? (where size is the second argument of fmemopen)
> 
> If not, what does "len" mean ?

Yup, you're right.  Fixed.

Thanks,

Alex

---
    fmemopen.3: wfix

    Fix incorrect identifier.

    Reported-by: Lucien Gentis <lucien.gentis@waika9.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/fmemopen.3 b/man3/fmemopen.3
index 50b0e4ff5..0dc4b8b1f 100644
--- a/man3/fmemopen.3
+++ b/man3/fmemopen.3
@@ -93,7 +93,7 @@ temporary buffer allocated by this call (but see
 If
 .I buf
 is not NULL, then it should point to a buffer of at least
-.I len
+.I size
 bytes allocated by the caller.
 .PP
 When a stream that has been opened for writing is flushed


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
