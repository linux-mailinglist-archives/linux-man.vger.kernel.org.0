Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 348F31699FA
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 21:39:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgBWUjE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 15:39:04 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40388 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWUjE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 15:39:04 -0500
Received: by mail-wr1-f68.google.com with SMTP id t3so7971437wru.7
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 12:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zECXKgYkCYFqiZgS2M1DdWU+XexpQZZMqAh3HtM+OV0=;
        b=hqg+oSq9Ql7D2sLYrGygmpVYvg9tgukq0/6uqGQhKtXphnmriex4+9ob25gw/ALgYQ
         oTwPGadjme7XsO2OZC+h9Vd8Cf32J2wYnEU4fbLXytvVMIKxTe39Pj0UlIEoNURplXKn
         oLUd71szqdoBxuPJ+jpB0GCzicIHLtp9R0eHcjBMwW9GS6FYNL9SNm1vIh6Y21iEvhWa
         KxDwoh7asSWWxFJ5BL0C5dg6g8nBMh+lPS5cjvJW/oqUfMLPw0/purNG+scTV4jP6emH
         acj22MKXvpYjK9RjdKrjp24EY5mbLVHO2BWDEaZZXGF69rGZEGMtAh9BAtfOKteg9njw
         r9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zECXKgYkCYFqiZgS2M1DdWU+XexpQZZMqAh3HtM+OV0=;
        b=N3I+vluU/pNbwRzNWiptUQE43ONjJnrqqUEE7arT2BrHpphrXLnb+UZKHx1p5faMyf
         wtJRqnkR5noynnUCQ7rRJgDeuXI14rmNka8E3y2PbeBPuxG/7QAG+sudGMQLyLWrtQu+
         7roFRpxQGFtsqPG0tTCzz+RwT7uQEp4Yj4Ek5xQnGS3Rdt/3MkzJ86NlTA9yORj3VklP
         umH1J4kZvbqMljpTjfmfeGl/URfqoumja67InhnjAR6BxRm1GAz0IaEBUHkQrHSLx9mm
         KJ0fy53hI8UEHsp/F3lKftEMSwTJ3LFCNUOWrx+dHmAN8FDFcPVQ+aR0MiD5WaQV8NrV
         Zwew==
X-Gm-Message-State: APjAAAVdlGtZCfP76vYVcfvPt3lIKBZIdQn4AQLm06dQMi3DNNRC8oPj
        Z5zZoANNcux5dBE6PNDg2AjQ/Vec
X-Google-Smtp-Source: APXvYqw8pU35cKhTW6+rhK/7yFB2WdzV6zjElWV3EJSdN9Ho27st4v02wWRObJH/5yntheE+0HT+oQ==
X-Received: by 2002:adf:828b:: with SMTP id 11mr458136wrc.169.1582490342913;
        Sun, 23 Feb 2020 12:39:02 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id x10sm14662522wrv.60.2020.02.23.12.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 12:39:02 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] filesystems.5: tfix
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20200214153144.GA12549@asgard.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20daf544-fdb5-c4e9-06c1-ab3cd1fd4b08@gmail.com>
Date:   Sun, 23 Feb 2020 21:38:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200214153144.GA12549@asgard.redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:31 PM, Eugene Syromyatnikov wrote:
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>

Thanks. Applied.

Cheers,

Michael


> ---
>  man5/filesystems.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 51c757d..4882810 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -61,7 +61,7 @@ it; see
>  and
>  .BR mount (8).
>  .PP
> -iThe following list provides a
> +The following list provides a
>  short description of the available or historically available
>  filesystems in the Linux kernel.
>  See the kernel documentation for a comprehensive
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
