Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3AE13E3CA8
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhHHUKZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:10:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUKY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:10:24 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45878C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:10:04 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d1so14176702pll.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iFQqIl4orXQoKL2DclxaynteVBN40f452QoruNrOi0I=;
        b=Yp2YQ9GBs7N/v3rqgvrKdKkl/OyWNhr+xMxbgsIQYmqO1yXX+HLsh1vJUmUnpK1fcV
         wYbkb9vAzEf6M9XIlPMT16/EzP+UhbjotR/ogjlntmgrqJ5BaFFzhaHcJDRBYmKIuZ31
         KJZOKeQOXxgeRl6wYONtvoPkC/dEh0mUOWYivfRoP9ipdm1meBPBiozRhI8CdXS5AAez
         jUob6ijBAUSTTFu1/5JkwMMlEfa1ryeZzV99+kiHb6S2WSxUZ5AS4FSiKKX0fX28D1gq
         k6vKU2+PgUhBlAtxsoreHVr5rHlAgXru/YWNgn7h0p9bZ1aRgM/5nhDG0PwkjDfaSimI
         DiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iFQqIl4orXQoKL2DclxaynteVBN40f452QoruNrOi0I=;
        b=cPSqZ0FftjMItGWh4bpbX9Uu3UXfXd+JMaD2sKPJumoNx0Zap6fRmKLoqFxtsr9rp1
         C+b/dZHvzYkl2VzW2dMYNMM9NYN7hitgbpn4ms7M8QPjzyVkEDw90+aKCBYYAVKk/Vsj
         /xKY/Y7AoDCR2v2Ifr5RTdlUnLINoS8A3o/H3nYX5c1PotXmzp4jrYsikt5zmEPRicgM
         pxSI+nPG2bl5t9bEUM9EO8Hq+wPqM+dtYcMLDsecR650YctTtufWiZGR540+lr0C/GH7
         dVV7ulfbWUv0QsFoFaxb8PSLkiFsInOiFTHz/MizvNPpWPDOE2udj6EUXpQmHYA2NMOB
         0VlA==
X-Gm-Message-State: AOAM5331G1ODXABJ5uqm379nM9t4Oagnpw1ZteSWmuC9g/rXMgBh9GdK
        G9TEj2MVEms+pR589NRgW9zUa+wMg3Q=
X-Google-Smtp-Source: ABdhPJx/Qv0v2lViW8V9e6xgMSvGQ6H3MGDw6tEZUYGVIPZ6ev+SnEb2ai0x0kgty3JP/X5qwJsWfA==
X-Received: by 2002:a17:90a:8a8f:: with SMTP id x15mr21039436pjn.161.1628453403619;
        Sun, 08 Aug 2021 13:10:03 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b14sm17287952pft.30.2021.08.08.13.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:10:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 16/23] man-pages.7: wfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-17-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d2931f6a-1414-0daa-8fbb-6651349fd576@gmail.com>
Date:   Sun, 8 Aug 2021 22:09:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-17-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Branden and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> 
> Saw this while preparing the "switch to \~" change Alex invited.
> 
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/man-pages.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 6cb805343..3819dfd97 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -638,7 +638,7 @@ makes it easier to write tools that parse man page source files.)
>  .SS Use semantic newlines
>  In the source of a manual page,
>  new sentences should be started on new lines,
> -and long sentences should split into lines at clause breaks
> +and long sentences should be split into lines at clause breaks
>  (commas, semicolons, colons, and so on).
>  This convention, sometimes known as "semantic newlines",
>  makes it easier to see the effect of patches,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
