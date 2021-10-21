Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F443436C5B
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 22:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbhJUU5L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 16:57:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230272AbhJUU5L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 16:57:11 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1AB1C061764
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 13:54:54 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l38-20020a05600c1d2600b0030d80c3667aso743997wms.5
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 13:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jrBeERHKhBz2K13+x9SLDJrao42iilHC/ff7LmqnpPw=;
        b=R2b2mXAxBqeeglcS7bhvu+YNhPnuXvjBMhTbX9JZGVV28EWIsdErnvxYbIICFFN/WD
         3GmOgG3XTlF4K+HLDzxntVzMldHeIZoNXI/OtHBmpCHxUHMICzy0GaMW8fHENAtj8Q5e
         l3iy5WW+dmB0Hbk6/aYNMQHszOuLuNyjEBnWGgtw93xlewkkk5RTNFzlsCDdMdBL8A7l
         3X3soY10Yhno30UsUgQ7dGHunWD0CTWq22J5qjRMMUUcNjxCkHGpxr8Yz1dDlciY7hFo
         sWezWxN8M+8Sb3nriFukgJXM/V4IkjBtb41xkKIIh2RzWbOtSnRgNbTcXCd+bzD9zu7p
         BqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jrBeERHKhBz2K13+x9SLDJrao42iilHC/ff7LmqnpPw=;
        b=HbzCMnsgwjSMzLbFcb+nxSXAyJeXwy0k+wTp2nYarYrcmyVSCZvdLBx84RKQOhQRXv
         Yzwpruzh7K2Axl0bDlSM06odg983LKf9gRZIHryc5fWFnhX1NqysSWHJxvMXaXXeG2QI
         DKB1MGP//KHz8MB6E/us0cuPq63R9Xsd2p1lUJyeeEtJzd5PLKoR1U6puZEMF3yYglfh
         r1TaaMeIeKfODNk79cDaA0gcCTyd/CTaAfbOeLO00BaJIbZ9/A4IJdNjWem29NbWM6WO
         7msekEBMp/oUGUPMJTWxl4f60HRuss3lEXqHdk4RGN02Tn/CWS8iB42MtSEp7CuJ7Uav
         Oz6w==
X-Gm-Message-State: AOAM532bhr5RrKQEw5GEtxXwPRxonpbmJEnWQrMj5DhgLby+h0trH2y6
        stHsWn2aK8di0CxN5TOPaSw=
X-Google-Smtp-Source: ABdhPJxvO336i2chUSc4fKdjRzjncK1IudthafHVNMxg4XQ7Omh9SkI0VCRQEcYuRCEriowRnx8Bxg==
X-Received: by 2002:a05:600c:1989:: with SMTP id t9mr9201511wmq.48.1634849693331;
        Thu, 21 Oct 2021 13:54:53 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id q7sm6005707wrs.73.2021.10.21.13.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 13:54:52 -0700 (PDT)
Subject: Re: AW: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add
 [[gnu::nonnull]] to <time.h> prototypes
To:     Paul Eggert <eggert@cs.ucla.edu>, Walter Harms <wharms@bfs.de>,
        Jens Gustedt <jens.gustedt@loria.fr>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Glibc <libc-alpha@sourceware.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211020202241.171180-2-alx.manpages@gmail.com>
 <e42cc9f415ea4b069dd5cfdee04e3e87@bfs.de>
 <35ae1737-f167-e611-c5e0-26ed3e54618a@gmail.com>
 <d015464c-714d-771e-6829-c1032efab15d@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e9f0dc6d-995f-b263-4b1e-3861dc678714@gmail.com>
Date:   Thu, 21 Oct 2021 22:54:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <d015464c-714d-771e-6829-c1032efab15d@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/21/21 7:40 PM, Paul Eggert wrote:
> "f (...)" is hardwired into people's brains for function calls, and we 
> shouldn't put anything between the "f" and the "(" to confuse this 
> longstanding syntactic pattern. So this stuff should go at the start of 
> the declaration, not after the identifier.

Yup.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
