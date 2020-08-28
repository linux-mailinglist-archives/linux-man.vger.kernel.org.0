Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0497255A23
	for <lists+linux-man@lfdr.de>; Fri, 28 Aug 2020 14:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729414AbgH1MaL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Aug 2020 08:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729409AbgH1M3s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Aug 2020 08:29:48 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CE3DC061264
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 05:29:47 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id si26so1228407ejb.12
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 05:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C5Rr9TEyY6wQSVXmcU5zr5RfqOH0v3jADI/ax8yiTsg=;
        b=E5tK75DwCWspY+1LJxe36syBKmnBZXruwdKpnoxf+2bQFJopRkXMeZrHPb+vFC0NQq
         UR0ViWF6/yQpDiyqXlS6HWNxeSnnrunkLyYbZAgrk/kt7aCI3VFQYIB5vy8pQs4zRlAf
         HJ6dmWFS2xwTLL5lwvYbD2uz+5XKw6zUMVeg5RTlf8oJ8t2JcsPDRKa2da6RJ/0Mzb38
         Tf0ysbera73lA9veQLythn5iBcgGy+VnS2uLh9MuISF5bRvLVtEWOAeLjGPwu6qMFbVC
         0OqkX1wJn6KXbr7qqL2dNTfXYcZuZOo/ZATcmYma47JwSJedvcdwSvkAojsJHFhGV1R2
         TdhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C5Rr9TEyY6wQSVXmcU5zr5RfqOH0v3jADI/ax8yiTsg=;
        b=DY6zzaU5H2clKtHQPyf4lOe1ROKnyayLFNBBCcwBzsQhm6pJ8QeRnat32TYwHNUJrx
         i5IImv2HF+fEns9IcnnB9rfH9+iJahPPvD2ftKD0Ln1rgY1N/r1vCuatQoZB5TUBvRYC
         o3yY9COwzrdoEhUcjfJTFsRihcj1FbJ+xmiEFhk16UKApydCerq0ymsnlKKftpmO+VT+
         c/7vtlwctWe7/FlcXVa8lHVX7uPLd+8dNB9oGTl41G3vTIaihrdKjEdLCpwyB3RnssEd
         uSRqiE3QkDHspN5jTVsRHdaY1HZw/SCKnun/NMFKXEV+dn/1YC+NfjiS+u9zVBVo7PMr
         lHgQ==
X-Gm-Message-State: AOAM53196s+B8ymSWnnY/bFRgXvdMOCjAjveww8B+CtXNABaj5iTIuCc
        qqoOvqLAjZXEmXXB5taufzf/9vH3Bnk=
X-Google-Smtp-Source: ABdhPJxGnjVSsAEUXVCuzUwGHuQOvITZpjzaZT6sCXB+9T8ZZNjG3Ny6j9iI3KDiigwuvcg4C3rfjQ==
X-Received: by 2002:a17:906:48c8:: with SMTP id d8mr1468134ejt.331.1598617785990;
        Fri, 28 Aug 2020 05:29:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:4c01:2cf1:7133:9da2:66a9? ([2001:a61:253c:4c01:2cf1:7133:9da2:66a9])
        by smtp.gmail.com with ESMTPSA id hh9sm775753ejb.113.2020.08.28.05.29.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 05:29:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Fanotify man page updates for v5.9
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200825114056.5179-1-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5c570822-4077-7462-9ec5-6f84a9eb946e@gmail.com>
Date:   Fri, 28 Aug 2020 14:29:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825114056.5179-1-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Amir,

On 8/25/20 1:40 PM, Amir Goldstein wrote:
> Hi Michael,
> 
> Posting v2 with Reviewed-by from Jan Kara and Matthew Bobrowski
> and fixes for a few minor issues they pointed out.

I've applied all three patches, and done a very small number of edits
(there really wasn't much that I saw that could be improved!)

Amir, thanks (again_) for taking such good care of these 
fanotify pages; it makes my life so much easier!


Matthew, Jan, thanks for supporting the work Amir does!

Cheers,

Michael

> Amir Goldstein (3):
>   fanotify.7, fanotify_mark.2: Generalize documentation of
>     FAN_REPORT_FID
>   fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
>   fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME
> 
>  man2/fanotify_init.2 | 115 ++++++++++++++++++++++---
>  man2/fanotify_mark.2 |  50 ++++-------
>  man7/fanotify.7      | 200 +++++++++++++++++++++++++++++--------------
>  3 files changed, 256 insertions(+), 109 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
