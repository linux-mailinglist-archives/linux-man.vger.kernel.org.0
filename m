Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B90923DB003
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 01:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235100AbhG2Xl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 19:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbhG2Xl5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 19:41:57 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C735C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:41:52 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r2so8907529wrl.1
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cp4kQZkl5NvQzV+BdurKVioPC5fUgFULgZMGgpSX7Ds=;
        b=RVnNClRgNa/eBgq07giOnp5cdX8GslSWO2cPBlnwxw8z+2K/pa3ckPWZk8+f8/0474
         KWovMUicWS9/KEexAjjRWSEkSOJqhr3JUKna9fr69AE8WdYG7DoIqNZd/iM0a9DlWp2R
         NXzv3LS2fLFyL1zGELs+rTwR5tQTAR/saz71ojKuNi0T/V51gXYKj+AJZUhUtcYlgCu9
         1NJdjzsckVm4i1A//WXVGJns+Y8d6VsIYn9nnxqLp4JdDlmsCuexzCvJErCmIHkJjRYY
         5VVNEf3a5PiLTa+Yh73dT7a1Y9nespbDLV8/Btnp6uxqyDMt+DmbDpJUfIAoFgpjCuc5
         qphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cp4kQZkl5NvQzV+BdurKVioPC5fUgFULgZMGgpSX7Ds=;
        b=q4PNS38Vyl6TSj81WatElxdvOGPNT2WJCzApYggzkmw3hFYbxZe2c/l3sM+tSnfvhB
         wkKsfhRBtrvsl4oFdjEpk0erTIDrGUibIjay7XOI8dnExt/liHIy7fGoMAtoyZD1QJeJ
         5u3BpVr13jFaMvCVdXigfVvY1TfUYrsJ14XHvJ+hYfyYbX/Sx6mdvgpfjCXCcq9DH/Z9
         e22n9X31R7wqPilpANzRFeAh3ncbyRWTaWWRKJiT1FJhoFcXtPHC8xfUKhVREH2jUghR
         iEdXxtl8Oy39AU/XohIoe2xOLj7g5CoByl6LQ1d3xthGUgFddjVOjNTZ5pnsXRUi1alt
         ROSQ==
X-Gm-Message-State: AOAM530ZX7/0UDwFD4JBP8v1x5kIYFEv0XaIRmg0Il3RODwWDjLLPnh2
        sIQ9786eS8DBqnE5TCcE3Rw=
X-Google-Smtp-Source: ABdhPJzH6SdHVIdjYb/ltvVCP00jJs0XlNY0vlF/UiNWtVnAsJg28C5FHgGZDsPv/R4EIcszNJzbPQ==
X-Received: by 2002:adf:f383:: with SMTP id m3mr7132185wro.81.1627602110828;
        Thu, 29 Jul 2021 16:41:50 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w1sm10627594wmc.19.2021.07.29.16.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 16:41:50 -0700 (PDT)
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210725225453.7341-1-pali@kernel.org>
 <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
 <20210729172320.xhrbonoxisqioe3e@pali>
 <20210729230421.lm65cjomqx6rezzl@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <304b7610-a399-3275-755e-5648bfb941f2@gmail.com>
Date:   Fri, 30 Jul 2021 01:41:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729230421.lm65cjomqx6rezzl@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/30/21 1:04 AM, G. Branden Robinson wrote:
> At 2021-07-29T19:23:20+0200, Pali Rohár wrote:
>> How do you prefer to format this part? \fBB0\fP, ..., \fBB9600\fP
> 
> I'd use the B or BR macro to set the literals, depending on whether they
> are directly followed by something that should be in the roman style,
> and I would definitely set the ellipsis in roman; when used as such,
> it should never be set in bold or italics.  Use of the ellipsis in *roff
> input requires some care, which is unfortunately often neglected.
> 
> .BR B0 ,
> \&.\|.\|.\|,
> .B 9600
> 
> (I dithered over inclusion of the thin space escape sequence \| between
> the ellipsis and the comma.  I can see arguments either way, and a quick
> Internet search does not suggest to me a strong wind in either
> direction.  Since its presence or absence makes no difference for
> terminal output, I expect most writers of man pages won't care.)


Thanks again for your input!
Good to know that.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
