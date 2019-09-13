Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF77FB1E12
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 15:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729826AbfIMNCK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 09:02:10 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45070 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729766AbfIMNCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 09:02:09 -0400
Received: by mail-wr1-f68.google.com with SMTP id l16so31918927wrv.12
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 06:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ArmjDDEDNq07ITs8F+Hv/YxgXEepcApQoKOoYHm7Zjg=;
        b=W6yeIQeQCmjzamd/BpBibgFfLp9xTZjG1uTXt1q8ycjW2ElHjZ657Zn9c3BTVq+u1f
         yD0pM6bkW27bFxNV+mpviBa9gsxichT1sA1xxEnohqWKk46RRpLxmKDxVhPmSQd/S31G
         0ZjfQCDNRDNCMl5Rj94TuHrUx0iQTG540MbI67LBrpJLycOl7rsJ8rShK+HEL+OprqCO
         np/KaZw8hbR06s5E4KK13xa8D3QlOSokqw04mVaHi0x/xbDvDz1STlNu/Q4TsHm+eoN4
         GTUXAJuk+6Z9AWF/6bjylQkx1MLnZdc4uUL6nZP3p+BiGCtpO2rb2JiHm5d3ppbP3isl
         VTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ArmjDDEDNq07ITs8F+Hv/YxgXEepcApQoKOoYHm7Zjg=;
        b=cUmFvuQcMKZ57PfJMihWTJS8+8SQbAc3WHEtw83ECYn9qxl9odfKwvOaYIl6hEvnOw
         HutOfZDDUrjQcr4IQwWfS7bi4naWk8MtpQw//rfo3330eY7z2wy/qT6ATb92x4I6J54O
         s89oSD4mCXgozzS8BtFVj5IMJQHDDgi6epepSvLrYL91mYXJib7PRjPF3H6KgtM+JbwA
         LhMf9JHOuJQn3uCDXCtprJ9b5bXIOK52qv/n6tRgN8wAV/q8DqJ0Ov4SEy07Cr9pJVUh
         EnjosOewEoiMnkYjasUGMDJcVcxUMLikwNngo44h2hBTKIN4MP6kCfI+8XtUBs6QnQ53
         ZUCg==
X-Gm-Message-State: APjAAAVs2CNTMFCzoy1lpbpOh9VAJncffFvwnUOqoeUSg66GFtdWynWR
        uQPp3NgZYJVwN3M10ileflbhDoIQ
X-Google-Smtp-Source: APXvYqzH/EvBv7bXuo5YhBI3MSQfD4t+SQQRrSghvxEyNluJFVglYX+4mROg7MZws8egeYgYO5PCig==
X-Received: by 2002:a05:6000:1189:: with SMTP id g9mr41547141wrx.117.1568379727344;
        Fri, 13 Sep 2019 06:02:07 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id c132sm3034742wme.27.2019.09.13.06.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 06:02:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] core.5: explain the new situation with argument splitting
To:     Paul Wise <pabs3@bonedaddy.net>
References: <20190807014525.24825-1-pabs3@bonedaddy.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8907375-5bee-dfda-4836-d728920eede3@gmail.com>
Date:   Fri, 13 Sep 2019 15:02:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807014525.24825-1-pabs3@bonedaddy.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Paul,

On 8/7/19 3:45 AM, Paul Wise wrote:
> It changed in Linux v5.3-rc3 commit 315c69261dd3 from
> splitting after template expansion to splitting beforehand.

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/core.5 | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/man5/core.5 b/man5/core.5
> index d3efca3f8..ddc0352b8 100644
> --- a/man5/core.5
> +++ b/man5/core.5
> @@ -267,6 +267,20 @@ file.
>  If the first character of this file is a pipe symbol (\fB|\fP),
>  then the remainder of the line is interpreted as the command-line for
>  a user-space program (or script) that is to be executed.
> +.PP
> +.\" 315c69261dd3fa12dbc830d4fa00d1fad98d3b03
> +Since kernel 5.3.0, the pipe template is split on spaces into an
> +argument list before the template parameters are expanded.
> +In earlier kernels the template parameters are expanded first and
> +the resulting string is split on spaces into an argument list.
> +This means that in earlier kernels executable names added by the
> +%e and %E template parameters could get split into multiple arguments.
> +So the core dump handler needs to put the executable names as the last
> +argument and ensure it joins all parts of the executable name using spaces.
> +Executable names with multiple spaces in them are not correctly represented
> +in earlier kernels so the core dump handler needs to use mechanisms to find
> +the executable name.
> +.PP
>  Instead of being written to a disk file, the core dump is given as
>  standard input to the program.
>  Note the following points:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
