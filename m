Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 609ADBB3B7
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 14:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439368AbfIWM1n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 08:27:43 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55855 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439379AbfIWM1m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 08:27:42 -0400
Received: by mail-wm1-f65.google.com with SMTP id a6so9711996wma.5
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 05:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6BZaDRgEC5jzqH7FZVcUy+IW26qqnA0ZOcbU1L56i3Q=;
        b=QgYpyJdXOvPAjZ06MRT3oMrg/yBcXyQuJ0eQPNColMz4JuKNt0Lz4EFgWqrZ19gNNy
         7xMvPmEc0S9g/FelhF0J2ns4TahHmdQceSh9GFL25SeoJntpSz59WHM+HGkP96OLVWoU
         3hEwpYApvQ0IbdJ4BOlUmlUsuKQQdXTnFBGrFcFRFO1TiI+FXX5PgH6p/dPCpra5Gbmt
         /KGy3Kx6DLb+kPR55SZybznf2JOPL+yd9pbCv43+slQi2W6aIWcPGyS1pbJ3MyPH42M6
         dNj9gXeNb7kIsViZjVJuc87bU0dwR4Ut9tRpzBXG4Akkz2f+DfZowIDhgiE4U/JJZgqT
         zk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6BZaDRgEC5jzqH7FZVcUy+IW26qqnA0ZOcbU1L56i3Q=;
        b=lAXiUIFxICUI4CALiVBs8eWHXxmpHrZ4Uj327AG5rqgklPfekUA8t9laoiXRFJrj9g
         H+xX8ycEufzzOYwEGB0OTPP5GsvsgqCPjq5fi1kOx4v73gxIfp7EtA7JfkxEdTI9jAhI
         F4lY51HeeBRT7JEKEr8AOGzxwFSLmseTRm6CHmgxQOtAzjeMZG3EdB9toxNkA5WPDvSy
         XgSASaTZY6iiLR7L1QevcKl+LKj5kjvWS/3B+KlrFIoqOucejf3nAVaSU4C7Y7rJVhqA
         mT4trm/FLiMuFbfJFA4idvnGfvYoUNwC5qLCbsV61Dh7EvBjWrtQ3MpRFYeD0Ao9DO50
         O6Bw==
X-Gm-Message-State: APjAAAVj1vdi3J/0HzbXKXb5VLW+dH6gOIpB96BBS+Vvt2MLWYTeRqrf
        +xzTj79gToufYc0wWpmRJq0=
X-Google-Smtp-Source: APXvYqyF8iuD/+u1hTRBJkC0JCyPGXCBRdTvq4Hs8WB+BPehUpxqY91D8UJYh2NZZ+tQ2fOa+sZ9MA==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr14046573wml.169.1569241659602;
        Mon, 23 Sep 2019 05:27:39 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id z3sm9638231wmi.30.2019.09.23.05.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 05:27:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        benh@kernel.crashing.org, mpe@ellerman.id.au
Subject: Re: [PATCH] getauxval.3: Add new cache geometry entries
To:     Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
References: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a8ec98c-f93e-f186-b365-82857ec46395@gmail.com>
Date:   Mon, 23 Sep 2019 14:27:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Raphael,

Thanks for this patch. I have a question below.


On 9/16/19 8:41 PM, Raphael Moreira Zinsly wrote:
> Add entries for the new cache geometry values of the auxiliary vectors
> that got included in the kernel.
> 
> Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
> ---
>  man3/getauxval.3 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/man3/getauxval.3 b/man3/getauxval.3
> index 794bc97b5..30f0757b5 100644
> --- a/man3/getauxval.3
> +++ b/man3/getauxval.3
> @@ -123,6 +123,33 @@ The instruction cache block size.
>  .\" .TP
>  .\" .BR AT_NOTELF
>  .TP
> +.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
> +.BR AT_L1D_CACHEGEOMETRY
> +Geometry of the L1 data cache, that is, line size and number
> +of ways.

What is "number of ways"?

Thanks,

Michael

> +.TP
> +.BR AT_L1D_CACHESIZE
> +The L1 data cache size.
> +.TP
> +.BR AT_L1I_CACHEGEOMETRY
> +Geometry of the L1 instruction cache, that is, line size and
> +number of ways.
> +.TP
> +.BR AT_L1I_CACHESIZE
> +The L1 instruction cache size.
> +.TP
> +.BR AT_L2_CACHEGEOMETRY
> +Geometry of the L2 cache, that is, line size and number of ways.
> +.TP
> +.BR AT_L2_CACHESIZE
> +The L2 cache size.
> +.TP
> +.BR AT_L3_CACHEGEOMETRY
> +Geometry of the L3 cache, that is, line size and number of ways.
> +.TP
> +.BR AT_L3_CACHESIZE
> +The L3 cache size.
> +.TP
>  .BR AT_PAGESZ
>  The system page size (the same value returned by
>  .IR sysconf(_SC_PAGESIZE) ).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
