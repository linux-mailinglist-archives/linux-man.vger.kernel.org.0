Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47B0528A755
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 14:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387797AbgJKMZ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 08:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387744AbgJKMZ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 08:25:28 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AC19C0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:25:28 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l15so12057291wmh.1
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4EfywtpQe1dPIm3hxDSyJpjf5fLj/xB09aQdD6W7dbM=;
        b=cB43OILkno5N2zvgc8ozGpWr+BwuWSU5CTbSstpRc0YcgSIOBCrinLeEvugQB3RyK6
         XlM3PX3H+y1rZ4LDLrDT+iUXTHmxqpF0rqmTmKslgrk81Nb445kdux31o6cf0l11pFG6
         WQOmGJ+h1VxTdBhN2FXw2+iQeFmIYUk06CxkICrvBA3JJdZg9RJg/RQUNvQ2dymCFrPu
         2zV0Smc4/0VsP9XTOYLnbznprVAmhQrHeWkZzwN80seAx2uA7Svnsj8ATAmCZSmPbEGG
         etdhBh+QMEkBC2ba+G2/2gH5tvGAxbEocHDOqAaSt7ELxVQ1+s/MIausaoF1TPuCNPi4
         0vow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4EfywtpQe1dPIm3hxDSyJpjf5fLj/xB09aQdD6W7dbM=;
        b=S8yXSarDbrNjzsw7nU/bnHrzk2FnY0yNGeBGSMvAVHH+2lpknjVwxpKsP1eyCOwn4i
         c9zwVTq7FZez09SQnbVjhYp1IcyT0O/ssYUTEyvSZ2sUZlwnbdhYO32xD9w7w7fqd+Gs
         VLh5vPtAojXH8jNpeDCh6N1tNEHrNo01QpER6QL3ODAMcN5hFT+Ht7A+sKQ9jex96Ejd
         CvXlWXtdo4gbucWQw3a7MH9gdQuLxLB9f6q6p7BuUZgg8DlDmuIJ6OVUH+pkICsKVer4
         8dtRP7nQ6GFNppCci0O0poyJGbFOd8Pm+LQVqKUa2h8jaz0XzkIe5TelLB3JQvCxu5dW
         eOwA==
X-Gm-Message-State: AOAM533rnxiZTmaoIVWUAxd6wQ6CU3a64PFkUPs3xoniPR7xK4bzwn+9
        N+HGITOK4wF3EYeDhH1XYXA=
X-Google-Smtp-Source: ABdhPJwhCYKYnHfZtQ+x3zVvXF3VVknT/Y6G+aAeBcPhPZDZXSXR0+uYWPg6utYfw4Isc2H/6c304w==
X-Received: by 2002:a1c:1905:: with SMTP id 5mr6812791wmz.32.1602419127122;
        Sun, 11 Oct 2020 05:25:27 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id s185sm19062536wmf.3.2020.10.11.05.25.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 05:25:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] regex_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
 <20201011111525.9735-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cab14834-1ed4-cce1-0f96-b39073dc159b@gmail.com>
Date:   Sun, 11 Oct 2020 14:25:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201011111525.9735-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/20 1:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/regex_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/regex_t.3
> 
> diff --git a/man3/regex_t.3 b/man3/regex_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/regex_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
