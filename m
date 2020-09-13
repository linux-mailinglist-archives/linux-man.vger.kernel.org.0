Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA9F8267E09
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725902AbgIMFrE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725909AbgIMFq4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:46:56 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61FC7C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:56 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l15so3699959wmh.1
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j0n5yEarhpbA4UAxQL++W1vWH4m6lKztJBnb4EqKtXA=;
        b=EYbs4oZ+1ni6AluxwOrUIGx6gyJHTIBen6Idb3Ot8szvO9ZPDykfqxmndDAIKg0HZ6
         mghAkZtGBFo/nfo5R5Cis+8L+Eee7C1Yyka+a5AX9db4jfaT39U8mNkbEngBScE5WxaY
         BXWo6cBdwnCfXpggLIm0BlbgotxXeZBZGEOWGHX8rXuXGosskH6AOE7HPzq+nN7hND8s
         kCOtwKPygWUVuaTCg/D6Ho83CBaMcMOn3W30L/vglokB8q4Ji67oCgLtFPiRJ9HiuEX8
         0HZXD/gLYcwi3XqwNJepfrx2A/oveC+HUXUNZUB1o84zmTNQyK42G2lyXZvOGeurBQPH
         19Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j0n5yEarhpbA4UAxQL++W1vWH4m6lKztJBnb4EqKtXA=;
        b=KLTBBlI9ZMsfDFpxKghdX0UZjqizTJ3myMadVRe98lkzBE7jHwcHdnirzchv6lXJIf
         14ZvNizEDyRJrnMtugOFYqYcFjO5gLFC4l/xFWu7gvZn4P8xqKkQCH82nJKe+oTa/Uth
         3HEChafrRj7yDt7r+xxtXenLZNV7PCPidmhkndwSbVhrNTmPMVU6E751LvkP2vqJirdS
         caip1eWObIRlVDcJHiXuq3mo6ll8OEnbxTTPOlWSw5Pcz4En6qAKhOMcMPIZKcA9AlcX
         bUXNboxLb6mfOi2MYxp+djZm8Ts2R/15VBmLtn88RnFFQyX6xmZwqOaMRTLr64znAdXS
         g9tQ==
X-Gm-Message-State: AOAM533wHCxq1Eq8iPbGVNw2DjthoLw0wAnTeIu1CQhCA6GLZvAnKPft
        OJLw9Y4FNL6/KJwBPGdKl6hGqQUYrE8=
X-Google-Smtp-Source: ABdhPJxuhOmOmKvc39tEKGsw3iEQ13h8XEvM/TyNPmrGyCZiEMWgeVQFq0VBRsUd3GTw/2HwiTSwbQ==
X-Received: by 2002:a1c:e1c2:: with SMTP id y185mr5369345wmg.182.1599976014848;
        Sat, 12 Sep 2020 22:46:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id c14sm13119646wrv.12.2020.09.12.22.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:46:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 09/12] open_by_handle_at.2: Use "%u" rather than "%d" when
 printing 'unsigned int' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-10-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f810b316-e30f-202b-8907-9d5d97432dc0@gmail.com>
Date:   Sun, 13 Sep 2020 07:46:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-10-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/open_by_handle_at.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
> index fb8940696..53c8c7968 100644
> --- a/man2/open_by_handle_at.2
> +++ b/man2/open_by_handle_at.2
> @@ -600,7 +600,7 @@ main(int argc, char *argv[])
>         for later reuse by t_open_by_handle_at.c */
>  
>      printf("%d\en", mount_id);
> -    printf("%d %d   ", fhp\->handle_bytes, fhp\->handle_type);
> +    printf("%u %d   ", fhp\->handle_bytes, fhp\->handle_type);
>      for (int j = 0; j < fhp\->handle_bytes; j++)
>          printf(" %02x", fhp\->f_handle[j]);
>      printf("\en");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
