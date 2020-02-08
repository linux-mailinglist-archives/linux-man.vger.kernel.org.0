Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B59D1563EA
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2020 12:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726889AbgBHLBE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Feb 2020 06:01:04 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46577 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726926AbgBHLBE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Feb 2020 06:01:04 -0500
Received: by mail-wr1-f66.google.com with SMTP id z7so1759251wrl.13
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2020 03:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IcPWbzx05OVIjgj2NUJhrsfYPzKUZz1CvM/eICZzav8=;
        b=sUd2Cf/vpGJmjY+0rtObbidaeUbAe2XnktZAOM6IIOiwlXkRQk4nZ8y7O6py5ZehkA
         7pxfUDr9gpJ+96GFvlK2Kuf9icb6TaojGo/k5kG3pRbGg8xeEW0GQWfP16oEJ2als7Xv
         SF64l1R9w2vcr6b0NbHpzwzePV+1hJRTK2xU4cWaBWMOjBzjGgvvL3h6UhKGx9rOuuKg
         CUnIlzT+WrHg17dsNz9d5K9VcBcDTKJXndWZz1bxe5sfNtYDPSfYEx+99G7RjTL2eGFv
         CZCeA9Zq1NEJzN7qFo4RRWn15sX+LFQmXmH4b0qt8Sy3hCBeEkdbtS2OAIFJEMBegdJi
         pzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IcPWbzx05OVIjgj2NUJhrsfYPzKUZz1CvM/eICZzav8=;
        b=pYJKsSdUVNjn2bz3mQzEA4SdvuifVMYtF5wam7XSkME1Hr55/Z8RcQOlN/lLSI9/Rm
         LsBUX3si1KOfw2WVV4T1wJCx0A4kX9ptyPVjJAzdlncNXPTzoxNmE1JUuWyWqRS7JqZG
         USiSayBYeFTSTNU5m5KKQkZHVqxEQvcIp5bSHqZ0xDntv30SFCDBS/OyRI0Lwepblf9W
         pU4RZhMqexv8gTfdDn0JC+21rS39nSBpTw3XHgdAxS+RQl6UbZ7ptyYo1lRIkO1gWfPD
         6Ij4o+VoCnfruHO4p9aMrNPbrF8ydJzKVTGL4ux4ILDTHfMfVyqfg2OkI3U7UibtNFyz
         Q45Q==
X-Gm-Message-State: APjAAAUVX2u9Md7tLiNF2MOUG9+WV95Hjzg300jFQm9BNQTECx4ovA50
        yaCqPkjS8B9/NFQzSsbBaWyTAnGf
X-Google-Smtp-Source: APXvYqxY6Rsgtls3fdDuTQLQqd+8H239iQ8ACaz+5BPGpHsdea/8E8WgTsCRr/zpkuAy+Wrn1fXFcA==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr4853733wrv.259.1581159661321;
        Sat, 08 Feb 2020 03:01:01 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id n10sm7077117wrt.14.2020.02.08.03.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 03:01:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, jwilk@jwilk.net,
        Mike Frysinger <vapier@gentoo.org>
Subject: Re: [PATCH v2] exit.3: Use hex for the status mask.
To:     Benjamin Peterson <benjamin@python.org>
References: <1537033056.1989189.1509225696.4324DB3A@webmail.messagingengine.com>
 <20180915173848.19733-1-benjamin@python.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <92a0961f-927c-703a-7d7a-16bdd98324d4@gmail.com>
Date:   Sat, 8 Feb 2020 12:00:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20180915173848.19733-1-benjamin@python.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ben,

On 9/15/18 7:38 PM, Benjamin Peterson wrote:
> Admittedly, the POSIX specification for exit() also uses octal. However, 0xFF
> immediately indicates the lowest 8 bits to me whereas I had to think a bit about
> the octal mask.

Thanks. Patch applied. (Mike Frysinger provided a similar patch,
so I've noted you both in the commit.)

Cheers,

Michael

> ---
>  man2/_exit.2 | 2 +-
>  man3/exit.3  | 5 ++---
>  2 files changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/_exit.2 b/man2/_exit.2
> index c55d2a612..6e656c8f4 100644
> --- a/man2/_exit.2
> +++ b/man2/_exit.2
> @@ -65,7 +65,7 @@ The process's parent is sent a
>  signal.
>  .PP
>  The value
> -.I "status & 0377"
> +.I "status & 0xFF"
>  is returned to the parent process as the process's exit status, and
>  can be collected using one of the
>  .BR wait (2)
> diff --git a/man3/exit.3 b/man3/exit.3
> index 4a30fc39f..b47ba17a1 100644
> --- a/man3/exit.3
> +++ b/man3/exit.3
> @@ -38,9 +38,8 @@ exit \- cause normal process termination
>  .SH DESCRIPTION
>  The
>  .BR exit ()
> -function causes normal process termination and the
> -value of \fIstatus & 0377\fP is returned to the parent
> -(see
> +function causes normal process termination and the value of \fIstatus &
> +0xFF\fP is returned to the parent (see
>  .BR wait (2)).
>  .PP
>  All functions registered with
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
