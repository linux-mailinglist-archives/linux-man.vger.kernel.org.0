Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 428871E0C53
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 12:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389943AbgEYK5j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 06:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389856AbgEYK5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 06:57:39 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5213C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 03:57:38 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id l25so14680689edj.4
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 03:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3nOB0kQsPjdt8Ra8dYDdiH0mTPIVYCZrnOxdhsi/D1M=;
        b=haGOtYjZy0XW6p31mqkIItgQ7Cr707A8S2+gLSdvzoofNm2/+ZJt83eMBQ8n8E5Ae1
         EhAHbhuJLZ7Tul9XuCEPbcMqhqzAQwFAyYVPPOQZ+PeXkBxtHiC54U8Q57SOGaNdJ3rE
         tIjCmbAaT95BIQ3HRZ3rSKwtWR64YytRJRotM+PkMU4enrsy95C8vE7zUx7J96O4Tvyc
         Y5NTso9UDJZ9Q6qSjmJg7q8iyxYj8lymhLP9SpnJ2DPjfxZvEY/gHifqita07FNABht4
         UpNmqQZ89y2sgQUabq0DshZiGjN+C4Kr3Hu3ISHiiueahPlHpay5w16EJINphgnVhMsY
         fRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3nOB0kQsPjdt8Ra8dYDdiH0mTPIVYCZrnOxdhsi/D1M=;
        b=CoU2H6u4mvMIXGb26ssPRdgOmO7URrSXzadfHK39/20zzJtN1Y5pYy9qM0b5l6XLhV
         dWp7T3Wp2d29Y/wke1p3FKUy+1MqOeFcbAtu01zVgzIm4SJz+aIBlaHGpokvf1VRYjhn
         Xo7kloR9qKMHKUfIJ05aQHPjaSlFo/8hJ1mEg4DJYkeVCUCXMvV+dvawfAq3zw7oV72y
         fG06LedHzvZhWyC1qG6V8tdj2fA7XvTyLyKjFidY+5C5qEfJr9FvEmG/Jr/J+tHUWZ10
         Ux3dDu+7QmkWm4gUP5H6Xws7/YXBWxSSn4TtBNu81HNM4I5NqMp6iU5PSh2p65ZnY2W1
         rmCA==
X-Gm-Message-State: AOAM532P6MOONZ/rkuiyLHxVib9X06Jkwc23PxZDP06MbXVkOLED6Y7f
        MPc7dur0inUnr1yWzfp60o3/+EqZu7g=
X-Google-Smtp-Source: ABdhPJzYhC66tA0K6/+K11n7ytO5JN75F3O681mmcLwOIVo9bmplhih4PLmGwS48MSp15LB3bAavdA==
X-Received: by 2002:a05:6402:5:: with SMTP id d5mr14928810edu.247.1590404257581;
        Mon, 25 May 2020 03:57:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id i6sm13997433ejh.4.2020.05.25.03.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 03:57:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: gettid(2) feature test macro and header
To:     "Joseph C. Sible" <josephcsible@gmail.com>
References: <CABpewhHMp-UP6S5mD1psPg_KKh2xAFp3yViB1z5zwCsksbzcxg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0ff77467-1d09-4fa8-2202-316a624495b0@gmail.com>
Date:   Mon, 25 May 2020 12:57:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CABpewhHMp-UP6S5mD1psPg_KKh2xAFp3yViB1z5zwCsksbzcxg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/24/20 1:55 AM, Joseph C. Sible wrote:
> The gettid(2) function requires the _GNU_SOURCE feature test macro,
> but its man page doesn't mention this. Also, it comes from unistd.h,
> but its man page only mentions sys/types.h.

Thanks, Joseph. I applied the patch below.

Cheers,

Michael

--- a/man2/gettid.2
+++ b/man2/gettid.2
@@ -28,6 +28,8 @@
 gettid \- get thread identification
 .SH SYNOPSIS
 .nf
+.B #define _GNU_SOURCE
+.B #include <unistd.h>
 .B #include <sys/types.h>
 .PP
 .B pid_t gettid(void);



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
