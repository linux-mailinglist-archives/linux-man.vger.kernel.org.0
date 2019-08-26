Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D207C9D895
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727013AbfHZVfs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:35:48 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37036 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725983AbfHZVfr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:35:47 -0400
Received: by mail-wm1-f65.google.com with SMTP id d16so891853wme.2
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5qCTuZLJYnGrWgolBw5ELG/Ulx+w0lBNU3q34xtL8Jc=;
        b=AIs0qISJfKO/GjKv0uSHAxXw7taU8kiAXRTn8fAjn40nv4gadddbzF0+puVZaxGyCB
         KlKTOBqAGv/8Lliy6oUItvXaV7XvKFBJMeAVG3qUcDyiIcykTdoA0nQizZdKUi4wqFHS
         N5NI9ZV2B0JH3pw5kIyA1NMGeSGDAf+wLR1fiSd1S8iiEaUALelgUsuk7W9OvJeQH0Fs
         OwYoj0F+jEsQWsbjGtNbRprpkwIbVDqbEkj5fN0tqEZwlK1+qFMdODkC0D9zOHkcvmpI
         HhPnmNQpvi2xuFOUGvFuV6w/qkm8TjHmePng8v8gU/IfoAKe3klBQjNNV0rKxjgDFYZK
         c9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5qCTuZLJYnGrWgolBw5ELG/Ulx+w0lBNU3q34xtL8Jc=;
        b=CgCay6CW/iH8tfXkOoVNbq59AF9ZcA2RbSqOzDy/5LjkFQn0aH+7kmwxQuPE07WypD
         aie9JNLBU29+Xkx/dlruMbUbaReINbb/0Lz5mP8BscDBj+b5lU6HoW3eULVWLoUCqAHe
         sF/Khyz0nCEYyo6TDiUrAzjqIsyjTOE91YK57UUJ5cqSaXkJIiGjR6M9XdUHJEXKmZKh
         IcP19T0ZRLuj2H7eI+M9jlLkR6W0NB5PhHXN+xwwVurr0FSk4n6L1dI1rpu7DwSXcY4n
         DEz48fuwQn0DsWzbfDwzy5JINkgJ8SbrSPXQWWLLYnXER0UQhBhkPt9NoXU5cQeUd3G2
         q1Sw==
X-Gm-Message-State: APjAAAXf/9V9BUcHAsgO3JVN7i8m67joMosRjsPDzwvBVqcjw5Wxubkx
        Wk6kXp70WxTUzXBb0QxpCpI=
X-Google-Smtp-Source: APXvYqwyfSt9WMpSYy++sMp9K8CcpFQy5ZpuQXu8wQ1Pb9ZDGN9rLTA4TS5361DHxIXxFXxzuRX+rA==
X-Received: by 2002:a1c:d10b:: with SMTP id i11mr25289453wmg.78.1566855345679;
        Mon, 26 Aug 2019 14:35:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id a19sm39756914wra.2.2019.08.26.14.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:35:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V3 1/5] smartpqi: fix spelling error
To:     Don Brace <don.brace@microsemi.com>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683408649.32298.6081913063642002094.stgit@brunhilda>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9e1fef58-8eb9-f912-6b11-7311688d9e04@gmail.com>
Date:   Mon, 26 Aug 2019 23:35:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <156683408649.32298.6081913063642002094.stgit@brunhilda>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/26/19 5:41 PM, Don Brace wrote:
> - correct smarpqi to smartpqi

Thanks, Don. Patch applied.

Cheers,

Michael

> Reviewed-by: Scott Teel <scott.teel@microsemi.com>
> Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
> Signed-off-by: Don Brace <don.brace@microsemi.com>
> ---
>  man4/smartpqi.4 |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index cf7c43034..704efb735 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -215,7 +215,7 @@ $ \c
>  .in
>  .SH VERSIONS
>  The
> -.B smarpqi
> +.B smartpqi
>  driver was added in Linux 4.9.
>  .SH NOTES
>  .SS Configuration
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
