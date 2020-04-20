Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3E61B15FF
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:36:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbgDTTgv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:36:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725550AbgDTTgv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:36:51 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AF0C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:36:51 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id h2so861737wmb.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qRv3mkWkAxAAcA0j/TxOUprlWayTifP8dlViS39Kk+o=;
        b=UTxEKFSSTAcy3VLYfHLdF5gJygeih1C4/QFJoXj+Ay3KJWmVUd9ECxkEKWe1Bty3I5
         Jmm1fmPp7+kr1rvsri2tXUdTClQPghIGcFge0KRDUpsa8Q0JBYKB1WXqF6CFyLV+h8dw
         gxm/dNlb0gwFwuWjW9IdASsbNRrJq4+XvSd4Gp7yeKxCnZ3/irM9BO1b0rYB5UyAf0RI
         6YaajhL98h85EbTC9GGsqOU53Ty3TXgTYIzSwrpZK7Cpfk9D9/j0shVodOjJjvS7drb/
         InEcVz1mbnIcXE/oRin8zj4TrvQSDmS38YrcFCLt6cb9bP8VBLSbKWhIIn59DggFE88L
         T4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qRv3mkWkAxAAcA0j/TxOUprlWayTifP8dlViS39Kk+o=;
        b=jQ9Cxa3JMc4Sb2mmp5n2EP56yw9XhEUImg95mxOKomanSG3jL79MNOBGbeZlfvY5MS
         PnJ+r3Vayct7/dbGOAexQ/pNCinJtKxmipn79EUQCN+DuLqy2S/IV+6FkfID+rcqJB2K
         JFcnTeAfO1l8kCaBUXTDvwkxaAxKnLBSmyM3EV/tAJdHZNKeSTuqR0le+kIDIU4M4YcP
         Pqy7pseK4ibKu9wROaKgbs9iPUBJCQOnsuLGgwGd4QWN5UisSA166I+SwcTbQV3MTXzx
         0YpvuRf1UKzYfDnigXKEpES80XiM7T4eZ2e2efemt10nuGjv9+RSkcRrWHd2a4xJxM0J
         qVJQ==
X-Gm-Message-State: AGi0PuZya0EE5rBfZ2sbE4JcUi9iUkvTqhXc7c7+R1Bn1jTTD3BcyN6n
        f1u3dGRytuCJa7C2P5g+CfV2jD1p
X-Google-Smtp-Source: APiQypK30etotnUtfdyvgj0HkeZVPTi1jr/Sm5g28yjXnn5MOHob4JG0L+QvlhtOrh8SUx+yl61uJA==
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr1013897wmj.170.1587411408698;
        Mon, 20 Apr 2020 12:36:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i25sm466461wml.43.2020.04.20.12.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:36:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 0/4] fanotify updates for v5.7
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <84951955-daa0-302a-4e56-30375b5041a1@gmail.com>
Date:   Mon, 20 Apr 2020 21:36:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420184259.29406-1-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Amir,

On 4/20/20 8:42 PM, Amir Goldstein wrote:
> Hi Michael,
> 
> Following patches include fixes to earlier FAN_REPORT_FID change from
> v5.1 and an update for the new event FAN_DIR_MODIFY that has a new
> event format.
> 
> Those patches were reviewed by Jan and Matthew earlier on github.
> 
> Thanks,
> Amir.
> 
> Amir Goldstein (4):
>   fanotify_mark.2: Clarification about FAN_MARK_MOUNT and FAN_REPORT_FID
>   fanotify_mark.2: Clarification about FAN_EVENT_ON_CHILD and new events
>   fanotify.7: Fix fanotify_fid.c example
>   fanotify.7, fanotify_mark.2: Document FAN_DIR_MODIFY
> 
>  man2/fanotify_mark.2 |  89 ++++++++++++++++++++++++++++++++---
>  man7/fanotify.7      | 107 +++++++++++++++++++++++++++++++++----------
>  2 files changed, 165 insertions(+), 31 deletions(-)

Thanks for the nicely prepared patches! There was very little for 
me to edit.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
