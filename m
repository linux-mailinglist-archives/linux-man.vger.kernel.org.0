Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87FF22858D8
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 08:54:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727087AbgJGGyB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 02:54:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbgJGGyB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 02:54:01 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 226B8C061755;
        Tue,  6 Oct 2020 23:54:01 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e2so1112895wme.1;
        Tue, 06 Oct 2020 23:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ob9nq6VFc7bTI/f8dcEEVfJzzE6WUMnV/UoxYuqk+3Y=;
        b=gTD9DgIVPlTlS0aa0gpHruQSu5j25fGFhsGbiaDzxgtSvMtbqBFi3FjBUOK6mfL2q3
         pLKGNWjxBk0hzLAYX17VdKqQohknze8riqlSG4CaNZrCPXZPhon+JqgBOmz/aLiECCnA
         4IHHbPAwl/jHM4TOAGVsxchFTIQo00uXrqAttZzWMvgGyuW8pUY8sJkp6RyDprbwdRAJ
         HXF0CL+ao7ytblXdGs83c2T6zExkQ/gfWzDYmvVXRFgttql/SEqUe7hLDJHqnJMrbCHX
         sw/jRbEdzCbbh7Vpo0tQkHPB7SkmSBOzC10/GKcSAwykK7ipvWWxtGv4NckXA1x4Gf9I
         aJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ob9nq6VFc7bTI/f8dcEEVfJzzE6WUMnV/UoxYuqk+3Y=;
        b=jsAkSPg6QhgDmmwFf76pRc1qo87qfoe4A+Xfl+igxY2rgpEaksgI0IfXP0ADxUQeFr
         JLIqUKS1IIZ8YFPHsBR/a1JpUmPjRwE1LAYs8/a9+XMNJ6Y+z8Fwk0cPIc/kkr2xiARo
         +PC1+dUXGmhcKH+tHvFT/eoiFmhPuw0wJgFd1A38kEjBBh7k8dzt0fHXkWpQ4HEmwddW
         vhrij1g5d2R7LzAdBhZ7PW+tyAxUAfLK6TpW6CroWo7DxKqzpL8K/BvTtnc3qQU290ai
         nMHawVKi4/DJ+czjge7kBeT1SA+O2E1L1hxKDlA52h10XzM47+fbfXomoUkcyalEywQF
         4+Xw==
X-Gm-Message-State: AOAM530k6YYN3Bc3YlsM0zM7qlOm9Otbl4Tcpo2xU4J+JFNa5HBV3Am9
        oZFhkxWxVN+SanQ0X4ibkWoJN8qoPC+19w==
X-Google-Smtp-Source: ABdhPJwO7nhIpGzcPTaVFQoDII/x0Jo+vZPkKQLN0ImXae/nrD0j307rhQTRpbshSEVWrVYW/kjGfg==
X-Received: by 2002:a1c:7c12:: with SMTP id x18mr1625391wmc.107.1602053639652;
        Tue, 06 Oct 2020 23:53:59 -0700 (PDT)
Received: from [192.168.43.156] (dynamic-046-114-000-081.46.114.pool.telefonica.de. [46.114.0.81])
        by smtp.gmail.com with ESMTPSA id f14sm1381078wme.22.2020.10.06.23.53.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 23:53:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] off_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
 <20201005221247.13065-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <720f2ffe-b553-13cb-3eb8-b9a093c4777b@gmail.com>
Date:   Wed, 7 Oct 2020 08:53:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201005221247.13065-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/6/20 12:12 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/off_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/off_t.3
> 
> diff --git a/man3/off_t.3 b/man3/off_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/off_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
