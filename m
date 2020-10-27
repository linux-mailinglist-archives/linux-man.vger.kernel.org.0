Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3596929A511
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 07:58:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731671AbgJ0G5z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 02:57:55 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33518 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731484AbgJ0G5z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 02:57:55 -0400
Received: by mail-wm1-f67.google.com with SMTP id l20so387581wme.0
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 23:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OglJDPfeFC3EV5gaLPcJtBmXhFzxwEnuWVQI8J88Ns4=;
        b=Ii0zKHrUWVWBjilegQzexAqCTHSLWGQ0iZmbkwYXHOi3z2u38neREWT9mcCNnbI9QU
         pQWIvDXtdiW1nOEToesWgz46Cu8yqC7OBs9t5HW5eiXnnB25+NbCisydENH+TbwbXkP/
         8QELX1GJO8gy8NnwawVldSRabAx7KlaZgDlxXHIcQmAFnirnOTv9epCqRjzJDAuAcLxu
         oJXLo/ct+F6L9PHhLf5E9KS2MW3rwzJnyVPR+finPr3doEmC3myKg9ahCLTygM6ipBK8
         4BiQ5hjT5r404J4ZBLu8UYzzDVN8kBgbRGyyOjDXY2ab4D5NLwjiuyj+OEH+VK7R2hgm
         Qw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OglJDPfeFC3EV5gaLPcJtBmXhFzxwEnuWVQI8J88Ns4=;
        b=fSYwPIp+hKCiJW3Ic/NB2pyv/C0AqdgtthyJWmoDIl+Lwz+J2Lqk9Jp7hylwybSkmq
         Kfc13ctkE0IUbUV3Lwxcfp0bXE8ZmYm3hJKUXCS5nJf2YwlpfXhQzYE60J+rUmF8Xfd5
         HrAVdP/sSjPXOTCxqh73VE9jOhaKezRC9O5pUJYhxCNpJd8uhYOh7+mkCsK3KpR/1y+Y
         kTj3OuCifWJ7TK+vXxz5Mw3DoJpJBYX3O6BIN/95vHq1WExyexkxGwXn6NCpIC/5Gq1V
         n0/0dPLdLgh2q9ffdc6XCz8jpLjl9Il7dXdMvWijKiM+hp5lY99sW4kJ7skaDkVi6rWm
         +Ehg==
X-Gm-Message-State: AOAM533qzlXhW0OyFk4p0DC2v16p6jRWZOvoj/3hi43t2GMNtZc643q4
        aaxho7JF8EIuDpyctH6rj4c=
X-Google-Smtp-Source: ABdhPJxZHShkqhRTLsWmfpdA+gGQRa0hFPcmSKHKUQ6h1dDgh1Xyx/x7Aw/G/wFw8Gc+FAmOYQuvVg==
X-Received: by 2002:a7b:ce8f:: with SMTP id q15mr1022263wmj.88.1603781873617;
        Mon, 26 Oct 2020 23:57:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id 1sm747327wre.61.2020.10.26.23.57.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 23:57:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] dev_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
 <20201026225008.28903-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <890e3e1d-8433-f549-0772-2e48c95927de@gmail.com>
Date:   Tue, 27 Oct 2020 07:57:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201026225008.28903-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/26/20 11:50 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man3/dev_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/dev_t.3
> 
> diff --git a/man3/dev_t.3 b/man3/dev_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/dev_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
