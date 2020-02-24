Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58AE3169F9A
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2020 08:59:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727219AbgBXH7L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Feb 2020 02:59:11 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46313 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726452AbgBXH7L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Feb 2020 02:59:11 -0500
Received: by mail-wr1-f66.google.com with SMTP id g4so2798773wro.13
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 23:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cuzE4xGEBeB/JzRBOfnpjYKgUr9vgRZtFokosbPlp9M=;
        b=eyMcCJolzlFzqc+8H1HmYQAITjaFeoskLRWrdQcs3/bdqErKw7CsH9yaVfsGLEDdNO
         sUQ+mQ9nBZsHqS8HQBrTdWGggkrACK30gv83Y4qreVsmpW95y4h9g4c1adqlw5J8vx08
         mA9ghA8HQVzQI5IMP9Jvlhx/kYn4xgfc4iugDd0+yPil1y+o0/hCTMna+5EAZLC4SLy8
         2O6YWC4r2ibcjPT+/CEQCWTMDpFi4TrdVVnfTENUQKMyzPMF72cow8s+m/7cwUnaN96N
         J6+g9Pb4v2RIdsWeUVevF1si42K6wNwmExUE3Gz5o+nZ/qw8lOvkrFiBh1hzMNtUS09o
         D27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cuzE4xGEBeB/JzRBOfnpjYKgUr9vgRZtFokosbPlp9M=;
        b=e5vTGIDS9n2ZaOT14ivjZ/qG+7LQ0vZfoOijqhCh+l8vy6exV7xCND46k/p37FglQW
         T6lBuQC6MIZLvPJYVXcHu+Z7nSlscS32xlGM1qYjmUzL6tVIbZ0h1+7QHjjquHXkmxw/
         v40FfE1t8w98fUVBHSylSFpcgJrs8tc+rFTulta/8OxwffCioK0Ujn2OIouNRRY1GEHF
         II45LwiAa5KmnC0XBCgEVTv0i0hvMaDLHVD9+yq8B3D1vG1Of4mdKanJWe9H4sT0mrC8
         EgGzycNroGokd5K0DEnZLIaOSprUjSGqIpVO1cRpER+lX6HXQ/0OwiI1FOwqkpKkZ9xJ
         5+AQ==
X-Gm-Message-State: APjAAAVGQbP8tnkgnm0BUoioJpHJdnd+AogElORdfw0TYhNkAQiNw6a0
        k/+zR2Hy3m8v5XKkoJyiFjg=
X-Google-Smtp-Source: APXvYqyekRTknUPUaABWCQvPT1l1Lu3Y1IDcAEUEj2opCmNOp52Qnt3uVMrULWql4jhQ1BLbRK6g9w==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr64136491wrj.261.1582531148475;
        Sun, 23 Feb 2020 23:59:08 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id s1sm17262886wro.66.2020.02.23.23.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 23:59:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "jwilk@jwilk.net" <jwilk@jwilk.net>,
        Mike Frysinger <vapier@gentoo.org>
Subject: Re: AW: [PATCH v2] exit.3: Use hex for the status mask.
To:     Walter Harms <wharms@bfs.de>,
        Benjamin Peterson <benjamin@python.org>
References: <1537033056.1989189.1509225696.4324DB3A@webmail.messagingengine.com>
 <20180915173848.19733-1-benjamin@python.org>
 <92a0961f-927c-703a-7d7a-16bdd98324d4@gmail.com>
 <64833eb8e6064d3aba5583b88c36c022@bfs.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ccec6131-fa76-0b23-8ec1-83560f05e1a5@gmail.com>
Date:   Mon, 24 Feb 2020 08:59:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <64833eb8e6064d3aba5583b88c36c022@bfs.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/10/20 12:02 PM, Walter Harms wrote:
> Its a bit late but  ... 
> 
> we can be more direct here:
> 
>> +function causes normal process termination and the value of \fIstatus &
>> +0xFF\fP is returned to the parent (see
> 
> function causes normal process termination and  only lowest 8 bits  
> (\fIstatus & 0xFF\fP) is returned to the parent (see

Thanks, Walter. I agree that it would not hurt to use a bit more
natural language in the description. I made the text:

       The  exit()  function  causes  normal  process termination and the
       least significant byte of status (i.e., status & 0xFF) is returned
       to the parent (see wait(2)).

Thanks for the suggestion.

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
