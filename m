Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 000033347E1
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 20:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbhCJT0X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 14:26:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbhCJTZ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 14:25:57 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEE03C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:25:52 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id w7so62920wmb.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=JVWbOI3OYRG+foGObheFrswognZG/Lg7qJscmOptEeQ=;
        b=X8yx2j6i821TnvBnEljTFDUPfqyX+7vaSgWgp9wcnAJzMhGxco8ZFtHkOwhlfXejIk
         8DA0W5IJNI46zIkVYh/91/otOda8jP4H4wcHzKnU39eVMAbaVcR3DUO4aW5THzlyYg+b
         B//9JEX/nNtH9mXDxIg2owzm/3uAG8xycogVqZ9SihwgdCRnq7Ec8L7KzSMlBy/pAelg
         y20b3v0dCsauZa1ry9rOfjtDaL4D5cc+fodqmC967ua77ZGdxPr9RInyN96Nm+uovtC0
         Divwn0jNt4IkdJ2QDaGXbWlmlf6zjY0PyPdjN8RGXqpyjlpfpFr8RPYTdQ/P60pxE3tH
         ugQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JVWbOI3OYRG+foGObheFrswognZG/Lg7qJscmOptEeQ=;
        b=Bl+8EKg2msw2s/BcKALU20Tol792G/n5OJzAdFduMNTrxujcsZXOyKqMYh4HcFE6ZP
         uqT9YK6np3J4Nnw7zNR8XxlRYbskjr7ZqlpifbLfvd6bbDB3BvICqhWaoRzQLqTHtecg
         o1jkXuE/yNAbsL0LW9YU0IyrshqIpsKSz3yKIm/gC4ZRwPdEPNqWJrujBNuv5AzqMOUd
         EIoubjwjvgmoiHkvmTSlWA69+rZpOMXMwhcHkKUshyNAby5ddh6YyDQtLa8L8K80NNt2
         KfgogLx0IlqTTSk0H2qxiiShJpjk7eI72gIFOQ4YpksgKVPsC0aJkgHn7fsgQF66IKAX
         +ZtQ==
X-Gm-Message-State: AOAM533+kaVHp4r+hRyKnOxhwfCF5PzHcnRyd3ogtjfaUSFOBOCPbKFC
        5SjcQ6KouNQVXSxJ2ZO+QZm5aaxHawNtYQ==
X-Google-Smtp-Source: ABdhPJwzJMWZnKOk//eZNMR/ko3BwIeqcIeCARhvXPMDljM5fj3a+802/M3ZhC9Jn1FdqYBDipr5lw==
X-Received: by 2002:a1c:2203:: with SMTP id i3mr4734938wmi.163.1615404351671;
        Wed, 10 Mar 2021 11:25:51 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f14sm422944wmf.7.2021.03.10.11.25.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 11:25:51 -0800 (PST)
Subject: Re: [PATCH 1/2] exec.3: Fix description of 'e' variants
To:     Josh Triplett <josh@joshtriplett.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <849c71e0a6503e276e4563ff00f2f5f83e4a58aa.1615157989.git.josh@joshtriplett.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <414bbd81-d31e-b657-41cc-f370ccd5bb25@gmail.com>
Date:   Wed, 10 Mar 2021 20:25:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <849c71e0a6503e276e4563ff00f2f5f83e4a58aa.1615157989.git.josh@joshtriplett.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Josh,

On 3/8/21 12:00 AM, Josh Triplett wrote:
> The envp argument specifies the environment of the new process image,
> not "the environment of the caller".
> 
> Signed-off-by: Josh Triplett <josh@joshtriplett.org>

I applied both patches.

Thanks,

Alex

> ---
>   man3/exec.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/exec.3 b/man3/exec.3
> index 211e06421..3d936d08d 100644
> --- a/man3/exec.3
> +++ b/man3/exec.3
> @@ -116,7 +116,7 @@ The array of pointers
>   .I must
>   be terminated by a null pointer.
>   .SS e - execle(), execvpe()
> -The environment of the caller is specified via the argument
> +The environment of the new process image is specified via the argument
>   .IR envp .
>   The
>   .I envp
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
