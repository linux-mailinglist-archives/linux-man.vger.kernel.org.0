Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 126AE4E033
	for <lists+linux-man@lfdr.de>; Fri, 21 Jun 2019 08:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726008AbfFUGDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jun 2019 02:03:43 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:44889 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbfFUGDn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jun 2019 02:03:43 -0400
Received: by mail-wr1-f66.google.com with SMTP id r16so5241620wrl.11
        for <linux-man@vger.kernel.org>; Thu, 20 Jun 2019 23:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+Thau2xycgYVZYw3DlXxKoOv+nUeedtASgitWjqU6fI=;
        b=WqVrXBGn9sJByhWgkNuthSTUCbh/5DpCw81iE8U16h8Cdmn6xT+w2sLayLMi+mLY4r
         HQCMwO3LUrlmmpaLb2lP8b8/TJu71XlToie7qllC3AVyXqGDepWDOsASyV6xJD9OdUab
         msEHwf3d9AvKdr+XYbb1EnHK1cvassoFYNVWDhzv7bWqAnbmD6V3KtsQB2sOJVRPsU4b
         1jp4WE6kWlmIe1Yn7VfnIy9efndIGqnPO7zuR+Axkcy1CEwzAtTmu+G0Daado1wT+nQD
         b3WEDcPNe1BHcOf+/rOH41naEqYYNuyfJZfTWWEmgjBR6t08Kudz1bnVm6Ks3DIr0lAa
         HQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+Thau2xycgYVZYw3DlXxKoOv+nUeedtASgitWjqU6fI=;
        b=mGQ3czFcm9/qTaCALlNFQpAjwL8+JB+5A9ULs/vmMeU7qXW/airYDe9gKvvrnrgXyE
         2dvtal/awcoknndAJ4KG0TD2ZCpWeFmQX8P5IwZu/zdbZ0yYEDP0SRqtAr9JEKm8p+2/
         Lp7+rYtT9hfRIQ7H3TPzieNQ5H+Zy8qs9wii1RJW8BA1Jp8oh+qMkGHVU2NCoxoeRvGo
         1+mwp13COyJek79Gl8/JCuMvppmkYzxSxt+7H1voJCrl7pjaDqhnrVfO4kU3AmaziYGe
         SAxeZZDTWjxtIvlJtHJWbioV0o4S5OL4eDtws8gv0ySDLDmX2Qq1Q5xEd4HYNVs2Bmu3
         uKbw==
X-Gm-Message-State: APjAAAXutZvtwaUvG0cet+vt9Re/TV2gHGgo6+9gc4+CN6NzT2XbyqVS
        L++Igo3VkSXJam7QMMIyrylbKI9HtA0=
X-Google-Smtp-Source: APXvYqx7b3hIjYMKpOe2OPJS3hwaM40KkXRtlXsG8QExx5qvqj7Jid+mjc2Jtp+E6XyNeqvUNZETAA==
X-Received: by 2002:adf:f28a:: with SMTP id k10mr12982648wro.343.1561097020865;
        Thu, 20 Jun 2019 23:03:40 -0700 (PDT)
Received: from ?IPv6:2a01:cb04:634:1500:8c89:e6ef:c939:511c? (2a01cb04063415008c89e6efc939511c.ipv6.abo.wanadoo.fr. [2a01:cb04:634:1500:8c89:e6ef:c939:511c])
        by smtp.gmail.com with ESMTPSA id o14sm1319223wrp.77.2019.06.20.23.03.39
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 23:03:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] execve.2: add more detail about Shebangs
To:     Shawn Landden <shawn@git.icu>
References: <20190321232349.20023-1-shawn@git.icu>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ba75771a-610a-da2f-4550-f3def8960d6c@gmail.com>
Date:   Fri, 21 Jun 2019 08:03:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190321232349.20023-1-shawn@git.icu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Shawn,

On 3/22/19 12:23 AM, Shawn Landden wrote:
> Signed-off-by: Shawn Landden <shawn@git.icu>
> ---
>  man2/execve.2 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index a052f34b0..c363214c0 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -336,6 +336,14 @@ For portable use,
>  should either be absent, or be specified as a single word (i.e., it
>  should not contain white space); see NOTES below.
>  .PP
> +The maximum length of the shebang line is 128 bytes, and excess bytes will be truncated.
> +.\" https://lwn.net/Articles/779997/ The case of the supersized shebang
> +The interpreter is passed the absolute filename to the file. There is no way to get the argv[0]
> +that was passed to the kernel via execve(2).
> +.\" See the P - preserve-argv[0] option.
> +.\" Documentation/admin-guide/binfmt-misc.rst
> +.\" https://www.kernel.org/doc/html/latest/admin-guide/binfmt-misc.html
> +.PP
>  Since Linux 2.6.28,
>  .\" commit bf2a9a39639b8b51377905397a5005f444e9a892
>  the kernel permits the interpreter of a script to itself be a script.

Thanks!

I've applied most of this patch, except for the first changed line,
and made some further tweaks.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
