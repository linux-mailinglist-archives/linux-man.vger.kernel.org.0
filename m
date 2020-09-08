Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 671DF260F51
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 12:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728828AbgIHKMI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 06:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726801AbgIHKMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 06:12:05 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6233EC061573
        for <linux-man@vger.kernel.org>; Tue,  8 Sep 2020 03:12:05 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so18429662wrl.12
        for <linux-man@vger.kernel.org>; Tue, 08 Sep 2020 03:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DowWq0ERd+wViKrYfvHTFDioYw1ebVAB4QReRW0rHVs=;
        b=IHXcs6EtVetdQUxuqWY0iGiKTNghrG7xGt9UumeUSTKyl3zEFs6Kh+2+rd00GqyAIH
         UmuW86T7TRLUwbwr8TGNhBq5E67Kh+KPsDUBlca9BdlTbqtnPn/sG98SXt45nmrX/Nf3
         EkWSlKHqQyuOnDG6fz109iiPf6aELpmDtvzveYDV+jzJ6ImaQucE3jxNXUT4L43mEy1H
         XNSwBKZjTgBN6yiAzPGMO/vycljIt9NGxRHqqKSdd52s/q+1d09xvFKhORE5xqLseksE
         1XF8sf5rREYsZxo4TclGqukCm1xD7uytayd61KY1TSh+wx3C9BmcIdGomj7MOxdsmHQH
         Kg4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DowWq0ERd+wViKrYfvHTFDioYw1ebVAB4QReRW0rHVs=;
        b=l6eSO9Cim5ORaXCikwrjIPOKEQmqjg2CceNJgGqqGAc4hS3xGGRdTRRUWnnG+PFu7o
         g2XatgupUA8SVzhwjCWil4Z/sElxkRVRpzInNcX/Y/DnKJnn8+66JS9pt4cq/13ls7dI
         j6jI3HdHm7C5+kHPN2mqBayUvbEa950jb3rPPgjl+k63134mdZk3VCTmvsRisCj0VE+t
         HLp71ThCyPlOnrkgjzWsqaiTqyZVckDJ6yVH6QoBZdOqDnuJSP1QGJPn/V+ezDF+Eb8s
         BgqhilDBYb9S3GqvSyNACkF+CiULTHRgtKW4ukqFY/KSUONsl+IMXlz9TtqTFIBseKIO
         dZPw==
X-Gm-Message-State: AOAM532pc3eKXaBtLD1iU6lD0DplbGHua/xECPadgsePuybrP+gOXIf7
        SigkwITl63Z5PVKo2CkJ+tKUH/kqpT4=
X-Google-Smtp-Source: ABdhPJzOw0gCSvwyeEHM/HKNpVBjdlVzHkl+fEHhY4XDC2qOaYa5diow9hIUvs7GuRSRk6BsLyGXyw==
X-Received: by 2002:adf:f0c7:: with SMTP id x7mr25551216wro.315.1599559923697;
        Tue, 08 Sep 2020 03:12:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id y2sm28568885wmg.23.2020.09.08.03.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 03:12:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: possible typo in `man 3 getopt`
To:     michael.saunders@tuta.io
References: <MGh9xxx--3-2@tuta.io>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e37dba0a-d0cd-2969-c37a-0ef8e59e581b@gmail.com>
Date:   Tue, 8 Sep 2020 12:12:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <MGh9xxx--3-2@tuta.io>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 9/8/20 12:03 PM, michael.saunders@tuta.io wrote:
> Think this is just a one char bug.
> 
> In the first example provided, the if statement checks for `optind >= argc`,
> which I believe should be `<` or maybe `<=`.
> Thanks for the truly indespensable work.

The code looks okay to me. Why do you think it's wrong?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
