Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 241321B7F35
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 21:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726908AbgDXToY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 15:44:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbgDXToX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 15:44:23 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9137FC09B048
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 12:44:22 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k12so3380223wmj.3
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 12:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HAjgdqk9ufo//YfGbR3kCnga7Kzq7R1RAgiCzvrXKHM=;
        b=sjvyXPQnS52ucxQBHMgN2fS0dOP8Lcujk3Ata+yZlV44l+fc6wC84jL02qCbMYc/Y+
         SFVxQCN/plPhoJ6oGtmRSPYisuJBqD6xuddpjaMHK3JGMfICVYUp3aR4I+43WGYmEzr7
         Kx0eC9n78m6KiFm0Q6+fDDKgxI+TUgSGoEmRt6z8iqGx+l9NFH8rm7kZalTsGuD2/8bS
         Eaa8p9z0INQ43Lv2ZGYlfngiqWuTzmKzr1sxnjZfXXJCTvpgSqeuUzxbxx/A9LZLw9zx
         O0OV9vKsE2mtmaU+CCh8ARRsFFhGo887oWSnZf4WY1H2BojimaNkvRoTLthVmAM+ZLJG
         A10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HAjgdqk9ufo//YfGbR3kCnga7Kzq7R1RAgiCzvrXKHM=;
        b=HW4lnDEgIccJJHFknGPbrPbziAEkgpxRS7P6FodW7SqZqvWXawgaJuAPGhpC7S5yWf
         nhZOWebgU7yIQymbZp13dPcBJJrx0upZR9W7++dRA9M1wZJvxiPp+GgnzR+03B8h/ISU
         v8xIlk4ggiC+lFwLaVQ+ujAgaJzFqc8zUrJq14ZhbMcI6wvAj+vvrq35CqLkV1AiZLYo
         cZOopKT/aYbiEEW11Mo0WB1X7Ej2lWBqiIrtLv/Q9SDM5qBNPehaRlZIOeWWGKAbXqOK
         0nDzUpM1m7+avdLhphakgBecWQIo5qjMPpmd6KgjKI8YHD8CV0afhMSR/4KqX0FJ4G29
         bd2A==
X-Gm-Message-State: AGi0PuYgCTwIxPupKfaeXNEorWaXKrnmGysqNYdKwzwCbtSEH8UqecyG
        agIjx0A2CJit58/9ylLejFQ=
X-Google-Smtp-Source: APiQypLCfb3AXzof0tf49iWs2vIKftxEJ96Av+fFbwSN8t4NcD8ixmo7xKnHiFjwGnK1Es0Mu+ZLzA==
X-Received: by 2002:a05:600c:2196:: with SMTP id e22mr11602306wme.105.1587757461368;
        Fri, 24 Apr 2020 12:44:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:102:f8f7:1ff:c15b:512d? ([2001:a61:2482:102:f8f7:1ff:c15b:512d])
        by smtp.gmail.com with ESMTPSA id h188sm4575263wme.8.2020.04.24.12.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 12:44:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] xattr.7: Add attr(1) as relevant page to SEE ALSO
To:     Achilles Gaikwad <agaikwad@redhat.com>, linux-man@vger.kernel.org
References: <20200424160252.GA1127582@nevermore.foobar.lan>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0ceca2c4-bbc2-8d3d-1983-42112de4f64b@gmail.com>
Date:   Fri, 24 Apr 2020 21:44:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424160252.GA1127582@nevermore.foobar.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Achilles

On 4/24/20 6:02 PM, Achilles Gaikwad wrote:
> The page of attr(1) is relevant to xattrs, therefore add it to the
> SEE ALSO section making it relevant.
> 
> attr(1) command works for other filesystems as well.
> 
> Signed-off-by: Achilles Gaikwad <agaikwad@redhat.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/xattr.7 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man7/xattr.7 b/man7/xattr.7
> index 031919c4b..706dfa344 100644
> --- a/man7/xattr.7
> +++ b/man7/xattr.7
> @@ -189,6 +189,7 @@ This page was formerly named
>  .BR getfattr (1),
>  .BR setfattr (1),
>  .BR getxattr (2),
> +.BR attr (1),
>  .BR ioctl_iflags (2),
>  .BR listxattr (2),
>  .BR removexattr (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
