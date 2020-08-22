Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 191DD24E9C5
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 22:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726704AbgHVUYe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 16:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726662AbgHVUYb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 16:24:31 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E851C061573
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 13:24:31 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id p14so4912128wmg.1
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 13:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=46Xf2LwXHSE2dQvjkDO78+UToqENDIzRJy8vizXFye4=;
        b=HAHhEIZCjUjiFRCz4v0uyvvXU8UeM34G1eNsWdhza7kfpN3RIPGklsHd+YQX7Zuk/M
         WmoTKLOOXggjjXUzPh8W5gE33RKOPqG0v2JRQaDlINcqgCh3XYaItFRNQwJnvIjyE6H9
         8HDlIaGBam516QVhWHPfYL0X14XcdBxaK1ztcfFvw7KpeFZqfHHGwpwbhKqu0SZNR1AS
         Yz2T73Zq4cSMaho1D5/3p/ZVYDUG0MExPgtycgfMPxdhunSVdck4WmGRRzqrFQFIOsU+
         Slw1S44TCZ4/QslYQR5mAsdFnV+EiGskl9Tt97oqTWTbc6lkC+3+7tLN36en0Hi8iKLb
         l2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=46Xf2LwXHSE2dQvjkDO78+UToqENDIzRJy8vizXFye4=;
        b=WDU2RGQvrhv7xbrB/gty5KL2RGOkfTCnVrxVoav5gH4jtUIxSu4k4+bVB/Z1+Oq0vM
         cPMwMqoPOjS6S2WWBo4kT7EtRjk02LtPzrZ5g1jJ25aHP55bn9c6TwddbTpNIWWgnDY8
         7DBPVTo0hyp7IOpzCXkkj8D3NJLJizgFYIaIokbWOKfZs9nJjhjLbgA3YSRMAeHKpZtw
         MWPl9WQZzTXzrpKHQB2b1hfO/RlPWWKbXpMoqu/2m7zHXHuv4lOI3ZxOF+BZvCXfuD36
         n/+y3lUaD38bosRcC628moRd2Uyv0uIIv4dCuftMZhjnbiNL1wQQV9OxuB+Nofchtdo/
         t7LQ==
X-Gm-Message-State: AOAM532SXBAMQwi8IRMYUJMyp/4wBZ4tzyuiTieSNdf/0N/9D0aNHjoz
        rd3gZi4z0536dwlYCoZJc8sfWOaJ/t8fUg==
X-Google-Smtp-Source: ABdhPJzmLoDdX3+ksLvHIMIj4cMYlo/D2GnbyLXREHdFweaDGukmB6rmKFVvpjycaepUa8u+YktMuA==
X-Received: by 2002:a05:600c:21cd:: with SMTP id x13mr10144880wmj.155.1598127868289;
        Sat, 22 Aug 2020 13:24:28 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id q3sm13155159wmq.12.2020.08.22.13.24.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 13:24:27 -0700 (PDT)
Subject: Re: [patch] capabilities.7: ffix
To:     Steve Hilder <stevehilder@yahoo.co.uk>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <1940283607.6914643.1598123219127.ref@mail.yahoo.com>
 <1940283607.6914643.1598123219127@mail.yahoo.com>
 <787290947.6980204.1598124116603@mail.yahoo.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb7d8c2b-4d1f-d46e-0c56-284e9610c6d2@gmail.com>
Date:   Sat, 22 Aug 2020 22:24:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <787290947.6980204.1598124116603@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 8/22/20 9:21 PM, Steve Hilder wrote:
> A trivial formatting fix:
> 
> An indented paragraph (.IP) requires whitespace between the designator and indentation amount.
>

Thanks, Steve. Patch applied.

Cheers,

Michael

> This patch was based on man-pages version 5.08 (commit 7b203a3d6dc6c2b0a395fb06354570ff1f7b7524).
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 179668ac1..c5f6a7f7f 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -280,7 +280,7 @@ bind to any address for transparent proxying.
>   Employ various performance-monitoring mechanisms, including:
>   .PD 0
>   .RS
> -.IP *2
> +.IP * 2
>   call
>   .BR perf_event_open (2);
>   .IP *
> 
