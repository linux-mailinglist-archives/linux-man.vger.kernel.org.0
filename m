Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 922F824E659
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 10:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725995AbgHVIRO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 04:17:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbgHVIRO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 04:17:14 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC06AC061573
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 01:17:13 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id t2so3605258wma.0
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 01:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uglTlJlqYOnw/VVki3i6bOdTvPROr9XiwUdSqx9RYkM=;
        b=KIuEsi6MrQ2FTXnlcrkZqblmi7zfzn5P0Gr76MCYHNUj5AucwUkOCxbv4wifnYAoQI
         7mViYpeHZa5nKZIZISDIkmbqnnjuBgEyf887T2iyNGrONyKeS+YqbzePUyfAKbmuW8P6
         dFNsezW6BGu3LG2VpXSLmRDUaBD7kzeZeKj9Fc0hlf3SsNoyh4jKoqbtgOeaO1JaJk9i
         imts39tyTzdGL1Hqzk4b9Uh/HPsBlfu3KO61Y2BiaZUldAnVkZGbHZWmhVhC03F9mZ35
         TegfADRhLBZYJNk44h1JbvDqEURdxcoxOeKJGg96x5ko71YCHOnte0/uzfindZkJLPya
         WrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uglTlJlqYOnw/VVki3i6bOdTvPROr9XiwUdSqx9RYkM=;
        b=l/86rTWEzrnBsx5o5XhfagC4KZo9u0rMOiQkZL4OKX2hPbUwqu8KA+gci+O0gzg2wY
         SHhd5iJdHAldMjO9KvxLb3drMsvXZbyqwJcMJsffijCpGa1phELgGCk6JM+ZPUhtOV9b
         t2QA76knHyXX1BTOlNHiGw46DCvDkQ1QFNemdru+xPdmbf0tma2aIJ23X8wQAQNvTnvW
         eWAEmKxKWYoyq4eZe9RBlJe/2ZWcyhmWsKA0yeHfB4FPs134YDfforCWtV8O4qN5S3Md
         yj6oi+MC6pa3PH61WyQL1ZOjuVG8Yehy9Jv/uVsf97auzRyXk4vZ5UmIJtkmMotZuE6M
         ib9g==
X-Gm-Message-State: AOAM532oNjhdM+8Ad3NqDZebhSJUX0zfuOnVrrPoF38K08TIclg4JU/t
        qLY+gOs1Qo5yPNjXq1z1YfFM2OFZF0riOw==
X-Google-Smtp-Source: ABdhPJxa9Tillu8ZKibOLMQBDduHZTpbP0u+wSbGNkuiHVodTKTvzHksivJsdmRaE/NkDoqXxwJkYg==
X-Received: by 2002:a7b:cb4d:: with SMTP id v13mr7778579wmj.56.1598084232089;
        Sat, 22 Aug 2020 01:17:12 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id s2sm9252131wrr.55.2020.08.22.01.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 01:17:11 -0700 (PDT)
Subject: Re: [PATCH] time_namespaces.7: wfix
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <c9434354-77b7-05a4-1a8a-5289cf8e6896@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8fcb4bb9-05a1-3e11-75c0-c9d3359d2c7a@gmail.com>
Date:   Sat, 22 Aug 2020 10:17:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c9434354-77b7-05a4-1a8a-5289cf8e6896@deloquencia.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/19/20 5:20 PM, Thomas Piekarski wrote:
> Removing repeated word "the"
> 
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

Thanks, Thomas. Patch applied.

Cheers,

Michael

> ---
>   man7/time_namespaces.7 | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
> index d70380de4..86acc6759 100644
> --- a/man7/time_namespaces.7
> +++ b/man7/time_namespaces.7
> @@ -158,7 +158,6 @@ value is not valid.
>   .TP
>   .B EPERM
>   The caller does not have the
> -the
>   .BR CAP_SYS_TIME
>   capability.
>   .TP
