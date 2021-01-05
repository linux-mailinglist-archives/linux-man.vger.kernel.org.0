Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D43F2EAD19
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 15:10:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730648AbhAEOGH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 09:06:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729032AbhAEOGG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 09:06:06 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D63C061793
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 06:05:26 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 3so3164866wmg.4
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 06:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xVUs5F4tLrJw5mbOJXfYqBetyr1h6a09O10iwisPsT4=;
        b=HsZ2aa/uNFgi73QtYoP9IC2anv6FT44jBn6x+lerilusUG/1MMgOw8gXXkhzpTGQV+
         cXaEZUUL+hhU9ZAIn4KjgD9QIU+w2HUeeXFqvQuLAi5fA+HuSDXIjPAz3H6acOFGPBzR
         aQ9w6Iqk4ahfBXXm2JqdxAipVjJX5Up6PO1PmZV3zQEcA7SrMe3oY9+/JUSGgixKkWeD
         DAtJUe1e+AApVC8gCwd5eU6mH52Yfg3p5TNV4znDp3Sa9Hl4TWvzyLXZ2IKFlQAZVJbj
         Gvcq4V/1C2yCpGmbbYbosJrrVlE3uCfTTnEopyOYj3O9ikTAXRKX4JMXs7UJvFUtjnXa
         kEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xVUs5F4tLrJw5mbOJXfYqBetyr1h6a09O10iwisPsT4=;
        b=eSNNKAHtyG5DUaeCCOqWYujpw9SjIwYE7HXKueqtBmwU2Sw/Oi57MGdsc18C3sQMpV
         7T9M022WZ12C3JH4iWG0fyqKRm0S5p+IrmR8oBHrn2jwemzPh50ibbgFNXeWMmA1dD1t
         3lR51vIBQqfWf0TdvkagQIXxyxmsyAbPc7GwgFFFobs1EFjsLaeDWtam0I63Dr0tOpRl
         9Zg95+KqtNAX4VhKucw4x/8it3KnFBQHFQT0M0a0bygyM93z8qdey5MTcVgp9ZZ2Lm9A
         lXYG8XlFZBymO5SJP5J2acSOjvKuKQCtxDFsIB4E6Y9FUlvomiPtLghi4j8lvIeYOSnI
         rGWQ==
X-Gm-Message-State: AOAM5323JMO68K2x2KIddwVZS6Fsq39UEMdqTANCpZSYkc8K/uKJVyJQ
        /SMCZgGOXVFy/q/jvQm86hJLOp7PZq4=
X-Google-Smtp-Source: ABdhPJyoSJcAzjvzzvlpqoBnYAIUiSuVrxHw9qC+jZGoCoTLvwUt+zbhIOrF1SOCMA4wrRKeorL64A==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr3608260wma.141.1609855525049;
        Tue, 05 Jan 2021 06:05:25 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id w21sm4066941wmi.45.2021.01.05.06.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 06:05:24 -0800 (PST)
Subject: Re: pdfman
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210104224515.140403-1-alx.manpages@gmail.com>
 <ae31daa2-a44b-2e79-1a70-a95428b7e231@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <90210646-9bc6-fce0-5c3b-a440a0a0bf8f@gmail.com>
Date:   Tue, 5 Jan 2021 15:05:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <ae31daa2-a44b-2e79-1a70-a95428b7e231@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Michael,

On 1/5/21 1:00 PM, Michael Kerrisk (man-pages) wrote:
> function pdfman {
>     man -Tps -l $1 > /tmp/$(basename $1).$$.ps
>     ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
>     evince $1.pdf
> }

Would you mind adding that to a script in scripts/?

Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
