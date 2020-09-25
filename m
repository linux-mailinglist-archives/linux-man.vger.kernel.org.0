Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 475C9278688
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 14:01:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727982AbgIYMBe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 08:01:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbgIYMBe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 08:01:34 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0089EC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:33 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id q13so3244553ejo.9
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=539BK6k+YSQ+5oKijsKBJmx9YULfGRZboKFQL9eoRaY=;
        b=sc6KO7XOGviS5q6tT2S/GlWf0Y9wznvzwRf8oORFsc4QSbyPivUL/K4lccJnP4GUSy
         YTBNX1VFNZcG6Gt4F47KxWZESUBQN5rHeG54tF9vquPTf8aYAD48wzJLazJp9xQsoxyJ
         gUQapx2VDHyflGtSmyrYw3VILCLTB+5bwip6jrGY7uTfpF+qVY760flUs3cK3x6c9pke
         /PSE1SAyzmu8qfzFzA2IWlZkwmijo6Fghx242JACIrkWlHaWwdW9OKLIe6Mqu0Ii6MIS
         c0gEpVgsUpJMsicBqf8/yocvWysMhWGPfr+eLnpCYUKIKM3uaTvDjokF2yKf/cFZJQKH
         KiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=539BK6k+YSQ+5oKijsKBJmx9YULfGRZboKFQL9eoRaY=;
        b=QFwnKAiGwjPhuYQG2lAiUCXoRNEoHrCg/jiwcydviOzeXOMyAikHjTaR6O5yDPDuek
         4SISlAbqx2/RLbkfHUAfweRWmqoVtOD+9618dQLNE/OKPERu+i8lXojwrjM2elhsWMHu
         M6zEZ3f9CgZvTa9WIYbwhdV/See/4fqxWvA7933Okw/cwPtcbdmHJM7CWg1Y+dJ02TBD
         i3JHnEXnWq2so/hBS06WmZ0u86kCcvzm09W85XGphZLI1QK4eAkfT+aQKnsVvRl18aEf
         7f3DteWCWBIbkCTyqbpwAXPJL8shiX30VsqcJVvye1MakQB021AS4AkMTnHRh5WOfQe5
         QDJg==
X-Gm-Message-State: AOAM531OX6orFAGCPoISqyt6Do7dJUrf1Kp0MnfhMUFbgvoQq8p4m3SJ
        TimosZJ58tGLoRvwseKfKB4=
X-Google-Smtp-Source: ABdhPJzxGV7BuDaX0OYvAUHR5vndNzg9OE0ZEeyOMvCHl9qQ87vRYeVHu+WKuagSCEGAmvZZj0SiRA==
X-Received: by 2002:a17:906:4a44:: with SMTP id a4mr2329742ejv.492.1601035292703;
        Fri, 25 Sep 2020 05:01:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q11sm1644728eds.16.2020.09.25.05.01.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:01:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 05/10] float_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ef9c1467-af9f-b972-58a0-10360a69b289@gmail.com>
Date:   Fri, 25 Sep 2020 14:01:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Applied. Thanks, Alex.

Cheers,

Michael


> ---
>  man3/float_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/float_t.3
> 
> diff --git a/man3/float_t.3 b/man3/float_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/float_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
