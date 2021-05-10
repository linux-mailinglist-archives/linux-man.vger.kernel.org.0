Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D26073793C0
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 18:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbhEJQ3o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 12:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbhEJQ3i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 12:29:38 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB333C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:28:29 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id t4so9403254plc.6
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pGBnTKNWqQqR6PAHxv34/LH6ZK+v6vh5BVGH/4vlKmY=;
        b=ev+F71Uzu6QkBSM33Ni7ZpcfP3my0PiJnkhZ4U2YqZ7HuR98hlJSpNCi4E76ybQNXF
         KkmSqduCS7nm9pntI16XU9S0zwhKbc+fZbfORgPnE3J+r/ehdMPW1qZfPmCKODMzqy1A
         Kbk/pQ9JJiXk04ihs8Fb9umMJ/EEH4ArfCzM2dX7yci3vJgzu03bjeMXGLGXcmIDbLgt
         3AneQ2SdfAXk5Yc/5YnqgWX6YzLHeXK5VCI9SHM/GioajF1J1m9quT1353P//nXtNhEQ
         R7o5jiaxtPdXS4jib85at4PUo3XGfXjZ1KBtp1SilDnb4rNEPux/BAjGFSdOs1rq9AF4
         Aoxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pGBnTKNWqQqR6PAHxv34/LH6ZK+v6vh5BVGH/4vlKmY=;
        b=pLN+zI9DWBoMajOlhnMJtRx1ExHTXXuqd/CMcAkltpCKjLfnHcb4Hz19NGQUNbUoi1
         tU42mKWeR4zspxxERCHrEM1VfMXiP31oXClqA6SbwALXi5OVsPyrP12ZzJcRofDyHN00
         b1kbLvNuS2futXTnkFHds/d/rAgevVX2PTfNTuJsRfgLZphJhFLzp2tz++kN1uBWbL6T
         3YjN9XnqZbVmOPBJjK3t9L8G4jWslCt1QkmgTUDsXdbqgCqg0GVK0YjeNRaK/i4hUTpy
         MF4a9V/AS0qoKencFxL8klup7eWIKrSpty6JM83u34UCAecLUiaRI8L1VputHxyQgrVx
         SvIQ==
X-Gm-Message-State: AOAM5338pVo5yoxd9sz9Q320d1Qjv67GO6WOtFNicvGgKE6cZhBa0APm
        fK/3YD8oHZscm1ZJ/3OOQYI=
X-Google-Smtp-Source: ABdhPJwoF6coEiVaZXUYIEZuId/txEy2oRBAOvjj8izdsW5iU14y2nARvM54hESuzA02L/DYve90Eg==
X-Received: by 2002:a17:90b:909:: with SMTP id bo9mr41767559pjb.142.1620664109417;
        Mon, 10 May 2021 09:28:29 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g6sm11753657pfr.213.2021.05.10.09.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 09:28:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: Re: [PATCH] .gitignore: Add file
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-35-alx.manpages@gmail.com>
 <ada1af82-0d46-6d84-c175-02755fef5968@gmail.com>
 <50647a51-2f01-34a6-9f04-1a350663539f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94030ef3-3d4e-7f95-e9d0-1ff5a4a23031@gmail.com>
Date:   Tue, 11 May 2021 04:28:24 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <50647a51-2f01-34a6-9f04-1a350663539f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/10/21 7:15 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 5/10/21 3:02 AM, Michael Kerrisk (man-pages) wrote:
>>> diff --git a/.gitignore b/.gitignore
>>> new file mode 100644
>>> index 000000000..9eb9fc096
>>> --- /dev/null
>>> +++ b/.gitignore
>>> @@ -0,0 +1,13 @@
>>> +# Ignore everything new by default
>>> +/*
>>> +
>>> +# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
>>> +!/man?/
>>> +/man?/**
>>> +!/man?/**.?
>>
>> Why '**'? Is '*' not sufficient in both of the above?
> 
> You're right.  '*' is sufficient.  Please fix it yourself :)

Okay -- patch applied, and I've tweaked.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
